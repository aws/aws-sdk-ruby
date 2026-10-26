# frozen_string_literal: true

# This is generated code!

module Aws::DynamoDB
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ApproximateCreationDateTimePrecision = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ApproximateCreationDateTimePrecision", name: "ApproximateCreationDateTimePrecision")
    ArchivalReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ArchivalReason", name: "ArchivalReason")
    ArchivalSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ArchivalSummary", name: "ArchivalSummary")
    AttributeAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#AttributeAction", name: "AttributeAction")
    AttributeDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#AttributeDefinition", name: "AttributeDefinition")
    AttributeDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#AttributeDefinitions", name: "AttributeDefinitions")
    AttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#AttributeMap", name: "AttributeMap")
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#AttributeName", name: "AttributeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 65535}})
    AttributeNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#AttributeNameList", name: "AttributeNameList", traits: {"smithy.api#length" => {"min" => 1}})
    AttributeUpdates = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#AttributeUpdates", name: "AttributeUpdates")
    AttributeValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.dynamodb#AttributeValue", name: "AttributeValue")
    AttributeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#AttributeValueList", name: "AttributeValueList")
    AttributeValueUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#AttributeValueUpdate", name: "AttributeValueUpdate")
    AutoScalingPolicyDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#AutoScalingPolicyDescription", name: "AutoScalingPolicyDescription")
    AutoScalingPolicyDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#AutoScalingPolicyDescriptionList", name: "AutoScalingPolicyDescriptionList")
    AutoScalingPolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#AutoScalingPolicyName", name: "AutoScalingPolicyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\p{Print}+$"})
    AutoScalingPolicyUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#AutoScalingPolicyUpdate", name: "AutoScalingPolicyUpdate")
    AutoScalingRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#AutoScalingRoleArn", name: "AutoScalingRoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    AutoScalingSettingsDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#AutoScalingSettingsDescription", name: "AutoScalingSettingsDescription")
    AutoScalingSettingsUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#AutoScalingSettingsUpdate", name: "AutoScalingSettingsUpdate")
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#AutoScalingTargetTrackingScalingPolicyConfigurationDescription", name: "AutoScalingTargetTrackingScalingPolicyConfigurationDescription")
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#AutoScalingTargetTrackingScalingPolicyConfigurationUpdate", name: "AutoScalingTargetTrackingScalingPolicyConfigurationUpdate")
    AvailabilityErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#AvailabilityErrorMessage", name: "AvailabilityErrorMessage")
    Backfilling = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dynamodb#Backfilling", name: "Backfilling")
    BackupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#BackupArn", name: "BackupArn", traits: {"smithy.api#length" => {"min" => 37, "max" => 1024}})
    BackupCreationDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodb#BackupCreationDateTime", name: "BackupCreationDateTime")
    BackupDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BackupDescription", name: "BackupDescription")
    BackupDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BackupDetails", name: "BackupDetails")
    BackupInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BackupInUseException", name: "BackupInUseException", traits: {"smithy.api#error" => "client"})
    BackupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#BackupName", name: "BackupName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    BackupNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BackupNotFoundException", name: "BackupNotFoundException", traits: {"smithy.api#error" => "client"})
    BackupSizeBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#BackupSizeBytes", name: "BackupSizeBytes", traits: {"smithy.api#range" => {"min" => 0}})
    BackupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#BackupStatus", name: "BackupStatus")
    BackupSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#BackupSummaries", name: "BackupSummaries")
    BackupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BackupSummary", name: "BackupSummary")
    BackupType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#BackupType", name: "BackupType")
    BackupTypeFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#BackupTypeFilter", name: "BackupTypeFilter")
    BackupsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#BackupsInputLimit", name: "BackupsInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    BatchExecuteStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BatchExecuteStatementInput", name: "BatchExecuteStatementInput")
    BatchExecuteStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BatchExecuteStatementOutput", name: "BatchExecuteStatementOutput")
    BatchGetItemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BatchGetItemInput", name: "BatchGetItemInput")
    BatchGetItemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BatchGetItemOutput", name: "BatchGetItemOutput")
    BatchGetRequestMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#BatchGetRequestMap", name: "BatchGetRequestMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BatchGetResponseMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#BatchGetResponseMap", name: "BatchGetResponseMap")
    BatchStatementError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BatchStatementError", name: "BatchStatementError")
    BatchStatementErrorCodeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#BatchStatementErrorCodeEnum", name: "BatchStatementErrorCodeEnum")
    BatchStatementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BatchStatementRequest", name: "BatchStatementRequest")
    BatchStatementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BatchStatementResponse", name: "BatchStatementResponse")
    BatchWriteItemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BatchWriteItemInput", name: "BatchWriteItemInput")
    BatchWriteItemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BatchWriteItemOutput", name: "BatchWriteItemOutput")
    BatchWriteItemRequestMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#BatchWriteItemRequestMap", name: "BatchWriteItemRequestMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BilledSizeBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#BilledSizeBytes", name: "BilledSizeBytes", traits: {"smithy.api#range" => {"min" => 0}})
    BillingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#BillingMode", name: "BillingMode")
    BillingModeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#BillingModeSummary", name: "BillingModeSummary")
    BinaryAttributeValue = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.dynamodb#BinaryAttributeValue", name: "BinaryAttributeValue")
    BinarySetAttributeValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#BinarySetAttributeValue", name: "BinarySetAttributeValue")
    BooleanAttributeValue = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dynamodb#BooleanAttributeValue", name: "BooleanAttributeValue")
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dynamodb#BooleanObject", name: "BooleanObject")
    CancellationReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#CancellationReason", name: "CancellationReason")
    CancellationReasonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#CancellationReasonList", name: "CancellationReasonList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Capacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#Capacity", name: "Capacity")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ClientToken", name: "ClientToken", traits: {"smithy.api#pattern" => "^[^\\$]+$"})
    CloudWatchLogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#CloudWatchLogGroupArn", name: "CloudWatchLogGroupArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Code = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#Code", name: "Code")
    ComparisonOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ComparisonOperator", name: "ComparisonOperator")
    Condition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#Condition", name: "Condition")
    ConditionCheck = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ConditionCheck", name: "ConditionCheck")
    ConditionExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ConditionExpression", name: "ConditionExpression")
    ConditionalCheckFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ConditionalCheckFailedException", name: "ConditionalCheckFailedException", traits: {"smithy.api#error" => "client"})
    ConditionalOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ConditionalOperator", name: "ConditionalOperator")
    ConfirmRemoveSelfResourceAccess = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dynamodb#ConfirmRemoveSelfResourceAccess", name: "ConfirmRemoveSelfResourceAccess", traits: {"smithy.api#default" => false})
    ConsistentRead = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dynamodb#ConsistentRead", name: "ConsistentRead")
    ConsumedCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ConsumedCapacity", name: "ConsumedCapacity")
    ConsumedCapacityMultiple = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ConsumedCapacityMultiple", name: "ConsumedCapacityMultiple")
    ConsumedCapacityUnits = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.dynamodb#ConsumedCapacityUnits", name: "ConsumedCapacityUnits")
    ContinuousBackupsDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ContinuousBackupsDescription", name: "ContinuousBackupsDescription")
    ContinuousBackupsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ContinuousBackupsStatus", name: "ContinuousBackupsStatus")
    ContinuousBackupsUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ContinuousBackupsUnavailableException", name: "ContinuousBackupsUnavailableException", traits: {"smithy.api#error" => "client"})
    ContributorInsightsAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ContributorInsightsAction", name: "ContributorInsightsAction")
    ContributorInsightsMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ContributorInsightsMode", name: "ContributorInsightsMode")
    ContributorInsightsRule = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ContributorInsightsRule", name: "ContributorInsightsRule", traits: {"smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-\\_\\.]{0,126}[A-Za-z0-9]$"})
    ContributorInsightsRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ContributorInsightsRuleList", name: "ContributorInsightsRuleList")
    ContributorInsightsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ContributorInsightsStatus", name: "ContributorInsightsStatus")
    ContributorInsightsSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ContributorInsightsSummaries", name: "ContributorInsightsSummaries")
    ContributorInsightsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ContributorInsightsSummary", name: "ContributorInsightsSummary")
    CreateBackupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#CreateBackupInput", name: "CreateBackupInput")
    CreateBackupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#CreateBackupOutput", name: "CreateBackupOutput")
    CreateGlobalSecondaryIndexAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#CreateGlobalSecondaryIndexAction", name: "CreateGlobalSecondaryIndexAction")
    CreateGlobalTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#CreateGlobalTableInput", name: "CreateGlobalTableInput")
    CreateGlobalTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#CreateGlobalTableOutput", name: "CreateGlobalTableOutput")
    CreateGlobalTableWitnessGroupMemberAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#CreateGlobalTableWitnessGroupMemberAction", name: "CreateGlobalTableWitnessGroupMemberAction")
    CreateReplicaAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#CreateReplicaAction", name: "CreateReplicaAction")
    CreateReplicationGroupMemberAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#CreateReplicationGroupMemberAction", name: "CreateReplicationGroupMemberAction")
    CreateTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#CreateTableInput", name: "CreateTableInput")
    CreateTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#CreateTableOutput", name: "CreateTableOutput")
    CreateVectorIndexAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#CreateVectorIndexAction", name: "CreateVectorIndexAction")
    CsvDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#CsvDelimiter", name: "CsvDelimiter", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#pattern" => "^[,;:|\\t ]$"})
    CsvHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#CsvHeader", name: "CsvHeader", traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#pattern" => "^[\\x20-\\x21\\x23-\\x2B\\x2D-\\x7E]*$"})
    CsvHeaderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#CsvHeaderList", name: "CsvHeaderList", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CsvOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#CsvOptions", name: "CsvOptions")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodb#Date", name: "Date")
    Delete = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#Delete", name: "Delete")
    DeleteBackupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteBackupInput", name: "DeleteBackupInput")
    DeleteBackupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteBackupOutput", name: "DeleteBackupOutput")
    DeleteGlobalSecondaryIndexAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteGlobalSecondaryIndexAction", name: "DeleteGlobalSecondaryIndexAction")
    DeleteGlobalTableWitnessGroupMemberAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteGlobalTableWitnessGroupMemberAction", name: "DeleteGlobalTableWitnessGroupMemberAction")
    DeleteItemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteItemInput", name: "DeleteItemInput")
    DeleteItemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteItemOutput", name: "DeleteItemOutput")
    DeleteReplicaAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteReplicaAction", name: "DeleteReplicaAction")
    DeleteReplicationGroupMemberAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteReplicationGroupMemberAction", name: "DeleteReplicationGroupMemberAction")
    DeleteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteRequest", name: "DeleteRequest")
    DeleteResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteResourcePolicyInput", name: "DeleteResourcePolicyInput")
    DeleteResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteResourcePolicyOutput", name: "DeleteResourcePolicyOutput")
    DeleteTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteTableInput", name: "DeleteTableInput")
    DeleteTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteTableOutput", name: "DeleteTableOutput")
    DeleteVectorIndexAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DeleteVectorIndexAction", name: "DeleteVectorIndexAction")
    DeletionProtectionEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dynamodb#DeletionProtectionEnabled", name: "DeletionProtectionEnabled")
    DescribeBackupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeBackupInput", name: "DescribeBackupInput")
    DescribeBackupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeBackupOutput", name: "DescribeBackupOutput")
    DescribeContinuousBackupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeContinuousBackupsInput", name: "DescribeContinuousBackupsInput")
    DescribeContinuousBackupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeContinuousBackupsOutput", name: "DescribeContinuousBackupsOutput")
    DescribeContributorInsightsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeContributorInsightsInput", name: "DescribeContributorInsightsInput")
    DescribeContributorInsightsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeContributorInsightsOutput", name: "DescribeContributorInsightsOutput")
    DescribeEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeEndpointsRequest", name: "DescribeEndpointsRequest")
    DescribeEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeEndpointsResponse", name: "DescribeEndpointsResponse")
    DescribeExportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeExportInput", name: "DescribeExportInput")
    DescribeExportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeExportOutput", name: "DescribeExportOutput")
    DescribeGlobalTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeGlobalTableInput", name: "DescribeGlobalTableInput")
    DescribeGlobalTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeGlobalTableOutput", name: "DescribeGlobalTableOutput")
    DescribeGlobalTableSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeGlobalTableSettingsInput", name: "DescribeGlobalTableSettingsInput")
    DescribeGlobalTableSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeGlobalTableSettingsOutput", name: "DescribeGlobalTableSettingsOutput")
    DescribeImportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeImportInput", name: "DescribeImportInput")
    DescribeImportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeImportOutput", name: "DescribeImportOutput")
    DescribeKinesisStreamingDestinationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeKinesisStreamingDestinationInput", name: "DescribeKinesisStreamingDestinationInput")
    DescribeKinesisStreamingDestinationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeKinesisStreamingDestinationOutput", name: "DescribeKinesisStreamingDestinationOutput")
    DescribeLimitsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeLimitsInput", name: "DescribeLimitsInput")
    DescribeLimitsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeLimitsOutput", name: "DescribeLimitsOutput")
    DescribeTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeTableInput", name: "DescribeTableInput")
    DescribeTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeTableOutput", name: "DescribeTableOutput")
    DescribeTableReplicaAutoScalingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeTableReplicaAutoScalingInput", name: "DescribeTableReplicaAutoScalingInput")
    DescribeTableReplicaAutoScalingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeTableReplicaAutoScalingOutput", name: "DescribeTableReplicaAutoScalingOutput")
    DescribeTimeToLiveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeTimeToLiveInput", name: "DescribeTimeToLiveInput")
    DescribeTimeToLiveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DescribeTimeToLiveOutput", name: "DescribeTimeToLiveOutput")
    DestinationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#DestinationStatus", name: "DestinationStatus")
    DisableKinesisStreamingDestinationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DisableKinesisStreamingDestinationInput", name: "DisableKinesisStreamingDestinationInput")
    DisableKinesisStreamingDestinationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DisableKinesisStreamingDestinationOutput", name: "DisableKinesisStreamingDestinationOutput")
    DoubleObject = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.dynamodb#DoubleObject", name: "DoubleObject")
    DuplicateItemException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#DuplicateItemException", name: "DuplicateItemException", traits: {"smithy.api#error" => "client"})
    EnableKinesisStreamingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#EnableKinesisStreamingConfiguration", name: "EnableKinesisStreamingConfiguration")
    EnableKinesisStreamingDestinationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#EnableKinesisStreamingDestinationInput", name: "EnableKinesisStreamingDestinationInput")
    EnableKinesisStreamingDestinationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#EnableKinesisStreamingDestinationOutput", name: "EnableKinesisStreamingDestinationOutput")
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#Endpoint", name: "Endpoint")
    Endpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#Endpoints", name: "Endpoints")
    ErrorCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#ErrorCount", name: "ErrorCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ErrorMessage", name: "ErrorMessage")
    ExceptionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ExceptionDescription", name: "ExceptionDescription")
    ExceptionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ExceptionName", name: "ExceptionName")
    ExecuteStatementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ExecuteStatementInput", name: "ExecuteStatementInput")
    ExecuteStatementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ExecuteStatementOutput", name: "ExecuteStatementOutput")
    ExecuteTransactionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ExecuteTransactionInput", name: "ExecuteTransactionInput")
    ExecuteTransactionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ExecuteTransactionOutput", name: "ExecuteTransactionOutput")
    ExpectedAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#ExpectedAttributeMap", name: "ExpectedAttributeMap")
    ExpectedAttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ExpectedAttributeValue", name: "ExpectedAttributeValue")
    ExportArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ExportArn", name: "ExportArn", traits: {"smithy.api#length" => {"min" => 37, "max" => 1024}})
    ExportConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ExportConflictException", name: "ExportConflictException", traits: {"smithy.api#error" => "client"})
    ExportDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ExportDescription", name: "ExportDescription")
    ExportEndTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodb#ExportEndTime", name: "ExportEndTime")
    ExportFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ExportFormat", name: "ExportFormat")
    ExportFromTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodb#ExportFromTime", name: "ExportFromTime")
    ExportManifest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ExportManifest", name: "ExportManifest")
    ExportNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ExportNextToken", name: "ExportNextToken")
    ExportNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ExportNotFoundException", name: "ExportNotFoundException", traits: {"smithy.api#error" => "client"})
    ExportStartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodb#ExportStartTime", name: "ExportStartTime")
    ExportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ExportStatus", name: "ExportStatus")
    ExportSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ExportSummaries", name: "ExportSummaries")
    ExportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ExportSummary", name: "ExportSummary")
    ExportTableToPointInTimeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ExportTableToPointInTimeInput", name: "ExportTableToPointInTimeInput")
    ExportTableToPointInTimeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ExportTableToPointInTimeOutput", name: "ExportTableToPointInTimeOutput")
    ExportTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodb#ExportTime", name: "ExportTime")
    ExportToTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodb#ExportToTime", name: "ExportToTime")
    ExportType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ExportType", name: "ExportType")
    ExportViewType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ExportViewType", name: "ExportViewType")
    ExpressionAttributeNameMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#ExpressionAttributeNameMap", name: "ExpressionAttributeNameMap")
    ExpressionAttributeNameVariable = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ExpressionAttributeNameVariable", name: "ExpressionAttributeNameVariable")
    ExpressionAttributeValueMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#ExpressionAttributeValueMap", name: "ExpressionAttributeValueMap")
    ExpressionAttributeValueVariable = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ExpressionAttributeValueVariable", name: "ExpressionAttributeValueVariable")
    FailureCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#FailureCode", name: "FailureCode")
    FailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#FailureException", name: "FailureException")
    FailureMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#FailureMessage", name: "FailureMessage")
    FilterConditionMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#FilterConditionMap", name: "FilterConditionMap")
    FilterSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#FilterSpecification", name: "FilterSpecification")
    Get = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#Get", name: "Get")
    GetItemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GetItemInput", name: "GetItemInput")
    GetItemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GetItemOutput", name: "GetItemOutput")
    GetResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GetResourcePolicyInput", name: "GetResourcePolicyInput")
    GetResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GetResourcePolicyOutput", name: "GetResourcePolicyOutput")
    GlobalSecondaryIndex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GlobalSecondaryIndex", name: "GlobalSecondaryIndex")
    GlobalSecondaryIndexAutoScalingUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GlobalSecondaryIndexAutoScalingUpdate", name: "GlobalSecondaryIndexAutoScalingUpdate")
    GlobalSecondaryIndexAutoScalingUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#GlobalSecondaryIndexAutoScalingUpdateList", name: "GlobalSecondaryIndexAutoScalingUpdateList", traits: {"smithy.api#length" => {"min" => 1}})
    GlobalSecondaryIndexDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GlobalSecondaryIndexDescription", name: "GlobalSecondaryIndexDescription")
    GlobalSecondaryIndexDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#GlobalSecondaryIndexDescriptionList", name: "GlobalSecondaryIndexDescriptionList")
    GlobalSecondaryIndexInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GlobalSecondaryIndexInfo", name: "GlobalSecondaryIndexInfo")
    GlobalSecondaryIndexList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#GlobalSecondaryIndexList", name: "GlobalSecondaryIndexList")
    GlobalSecondaryIndexUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GlobalSecondaryIndexUpdate", name: "GlobalSecondaryIndexUpdate")
    GlobalSecondaryIndexUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#GlobalSecondaryIndexUpdateList", name: "GlobalSecondaryIndexUpdateList")
    GlobalSecondaryIndexWarmThroughputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GlobalSecondaryIndexWarmThroughputDescription", name: "GlobalSecondaryIndexWarmThroughputDescription")
    GlobalSecondaryIndexes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#GlobalSecondaryIndexes", name: "GlobalSecondaryIndexes")
    GlobalTable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GlobalTable", name: "GlobalTable")
    GlobalTableAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GlobalTableAlreadyExistsException", name: "GlobalTableAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    GlobalTableArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#GlobalTableArnString", name: "GlobalTableArnString")
    GlobalTableDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GlobalTableDescription", name: "GlobalTableDescription")
    GlobalTableGlobalSecondaryIndexSettingsUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GlobalTableGlobalSecondaryIndexSettingsUpdate", name: "GlobalTableGlobalSecondaryIndexSettingsUpdate")
    GlobalTableGlobalSecondaryIndexSettingsUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#GlobalTableGlobalSecondaryIndexSettingsUpdateList", name: "GlobalTableGlobalSecondaryIndexSettingsUpdateList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    GlobalTableList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#GlobalTableList", name: "GlobalTableList")
    GlobalTableNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GlobalTableNotFoundException", name: "GlobalTableNotFoundException", traits: {"smithy.api#error" => "client"})
    GlobalTableSettingsReplicationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#GlobalTableSettingsReplicationMode", name: "GlobalTableSettingsReplicationMode")
    GlobalTableStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#GlobalTableStatus", name: "GlobalTableStatus")
    GlobalTableWitnessDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GlobalTableWitnessDescription", name: "GlobalTableWitnessDescription")
    GlobalTableWitnessDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#GlobalTableWitnessDescriptionList", name: "GlobalTableWitnessDescriptionList")
    GlobalTableWitnessGroupUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#GlobalTableWitnessGroupUpdate", name: "GlobalTableWitnessGroupUpdate")
    GlobalTableWitnessGroupUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#GlobalTableWitnessGroupUpdateList", name: "GlobalTableWitnessGroupUpdateList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    IdempotentParameterMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#IdempotentParameterMismatchException", name: "IdempotentParameterMismatchException", traits: {"smithy.api#error" => "client"})
    ImportArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ImportArn", name: "ImportArn", traits: {"smithy.api#length" => {"min" => 37, "max" => 1024}})
    ImportConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ImportConflictException", name: "ImportConflictException", traits: {"smithy.api#error" => "client"})
    ImportEndTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodb#ImportEndTime", name: "ImportEndTime")
    ImportNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ImportNextToken", name: "ImportNextToken", traits: {"smithy.api#length" => {"min" => 112, "max" => 1024}, "smithy.api#pattern" => "^([0-9a-f]{16})+$"})
    ImportNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ImportNotFoundException", name: "ImportNotFoundException", traits: {"smithy.api#error" => "client"})
    ImportStartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodb#ImportStartTime", name: "ImportStartTime")
    ImportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ImportStatus", name: "ImportStatus")
    ImportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ImportSummary", name: "ImportSummary")
    ImportSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ImportSummaryList", name: "ImportSummaryList")
    ImportTableDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ImportTableDescription", name: "ImportTableDescription")
    ImportTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ImportTableInput", name: "ImportTableInput")
    ImportTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ImportTableOutput", name: "ImportTableOutput")
    ImportedItemCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#ImportedItemCount", name: "ImportedItemCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    IncrementalExportSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#IncrementalExportSpecification", name: "IncrementalExportSpecification")
    IndexName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#IndexName", name: "IndexName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    IndexNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#IndexNotFoundException", name: "IndexNotFoundException", traits: {"smithy.api#error" => "client"})
    IndexStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#IndexStatus", name: "IndexStatus")
    InputCompressionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#InputCompressionType", name: "InputCompressionType")
    InputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#InputFormat", name: "InputFormat")
    InputFormatOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#InputFormatOptions", name: "InputFormatOptions")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    IntegerObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#IntegerObject", name: "IntegerObject")
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#InternalServerError", name: "InternalServerError", traits: {"smithy.api#error" => "server"})
    InvalidEndpointException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#InvalidEndpointException", name: "InvalidEndpointException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 421})
    InvalidExportTimeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#InvalidExportTimeException", name: "InvalidExportTimeException", traits: {"smithy.api#error" => "client"})
    InvalidRestoreTimeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#InvalidRestoreTimeException", name: "InvalidRestoreTimeException", traits: {"smithy.api#error" => "client"})
    ItemCollectionKeyAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#ItemCollectionKeyAttributeMap", name: "ItemCollectionKeyAttributeMap")
    ItemCollectionMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ItemCollectionMetrics", name: "ItemCollectionMetrics")
    ItemCollectionMetricsMultiple = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ItemCollectionMetricsMultiple", name: "ItemCollectionMetricsMultiple")
    ItemCollectionMetricsPerTable = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#ItemCollectionMetricsPerTable", name: "ItemCollectionMetricsPerTable")
    ItemCollectionSizeEstimateBound = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.dynamodb#ItemCollectionSizeEstimateBound", name: "ItemCollectionSizeEstimateBound")
    ItemCollectionSizeEstimateRange = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ItemCollectionSizeEstimateRange", name: "ItemCollectionSizeEstimateRange")
    ItemCollectionSizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ItemCollectionSizeLimitExceededException", name: "ItemCollectionSizeLimitExceededException", traits: {"smithy.api#error" => "client"})
    ItemCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#ItemCount", name: "ItemCount", traits: {"smithy.api#range" => {"min" => 0}})
    ItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ItemList", name: "ItemList")
    ItemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ItemResponse", name: "ItemResponse")
    ItemResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ItemResponseList", name: "ItemResponseList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    KMSMasterKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#KMSMasterKeyArn", name: "KMSMasterKeyArn")
    KMSMasterKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#KMSMasterKeyId", name: "KMSMasterKeyId")
    Key = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#Key", name: "Key")
    KeyConditions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#KeyConditions", name: "KeyConditions")
    KeyExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#KeyExpression", name: "KeyExpression")
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#KeyList", name: "KeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    KeySchema = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#KeySchema", name: "KeySchema", traits: {"smithy.api#length" => {"min" => 1}})
    KeySchemaAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#KeySchemaAttributeName", name: "KeySchemaAttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    KeySchemaElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#KeySchemaElement", name: "KeySchemaElement")
    KeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#KeyType", name: "KeyType")
    KeysAndAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#KeysAndAttributes", name: "KeysAndAttributes")
    KinesisDataStreamDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#KinesisDataStreamDestination", name: "KinesisDataStreamDestination")
    KinesisDataStreamDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#KinesisDataStreamDestinations", name: "KinesisDataStreamDestinations")
    LastUpdateDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodb#LastUpdateDateTime", name: "LastUpdateDateTime")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListAttributeValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ListAttributeValue", name: "ListAttributeValue")
    ListBackupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListBackupsInput", name: "ListBackupsInput")
    ListBackupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListBackupsOutput", name: "ListBackupsOutput")
    ListContributorInsightsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListContributorInsightsInput", name: "ListContributorInsightsInput")
    ListContributorInsightsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#ListContributorInsightsLimit", name: "ListContributorInsightsLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"max" => 100}})
    ListContributorInsightsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListContributorInsightsOutput", name: "ListContributorInsightsOutput")
    ListExportsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListExportsInput", name: "ListExportsInput")
    ListExportsMaxLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#ListExportsMaxLimit", name: "ListExportsMaxLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    ListExportsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListExportsOutput", name: "ListExportsOutput")
    ListGlobalTablesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListGlobalTablesInput", name: "ListGlobalTablesInput")
    ListGlobalTablesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListGlobalTablesOutput", name: "ListGlobalTablesOutput")
    ListImportsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListImportsInput", name: "ListImportsInput")
    ListImportsMaxLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#ListImportsMaxLimit", name: "ListImportsMaxLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    ListImportsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListImportsOutput", name: "ListImportsOutput")
    ListTablesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListTablesInput", name: "ListTablesInput")
    ListTablesInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#ListTablesInputLimit", name: "ListTablesInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListTablesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListTablesOutput", name: "ListTablesOutput")
    ListTagsOfResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListTagsOfResourceInput", name: "ListTagsOfResourceInput")
    ListTagsOfResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ListTagsOfResourceOutput", name: "ListTagsOfResourceOutput")
    LocalSecondaryIndex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#LocalSecondaryIndex", name: "LocalSecondaryIndex")
    LocalSecondaryIndexDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#LocalSecondaryIndexDescription", name: "LocalSecondaryIndexDescription")
    LocalSecondaryIndexDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#LocalSecondaryIndexDescriptionList", name: "LocalSecondaryIndexDescriptionList")
    LocalSecondaryIndexInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#LocalSecondaryIndexInfo", name: "LocalSecondaryIndexInfo")
    LocalSecondaryIndexList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#LocalSecondaryIndexList", name: "LocalSecondaryIndexList")
    LocalSecondaryIndexes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#LocalSecondaryIndexes", name: "LocalSecondaryIndexes")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#Long", name: "Long", traits: {"smithy.api#default" => 0})
    LongObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#LongObject", name: "LongObject")
    MapAttributeValue = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#MapAttributeValue", name: "MapAttributeValue")
    MultiRegionConsistency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#MultiRegionConsistency", name: "MultiRegionConsistency")
    NextTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#NextTokenString", name: "NextTokenString")
    NonKeyAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#NonKeyAttributeName", name: "NonKeyAttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    NonKeyAttributeNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#NonKeyAttributeNameList", name: "NonKeyAttributeNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    NonNegativeLongObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#NonNegativeLongObject", name: "NonNegativeLongObject", traits: {"smithy.api#range" => {"min" => 0}})
    NullAttributeValue = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dynamodb#NullAttributeValue", name: "NullAttributeValue")
    NumberAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#NumberAttributeValue", name: "NumberAttributeValue")
    NumberSetAttributeValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#NumberSetAttributeValue", name: "NumberSetAttributeValue")
    OnDemandThroughput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#OnDemandThroughput", name: "OnDemandThroughput")
    OnDemandThroughputOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#OnDemandThroughputOverride", name: "OnDemandThroughputOverride")
    ParameterizedStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ParameterizedStatement", name: "ParameterizedStatement")
    ParameterizedStatements = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ParameterizedStatements", name: "ParameterizedStatements", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PartiQLBatchRequest = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#PartiQLBatchRequest", name: "PartiQLBatchRequest", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    PartiQLBatchResponse = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#PartiQLBatchResponse", name: "PartiQLBatchResponse")
    PartiQLNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#PartiQLNextToken", name: "PartiQLNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}})
    PartiQLStatement = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#PartiQLStatement", name: "PartiQLStatement", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}})
    PointInTimeRecoveryDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#PointInTimeRecoveryDescription", name: "PointInTimeRecoveryDescription")
    PointInTimeRecoverySpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#PointInTimeRecoverySpecification", name: "PointInTimeRecoverySpecification")
    PointInTimeRecoveryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#PointInTimeRecoveryStatus", name: "PointInTimeRecoveryStatus")
    PointInTimeRecoveryUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#PointInTimeRecoveryUnavailableException", name: "PointInTimeRecoveryUnavailableException", traits: {"smithy.api#error" => "client"})
    PolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#PolicyNotFoundException", name: "PolicyNotFoundException", traits: {"smithy.api#error" => "client"})
    PolicyRevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#PolicyRevisionId", name: "PolicyRevisionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    PositiveIntegerObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#PositiveIntegerObject", name: "PositiveIntegerObject", traits: {"smithy.api#range" => {"min" => 1}})
    PositiveLongObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#PositiveLongObject", name: "PositiveLongObject", traits: {"smithy.api#range" => {"min" => 1}})
    PreparedStatementParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#PreparedStatementParameters", name: "PreparedStatementParameters", traits: {"smithy.api#length" => {"min" => 1}})
    ProcessedItemCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#ProcessedItemCount", name: "ProcessedItemCount", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    Projection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#Projection", name: "Projection")
    ProjectionExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ProjectionExpression", name: "ProjectionExpression")
    ProjectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ProjectionType", name: "ProjectionType")
    ProvisionedThroughput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ProvisionedThroughput", name: "ProvisionedThroughput")
    ProvisionedThroughputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ProvisionedThroughputDescription", name: "ProvisionedThroughputDescription")
    ProvisionedThroughputExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ProvisionedThroughputExceededException", name: "ProvisionedThroughputExceededException", traits: {"smithy.api#error" => "client"})
    ProvisionedThroughputOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ProvisionedThroughputOverride", name: "ProvisionedThroughputOverride")
    Put = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#Put", name: "Put")
    PutItemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#PutItemInput", name: "PutItemInput")
    PutItemInputAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#PutItemInputAttributeMap", name: "PutItemInputAttributeMap")
    PutItemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#PutItemOutput", name: "PutItemOutput")
    PutRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#PutRequest", name: "PutRequest")
    PutResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#PutResourcePolicyInput", name: "PutResourcePolicyInput")
    PutResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#PutResourcePolicyOutput", name: "PutResourcePolicyOutput")
    QueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#QueryInput", name: "QueryInput")
    QueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#QueryOutput", name: "QueryOutput")
    Reason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#Reason", name: "Reason")
    RecoveryPeriodInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#RecoveryPeriodInDays", name: "RecoveryPeriodInDays", traits: {"smithy.api#range" => {"min" => 1, "max" => 35}})
    RegionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#RegionName", name: "RegionName")
    Replica = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#Replica", name: "Replica")
    ReplicaAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaAlreadyExistsException", name: "ReplicaAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ReplicaAutoScalingDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaAutoScalingDescription", name: "ReplicaAutoScalingDescription")
    ReplicaAutoScalingDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicaAutoScalingDescriptionList", name: "ReplicaAutoScalingDescriptionList")
    ReplicaAutoScalingUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaAutoScalingUpdate", name: "ReplicaAutoScalingUpdate")
    ReplicaAutoScalingUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicaAutoScalingUpdateList", name: "ReplicaAutoScalingUpdateList", traits: {"smithy.api#length" => {"min" => 1}})
    ReplicaDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaDescription", name: "ReplicaDescription")
    ReplicaDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicaDescriptionList", name: "ReplicaDescriptionList")
    ReplicaGlobalSecondaryIndex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaGlobalSecondaryIndex", name: "ReplicaGlobalSecondaryIndex")
    ReplicaGlobalSecondaryIndexAutoScalingDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaGlobalSecondaryIndexAutoScalingDescription", name: "ReplicaGlobalSecondaryIndexAutoScalingDescription")
    ReplicaGlobalSecondaryIndexAutoScalingDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicaGlobalSecondaryIndexAutoScalingDescriptionList", name: "ReplicaGlobalSecondaryIndexAutoScalingDescriptionList")
    ReplicaGlobalSecondaryIndexAutoScalingUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaGlobalSecondaryIndexAutoScalingUpdate", name: "ReplicaGlobalSecondaryIndexAutoScalingUpdate")
    ReplicaGlobalSecondaryIndexAutoScalingUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicaGlobalSecondaryIndexAutoScalingUpdateList", name: "ReplicaGlobalSecondaryIndexAutoScalingUpdateList")
    ReplicaGlobalSecondaryIndexDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaGlobalSecondaryIndexDescription", name: "ReplicaGlobalSecondaryIndexDescription")
    ReplicaGlobalSecondaryIndexDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicaGlobalSecondaryIndexDescriptionList", name: "ReplicaGlobalSecondaryIndexDescriptionList")
    ReplicaGlobalSecondaryIndexList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicaGlobalSecondaryIndexList", name: "ReplicaGlobalSecondaryIndexList", traits: {"smithy.api#length" => {"min" => 1}})
    ReplicaGlobalSecondaryIndexSettingsDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaGlobalSecondaryIndexSettingsDescription", name: "ReplicaGlobalSecondaryIndexSettingsDescription")
    ReplicaGlobalSecondaryIndexSettingsDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicaGlobalSecondaryIndexSettingsDescriptionList", name: "ReplicaGlobalSecondaryIndexSettingsDescriptionList")
    ReplicaGlobalSecondaryIndexSettingsUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaGlobalSecondaryIndexSettingsUpdate", name: "ReplicaGlobalSecondaryIndexSettingsUpdate")
    ReplicaGlobalSecondaryIndexSettingsUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicaGlobalSecondaryIndexSettingsUpdateList", name: "ReplicaGlobalSecondaryIndexSettingsUpdateList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ReplicaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicaList", name: "ReplicaList")
    ReplicaNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaNotFoundException", name: "ReplicaNotFoundException", traits: {"smithy.api#error" => "client"})
    ReplicaSettingsDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaSettingsDescription", name: "ReplicaSettingsDescription")
    ReplicaSettingsDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicaSettingsDescriptionList", name: "ReplicaSettingsDescriptionList")
    ReplicaSettingsUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaSettingsUpdate", name: "ReplicaSettingsUpdate")
    ReplicaSettingsUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicaSettingsUpdateList", name: "ReplicaSettingsUpdateList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ReplicaStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ReplicaStatus", name: "ReplicaStatus")
    ReplicaStatusDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ReplicaStatusDescription", name: "ReplicaStatusDescription")
    ReplicaStatusPercentProgress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ReplicaStatusPercentProgress", name: "ReplicaStatusPercentProgress")
    ReplicaUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicaUpdate", name: "ReplicaUpdate")
    ReplicaUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicaUpdateList", name: "ReplicaUpdateList")
    ReplicatedWriteConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicatedWriteConflictException", name: "ReplicatedWriteConflictException", traits: {"smithy.api#error" => "client", "smithy.api#retryable" => {}})
    ReplicationGroupUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ReplicationGroupUpdate", name: "ReplicationGroupUpdate")
    ReplicationGroupUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ReplicationGroupUpdateList", name: "ReplicationGroupUpdateList", traits: {"smithy.api#length" => {"min" => 1}})
    RequestLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#RequestLimitExceeded", name: "RequestLimitExceeded", traits: {"smithy.api#error" => "client"})
    Resource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#Resource", name: "Resource")
    ResourceArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ResourceArnString", name: "ResourceArnString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1283}})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourcePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#ResourcePolicy", name: "ResourcePolicy")
    RestoreInProgress = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dynamodb#RestoreInProgress", name: "RestoreInProgress")
    RestoreSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#RestoreSummary", name: "RestoreSummary")
    RestoreTableFromBackupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#RestoreTableFromBackupInput", name: "RestoreTableFromBackupInput")
    RestoreTableFromBackupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#RestoreTableFromBackupOutput", name: "RestoreTableFromBackupOutput")
    RestoreTableToPointInTimeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#RestoreTableToPointInTimeInput", name: "RestoreTableToPointInTimeInput")
    RestoreTableToPointInTimeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#RestoreTableToPointInTimeOutput", name: "RestoreTableToPointInTimeOutput")
    ReturnConsumedCapacity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ReturnConsumedCapacity", name: "ReturnConsumedCapacity")
    ReturnItemCollectionMetrics = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ReturnItemCollectionMetrics", name: "ReturnItemCollectionMetrics")
    ReturnValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ReturnValue", name: "ReturnValue")
    ReturnValuesOnConditionCheckFailure = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ReturnValuesOnConditionCheckFailure", name: "ReturnValuesOnConditionCheckFailure")
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[a-z0-9A-Z]+[\\.\\-\\w]*[a-z0-9A-Z]+$"})
    S3BucketOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#S3BucketOwner", name: "S3BucketOwner", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    S3BucketSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#S3BucketSource", name: "S3BucketSource")
    S3Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#S3Prefix", name: "S3Prefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    S3SseAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#S3SseAlgorithm", name: "S3SseAlgorithm")
    S3SseKmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#S3SseKmsKeyId", name: "S3SseKmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    SSEDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#SSEDescription", name: "SSEDescription")
    SSEEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dynamodb#SSEEnabled", name: "SSEEnabled")
    SSESpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#SSESpecification", name: "SSESpecification")
    SSEStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#SSEStatus", name: "SSEStatus")
    SSEType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#SSEType", name: "SSEType")
    ScalarAttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#ScalarAttributeType", name: "ScalarAttributeType")
    ScanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ScanInput", name: "ScanInput")
    ScanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ScanOutput", name: "ScanOutput")
    ScanSegment = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#ScanSegment", name: "ScanSegment", traits: {"smithy.api#range" => {"min" => 0, "max" => 999999}})
    ScanTotalSegments = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#ScanTotalSegments", name: "ScanTotalSegments", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000000}})
    ScoreNumber = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.dynamodb#ScoreNumber", name: "ScoreNumber", traits: {"smithy.api#default" => 0})
    SearchResultItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#SearchResultItem", name: "SearchResultItem")
    SearchResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#SearchResultList", name: "SearchResultList")
    SearchSchema = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#SearchSchema", name: "SearchSchema", traits: {"smithy.api#length" => {"min" => 1}})
    SearchSchemaElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#SearchSchemaElement", name: "SearchSchemaElement")
    SearchSchemaElementType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#SearchSchemaElementType", name: "SearchSchemaElementType")
    SearchVectorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#SearchVectorList", name: "SearchVectorList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    SearchVectorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#SearchVectorsInput", name: "SearchVectorsInput")
    SearchVectorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#SearchVectorsOutput", name: "SearchVectorsOutput")
    SecondaryIndexesCapacityMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#SecondaryIndexesCapacityMap", name: "SecondaryIndexesCapacityMap")
    Select = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#Select", name: "Select")
    SourceTableDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#SourceTableDetails", name: "SourceTableDetails")
    SourceTableFeatureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#SourceTableFeatureDetails", name: "SourceTableFeatureDetails")
    StreamArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#StreamArn", name: "StreamArn", traits: {"smithy.api#length" => {"min" => 37, "max" => 1024}})
    StreamEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dynamodb#StreamEnabled", name: "StreamEnabled")
    StreamSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#StreamSpecification", name: "StreamSpecification")
    StreamViewType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#StreamViewType", name: "StreamViewType")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#String", name: "String")
    StringAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#StringAttributeValue", name: "StringAttributeValue")
    StringSetAttributeValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#StringSetAttributeValue", name: "StringSetAttributeValue")
    TableAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TableAlreadyExistsException", name: "TableAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    TableArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#TableArn", name: "TableArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    TableAutoScalingDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TableAutoScalingDescription", name: "TableAutoScalingDescription")
    TableClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#TableClass", name: "TableClass")
    TableClassSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TableClassSummary", name: "TableClassSummary")
    TableCreationDateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodb#TableCreationDateTime", name: "TableCreationDateTime")
    TableCreationParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TableCreationParameters", name: "TableCreationParameters")
    TableDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TableDescription", name: "TableDescription")
    TableId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#TableId", name: "TableId", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    TableInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TableInUseException", name: "TableInUseException", traits: {"smithy.api#error" => "client"})
    TableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#TableName", name: "TableName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    TableNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#TableNameList", name: "TableNameList")
    TableNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TableNotFoundException", name: "TableNotFoundException", traits: {"smithy.api#error" => "client"})
    TableStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#TableStatus", name: "TableStatus")
    TableWarmThroughputDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TableWarmThroughputDescription", name: "TableWarmThroughputDescription")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#Tag", name: "Tag")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#TagKeyList", name: "TagKeyList")
    TagKeyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#TagKeyString", name: "TagKeyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#TagList", name: "TagList")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TagResourceInput", name: "TagResourceInput")
    TagValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#TagValueString", name: "TagValueString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "Throttling", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ThrottlingReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#ThrottlingReason", name: "ThrottlingReason")
    ThrottlingReasonList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#ThrottlingReasonList", name: "ThrottlingReasonList")
    TimeRangeLowerBound = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodb#TimeRangeLowerBound", name: "TimeRangeLowerBound")
    TimeRangeUpperBound = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodb#TimeRangeUpperBound", name: "TimeRangeUpperBound")
    TimeToLiveAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#TimeToLiveAttributeName", name: "TimeToLiveAttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    TimeToLiveDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TimeToLiveDescription", name: "TimeToLiveDescription")
    TimeToLiveEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dynamodb#TimeToLiveEnabled", name: "TimeToLiveEnabled")
    TimeToLiveSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TimeToLiveSpecification", name: "TimeToLiveSpecification")
    TimeToLiveStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#TimeToLiveStatus", name: "TimeToLiveStatus")
    TopKInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodb#TopKInteger", name: "TopKInteger", traits: {"smithy.api#range" => {"min" => 1}})
    TransactGetItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TransactGetItem", name: "TransactGetItem")
    TransactGetItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#TransactGetItemList", name: "TransactGetItemList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TransactGetItemsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TransactGetItemsInput", name: "TransactGetItemsInput")
    TransactGetItemsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TransactGetItemsOutput", name: "TransactGetItemsOutput")
    TransactWriteItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TransactWriteItem", name: "TransactWriteItem")
    TransactWriteItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#TransactWriteItemList", name: "TransactWriteItemList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TransactWriteItemsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TransactWriteItemsInput", name: "TransactWriteItemsInput")
    TransactWriteItemsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TransactWriteItemsOutput", name: "TransactWriteItemsOutput")
    TransactionCanceledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TransactionCanceledException", name: "TransactionCanceledException", traits: {"smithy.api#error" => "client"})
    TransactionConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TransactionConflictException", name: "TransactionConflictException", traits: {"smithy.api#error" => "client"})
    TransactionInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#TransactionInProgressException", name: "TransactionInProgressException", traits: {"smithy.api#error" => "client"})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UntagResourceInput", name: "UntagResourceInput")
    Update = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#Update", name: "Update")
    UpdateContinuousBackupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateContinuousBackupsInput", name: "UpdateContinuousBackupsInput")
    UpdateContinuousBackupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateContinuousBackupsOutput", name: "UpdateContinuousBackupsOutput")
    UpdateContributorInsightsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateContributorInsightsInput", name: "UpdateContributorInsightsInput")
    UpdateContributorInsightsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateContributorInsightsOutput", name: "UpdateContributorInsightsOutput")
    UpdateExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#UpdateExpression", name: "UpdateExpression")
    UpdateGlobalSecondaryIndexAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateGlobalSecondaryIndexAction", name: "UpdateGlobalSecondaryIndexAction")
    UpdateGlobalTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateGlobalTableInput", name: "UpdateGlobalTableInput")
    UpdateGlobalTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateGlobalTableOutput", name: "UpdateGlobalTableOutput")
    UpdateGlobalTableSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateGlobalTableSettingsInput", name: "UpdateGlobalTableSettingsInput")
    UpdateGlobalTableSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateGlobalTableSettingsOutput", name: "UpdateGlobalTableSettingsOutput")
    UpdateItemInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateItemInput", name: "UpdateItemInput")
    UpdateItemOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateItemOutput", name: "UpdateItemOutput")
    UpdateKinesisStreamingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateKinesisStreamingConfiguration", name: "UpdateKinesisStreamingConfiguration")
    UpdateKinesisStreamingDestinationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateKinesisStreamingDestinationInput", name: "UpdateKinesisStreamingDestinationInput")
    UpdateKinesisStreamingDestinationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateKinesisStreamingDestinationOutput", name: "UpdateKinesisStreamingDestinationOutput")
    UpdateReplicationGroupMemberAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateReplicationGroupMemberAction", name: "UpdateReplicationGroupMemberAction")
    UpdateTableInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateTableInput", name: "UpdateTableInput")
    UpdateTableOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateTableOutput", name: "UpdateTableOutput")
    UpdateTableReplicaAutoScalingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateTableReplicaAutoScalingInput", name: "UpdateTableReplicaAutoScalingInput")
    UpdateTableReplicaAutoScalingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateTableReplicaAutoScalingOutput", name: "UpdateTableReplicaAutoScalingOutput")
    UpdateTimeToLiveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateTimeToLiveInput", name: "UpdateTimeToLiveInput")
    UpdateTimeToLiveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#UpdateTimeToLiveOutput", name: "UpdateTimeToLiveOutput")
    VectorAttributeDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#VectorAttributeDefinition", name: "VectorAttributeDefinition")
    VectorAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodb#VectorAttributeName", name: "VectorAttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    VectorCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#VectorCapacity", name: "VectorCapacity")
    VectorDistanceFunction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#VectorDistanceFunction", name: "VectorDistanceFunction")
    VectorIndex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#VectorIndex", name: "VectorIndex")
    VectorIndexDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#VectorIndexDescription", name: "VectorIndexDescription")
    VectorIndexDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#VectorIndexDescriptionList", name: "VectorIndexDescriptionList")
    VectorIndexInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#VectorIndexInfo", name: "VectorIndexInfo")
    VectorIndexList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#VectorIndexList", name: "VectorIndexList")
    VectorIndexUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#VectorIndexUpdate", name: "VectorIndexUpdate")
    VectorIndexUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#VectorIndexUpdateList", name: "VectorIndexUpdateList")
    VectorIndexes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#VectorIndexes", name: "VectorIndexes")
    VectorIndexesCapacityMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodb#VectorIndexesCapacityMap", name: "VectorIndexesCapacityMap")
    WarmThroughput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#WarmThroughput", name: "WarmThroughput")
    WitnessStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#WitnessStatus", name: "WitnessStatus")
    WriteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#WriteRequest", name: "WriteRequest")
    WriteRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#WriteRequests", name: "WriteRequests", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})

    ApproximateCreationDateTimePrecision.add_member(:millisecond, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MILLISECOND", traits: {"smithy.api#enumValue" => "MILLISECOND"}))
    ApproximateCreationDateTimePrecision.add_member(:microsecond, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MICROSECOND", traits: {"smithy.api#enumValue" => "MICROSECOND"}))
    ArchivalSummary.add_member(:archival_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ArchivalDateTime"))
    ArchivalSummary.add_member(:archival_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivalReason, name: "ArchivalReason"))
    ArchivalSummary.add_member(:archival_backup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupArn, name: "ArchivalBackupArn"))
    ArchivalSummary.type = Types::ArchivalSummary
    AttributeAction.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD", traits: {"smithy.api#enumValue" => "ADD"}))
    AttributeAction.add_member(:put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUT", traits: {"smithy.api#enumValue" => "PUT"}))
    AttributeAction.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    AttributeDefinition.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchemaAttributeName, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    AttributeDefinition.add_member(:attribute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalarAttributeType, name: "AttributeType", traits: {"smithy.api#required" => {}}))
    AttributeDefinition.type = Types::AttributeDefinition
    AttributeDefinitions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeDefinition, name: "member"))
    AttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    AttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    AttributeNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "member"))
    AttributeUpdates.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    AttributeUpdates.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueUpdate, name: "value"))
    AttributeValue.add_member(:s, Types::AttributeValue::S, ::Smithy::Schema::Shapes::MemberShape.new(target: StringAttributeValue, name: "S"))
    AttributeValue.add_member(:n, Types::AttributeValue::N, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberAttributeValue, name: "N"))
    AttributeValue.add_member(:b, Types::AttributeValue::B, ::Smithy::Schema::Shapes::MemberShape.new(target: BinaryAttributeValue, name: "B"))
    AttributeValue.add_member(:ss, Types::AttributeValue::SS, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSetAttributeValue, name: "SS"))
    AttributeValue.add_member(:ns, Types::AttributeValue::NS, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberSetAttributeValue, name: "NS"))
    AttributeValue.add_member(:bs, Types::AttributeValue::BS, ::Smithy::Schema::Shapes::MemberShape.new(target: BinarySetAttributeValue, name: "BS"))
    AttributeValue.add_member(:m, Types::AttributeValue::M, ::Smithy::Schema::Shapes::MemberShape.new(target: MapAttributeValue, name: "M"))
    AttributeValue.add_member(:l, Types::AttributeValue::L, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAttributeValue, name: "L"))
    AttributeValue.add_member(:null, Types::AttributeValue::NULL, ::Smithy::Schema::Shapes::MemberShape.new(target: NullAttributeValue, name: "NULL"))
    AttributeValue.add_member(:bool, Types::AttributeValue::BOOL, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanAttributeValue, name: "BOOL"))
    AttributeValue.add_member(:unknown, Types::AttributeValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AttributeValue.type = Types::AttributeValue
    AttributeValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "member"))
    AttributeValueUpdate.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "Value"))
    AttributeValueUpdate.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeAction, name: "Action"))
    AttributeValueUpdate.type = Types::AttributeValueUpdate
    AutoScalingPolicyDescription.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicyName, name: "PolicyName"))
    AutoScalingPolicyDescription.add_member(:target_tracking_scaling_policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingTargetTrackingScalingPolicyConfigurationDescription, name: "TargetTrackingScalingPolicyConfiguration"))
    AutoScalingPolicyDescription.type = Types::AutoScalingPolicyDescription
    AutoScalingPolicyDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicyDescription, name: "member"))
    AutoScalingPolicyUpdate.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicyName, name: "PolicyName"))
    AutoScalingPolicyUpdate.add_member(:target_tracking_scaling_policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate, name: "TargetTrackingScalingPolicyConfiguration", traits: {"smithy.api#required" => {}}))
    AutoScalingPolicyUpdate.type = Types::AutoScalingPolicyUpdate
    AutoScalingSettingsDescription.add_member(:minimum_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "MinimumUnits"))
    AutoScalingSettingsDescription.add_member(:maximum_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "MaximumUnits"))
    AutoScalingSettingsDescription.add_member(:auto_scaling_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "AutoScalingDisabled"))
    AutoScalingSettingsDescription.add_member(:auto_scaling_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AutoScalingRoleArn"))
    AutoScalingSettingsDescription.add_member(:scaling_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicyDescriptionList, name: "ScalingPolicies"))
    AutoScalingSettingsDescription.type = Types::AutoScalingSettingsDescription
    AutoScalingSettingsUpdate.add_member(:minimum_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "MinimumUnits"))
    AutoScalingSettingsUpdate.add_member(:maximum_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "MaximumUnits"))
    AutoScalingSettingsUpdate.add_member(:auto_scaling_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "AutoScalingDisabled"))
    AutoScalingSettingsUpdate.add_member(:auto_scaling_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingRoleArn, name: "AutoScalingRoleArn"))
    AutoScalingSettingsUpdate.add_member(:scaling_policy_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingPolicyUpdate, name: "ScalingPolicyUpdate"))
    AutoScalingSettingsUpdate.type = Types::AutoScalingSettingsUpdate
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.add_member(:disable_scale_in, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "DisableScaleIn"))
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.add_member(:scale_in_cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerObject, name: "ScaleInCooldown"))
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.add_member(:scale_out_cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerObject, name: "ScaleOutCooldown"))
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.add_member(:target_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleObject, name: "TargetValue", traits: {"smithy.api#required" => {}}))
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.type = Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.add_member(:disable_scale_in, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "DisableScaleIn"))
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.add_member(:scale_in_cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerObject, name: "ScaleInCooldown"))
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.add_member(:scale_out_cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerObject, name: "ScaleOutCooldown"))
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.add_member(:target_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleObject, name: "TargetValue", traits: {"smithy.api#required" => {}}))
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.type = Types::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    BackupDescription.add_member(:backup_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupDetails, name: "BackupDetails"))
    BackupDescription.add_member(:source_table_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceTableDetails, name: "SourceTableDetails"))
    BackupDescription.add_member(:source_table_feature_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceTableFeatureDetails, name: "SourceTableFeatureDetails"))
    BackupDescription.type = Types::BackupDescription
    BackupDetails.add_member(:backup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupArn, name: "BackupArn", traits: {"smithy.api#required" => {}}))
    BackupDetails.add_member(:backup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupName, name: "BackupName", traits: {"smithy.api#required" => {}}))
    BackupDetails.add_member(:backup_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupSizeBytes, name: "BackupSizeBytes"))
    BackupDetails.add_member(:backup_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupStatus, name: "BackupStatus", traits: {"smithy.api#required" => {}}))
    BackupDetails.add_member(:backup_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupType, name: "BackupType", traits: {"smithy.api#required" => {}}))
    BackupDetails.add_member(:backup_creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupCreationDateTime, name: "BackupCreationDateTime", traits: {"smithy.api#required" => {}}))
    BackupDetails.add_member(:backup_expiry_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "BackupExpiryDateTime"))
    BackupDetails.type = Types::BackupDetails
    BackupInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    BackupInUseException.type = Types::BackupInUseException
    BackupNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    BackupNotFoundException.type = Types::BackupNotFoundException
    BackupStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    BackupStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    BackupStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    BackupSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupSummary, name: "member"))
    BackupSummary.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    BackupSummary.add_member(:table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TableId, name: "TableId"))
    BackupSummary.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableArn"))
    BackupSummary.add_member(:backup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupArn, name: "BackupArn"))
    BackupSummary.add_member(:backup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupName, name: "BackupName"))
    BackupSummary.add_member(:backup_creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupCreationDateTime, name: "BackupCreationDateTime"))
    BackupSummary.add_member(:backup_expiry_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "BackupExpiryDateTime"))
    BackupSummary.add_member(:backup_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupStatus, name: "BackupStatus"))
    BackupSummary.add_member(:backup_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupType, name: "BackupType"))
    BackupSummary.add_member(:backup_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupSizeBytes, name: "BackupSizeBytes"))
    BackupSummary.type = Types::BackupSummary
    BackupType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    BackupType.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM", traits: {"smithy.api#enumValue" => "SYSTEM"}))
    BackupType.add_member(:aws_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_BACKUP", traits: {"smithy.api#enumValue" => "AWS_BACKUP"}))
    BackupTypeFilter.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    BackupTypeFilter.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM", traits: {"smithy.api#enumValue" => "SYSTEM"}))
    BackupTypeFilter.add_member(:aws_backup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_BACKUP", traits: {"smithy.api#enumValue" => "AWS_BACKUP"}))
    BackupTypeFilter.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    BatchExecuteStatementInput.add_member(:statements, ::Smithy::Schema::Shapes::MemberShape.new(target: PartiQLBatchRequest, name: "Statements", traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    BatchExecuteStatementInput.type = Types::BatchExecuteStatementInput
    BatchExecuteStatementOutput.add_member(:responses, ::Smithy::Schema::Shapes::MemberShape.new(target: PartiQLBatchResponse, name: "Responses"))
    BatchExecuteStatementOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityMultiple, name: "ConsumedCapacity"))
    BatchExecuteStatementOutput.type = Types::BatchExecuteStatementOutput
    BatchGetItemInput.add_member(:request_items, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRequestMap, name: "RequestItems", traits: {"smithy.api#required" => {}}))
    BatchGetItemInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    BatchGetItemInput.type = Types::BatchGetItemInput
    BatchGetItemOutput.add_member(:responses, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetResponseMap, name: "Responses"))
    BatchGetItemOutput.add_member(:unprocessed_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRequestMap, name: "UnprocessedKeys"))
    BatchGetItemOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityMultiple, name: "ConsumedCapacity"))
    BatchGetItemOutput.type = Types::BatchGetItemOutput
    BatchGetRequestMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "key"))
    BatchGetRequestMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeysAndAttributes, name: "value"))
    BatchGetResponseMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "key"))
    BatchGetResponseMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemList, name: "value"))
    BatchStatementError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchStatementErrorCodeEnum, name: "Code"))
    BatchStatementError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BatchStatementError.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Item"))
    BatchStatementError.type = Types::BatchStatementError
    BatchStatementErrorCodeEnum.add_member(:conditional_check_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConditionalCheckFailed", traits: {"smithy.api#enumValue" => "ConditionalCheckFailed"}))
    BatchStatementErrorCodeEnum.add_member(:item_collection_size_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ItemCollectionSizeLimitExceeded", traits: {"smithy.api#enumValue" => "ItemCollectionSizeLimitExceeded"}))
    BatchStatementErrorCodeEnum.add_member(:request_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestLimitExceeded", traits: {"smithy.api#enumValue" => "RequestLimitExceeded"}))
    BatchStatementErrorCodeEnum.add_member(:validation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ValidationError", traits: {"smithy.api#enumValue" => "ValidationError"}))
    BatchStatementErrorCodeEnum.add_member(:provisioned_throughput_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProvisionedThroughputExceeded", traits: {"smithy.api#enumValue" => "ProvisionedThroughputExceeded"}))
    BatchStatementErrorCodeEnum.add_member(:transaction_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TransactionConflict", traits: {"smithy.api#enumValue" => "TransactionConflict"}))
    BatchStatementErrorCodeEnum.add_member(:throttling_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ThrottlingError", traits: {"smithy.api#enumValue" => "ThrottlingError"}))
    BatchStatementErrorCodeEnum.add_member(:internal_server_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalServerError", traits: {"smithy.api#enumValue" => "InternalServerError"}))
    BatchStatementErrorCodeEnum.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceNotFound", traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    BatchStatementErrorCodeEnum.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessDenied", traits: {"smithy.api#enumValue" => "AccessDenied"}))
    BatchStatementErrorCodeEnum.add_member(:duplicate_item, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DuplicateItem", traits: {"smithy.api#enumValue" => "DuplicateItem"}))
    BatchStatementRequest.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: PartiQLStatement, name: "Statement", traits: {"smithy.api#required" => {}}))
    BatchStatementRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PreparedStatementParameters, name: "Parameters"))
    BatchStatementRequest.add_member(:consistent_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistentRead, name: "ConsistentRead"))
    BatchStatementRequest.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnValuesOnConditionCheckFailure, name: "ReturnValuesOnConditionCheckFailure"))
    BatchStatementRequest.type = Types::BatchStatementRequest
    BatchStatementResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchStatementError, name: "Error"))
    BatchStatementResponse.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    BatchStatementResponse.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Item"))
    BatchStatementResponse.type = Types::BatchStatementResponse
    BatchWriteItemInput.add_member(:request_items, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchWriteItemRequestMap, name: "RequestItems", traits: {"smithy.api#required" => {}}))
    BatchWriteItemInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    BatchWriteItemInput.add_member(:return_item_collection_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnItemCollectionMetrics, name: "ReturnItemCollectionMetrics"))
    BatchWriteItemInput.type = Types::BatchWriteItemInput
    BatchWriteItemOutput.add_member(:unprocessed_items, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchWriteItemRequestMap, name: "UnprocessedItems"))
    BatchWriteItemOutput.add_member(:item_collection_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCollectionMetricsPerTable, name: "ItemCollectionMetrics"))
    BatchWriteItemOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityMultiple, name: "ConsumedCapacity"))
    BatchWriteItemOutput.type = Types::BatchWriteItemOutput
    BatchWriteItemRequestMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "key"))
    BatchWriteItemRequestMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: WriteRequests, name: "value"))
    BillingMode.add_member(:provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONED", traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    BillingMode.add_member(:pay_per_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAY_PER_REQUEST", traits: {"smithy.api#enumValue" => "PAY_PER_REQUEST"}))
    BillingModeSummary.add_member(:billing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, name: "BillingMode"))
    BillingModeSummary.add_member(:last_update_to_pay_per_request_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdateToPayPerRequestDateTime"))
    BillingModeSummary.type = Types::BillingModeSummary
    BinarySetAttributeValue.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BinaryAttributeValue, name: "member"))
    CancellationReason.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Item"))
    CancellationReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "Code"))
    CancellationReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    CancellationReason.type = Types::CancellationReason
    CancellationReasonList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CancellationReason, name: "member"))
    Capacity.add_member(:read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityUnits, name: "ReadCapacityUnits"))
    Capacity.add_member(:write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityUnits, name: "WriteCapacityUnits"))
    Capacity.add_member(:capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityUnits, name: "CapacityUnits"))
    Capacity.type = Types::Capacity
    ComparisonOperator.add_member(:eq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQ", traits: {"smithy.api#enumValue" => "EQ"}))
    ComparisonOperator.add_member(:ne, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NE", traits: {"smithy.api#enumValue" => "NE"}))
    ComparisonOperator.add_member(:in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN", traits: {"smithy.api#enumValue" => "IN"}))
    ComparisonOperator.add_member(:le, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LE", traits: {"smithy.api#enumValue" => "LE"}))
    ComparisonOperator.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LT", traits: {"smithy.api#enumValue" => "LT"}))
    ComparisonOperator.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GE", traits: {"smithy.api#enumValue" => "GE"}))
    ComparisonOperator.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GT", traits: {"smithy.api#enumValue" => "GT"}))
    ComparisonOperator.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    ComparisonOperator.add_member(:not_null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_NULL", traits: {"smithy.api#enumValue" => "NOT_NULL"}))
    ComparisonOperator.add_member(:null, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NULL", traits: {"smithy.api#enumValue" => "NULL"}))
    ComparisonOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    ComparisonOperator.add_member(:not_contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CONTAINS", traits: {"smithy.api#enumValue" => "NOT_CONTAINS"}))
    ComparisonOperator.add_member(:begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    Condition.add_member(:attribute_value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "AttributeValueList"))
    Condition.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "ComparisonOperator", traits: {"smithy.api#required" => {}}))
    Condition.type = Types::Condition
    ConditionCheck.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"smithy.api#required" => {}}))
    ConditionCheck.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}}))
    ConditionCheck.add_member(:condition_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExpression, name: "ConditionExpression", traits: {"smithy.api#required" => {}}))
    ConditionCheck.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    ConditionCheck.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeValueMap, name: "ExpressionAttributeValues"))
    ConditionCheck.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnValuesOnConditionCheckFailure, name: "ReturnValuesOnConditionCheckFailure"))
    ConditionCheck.type = Types::ConditionCheck
    ConditionalCheckFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConditionalCheckFailedException.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Item"))
    ConditionalCheckFailedException.type = Types::ConditionalCheckFailedException
    ConditionalOperator.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AND", traits: {"smithy.api#enumValue" => "AND"}))
    ConditionalOperator.add_member(:or, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OR", traits: {"smithy.api#enumValue" => "OR"}))
    ConsumedCapacity.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName"))
    ConsumedCapacity.add_member(:capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityUnits, name: "CapacityUnits"))
    ConsumedCapacity.add_member(:read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityUnits, name: "ReadCapacityUnits"))
    ConsumedCapacity.add_member(:write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityUnits, name: "WriteCapacityUnits"))
    ConsumedCapacity.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: Capacity, name: "Table"))
    ConsumedCapacity.add_member(:local_secondary_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: SecondaryIndexesCapacityMap, name: "LocalSecondaryIndexes"))
    ConsumedCapacity.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: SecondaryIndexesCapacityMap, name: "GlobalSecondaryIndexes"))
    ConsumedCapacity.add_member(:vector_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIndexesCapacityMap, name: "VectorIndexes"))
    ConsumedCapacity.type = Types::ConsumedCapacity
    ConsumedCapacityMultiple.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacity, name: "member"))
    ContinuousBackupsDescription.add_member(:continuous_backups_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousBackupsStatus, name: "ContinuousBackupsStatus", traits: {"smithy.api#required" => {}}))
    ContinuousBackupsDescription.add_member(:point_in_time_recovery_description, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeRecoveryDescription, name: "PointInTimeRecoveryDescription"))
    ContinuousBackupsDescription.type = Types::ContinuousBackupsDescription
    ContinuousBackupsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ContinuousBackupsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ContinuousBackupsUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ContinuousBackupsUnavailableException.type = Types::ContinuousBackupsUnavailableException
    ContributorInsightsAction.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLE", traits: {"smithy.api#enumValue" => "ENABLE"}))
    ContributorInsightsAction.add_member(:disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    ContributorInsightsMode.add_member(:accessed_and_throttled_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESSED_AND_THROTTLED_KEYS", traits: {"smithy.api#enumValue" => "ACCESSED_AND_THROTTLED_KEYS"}))
    ContributorInsightsMode.add_member(:throttled_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THROTTLED_KEYS", traits: {"smithy.api#enumValue" => "THROTTLED_KEYS"}))
    ContributorInsightsRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorInsightsRule, name: "member"))
    ContributorInsightsStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    ContributorInsightsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ContributorInsightsStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    ContributorInsightsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ContributorInsightsStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ContributorInsightsSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorInsightsSummary, name: "member"))
    ContributorInsightsSummary.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    ContributorInsightsSummary.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    ContributorInsightsSummary.add_member(:contributor_insights_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorInsightsStatus, name: "ContributorInsightsStatus"))
    ContributorInsightsSummary.add_member(:contributor_insights_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorInsightsMode, name: "ContributorInsightsMode"))
    ContributorInsightsSummary.type = Types::ContributorInsightsSummary
    CreateBackupInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    CreateBackupInput.add_member(:backup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupName, name: "BackupName", traits: {"smithy.api#required" => {}}))
    CreateBackupInput.type = Types::CreateBackupInput
    CreateBackupOutput.add_member(:backup_details, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupDetails, name: "BackupDetails"))
    CreateBackupOutput.type = Types::CreateBackupOutput
    CreateGlobalSecondaryIndexAction.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    CreateGlobalSecondaryIndexAction.add_member(:key_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchema, name: "KeySchema", traits: {"smithy.api#required" => {}}))
    CreateGlobalSecondaryIndexAction.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: Projection, name: "Projection", traits: {"smithy.api#required" => {}}))
    CreateGlobalSecondaryIndexAction.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughput, name: "ProvisionedThroughput"))
    CreateGlobalSecondaryIndexAction.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughput, name: "OnDemandThroughput"))
    CreateGlobalSecondaryIndexAction.add_member(:warm_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmThroughput, name: "WarmThroughput"))
    CreateGlobalSecondaryIndexAction.type = Types::CreateGlobalSecondaryIndexAction
    CreateGlobalTableInput.add_member(:global_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "GlobalTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    CreateGlobalTableInput.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaList, name: "ReplicationGroup", traits: {"smithy.api#required" => {}}))
    CreateGlobalTableInput.type = Types::CreateGlobalTableInput
    CreateGlobalTableOutput.add_member(:global_table_description, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableDescription, name: "GlobalTableDescription"))
    CreateGlobalTableOutput.type = Types::CreateGlobalTableOutput
    CreateGlobalTableWitnessGroupMemberAction.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    CreateGlobalTableWitnessGroupMemberAction.type = Types::CreateGlobalTableWitnessGroupMemberAction
    CreateReplicaAction.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    CreateReplicaAction.type = Types::CreateReplicaAction
    CreateReplicationGroupMemberAction.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    CreateReplicationGroupMemberAction.add_member(:kms_master_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSMasterKeyId, name: "KMSMasterKeyId"))
    CreateReplicationGroupMemberAction.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughputOverride, name: "ProvisionedThroughputOverride"))
    CreateReplicationGroupMemberAction.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughputOverride, name: "OnDemandThroughputOverride"))
    CreateReplicationGroupMemberAction.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaGlobalSecondaryIndexList, name: "GlobalSecondaryIndexes"))
    CreateReplicationGroupMemberAction.add_member(:table_class_override, ::Smithy::Schema::Shapes::MemberShape.new(target: TableClass, name: "TableClassOverride"))
    CreateReplicationGroupMemberAction.type = Types::CreateReplicationGroupMemberAction
    CreateTableInput.add_member(:attribute_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeDefinitions, name: "AttributeDefinitions"))
    CreateTableInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    CreateTableInput.add_member(:key_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchema, name: "KeySchema"))
    CreateTableInput.add_member(:local_secondary_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalSecondaryIndexList, name: "LocalSecondaryIndexes"))
    CreateTableInput.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexList, name: "GlobalSecondaryIndexes"))
    CreateTableInput.add_member(:billing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, name: "BillingMode"))
    CreateTableInput.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughput, name: "ProvisionedThroughput"))
    CreateTableInput.add_member(:stream_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSpecification, name: "StreamSpecification"))
    CreateTableInput.add_member(:sse_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: SSESpecification, name: "SSESpecification"))
    CreateTableInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateTableInput.add_member(:table_class, ::Smithy::Schema::Shapes::MemberShape.new(target: TableClass, name: "TableClass"))
    CreateTableInput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionEnabled, name: "DeletionProtectionEnabled"))
    CreateTableInput.add_member(:warm_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmThroughput, name: "WarmThroughput"))
    CreateTableInput.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "ResourcePolicy"))
    CreateTableInput.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughput, name: "OnDemandThroughput"))
    CreateTableInput.add_member(:global_table_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "GlobalTableSourceArn"))
    CreateTableInput.add_member(:global_table_settings_replication_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableSettingsReplicationMode, name: "GlobalTableSettingsReplicationMode"))
    CreateTableInput.add_member(:vector_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIndexList, name: "VectorIndexes"))
    CreateTableInput.type = Types::CreateTableInput
    CreateTableOutput.add_member(:table_description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDescription, name: "TableDescription"))
    CreateTableOutput.type = Types::CreateTableOutput
    CreateVectorIndexAction.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    CreateVectorIndexAction.add_member(:vector_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorAttributeDefinition, name: "VectorAttribute", traits: {"smithy.api#required" => {}}))
    CreateVectorIndexAction.add_member(:search_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSchema, name: "SearchSchema"))
    CreateVectorIndexAction.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: Projection, name: "Projection", traits: {"smithy.api#required" => {}}))
    CreateVectorIndexAction.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "Dimensions", traits: {"smithy.api#required" => {}}))
    CreateVectorIndexAction.add_member(:distance_function, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorDistanceFunction, name: "DistanceFunction", traits: {"smithy.api#required" => {}}))
    CreateVectorIndexAction.type = Types::CreateVectorIndexAction
    CsvHeaderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CsvHeader, name: "member"))
    CsvOptions.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: CsvDelimiter, name: "Delimiter"))
    CsvOptions.add_member(:header_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CsvHeaderList, name: "HeaderList"))
    CsvOptions.type = Types::CsvOptions
    Delete.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"smithy.api#required" => {}}))
    Delete.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}}))
    Delete.add_member(:condition_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExpression, name: "ConditionExpression"))
    Delete.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    Delete.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeValueMap, name: "ExpressionAttributeValues"))
    Delete.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnValuesOnConditionCheckFailure, name: "ReturnValuesOnConditionCheckFailure"))
    Delete.type = Types::Delete
    DeleteBackupInput.add_member(:backup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupArn, name: "BackupArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DeleteBackupInput.type = Types::DeleteBackupInput
    DeleteBackupOutput.add_member(:backup_description, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupDescription, name: "BackupDescription"))
    DeleteBackupOutput.type = Types::DeleteBackupOutput
    DeleteGlobalSecondaryIndexAction.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    DeleteGlobalSecondaryIndexAction.type = Types::DeleteGlobalSecondaryIndexAction
    DeleteGlobalTableWitnessGroupMemberAction.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    DeleteGlobalTableWitnessGroupMemberAction.type = Types::DeleteGlobalTableWitnessGroupMemberAction
    DeleteItemInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DeleteItemInput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"smithy.api#required" => {}}))
    DeleteItemInput.add_member(:expected, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedAttributeMap, name: "Expected"))
    DeleteItemInput.add_member(:conditional_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalOperator, name: "ConditionalOperator"))
    DeleteItemInput.add_member(:return_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnValue, name: "ReturnValues"))
    DeleteItemInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    DeleteItemInput.add_member(:return_item_collection_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnItemCollectionMetrics, name: "ReturnItemCollectionMetrics"))
    DeleteItemInput.add_member(:condition_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExpression, name: "ConditionExpression"))
    DeleteItemInput.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    DeleteItemInput.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeValueMap, name: "ExpressionAttributeValues"))
    DeleteItemInput.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnValuesOnConditionCheckFailure, name: "ReturnValuesOnConditionCheckFailure"))
    DeleteItemInput.type = Types::DeleteItemInput
    DeleteItemOutput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Attributes"))
    DeleteItemOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacity, name: "ConsumedCapacity"))
    DeleteItemOutput.add_member(:item_collection_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCollectionMetrics, name: "ItemCollectionMetrics"))
    DeleteItemOutput.type = Types::DeleteItemOutput
    DeleteReplicaAction.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    DeleteReplicaAction.type = Types::DeleteReplicaAction
    DeleteReplicationGroupMemberAction.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    DeleteReplicationGroupMemberAction.type = Types::DeleteReplicationGroupMemberAction
    DeleteRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"smithy.api#required" => {}}))
    DeleteRequest.type = Types::DeleteRequest
    DeleteResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DeleteResourcePolicyInput.add_member(:expected_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "ExpectedRevisionId"))
    DeleteResourcePolicyInput.type = Types::DeleteResourcePolicyInput
    DeleteResourcePolicyOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "RevisionId"))
    DeleteResourcePolicyOutput.type = Types::DeleteResourcePolicyOutput
    DeleteTableInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DeleteTableInput.type = Types::DeleteTableInput
    DeleteTableOutput.add_member(:table_description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDescription, name: "TableDescription"))
    DeleteTableOutput.type = Types::DeleteTableOutput
    DeleteVectorIndexAction.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    DeleteVectorIndexAction.type = Types::DeleteVectorIndexAction
    DescribeBackupInput.add_member(:backup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupArn, name: "BackupArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeBackupInput.type = Types::DescribeBackupInput
    DescribeBackupOutput.add_member(:backup_description, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupDescription, name: "BackupDescription"))
    DescribeBackupOutput.type = Types::DescribeBackupOutput
    DescribeContinuousBackupsInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeContinuousBackupsInput.type = Types::DescribeContinuousBackupsInput
    DescribeContinuousBackupsOutput.add_member(:continuous_backups_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousBackupsDescription, name: "ContinuousBackupsDescription"))
    DescribeContinuousBackupsOutput.type = Types::DescribeContinuousBackupsOutput
    DescribeContributorInsightsInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeContributorInsightsInput.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    DescribeContributorInsightsInput.type = Types::DescribeContributorInsightsInput
    DescribeContributorInsightsOutput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    DescribeContributorInsightsOutput.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    DescribeContributorInsightsOutput.add_member(:contributor_insights_rule_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorInsightsRuleList, name: "ContributorInsightsRuleList"))
    DescribeContributorInsightsOutput.add_member(:contributor_insights_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorInsightsStatus, name: "ContributorInsightsStatus"))
    DescribeContributorInsightsOutput.add_member(:last_update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdateDateTime, name: "LastUpdateDateTime"))
    DescribeContributorInsightsOutput.add_member(:failure_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureException, name: "FailureException"))
    DescribeContributorInsightsOutput.add_member(:contributor_insights_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorInsightsMode, name: "ContributorInsightsMode"))
    DescribeContributorInsightsOutput.type = Types::DescribeContributorInsightsOutput
    DescribeEndpointsRequest.type = Types::DescribeEndpointsRequest
    DescribeEndpointsResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoints, name: "Endpoints", traits: {"smithy.api#required" => {}}))
    DescribeEndpointsResponse.type = Types::DescribeEndpointsResponse
    DescribeExportInput.add_member(:export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportArn, name: "ExportArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeExportInput.type = Types::DescribeExportInput
    DescribeExportOutput.add_member(:export_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDescription, name: "ExportDescription"))
    DescribeExportOutput.type = Types::DescribeExportOutput
    DescribeGlobalTableInput.add_member(:global_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "GlobalTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeGlobalTableInput.type = Types::DescribeGlobalTableInput
    DescribeGlobalTableOutput.add_member(:global_table_description, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableDescription, name: "GlobalTableDescription"))
    DescribeGlobalTableOutput.type = Types::DescribeGlobalTableOutput
    DescribeGlobalTableSettingsInput.add_member(:global_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "GlobalTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeGlobalTableSettingsInput.type = Types::DescribeGlobalTableSettingsInput
    DescribeGlobalTableSettingsOutput.add_member(:global_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "GlobalTableName"))
    DescribeGlobalTableSettingsOutput.add_member(:replica_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaSettingsDescriptionList, name: "ReplicaSettings"))
    DescribeGlobalTableSettingsOutput.type = Types::DescribeGlobalTableSettingsOutput
    DescribeImportInput.add_member(:import_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportArn, name: "ImportArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeImportInput.type = Types::DescribeImportInput
    DescribeImportOutput.add_member(:import_table_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTableDescription, name: "ImportTableDescription", traits: {"smithy.api#required" => {}}))
    DescribeImportOutput.type = Types::DescribeImportOutput
    DescribeKinesisStreamingDestinationInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeKinesisStreamingDestinationInput.type = Types::DescribeKinesisStreamingDestinationInput
    DescribeKinesisStreamingDestinationOutput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    DescribeKinesisStreamingDestinationOutput.add_member(:kinesis_data_stream_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisDataStreamDestinations, name: "KinesisDataStreamDestinations"))
    DescribeKinesisStreamingDestinationOutput.type = Types::DescribeKinesisStreamingDestinationOutput
    DescribeLimitsInput.type = Types::DescribeLimitsInput
    DescribeLimitsOutput.add_member(:account_max_read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "AccountMaxReadCapacityUnits"))
    DescribeLimitsOutput.add_member(:account_max_write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "AccountMaxWriteCapacityUnits"))
    DescribeLimitsOutput.add_member(:table_max_read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "TableMaxReadCapacityUnits"))
    DescribeLimitsOutput.add_member(:table_max_write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "TableMaxWriteCapacityUnits"))
    DescribeLimitsOutput.type = Types::DescribeLimitsOutput
    DescribeTableInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeTableInput.type = Types::DescribeTableInput
    DescribeTableOutput.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDescription, name: "Table"))
    DescribeTableOutput.type = Types::DescribeTableOutput
    DescribeTableReplicaAutoScalingInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeTableReplicaAutoScalingInput.type = Types::DescribeTableReplicaAutoScalingInput
    DescribeTableReplicaAutoScalingOutput.add_member(:table_auto_scaling_description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAutoScalingDescription, name: "TableAutoScalingDescription"))
    DescribeTableReplicaAutoScalingOutput.type = Types::DescribeTableReplicaAutoScalingOutput
    DescribeTimeToLiveInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeTimeToLiveInput.type = Types::DescribeTimeToLiveInput
    DescribeTimeToLiveOutput.add_member(:time_to_live_description, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLiveDescription, name: "TimeToLiveDescription"))
    DescribeTimeToLiveOutput.type = Types::DescribeTimeToLiveOutput
    DestinationStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    DestinationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DestinationStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    DestinationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DestinationStatus.add_member(:enable_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLE_FAILED", traits: {"smithy.api#enumValue" => "ENABLE_FAILED"}))
    DestinationStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DisableKinesisStreamingDestinationInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DisableKinesisStreamingDestinationInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "StreamArn", traits: {"smithy.api#required" => {}}))
    DisableKinesisStreamingDestinationInput.add_member(:enable_kinesis_streaming_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableKinesisStreamingConfiguration, name: "EnableKinesisStreamingConfiguration"))
    DisableKinesisStreamingDestinationInput.type = Types::DisableKinesisStreamingDestinationInput
    DisableKinesisStreamingDestinationOutput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    DisableKinesisStreamingDestinationOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "StreamArn"))
    DisableKinesisStreamingDestinationOutput.add_member(:destination_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationStatus, name: "DestinationStatus"))
    DisableKinesisStreamingDestinationOutput.add_member(:enable_kinesis_streaming_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableKinesisStreamingConfiguration, name: "EnableKinesisStreamingConfiguration"))
    DisableKinesisStreamingDestinationOutput.type = Types::DisableKinesisStreamingDestinationOutput
    DuplicateItemException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DuplicateItemException.type = Types::DuplicateItemException
    EnableKinesisStreamingConfiguration.add_member(:approximate_creation_date_time_precision, ::Smithy::Schema::Shapes::MemberShape.new(target: ApproximateCreationDateTimePrecision, name: "ApproximateCreationDateTimePrecision"))
    EnableKinesisStreamingConfiguration.type = Types::EnableKinesisStreamingConfiguration
    EnableKinesisStreamingDestinationInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    EnableKinesisStreamingDestinationInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "StreamArn", traits: {"smithy.api#required" => {}}))
    EnableKinesisStreamingDestinationInput.add_member(:enable_kinesis_streaming_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableKinesisStreamingConfiguration, name: "EnableKinesisStreamingConfiguration"))
    EnableKinesisStreamingDestinationInput.type = Types::EnableKinesisStreamingDestinationInput
    EnableKinesisStreamingDestinationOutput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    EnableKinesisStreamingDestinationOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "StreamArn"))
    EnableKinesisStreamingDestinationOutput.add_member(:destination_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationStatus, name: "DestinationStatus"))
    EnableKinesisStreamingDestinationOutput.add_member(:enable_kinesis_streaming_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableKinesisStreamingConfiguration, name: "EnableKinesisStreamingConfiguration"))
    EnableKinesisStreamingDestinationOutput.type = Types::EnableKinesisStreamingDestinationOutput
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Address", traits: {"smithy.api#required" => {}}))
    Endpoint.add_member(:cache_period_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "CachePeriodInMinutes", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Endpoint.type = Types::Endpoint
    Endpoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "member"))
    ExecuteStatementInput.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: PartiQLStatement, name: "Statement", traits: {"smithy.api#required" => {}}))
    ExecuteStatementInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PreparedStatementParameters, name: "Parameters"))
    ExecuteStatementInput.add_member(:consistent_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistentRead, name: "ConsistentRead"))
    ExecuteStatementInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PartiQLNextToken, name: "NextToken"))
    ExecuteStatementInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    ExecuteStatementInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "Limit"))
    ExecuteStatementInput.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnValuesOnConditionCheckFailure, name: "ReturnValuesOnConditionCheckFailure"))
    ExecuteStatementInput.type = Types::ExecuteStatementInput
    ExecuteStatementOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemList, name: "Items"))
    ExecuteStatementOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PartiQLNextToken, name: "NextToken"))
    ExecuteStatementOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacity, name: "ConsumedCapacity"))
    ExecuteStatementOutput.add_member(:last_evaluated_key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "LastEvaluatedKey"))
    ExecuteStatementOutput.type = Types::ExecuteStatementOutput
    ExecuteTransactionInput.add_member(:transact_statements, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterizedStatements, name: "TransactStatements", traits: {"smithy.api#required" => {}}))
    ExecuteTransactionInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ExecuteTransactionInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    ExecuteTransactionInput.type = Types::ExecuteTransactionInput
    ExecuteTransactionOutput.add_member(:responses, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemResponseList, name: "Responses"))
    ExecuteTransactionOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityMultiple, name: "ConsumedCapacity"))
    ExecuteTransactionOutput.type = Types::ExecuteTransactionOutput
    ExpectedAttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    ExpectedAttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedAttributeValue, name: "value"))
    ExpectedAttributeValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "Value"))
    ExpectedAttributeValue.add_member(:exists, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Exists"))
    ExpectedAttributeValue.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperator, name: "ComparisonOperator"))
    ExpectedAttributeValue.add_member(:attribute_value_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "AttributeValueList"))
    ExpectedAttributeValue.type = Types::ExpectedAttributeValue
    ExportConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ExportConflictException.type = Types::ExportConflictException
    ExportDescription.add_member(:export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportArn, name: "ExportArn"))
    ExportDescription.add_member(:export_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, name: "ExportStatus"))
    ExportDescription.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStartTime, name: "StartTime"))
    ExportDescription.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportEndTime, name: "EndTime"))
    ExportDescription.add_member(:export_manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportManifest, name: "ExportManifest"))
    ExportDescription.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableArn"))
    ExportDescription.add_member(:table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TableId, name: "TableId"))
    ExportDescription.add_member(:export_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTime, name: "ExportTime"))
    ExportDescription.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken"))
    ExportDescription.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket"))
    ExportDescription.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketOwner, name: "S3BucketOwner"))
    ExportDescription.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "S3Prefix"))
    ExportDescription.add_member(:s3_sse_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SseAlgorithm, name: "S3SseAlgorithm"))
    ExportDescription.add_member(:s3_sse_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SseKmsKeyId, name: "S3SseKmsKeyId"))
    ExportDescription.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCode, name: "FailureCode"))
    ExportDescription.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureMessage, name: "FailureMessage"))
    ExportDescription.add_member(:export_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFormat, name: "ExportFormat"))
    ExportDescription.add_member(:billed_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: BilledSizeBytes, name: "BilledSizeBytes"))
    ExportDescription.add_member(:item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCount, name: "ItemCount"))
    ExportDescription.add_member(:export_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportType, name: "ExportType"))
    ExportDescription.add_member(:incremental_export_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: IncrementalExportSpecification, name: "IncrementalExportSpecification"))
    ExportDescription.add_member(:filter_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterSpecification, name: "FilterSpecification"))
    ExportDescription.type = Types::ExportDescription
    ExportFormat.add_member(:dynamodb_json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNAMODB_JSON", traits: {"smithy.api#enumValue" => "DYNAMODB_JSON"}))
    ExportFormat.add_member(:ion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ION", traits: {"smithy.api#enumValue" => "ION"}))
    ExportNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ExportNotFoundException.type = Types::ExportNotFoundException
    ExportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ExportStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExportStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSummary, name: "member"))
    ExportSummary.add_member(:export_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportArn, name: "ExportArn"))
    ExportSummary.add_member(:export_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, name: "ExportStatus"))
    ExportSummary.add_member(:export_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportType, name: "ExportType"))
    ExportSummary.type = Types::ExportSummary
    ExportTableToPointInTimeInput.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ExportTableToPointInTimeInput.add_member(:export_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportTime, name: "ExportTime"))
    ExportTableToPointInTimeInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ExportTableToPointInTimeInput.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    ExportTableToPointInTimeInput.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketOwner, name: "S3BucketOwner"))
    ExportTableToPointInTimeInput.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "S3Prefix"))
    ExportTableToPointInTimeInput.add_member(:s3_sse_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SseAlgorithm, name: "S3SseAlgorithm"))
    ExportTableToPointInTimeInput.add_member(:s3_sse_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SseKmsKeyId, name: "S3SseKmsKeyId"))
    ExportTableToPointInTimeInput.add_member(:export_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFormat, name: "ExportFormat"))
    ExportTableToPointInTimeInput.add_member(:export_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportType, name: "ExportType"))
    ExportTableToPointInTimeInput.add_member(:incremental_export_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: IncrementalExportSpecification, name: "IncrementalExportSpecification"))
    ExportTableToPointInTimeInput.add_member(:filter_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterSpecification, name: "FilterSpecification"))
    ExportTableToPointInTimeInput.type = Types::ExportTableToPointInTimeInput
    ExportTableToPointInTimeOutput.add_member(:export_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDescription, name: "ExportDescription"))
    ExportTableToPointInTimeOutput.type = Types::ExportTableToPointInTimeOutput
    ExportType.add_member(:full_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_EXPORT", traits: {"smithy.api#enumValue" => "FULL_EXPORT"}))
    ExportType.add_member(:incremental_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCREMENTAL_EXPORT", traits: {"smithy.api#enumValue" => "INCREMENTAL_EXPORT"}))
    ExportViewType.add_member(:new_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_IMAGE", traits: {"smithy.api#enumValue" => "NEW_IMAGE"}))
    ExportViewType.add_member(:new_and_old_images, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_AND_OLD_IMAGES", traits: {"smithy.api#enumValue" => "NEW_AND_OLD_IMAGES"}))
    ExpressionAttributeNameMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameVariable, name: "key"))
    ExpressionAttributeNameMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "value"))
    ExpressionAttributeValueMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeValueVariable, name: "key"))
    ExpressionAttributeValueMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    FailureException.add_member(:exception_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionName, name: "ExceptionName"))
    FailureException.add_member(:exception_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionDescription, name: "ExceptionDescription"))
    FailureException.type = Types::FailureException
    FilterConditionMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    FilterConditionMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "value"))
    FilterSpecification.add_member(:filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExpression, name: "FilterExpression"))
    FilterSpecification.add_member(:projection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectionExpression, name: "ProjectionExpression"))
    FilterSpecification.add_member(:key_condition_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyExpression, name: "KeyConditionExpression"))
    FilterSpecification.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    FilterSpecification.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeValueMap, name: "ExpressionAttributeValues"))
    FilterSpecification.type = Types::FilterSpecification
    Get.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"smithy.api#required" => {}}))
    Get.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}}))
    Get.add_member(:projection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectionExpression, name: "ProjectionExpression"))
    Get.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    Get.type = Types::Get
    GetItemInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    GetItemInput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"smithy.api#required" => {}}))
    GetItemInput.add_member(:attributes_to_get, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameList, name: "AttributesToGet"))
    GetItemInput.add_member(:consistent_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistentRead, name: "ConsistentRead"))
    GetItemInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    GetItemInput.add_member(:projection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectionExpression, name: "ProjectionExpression"))
    GetItemInput.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    GetItemInput.type = Types::GetItemInput
    GetItemOutput.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Item"))
    GetItemOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacity, name: "ConsumedCapacity"))
    GetItemOutput.type = Types::GetItemOutput
    GetResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy"))
    GetResourcePolicyOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "RevisionId"))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    GlobalSecondaryIndex.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    GlobalSecondaryIndex.add_member(:key_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchema, name: "KeySchema", traits: {"smithy.api#required" => {}}))
    GlobalSecondaryIndex.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: Projection, name: "Projection", traits: {"smithy.api#required" => {}}))
    GlobalSecondaryIndex.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughput, name: "ProvisionedThroughput"))
    GlobalSecondaryIndex.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughput, name: "OnDemandThroughput"))
    GlobalSecondaryIndex.add_member(:warm_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmThroughput, name: "WarmThroughput"))
    GlobalSecondaryIndex.type = Types::GlobalSecondaryIndex
    GlobalSecondaryIndexAutoScalingUpdate.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    GlobalSecondaryIndexAutoScalingUpdate.add_member(:provisioned_write_capacity_auto_scaling_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsUpdate, name: "ProvisionedWriteCapacityAutoScalingUpdate"))
    GlobalSecondaryIndexAutoScalingUpdate.type = Types::GlobalSecondaryIndexAutoScalingUpdate
    GlobalSecondaryIndexAutoScalingUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexAutoScalingUpdate, name: "member"))
    GlobalSecondaryIndexDescription.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    GlobalSecondaryIndexDescription.add_member(:key_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchema, name: "KeySchema"))
    GlobalSecondaryIndexDescription.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: Projection, name: "Projection"))
    GlobalSecondaryIndexDescription.add_member(:index_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "IndexStatus"))
    GlobalSecondaryIndexDescription.add_member(:backfilling, ::Smithy::Schema::Shapes::MemberShape.new(target: Backfilling, name: "Backfilling"))
    GlobalSecondaryIndexDescription.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughputDescription, name: "ProvisionedThroughput"))
    GlobalSecondaryIndexDescription.add_member(:index_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "IndexSizeBytes"))
    GlobalSecondaryIndexDescription.add_member(:item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "ItemCount"))
    GlobalSecondaryIndexDescription.add_member(:index_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IndexArn"))
    GlobalSecondaryIndexDescription.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughput, name: "OnDemandThroughput"))
    GlobalSecondaryIndexDescription.add_member(:warm_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexWarmThroughputDescription, name: "WarmThroughput"))
    GlobalSecondaryIndexDescription.type = Types::GlobalSecondaryIndexDescription
    GlobalSecondaryIndexDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexDescription, name: "member"))
    GlobalSecondaryIndexInfo.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    GlobalSecondaryIndexInfo.add_member(:key_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchema, name: "KeySchema"))
    GlobalSecondaryIndexInfo.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: Projection, name: "Projection"))
    GlobalSecondaryIndexInfo.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughput, name: "ProvisionedThroughput"))
    GlobalSecondaryIndexInfo.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughput, name: "OnDemandThroughput"))
    GlobalSecondaryIndexInfo.type = Types::GlobalSecondaryIndexInfo
    GlobalSecondaryIndexList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndex, name: "member"))
    GlobalSecondaryIndexUpdate.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateGlobalSecondaryIndexAction, name: "Update"))
    GlobalSecondaryIndexUpdate.add_member(:create, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateGlobalSecondaryIndexAction, name: "Create"))
    GlobalSecondaryIndexUpdate.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteGlobalSecondaryIndexAction, name: "Delete"))
    GlobalSecondaryIndexUpdate.type = Types::GlobalSecondaryIndexUpdate
    GlobalSecondaryIndexUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexUpdate, name: "member"))
    GlobalSecondaryIndexWarmThroughputDescription.add_member(:read_units_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "ReadUnitsPerSecond"))
    GlobalSecondaryIndexWarmThroughputDescription.add_member(:write_units_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "WriteUnitsPerSecond"))
    GlobalSecondaryIndexWarmThroughputDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "Status"))
    GlobalSecondaryIndexWarmThroughputDescription.type = Types::GlobalSecondaryIndexWarmThroughputDescription
    GlobalSecondaryIndexes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexInfo, name: "member"))
    GlobalTable.add_member(:global_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "GlobalTableName"))
    GlobalTable.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaList, name: "ReplicationGroup"))
    GlobalTable.type = Types::GlobalTable
    GlobalTableAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    GlobalTableAlreadyExistsException.type = Types::GlobalTableAlreadyExistsException
    GlobalTableDescription.add_member(:replication_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaDescriptionList, name: "ReplicationGroup"))
    GlobalTableDescription.add_member(:global_table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableArnString, name: "GlobalTableArn"))
    GlobalTableDescription.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime"))
    GlobalTableDescription.add_member(:global_table_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableStatus, name: "GlobalTableStatus"))
    GlobalTableDescription.add_member(:global_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "GlobalTableName"))
    GlobalTableDescription.type = Types::GlobalTableDescription
    GlobalTableGlobalSecondaryIndexSettingsUpdate.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    GlobalTableGlobalSecondaryIndexSettingsUpdate.add_member(:provisioned_write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "ProvisionedWriteCapacityUnits"))
    GlobalTableGlobalSecondaryIndexSettingsUpdate.add_member(:provisioned_write_capacity_auto_scaling_settings_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsUpdate, name: "ProvisionedWriteCapacityAutoScalingSettingsUpdate"))
    GlobalTableGlobalSecondaryIndexSettingsUpdate.type = Types::GlobalTableGlobalSecondaryIndexSettingsUpdate
    GlobalTableGlobalSecondaryIndexSettingsUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableGlobalSecondaryIndexSettingsUpdate, name: "member"))
    GlobalTableList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTable, name: "member"))
    GlobalTableNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    GlobalTableNotFoundException.type = Types::GlobalTableNotFoundException
    GlobalTableSettingsReplicationMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    GlobalTableSettingsReplicationMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    GlobalTableSettingsReplicationMode.add_member(:enabled_with_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED_WITH_OVERRIDES", traits: {"smithy.api#enumValue" => "ENABLED_WITH_OVERRIDES"}))
    GlobalTableStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    GlobalTableStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GlobalTableStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    GlobalTableStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    GlobalTableWitnessDescription.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName"))
    GlobalTableWitnessDescription.add_member(:witness_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WitnessStatus, name: "WitnessStatus"))
    GlobalTableWitnessDescription.type = Types::GlobalTableWitnessDescription
    GlobalTableWitnessDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableWitnessDescription, name: "member"))
    GlobalTableWitnessGroupUpdate.add_member(:create, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateGlobalTableWitnessGroupMemberAction, name: "Create"))
    GlobalTableWitnessGroupUpdate.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteGlobalTableWitnessGroupMemberAction, name: "Delete"))
    GlobalTableWitnessGroupUpdate.type = Types::GlobalTableWitnessGroupUpdate
    GlobalTableWitnessGroupUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableWitnessGroupUpdate, name: "member"))
    IdempotentParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    ImportConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ImportConflictException.type = Types::ImportConflictException
    ImportNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ImportNotFoundException.type = Types::ImportNotFoundException
    ImportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ImportStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ImportStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    ImportStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ImportStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ImportSummary.add_member(:import_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportArn, name: "ImportArn"))
    ImportSummary.add_member(:import_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatus, name: "ImportStatus"))
    ImportSummary.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableArn"))
    ImportSummary.add_member(:s3_bucket_source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketSource, name: "S3BucketSource"))
    ImportSummary.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupArn, name: "CloudWatchLogGroupArn"))
    ImportSummary.add_member(:input_format, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFormat, name: "InputFormat"))
    ImportSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStartTime, name: "StartTime"))
    ImportSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportEndTime, name: "EndTime"))
    ImportSummary.type = Types::ImportSummary
    ImportSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportSummary, name: "member"))
    ImportTableDescription.add_member(:import_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportArn, name: "ImportArn"))
    ImportTableDescription.add_member(:import_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStatus, name: "ImportStatus"))
    ImportTableDescription.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableArn"))
    ImportTableDescription.add_member(:table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TableId, name: "TableId"))
    ImportTableDescription.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken"))
    ImportTableDescription.add_member(:s3_bucket_source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketSource, name: "S3BucketSource"))
    ImportTableDescription.add_member(:error_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCount, name: "ErrorCount", traits: {"smithy.api#default" => 0}))
    ImportTableDescription.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupArn, name: "CloudWatchLogGroupArn"))
    ImportTableDescription.add_member(:input_format, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFormat, name: "InputFormat"))
    ImportTableDescription.add_member(:input_format_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFormatOptions, name: "InputFormatOptions"))
    ImportTableDescription.add_member(:input_compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputCompressionType, name: "InputCompressionType"))
    ImportTableDescription.add_member(:table_creation_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TableCreationParameters, name: "TableCreationParameters"))
    ImportTableDescription.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportStartTime, name: "StartTime"))
    ImportTableDescription.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportEndTime, name: "EndTime"))
    ImportTableDescription.add_member(:processed_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "ProcessedSizeBytes"))
    ImportTableDescription.add_member(:processed_item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedItemCount, name: "ProcessedItemCount", traits: {"smithy.api#default" => 0}))
    ImportTableDescription.add_member(:imported_item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportedItemCount, name: "ImportedItemCount", traits: {"smithy.api#default" => 0}))
    ImportTableDescription.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCode, name: "FailureCode"))
    ImportTableDescription.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureMessage, name: "FailureMessage"))
    ImportTableDescription.type = Types::ImportTableDescription
    ImportTableInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ImportTableInput.add_member(:s3_bucket_source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketSource, name: "S3BucketSource", traits: {"smithy.api#required" => {}}))
    ImportTableInput.add_member(:input_format, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFormat, name: "InputFormat", traits: {"smithy.api#required" => {}}))
    ImportTableInput.add_member(:input_format_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFormatOptions, name: "InputFormatOptions"))
    ImportTableInput.add_member(:input_compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputCompressionType, name: "InputCompressionType"))
    ImportTableInput.add_member(:table_creation_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TableCreationParameters, name: "TableCreationParameters", traits: {"smithy.api#required" => {}}))
    ImportTableInput.type = Types::ImportTableInput
    ImportTableOutput.add_member(:import_table_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTableDescription, name: "ImportTableDescription", traits: {"smithy.api#required" => {}}))
    ImportTableOutput.type = Types::ImportTableOutput
    IncrementalExportSpecification.add_member(:export_from_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportFromTime, name: "ExportFromTime"))
    IncrementalExportSpecification.add_member(:export_to_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportToTime, name: "ExportToTime"))
    IncrementalExportSpecification.add_member(:export_view_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportViewType, name: "ExportViewType"))
    IncrementalExportSpecification.type = Types::IncrementalExportSpecification
    IndexNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    IndexNotFoundException.type = Types::IndexNotFoundException
    IndexStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    IndexStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    IndexStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    IndexStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InputCompressionType.add_member(:gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GZIP", traits: {"smithy.api#enumValue" => "GZIP"}))
    InputCompressionType.add_member(:zstd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZSTD", traits: {"smithy.api#enumValue" => "ZSTD"}))
    InputCompressionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    InputFormat.add_member(:dynamodb_json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNAMODB_JSON", traits: {"smithy.api#enumValue" => "DYNAMODB_JSON"}))
    InputFormat.add_member(:ion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ION", traits: {"smithy.api#enumValue" => "ION"}))
    InputFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    InputFormatOptions.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: CsvOptions, name: "Csv"))
    InputFormatOptions.type = Types::InputFormatOptions
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalServerError.type = Types::InternalServerError
    InvalidEndpointException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidEndpointException.type = Types::InvalidEndpointException
    InvalidExportTimeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidExportTimeException.type = Types::InvalidExportTimeException
    InvalidRestoreTimeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidRestoreTimeException.type = Types::InvalidRestoreTimeException
    ItemCollectionKeyAttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    ItemCollectionKeyAttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    ItemCollectionMetrics.add_member(:item_collection_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCollectionKeyAttributeMap, name: "ItemCollectionKey"))
    ItemCollectionMetrics.add_member(:size_estimate_range_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCollectionSizeEstimateRange, name: "SizeEstimateRangeGB"))
    ItemCollectionMetrics.type = Types::ItemCollectionMetrics
    ItemCollectionMetricsMultiple.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCollectionMetrics, name: "member"))
    ItemCollectionMetricsPerTable.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "key"))
    ItemCollectionMetricsPerTable.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCollectionMetricsMultiple, name: "value"))
    ItemCollectionSizeEstimateRange.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCollectionSizeEstimateBound, name: "member"))
    ItemCollectionSizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ItemCollectionSizeLimitExceededException.type = Types::ItemCollectionSizeLimitExceededException
    ItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "member"))
    ItemResponse.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Item"))
    ItemResponse.type = Types::ItemResponse
    ItemResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemResponse, name: "member"))
    Key.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    Key.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    KeyConditions.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    KeyConditions.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "value"))
    KeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "member"))
    KeySchema.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchemaElement, name: "member"))
    KeySchemaElement.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchemaAttributeName, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    KeySchemaElement.add_member(:key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyType, name: "KeyType", traits: {"smithy.api#required" => {}}))
    KeySchemaElement.type = Types::KeySchemaElement
    KeyType.add_member(:hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HASH", traits: {"smithy.api#enumValue" => "HASH"}))
    KeyType.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RANGE", traits: {"smithy.api#enumValue" => "RANGE"}))
    KeysAndAttributes.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyList, name: "Keys", traits: {"smithy.api#required" => {}}))
    KeysAndAttributes.add_member(:attributes_to_get, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameList, name: "AttributesToGet"))
    KeysAndAttributes.add_member(:consistent_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistentRead, name: "ConsistentRead"))
    KeysAndAttributes.add_member(:projection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectionExpression, name: "ProjectionExpression"))
    KeysAndAttributes.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    KeysAndAttributes.type = Types::KeysAndAttributes
    KinesisDataStreamDestination.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "StreamArn"))
    KinesisDataStreamDestination.add_member(:destination_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationStatus, name: "DestinationStatus"))
    KinesisDataStreamDestination.add_member(:destination_status_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationStatusDescription"))
    KinesisDataStreamDestination.add_member(:approximate_creation_date_time_precision, ::Smithy::Schema::Shapes::MemberShape.new(target: ApproximateCreationDateTimePrecision, name: "ApproximateCreationDateTimePrecision"))
    KinesisDataStreamDestination.type = Types::KinesisDataStreamDestination
    KinesisDataStreamDestinations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisDataStreamDestination, name: "member"))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAttributeValue.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "member"))
    ListBackupsInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ListBackupsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupsInputLimit, name: "Limit"))
    ListBackupsInput.add_member(:time_range_lower_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRangeLowerBound, name: "TimeRangeLowerBound"))
    ListBackupsInput.add_member(:time_range_upper_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeRangeUpperBound, name: "TimeRangeUpperBound"))
    ListBackupsInput.add_member(:exclusive_start_backup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupArn, name: "ExclusiveStartBackupArn"))
    ListBackupsInput.add_member(:backup_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupTypeFilter, name: "BackupType"))
    ListBackupsInput.type = Types::ListBackupsInput
    ListBackupsOutput.add_member(:backup_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupSummaries, name: "BackupSummaries"))
    ListBackupsOutput.add_member(:last_evaluated_backup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupArn, name: "LastEvaluatedBackupArn"))
    ListBackupsOutput.type = Types::ListBackupsOutput
    ListContributorInsightsInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ListContributorInsightsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken"))
    ListContributorInsightsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListContributorInsightsLimit, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListContributorInsightsInput.type = Types::ListContributorInsightsInput
    ListContributorInsightsOutput.add_member(:contributor_insights_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorInsightsSummaries, name: "ContributorInsightsSummaries"))
    ListContributorInsightsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken"))
    ListContributorInsightsOutput.type = Types::ListContributorInsightsOutput
    ListExportsInput.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableArn", traits: {"smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ListExportsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListExportsMaxLimit, name: "MaxResults"))
    ListExportsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportNextToken, name: "NextToken"))
    ListExportsInput.type = Types::ListExportsInput
    ListExportsOutput.add_member(:export_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSummaries, name: "ExportSummaries"))
    ListExportsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportNextToken, name: "NextToken"))
    ListExportsOutput.type = Types::ListExportsOutput
    ListGlobalTablesInput.add_member(:exclusive_start_global_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "ExclusiveStartGlobalTableName"))
    ListGlobalTablesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "Limit"))
    ListGlobalTablesInput.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName"))
    ListGlobalTablesInput.type = Types::ListGlobalTablesInput
    ListGlobalTablesOutput.add_member(:global_tables, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableList, name: "GlobalTables"))
    ListGlobalTablesOutput.add_member(:last_evaluated_global_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "LastEvaluatedGlobalTableName"))
    ListGlobalTablesOutput.type = Types::ListGlobalTablesOutput
    ListImportsInput.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableArn", traits: {"smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ListImportsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ListImportsMaxLimit, name: "PageSize"))
    ListImportsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportNextToken, name: "NextToken"))
    ListImportsInput.type = Types::ListImportsInput
    ListImportsOutput.add_member(:import_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportSummaryList, name: "ImportSummaryList"))
    ListImportsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportNextToken, name: "NextToken"))
    ListImportsOutput.type = Types::ListImportsOutput
    ListTablesInput.add_member(:exclusive_start_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "ExclusiveStartTableName"))
    ListTablesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTablesInputLimit, name: "Limit"))
    ListTablesInput.type = Types::ListTablesInput
    ListTablesOutput.add_member(:table_names, ::Smithy::Schema::Shapes::MemberShape.new(target: TableNameList, name: "TableNames"))
    ListTablesOutput.add_member(:last_evaluated_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "LastEvaluatedTableName"))
    ListTablesOutput.type = Types::ListTablesOutput
    ListTagsOfResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ListTagsOfResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken"))
    ListTagsOfResourceInput.type = Types::ListTagsOfResourceInput
    ListTagsOfResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsOfResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken"))
    ListTagsOfResourceOutput.type = Types::ListTagsOfResourceOutput
    LocalSecondaryIndex.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    LocalSecondaryIndex.add_member(:key_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchema, name: "KeySchema", traits: {"smithy.api#required" => {}}))
    LocalSecondaryIndex.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: Projection, name: "Projection", traits: {"smithy.api#required" => {}}))
    LocalSecondaryIndex.type = Types::LocalSecondaryIndex
    LocalSecondaryIndexDescription.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    LocalSecondaryIndexDescription.add_member(:key_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchema, name: "KeySchema"))
    LocalSecondaryIndexDescription.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: Projection, name: "Projection"))
    LocalSecondaryIndexDescription.add_member(:index_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "IndexSizeBytes"))
    LocalSecondaryIndexDescription.add_member(:item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "ItemCount"))
    LocalSecondaryIndexDescription.add_member(:index_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IndexArn"))
    LocalSecondaryIndexDescription.type = Types::LocalSecondaryIndexDescription
    LocalSecondaryIndexDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalSecondaryIndexDescription, name: "member"))
    LocalSecondaryIndexInfo.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    LocalSecondaryIndexInfo.add_member(:key_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchema, name: "KeySchema"))
    LocalSecondaryIndexInfo.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: Projection, name: "Projection"))
    LocalSecondaryIndexInfo.type = Types::LocalSecondaryIndexInfo
    LocalSecondaryIndexList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalSecondaryIndex, name: "member"))
    LocalSecondaryIndexes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalSecondaryIndexInfo, name: "member"))
    MapAttributeValue.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    MapAttributeValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    MultiRegionConsistency.add_member(:eventual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENTUAL", traits: {"smithy.api#enumValue" => "EVENTUAL"}))
    MultiRegionConsistency.add_member(:strong, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRONG", traits: {"smithy.api#enumValue" => "STRONG"}))
    NonKeyAttributeNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonKeyAttributeName, name: "member"))
    NumberSetAttributeValue.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberAttributeValue, name: "member"))
    OnDemandThroughput.add_member(:max_read_request_units, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "MaxReadRequestUnits"))
    OnDemandThroughput.add_member(:max_write_request_units, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "MaxWriteRequestUnits"))
    OnDemandThroughput.type = Types::OnDemandThroughput
    OnDemandThroughputOverride.add_member(:max_read_request_units, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "MaxReadRequestUnits"))
    OnDemandThroughputOverride.type = Types::OnDemandThroughputOverride
    ParameterizedStatement.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: PartiQLStatement, name: "Statement", traits: {"smithy.api#required" => {}}))
    ParameterizedStatement.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: PreparedStatementParameters, name: "Parameters"))
    ParameterizedStatement.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnValuesOnConditionCheckFailure, name: "ReturnValuesOnConditionCheckFailure"))
    ParameterizedStatement.type = Types::ParameterizedStatement
    ParameterizedStatements.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterizedStatement, name: "member"))
    PartiQLBatchRequest.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchStatementRequest, name: "member"))
    PartiQLBatchResponse.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchStatementResponse, name: "member"))
    PointInTimeRecoveryDescription.add_member(:point_in_time_recovery_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeRecoveryStatus, name: "PointInTimeRecoveryStatus"))
    PointInTimeRecoveryDescription.add_member(:recovery_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPeriodInDays, name: "RecoveryPeriodInDays"))
    PointInTimeRecoveryDescription.add_member(:earliest_restorable_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EarliestRestorableDateTime"))
    PointInTimeRecoveryDescription.add_member(:latest_restorable_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LatestRestorableDateTime"))
    PointInTimeRecoveryDescription.type = Types::PointInTimeRecoveryDescription
    PointInTimeRecoverySpecification.add_member(:point_in_time_recovery_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "PointInTimeRecoveryEnabled", traits: {"smithy.api#required" => {}}))
    PointInTimeRecoverySpecification.add_member(:recovery_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryPeriodInDays, name: "RecoveryPeriodInDays"))
    PointInTimeRecoverySpecification.type = Types::PointInTimeRecoverySpecification
    PointInTimeRecoveryStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    PointInTimeRecoveryStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PointInTimeRecoveryUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    PointInTimeRecoveryUnavailableException.type = Types::PointInTimeRecoveryUnavailableException
    PolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    PolicyNotFoundException.type = Types::PolicyNotFoundException
    PreparedStatementParameters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "member"))
    Projection.add_member(:projection_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectionType, name: "ProjectionType"))
    Projection.add_member(:non_key_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: NonKeyAttributeNameList, name: "NonKeyAttributes"))
    Projection.type = Types::Projection
    ProjectionType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    ProjectionType.add_member(:keys_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEYS_ONLY", traits: {"smithy.api#enumValue" => "KEYS_ONLY"}))
    ProjectionType.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUDE", traits: {"smithy.api#enumValue" => "INCLUDE"}))
    ProvisionedThroughput.add_member(:read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "ReadCapacityUnits", traits: {"smithy.api#required" => {}}))
    ProvisionedThroughput.add_member(:write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "WriteCapacityUnits", traits: {"smithy.api#required" => {}}))
    ProvisionedThroughput.type = Types::ProvisionedThroughput
    ProvisionedThroughputDescription.add_member(:last_increase_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastIncreaseDateTime"))
    ProvisionedThroughputDescription.add_member(:last_decrease_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastDecreaseDateTime"))
    ProvisionedThroughputDescription.add_member(:number_of_decreases_today, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "NumberOfDecreasesToday"))
    ProvisionedThroughputDescription.add_member(:read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeLongObject, name: "ReadCapacityUnits"))
    ProvisionedThroughputDescription.add_member(:write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeLongObject, name: "WriteCapacityUnits"))
    ProvisionedThroughputDescription.type = Types::ProvisionedThroughputDescription
    ProvisionedThroughputExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ProvisionedThroughputExceededException.add_member(:throttling_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingReasonList, name: "ThrottlingReasons"))
    ProvisionedThroughputExceededException.type = Types::ProvisionedThroughputExceededException
    ProvisionedThroughputOverride.add_member(:read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "ReadCapacityUnits"))
    ProvisionedThroughputOverride.type = Types::ProvisionedThroughputOverride
    Put.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: PutItemInputAttributeMap, name: "Item", traits: {"smithy.api#required" => {}}))
    Put.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}}))
    Put.add_member(:condition_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExpression, name: "ConditionExpression"))
    Put.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    Put.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeValueMap, name: "ExpressionAttributeValues"))
    Put.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnValuesOnConditionCheckFailure, name: "ReturnValuesOnConditionCheckFailure"))
    Put.type = Types::Put
    PutItemInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    PutItemInput.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: PutItemInputAttributeMap, name: "Item", traits: {"smithy.api#required" => {}}))
    PutItemInput.add_member(:expected, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedAttributeMap, name: "Expected"))
    PutItemInput.add_member(:return_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnValue, name: "ReturnValues"))
    PutItemInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    PutItemInput.add_member(:return_item_collection_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnItemCollectionMetrics, name: "ReturnItemCollectionMetrics"))
    PutItemInput.add_member(:conditional_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalOperator, name: "ConditionalOperator"))
    PutItemInput.add_member(:condition_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExpression, name: "ConditionExpression"))
    PutItemInput.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    PutItemInput.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeValueMap, name: "ExpressionAttributeValues"))
    PutItemInput.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnValuesOnConditionCheckFailure, name: "ReturnValuesOnConditionCheckFailure"))
    PutItemInput.type = Types::PutItemInput
    PutItemInputAttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    PutItemInputAttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    PutItemOutput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Attributes"))
    PutItemOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacity, name: "ConsumedCapacity"))
    PutItemOutput.add_member(:item_collection_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCollectionMetrics, name: "ItemCollectionMetrics"))
    PutItemOutput.type = Types::PutItemOutput
    PutRequest.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: PutItemInputAttributeMap, name: "Item", traits: {"smithy.api#required" => {}}))
    PutRequest.type = Types::PutRequest
    PutResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    PutResourcePolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyInput.add_member(:expected_revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "ExpectedRevisionId"))
    PutResourcePolicyInput.add_member(:confirm_remove_self_resource_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmRemoveSelfResourceAccess, name: "ConfirmRemoveSelfResourceAccess", traits: {"smithy.api#default" => false, "smithy.api#httpHeader" => "x-amz-confirm-remove-self-resource-access"}))
    PutResourcePolicyInput.type = Types::PutResourcePolicyInput
    PutResourcePolicyOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevisionId, name: "RevisionId"))
    PutResourcePolicyOutput.type = Types::PutResourcePolicyOutput
    QueryInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    QueryInput.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    QueryInput.add_member(:select, ::Smithy::Schema::Shapes::MemberShape.new(target: Select, name: "Select"))
    QueryInput.add_member(:attributes_to_get, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameList, name: "AttributesToGet"))
    QueryInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "Limit"))
    QueryInput.add_member(:consistent_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistentRead, name: "ConsistentRead"))
    QueryInput.add_member(:key_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyConditions, name: "KeyConditions"))
    QueryInput.add_member(:query_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConditionMap, name: "QueryFilter"))
    QueryInput.add_member(:conditional_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalOperator, name: "ConditionalOperator"))
    QueryInput.add_member(:scan_index_forward, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "ScanIndexForward"))
    QueryInput.add_member(:exclusive_start_key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "ExclusiveStartKey"))
    QueryInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    QueryInput.add_member(:projection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectionExpression, name: "ProjectionExpression"))
    QueryInput.add_member(:filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExpression, name: "FilterExpression"))
    QueryInput.add_member(:key_condition_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyExpression, name: "KeyConditionExpression"))
    QueryInput.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    QueryInput.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeValueMap, name: "ExpressionAttributeValues"))
    QueryInput.type = Types::QueryInput
    QueryOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemList, name: "Items"))
    QueryOutput.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#default" => 0}))
    QueryOutput.add_member(:scanned_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ScannedCount", traits: {"smithy.api#default" => 0}))
    QueryOutput.add_member(:last_evaluated_key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "LastEvaluatedKey"))
    QueryOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacity, name: "ConsumedCapacity"))
    QueryOutput.type = Types::QueryOutput
    Replica.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName"))
    Replica.type = Types::Replica
    ReplicaAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ReplicaAlreadyExistsException.type = Types::ReplicaAlreadyExistsException
    ReplicaAutoScalingDescription.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName"))
    ReplicaAutoScalingDescription.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaGlobalSecondaryIndexAutoScalingDescriptionList, name: "GlobalSecondaryIndexes"))
    ReplicaAutoScalingDescription.add_member(:replica_provisioned_read_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsDescription, name: "ReplicaProvisionedReadCapacityAutoScalingSettings"))
    ReplicaAutoScalingDescription.add_member(:replica_provisioned_write_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsDescription, name: "ReplicaProvisionedWriteCapacityAutoScalingSettings"))
    ReplicaAutoScalingDescription.add_member(:replica_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaStatus, name: "ReplicaStatus"))
    ReplicaAutoScalingDescription.type = Types::ReplicaAutoScalingDescription
    ReplicaAutoScalingDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaAutoScalingDescription, name: "member"))
    ReplicaAutoScalingUpdate.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    ReplicaAutoScalingUpdate.add_member(:replica_global_secondary_index_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaGlobalSecondaryIndexAutoScalingUpdateList, name: "ReplicaGlobalSecondaryIndexUpdates"))
    ReplicaAutoScalingUpdate.add_member(:replica_provisioned_read_capacity_auto_scaling_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsUpdate, name: "ReplicaProvisionedReadCapacityAutoScalingUpdate"))
    ReplicaAutoScalingUpdate.type = Types::ReplicaAutoScalingUpdate
    ReplicaAutoScalingUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaAutoScalingUpdate, name: "member"))
    ReplicaDescription.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName"))
    ReplicaDescription.add_member(:replica_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaStatus, name: "ReplicaStatus"))
    ReplicaDescription.add_member(:replica_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReplicaArn"))
    ReplicaDescription.add_member(:replica_status_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaStatusDescription, name: "ReplicaStatusDescription"))
    ReplicaDescription.add_member(:replica_status_percent_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaStatusPercentProgress, name: "ReplicaStatusPercentProgress"))
    ReplicaDescription.add_member(:kms_master_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSMasterKeyId, name: "KMSMasterKeyId"))
    ReplicaDescription.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughputOverride, name: "ProvisionedThroughputOverride"))
    ReplicaDescription.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughputOverride, name: "OnDemandThroughputOverride"))
    ReplicaDescription.add_member(:warm_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: TableWarmThroughputDescription, name: "WarmThroughput"))
    ReplicaDescription.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaGlobalSecondaryIndexDescriptionList, name: "GlobalSecondaryIndexes"))
    ReplicaDescription.add_member(:replica_inaccessible_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ReplicaInaccessibleDateTime"))
    ReplicaDescription.add_member(:replica_table_class_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: TableClassSummary, name: "ReplicaTableClassSummary"))
    ReplicaDescription.add_member(:global_table_settings_replication_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableSettingsReplicationMode, name: "GlobalTableSettingsReplicationMode"))
    ReplicaDescription.type = Types::ReplicaDescription
    ReplicaDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaDescription, name: "member"))
    ReplicaGlobalSecondaryIndex.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    ReplicaGlobalSecondaryIndex.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughputOverride, name: "ProvisionedThroughputOverride"))
    ReplicaGlobalSecondaryIndex.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughputOverride, name: "OnDemandThroughputOverride"))
    ReplicaGlobalSecondaryIndex.type = Types::ReplicaGlobalSecondaryIndex
    ReplicaGlobalSecondaryIndexAutoScalingDescription.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    ReplicaGlobalSecondaryIndexAutoScalingDescription.add_member(:index_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "IndexStatus"))
    ReplicaGlobalSecondaryIndexAutoScalingDescription.add_member(:provisioned_read_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsDescription, name: "ProvisionedReadCapacityAutoScalingSettings"))
    ReplicaGlobalSecondaryIndexAutoScalingDescription.add_member(:provisioned_write_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsDescription, name: "ProvisionedWriteCapacityAutoScalingSettings"))
    ReplicaGlobalSecondaryIndexAutoScalingDescription.type = Types::ReplicaGlobalSecondaryIndexAutoScalingDescription
    ReplicaGlobalSecondaryIndexAutoScalingDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaGlobalSecondaryIndexAutoScalingDescription, name: "member"))
    ReplicaGlobalSecondaryIndexAutoScalingUpdate.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    ReplicaGlobalSecondaryIndexAutoScalingUpdate.add_member(:provisioned_read_capacity_auto_scaling_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsUpdate, name: "ProvisionedReadCapacityAutoScalingUpdate"))
    ReplicaGlobalSecondaryIndexAutoScalingUpdate.type = Types::ReplicaGlobalSecondaryIndexAutoScalingUpdate
    ReplicaGlobalSecondaryIndexAutoScalingUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaGlobalSecondaryIndexAutoScalingUpdate, name: "member"))
    ReplicaGlobalSecondaryIndexDescription.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    ReplicaGlobalSecondaryIndexDescription.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughputOverride, name: "ProvisionedThroughputOverride"))
    ReplicaGlobalSecondaryIndexDescription.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughputOverride, name: "OnDemandThroughputOverride"))
    ReplicaGlobalSecondaryIndexDescription.add_member(:warm_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexWarmThroughputDescription, name: "WarmThroughput"))
    ReplicaGlobalSecondaryIndexDescription.type = Types::ReplicaGlobalSecondaryIndexDescription
    ReplicaGlobalSecondaryIndexDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaGlobalSecondaryIndexDescription, name: "member"))
    ReplicaGlobalSecondaryIndexList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaGlobalSecondaryIndex, name: "member"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:index_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "IndexStatus"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:provisioned_read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "ProvisionedReadCapacityUnits"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:provisioned_read_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsDescription, name: "ProvisionedReadCapacityAutoScalingSettings"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:provisioned_write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "ProvisionedWriteCapacityUnits"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:provisioned_write_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsDescription, name: "ProvisionedWriteCapacityAutoScalingSettings"))
    ReplicaGlobalSecondaryIndexSettingsDescription.type = Types::ReplicaGlobalSecondaryIndexSettingsDescription
    ReplicaGlobalSecondaryIndexSettingsDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaGlobalSecondaryIndexSettingsDescription, name: "member"))
    ReplicaGlobalSecondaryIndexSettingsUpdate.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    ReplicaGlobalSecondaryIndexSettingsUpdate.add_member(:provisioned_read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "ProvisionedReadCapacityUnits"))
    ReplicaGlobalSecondaryIndexSettingsUpdate.add_member(:provisioned_read_capacity_auto_scaling_settings_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsUpdate, name: "ProvisionedReadCapacityAutoScalingSettingsUpdate"))
    ReplicaGlobalSecondaryIndexSettingsUpdate.type = Types::ReplicaGlobalSecondaryIndexSettingsUpdate
    ReplicaGlobalSecondaryIndexSettingsUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaGlobalSecondaryIndexSettingsUpdate, name: "member"))
    ReplicaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Replica, name: "member"))
    ReplicaNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ReplicaNotFoundException.type = Types::ReplicaNotFoundException
    ReplicaSettingsDescription.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    ReplicaSettingsDescription.add_member(:replica_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaStatus, name: "ReplicaStatus"))
    ReplicaSettingsDescription.add_member(:replica_billing_mode_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingModeSummary, name: "ReplicaBillingModeSummary"))
    ReplicaSettingsDescription.add_member(:replica_provisioned_read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeLongObject, name: "ReplicaProvisionedReadCapacityUnits"))
    ReplicaSettingsDescription.add_member(:replica_provisioned_read_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsDescription, name: "ReplicaProvisionedReadCapacityAutoScalingSettings"))
    ReplicaSettingsDescription.add_member(:replica_provisioned_write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeLongObject, name: "ReplicaProvisionedWriteCapacityUnits"))
    ReplicaSettingsDescription.add_member(:replica_provisioned_write_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsDescription, name: "ReplicaProvisionedWriteCapacityAutoScalingSettings"))
    ReplicaSettingsDescription.add_member(:replica_global_secondary_index_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaGlobalSecondaryIndexSettingsDescriptionList, name: "ReplicaGlobalSecondaryIndexSettings"))
    ReplicaSettingsDescription.add_member(:replica_table_class_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: TableClassSummary, name: "ReplicaTableClassSummary"))
    ReplicaSettingsDescription.type = Types::ReplicaSettingsDescription
    ReplicaSettingsDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaSettingsDescription, name: "member"))
    ReplicaSettingsUpdate.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    ReplicaSettingsUpdate.add_member(:replica_provisioned_read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "ReplicaProvisionedReadCapacityUnits"))
    ReplicaSettingsUpdate.add_member(:replica_provisioned_read_capacity_auto_scaling_settings_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsUpdate, name: "ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate"))
    ReplicaSettingsUpdate.add_member(:replica_global_secondary_index_settings_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaGlobalSecondaryIndexSettingsUpdateList, name: "ReplicaGlobalSecondaryIndexSettingsUpdate"))
    ReplicaSettingsUpdate.add_member(:replica_table_class, ::Smithy::Schema::Shapes::MemberShape.new(target: TableClass, name: "ReplicaTableClass"))
    ReplicaSettingsUpdate.type = Types::ReplicaSettingsUpdate
    ReplicaSettingsUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaSettingsUpdate, name: "member"))
    ReplicaStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ReplicaStatus.add_member(:creation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATION_FAILED", traits: {"smithy.api#enumValue" => "CREATION_FAILED"}))
    ReplicaStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ReplicaStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ReplicaStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ReplicaStatus.add_member(:region_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGION_DISABLED", traits: {"smithy.api#enumValue" => "REGION_DISABLED"}))
    ReplicaStatus.add_member(:inaccessible_encryption_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACCESSIBLE_ENCRYPTION_CREDENTIALS", traits: {"smithy.api#enumValue" => "INACCESSIBLE_ENCRYPTION_CREDENTIALS"}))
    ReplicaStatus.add_member(:archiving, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVING", traits: {"smithy.api#enumValue" => "ARCHIVING"}))
    ReplicaStatus.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    ReplicaStatus.add_member(:replication_not_authorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICATION_NOT_AUTHORIZED", traits: {"smithy.api#enumValue" => "REPLICATION_NOT_AUTHORIZED"}))
    ReplicaUpdate.add_member(:create, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateReplicaAction, name: "Create"))
    ReplicaUpdate.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteReplicaAction, name: "Delete"))
    ReplicaUpdate.type = Types::ReplicaUpdate
    ReplicaUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaUpdate, name: "member"))
    ReplicatedWriteConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ReplicatedWriteConflictException.type = Types::ReplicatedWriteConflictException
    ReplicationGroupUpdate.add_member(:create, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateReplicationGroupMemberAction, name: "Create"))
    ReplicationGroupUpdate.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateReplicationGroupMemberAction, name: "Update"))
    ReplicationGroupUpdate.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteReplicationGroupMemberAction, name: "Delete"))
    ReplicationGroupUpdate.type = Types::ReplicationGroupUpdate
    ReplicationGroupUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroupUpdate, name: "member"))
    RequestLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    RequestLimitExceeded.add_member(:throttling_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingReasonList, name: "ThrottlingReasons"))
    RequestLimitExceeded.type = Types::RequestLimitExceeded
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreSummary.add_member(:source_backup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupArn, name: "SourceBackupArn"))
    RestoreSummary.add_member(:source_table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "SourceTableArn"))
    RestoreSummary.add_member(:restore_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "RestoreDateTime", traits: {"smithy.api#required" => {}}))
    RestoreSummary.add_member(:restore_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreInProgress, name: "RestoreInProgress", traits: {"smithy.api#required" => {}}))
    RestoreSummary.type = Types::RestoreSummary
    RestoreTableFromBackupInput.add_member(:target_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TargetTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    RestoreTableFromBackupInput.add_member(:backup_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackupArn, name: "BackupArn", traits: {"smithy.api#required" => {}}))
    RestoreTableFromBackupInput.add_member(:billing_mode_override, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, name: "BillingModeOverride"))
    RestoreTableFromBackupInput.add_member(:global_secondary_index_override, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexList, name: "GlobalSecondaryIndexOverride"))
    RestoreTableFromBackupInput.add_member(:local_secondary_index_override, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalSecondaryIndexList, name: "LocalSecondaryIndexOverride"))
    RestoreTableFromBackupInput.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughput, name: "ProvisionedThroughputOverride"))
    RestoreTableFromBackupInput.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughput, name: "OnDemandThroughputOverride"))
    RestoreTableFromBackupInput.add_member(:sse_specification_override, ::Smithy::Schema::Shapes::MemberShape.new(target: SSESpecification, name: "SSESpecificationOverride"))
    RestoreTableFromBackupInput.add_member(:vector_index_override, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIndexList, name: "VectorIndexOverride"))
    RestoreTableFromBackupInput.type = Types::RestoreTableFromBackupInput
    RestoreTableFromBackupOutput.add_member(:table_description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDescription, name: "TableDescription"))
    RestoreTableFromBackupOutput.type = Types::RestoreTableFromBackupOutput
    RestoreTableToPointInTimeInput.add_member(:source_table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "SourceTableArn"))
    RestoreTableToPointInTimeInput.add_member(:source_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "SourceTableName"))
    RestoreTableToPointInTimeInput.add_member(:target_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TargetTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    RestoreTableToPointInTimeInput.add_member(:use_latest_restorable_time, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "UseLatestRestorableTime"))
    RestoreTableToPointInTimeInput.add_member(:restore_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "RestoreDateTime"))
    RestoreTableToPointInTimeInput.add_member(:billing_mode_override, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, name: "BillingModeOverride"))
    RestoreTableToPointInTimeInput.add_member(:global_secondary_index_override, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexList, name: "GlobalSecondaryIndexOverride"))
    RestoreTableToPointInTimeInput.add_member(:local_secondary_index_override, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalSecondaryIndexList, name: "LocalSecondaryIndexOverride"))
    RestoreTableToPointInTimeInput.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughput, name: "ProvisionedThroughputOverride"))
    RestoreTableToPointInTimeInput.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughput, name: "OnDemandThroughputOverride"))
    RestoreTableToPointInTimeInput.add_member(:sse_specification_override, ::Smithy::Schema::Shapes::MemberShape.new(target: SSESpecification, name: "SSESpecificationOverride"))
    RestoreTableToPointInTimeInput.add_member(:vector_index_override, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIndexList, name: "VectorIndexOverride"))
    RestoreTableToPointInTimeInput.type = Types::RestoreTableToPointInTimeInput
    RestoreTableToPointInTimeOutput.add_member(:table_description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDescription, name: "TableDescription"))
    RestoreTableToPointInTimeOutput.type = Types::RestoreTableToPointInTimeOutput
    ReturnConsumedCapacity.add_member(:indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INDEXES", traits: {"smithy.api#enumValue" => "INDEXES"}))
    ReturnConsumedCapacity.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL", traits: {"smithy.api#enumValue" => "TOTAL"}))
    ReturnConsumedCapacity.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ReturnItemCollectionMetrics.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIZE", traits: {"smithy.api#enumValue" => "SIZE"}))
    ReturnItemCollectionMetrics.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ReturnValue.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ReturnValue.add_member(:all_old, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_OLD", traits: {"smithy.api#enumValue" => "ALL_OLD"}))
    ReturnValue.add_member(:updated_old, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED_OLD", traits: {"smithy.api#enumValue" => "UPDATED_OLD"}))
    ReturnValue.add_member(:all_new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_NEW", traits: {"smithy.api#enumValue" => "ALL_NEW"}))
    ReturnValue.add_member(:updated_new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED_NEW", traits: {"smithy.api#enumValue" => "UPDATED_NEW"}))
    ReturnValuesOnConditionCheckFailure.add_member(:all_old, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_OLD", traits: {"smithy.api#enumValue" => "ALL_OLD"}))
    ReturnValuesOnConditionCheckFailure.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    S3BucketSource.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketOwner, name: "S3BucketOwner"))
    S3BucketSource.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    S3BucketSource.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "S3KeyPrefix"))
    S3BucketSource.type = Types::S3BucketSource
    S3SseAlgorithm.add_member(:aes256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES256", traits: {"smithy.api#enumValue" => "AES256"}))
    S3SseAlgorithm.add_member(:kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    SSEDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEStatus, name: "Status"))
    SSEDescription.add_member(:sse_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEType, name: "SSEType"))
    SSEDescription.add_member(:kms_master_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSMasterKeyArn, name: "KMSMasterKeyArn"))
    SSEDescription.add_member(:inaccessible_encryption_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "InaccessibleEncryptionDateTime"))
    SSEDescription.type = Types::SSEDescription
    SSESpecification.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEEnabled, name: "Enabled"))
    SSESpecification.add_member(:sse_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEType, name: "SSEType"))
    SSESpecification.add_member(:kms_master_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSMasterKeyId, name: "KMSMasterKeyId"))
    SSESpecification.type = Types::SSESpecification
    SSEStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    SSEStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    SSEStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    SSEStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    SSEStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    SSEType.add_member(:aes256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES256", traits: {"smithy.api#enumValue" => "AES256"}))
    SSEType.add_member(:kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    ScalarAttributeType.add_member(:s, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S", traits: {"smithy.api#enumValue" => "S"}))
    ScalarAttributeType.add_member(:n, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "N", traits: {"smithy.api#enumValue" => "N"}))
    ScalarAttributeType.add_member(:b, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "B", traits: {"smithy.api#enumValue" => "B"}))
    ScanInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ScanInput.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    ScanInput.add_member(:attributes_to_get, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameList, name: "AttributesToGet"))
    ScanInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "Limit"))
    ScanInput.add_member(:select, ::Smithy::Schema::Shapes::MemberShape.new(target: Select, name: "Select"))
    ScanInput.add_member(:scan_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConditionMap, name: "ScanFilter"))
    ScanInput.add_member(:conditional_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalOperator, name: "ConditionalOperator"))
    ScanInput.add_member(:exclusive_start_key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "ExclusiveStartKey"))
    ScanInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    ScanInput.add_member(:total_segments, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanTotalSegments, name: "TotalSegments"))
    ScanInput.add_member(:segment, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanSegment, name: "Segment"))
    ScanInput.add_member(:projection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectionExpression, name: "ProjectionExpression"))
    ScanInput.add_member(:filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExpression, name: "FilterExpression"))
    ScanInput.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    ScanInput.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeValueMap, name: "ExpressionAttributeValues"))
    ScanInput.add_member(:consistent_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsistentRead, name: "ConsistentRead"))
    ScanInput.type = Types::ScanInput
    ScanOutput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemList, name: "Items"))
    ScanOutput.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Count", traits: {"smithy.api#default" => 0}))
    ScanOutput.add_member(:scanned_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ScannedCount", traits: {"smithy.api#default" => 0}))
    ScanOutput.add_member(:last_evaluated_key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "LastEvaluatedKey"))
    ScanOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacity, name: "ConsumedCapacity"))
    ScanOutput.type = Types::ScanOutput
    SearchResultItem.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Item"))
    SearchResultItem.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoreNumber, name: "Score", traits: {"smithy.api#default" => 0}))
    SearchResultItem.type = Types::SearchResultItem
    SearchResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchResultItem, name: "member"))
    SearchSchema.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSchemaElement, name: "member"))
    SearchSchemaElement.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    SearchSchemaElement.add_member(:search_schema_element_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSchemaElementType, name: "SearchSchemaElementType", traits: {"smithy.api#required" => {}}))
    SearchSchemaElement.type = Types::SearchSchemaElement
    SearchSchemaElementType.add_member(:hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HASH", traits: {"smithy.api#enumValue" => "HASH"}))
    SearchSchemaElementType.add_member(:inline_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INLINE_FILTER", traits: {"smithy.api#enumValue" => "INLINE_FILTER"}))
    SearchVectorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "member"))
    SearchVectorsInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    SearchVectorsInput.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    SearchVectorsInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    SearchVectorsInput.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    SearchVectorsInput.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeValueMap, name: "ExpressionAttributeValues"))
    SearchVectorsInput.add_member(:projection_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectionExpression, name: "ProjectionExpression"))
    SearchVectorsInput.add_member(:search_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchVectorList, name: "SearchVector", traits: {"smithy.api#required" => {}}))
    SearchVectorsInput.add_member(:search_condition_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SearchConditionExpression"))
    SearchVectorsInput.add_member(:top_k, ::Smithy::Schema::Shapes::MemberShape.new(target: TopKInteger, name: "TopK", traits: {"smithy.api#required" => {}}))
    SearchVectorsInput.type = Types::SearchVectorsInput
    SearchVectorsOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorCapacity, name: "ConsumedCapacity"))
    SearchVectorsOutput.add_member(:search_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchResultList, name: "SearchResults"))
    SearchVectorsOutput.type = Types::SearchVectorsOutput
    SecondaryIndexesCapacityMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "key"))
    SecondaryIndexesCapacityMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Capacity, name: "value"))
    Select.add_member(:all_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_ATTRIBUTES", traits: {"smithy.api#enumValue" => "ALL_ATTRIBUTES"}))
    Select.add_member(:all_projected_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_PROJECTED_ATTRIBUTES", traits: {"smithy.api#enumValue" => "ALL_PROJECTED_ATTRIBUTES"}))
    Select.add_member(:specific_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPECIFIC_ATTRIBUTES", traits: {"smithy.api#enumValue" => "SPECIFIC_ATTRIBUTES"}))
    Select.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    SourceTableDetails.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName", traits: {"smithy.api#required" => {}}))
    SourceTableDetails.add_member(:table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TableId, name: "TableId", traits: {"smithy.api#required" => {}}))
    SourceTableDetails.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableArn"))
    SourceTableDetails.add_member(:table_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "TableSizeBytes"))
    SourceTableDetails.add_member(:key_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchema, name: "KeySchema", traits: {"smithy.api#required" => {}}))
    SourceTableDetails.add_member(:table_creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TableCreationDateTime, name: "TableCreationDateTime", traits: {"smithy.api#required" => {}}))
    SourceTableDetails.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughput, name: "ProvisionedThroughput", traits: {"smithy.api#required" => {}}))
    SourceTableDetails.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughput, name: "OnDemandThroughput"))
    SourceTableDetails.add_member(:item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCount, name: "ItemCount"))
    SourceTableDetails.add_member(:billing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, name: "BillingMode"))
    SourceTableDetails.type = Types::SourceTableDetails
    SourceTableFeatureDetails.add_member(:local_secondary_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalSecondaryIndexes, name: "LocalSecondaryIndexes"))
    SourceTableFeatureDetails.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexes, name: "GlobalSecondaryIndexes"))
    SourceTableFeatureDetails.add_member(:stream_description, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSpecification, name: "StreamDescription"))
    SourceTableFeatureDetails.add_member(:time_to_live_description, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLiveDescription, name: "TimeToLiveDescription"))
    SourceTableFeatureDetails.add_member(:sse_description, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEDescription, name: "SSEDescription"))
    SourceTableFeatureDetails.add_member(:vector_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIndexes, name: "VectorIndexes"))
    SourceTableFeatureDetails.type = Types::SourceTableFeatureDetails
    StreamSpecification.add_member(:stream_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamEnabled, name: "StreamEnabled", traits: {"smithy.api#required" => {}}))
    StreamSpecification.add_member(:stream_view_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamViewType, name: "StreamViewType"))
    StreamSpecification.type = Types::StreamSpecification
    StreamViewType.add_member(:new_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_IMAGE", traits: {"smithy.api#enumValue" => "NEW_IMAGE"}))
    StreamViewType.add_member(:old_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OLD_IMAGE", traits: {"smithy.api#enumValue" => "OLD_IMAGE"}))
    StreamViewType.add_member(:new_and_old_images, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_AND_OLD_IMAGES", traits: {"smithy.api#enumValue" => "NEW_AND_OLD_IMAGES"}))
    StreamViewType.add_member(:keys_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEYS_ONLY", traits: {"smithy.api#enumValue" => "KEYS_ONLY"}))
    StringSetAttributeValue.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringAttributeValue, name: "member"))
    TableAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TableAlreadyExistsException.type = Types::TableAlreadyExistsException
    TableAutoScalingDescription.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    TableAutoScalingDescription.add_member(:table_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableStatus, name: "TableStatus"))
    TableAutoScalingDescription.add_member(:replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaAutoScalingDescriptionList, name: "Replicas"))
    TableAutoScalingDescription.type = Types::TableAutoScalingDescription
    TableClass.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    TableClass.add_member(:standard_infrequent_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_INFREQUENT_ACCESS", traits: {"smithy.api#enumValue" => "STANDARD_INFREQUENT_ACCESS"}))
    TableClassSummary.add_member(:table_class, ::Smithy::Schema::Shapes::MemberShape.new(target: TableClass, name: "TableClass"))
    TableClassSummary.add_member(:last_update_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdateDateTime"))
    TableClassSummary.type = Types::TableClassSummary
    TableCreationParameters.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName", traits: {"smithy.api#required" => {}}))
    TableCreationParameters.add_member(:attribute_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeDefinitions, name: "AttributeDefinitions", traits: {"smithy.api#required" => {}}))
    TableCreationParameters.add_member(:key_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchema, name: "KeySchema", traits: {"smithy.api#required" => {}}))
    TableCreationParameters.add_member(:billing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, name: "BillingMode"))
    TableCreationParameters.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughput, name: "ProvisionedThroughput"))
    TableCreationParameters.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughput, name: "OnDemandThroughput"))
    TableCreationParameters.add_member(:sse_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: SSESpecification, name: "SSESpecification"))
    TableCreationParameters.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexList, name: "GlobalSecondaryIndexes"))
    TableCreationParameters.add_member(:vector_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIndexList, name: "VectorIndexes"))
    TableCreationParameters.type = Types::TableCreationParameters
    TableDescription.add_member(:attribute_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeDefinitions, name: "AttributeDefinitions"))
    TableDescription.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    TableDescription.add_member(:key_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchema, name: "KeySchema"))
    TableDescription.add_member(:table_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableStatus, name: "TableStatus"))
    TableDescription.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationDateTime"))
    TableDescription.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughputDescription, name: "ProvisionedThroughput"))
    TableDescription.add_member(:table_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "TableSizeBytes"))
    TableDescription.add_member(:item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "ItemCount"))
    TableDescription.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableArn"))
    TableDescription.add_member(:table_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TableId, name: "TableId"))
    TableDescription.add_member(:billing_mode_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingModeSummary, name: "BillingModeSummary"))
    TableDescription.add_member(:local_secondary_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalSecondaryIndexDescriptionList, name: "LocalSecondaryIndexes"))
    TableDescription.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexDescriptionList, name: "GlobalSecondaryIndexes"))
    TableDescription.add_member(:stream_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSpecification, name: "StreamSpecification"))
    TableDescription.add_member(:latest_stream_label, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LatestStreamLabel"))
    TableDescription.add_member(:latest_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "LatestStreamArn"))
    TableDescription.add_member(:global_table_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "GlobalTableVersion"))
    TableDescription.add_member(:replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaDescriptionList, name: "Replicas"))
    TableDescription.add_member(:global_table_witnesses, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableWitnessDescriptionList, name: "GlobalTableWitnesses"))
    TableDescription.add_member(:global_table_settings_replication_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableSettingsReplicationMode, name: "GlobalTableSettingsReplicationMode"))
    TableDescription.add_member(:restore_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreSummary, name: "RestoreSummary"))
    TableDescription.add_member(:sse_description, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEDescription, name: "SSEDescription"))
    TableDescription.add_member(:archival_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivalSummary, name: "ArchivalSummary"))
    TableDescription.add_member(:table_class_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: TableClassSummary, name: "TableClassSummary"))
    TableDescription.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionEnabled, name: "DeletionProtectionEnabled"))
    TableDescription.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughput, name: "OnDemandThroughput"))
    TableDescription.add_member(:warm_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: TableWarmThroughputDescription, name: "WarmThroughput"))
    TableDescription.add_member(:multi_region_consistency, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionConsistency, name: "MultiRegionConsistency"))
    TableDescription.add_member(:vector_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIndexDescriptionList, name: "VectorIndexes"))
    TableDescription.type = Types::TableDescription
    TableInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TableInUseException.type = Types::TableInUseException
    TableNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "member"))
    TableNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TableNotFoundException.type = Types::TableNotFoundException
    TableStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    TableStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    TableStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    TableStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TableStatus.add_member(:inaccessible_encryption_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACCESSIBLE_ENCRYPTION_CREDENTIALS", traits: {"smithy.api#enumValue" => "INACCESSIBLE_ENCRYPTION_CREDENTIALS"}))
    TableStatus.add_member(:archiving, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVING", traits: {"smithy.api#enumValue" => "ARCHIVING"}))
    TableStatus.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    TableStatus.add_member(:replication_not_authorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICATION_NOT_AUTHORIZED", traits: {"smithy.api#enumValue" => "REPLICATION_NOT_AUTHORIZED"}))
    TableWarmThroughputDescription.add_member(:read_units_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "ReadUnitsPerSecond"))
    TableWarmThroughputDescription.add_member(:write_units_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "WriteUnitsPerSecond"))
    TableWarmThroughputDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableStatus, name: "Status"))
    TableWarmThroughputDescription.type = Types::TableWarmThroughputDescription
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyString, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueString, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyString, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityErrorMessage, name: "message"))
    ThrottlingException.add_member(:throttling_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingReasonList, name: "throttlingReasons"))
    ThrottlingException.type = Types::ThrottlingException
    ThrottlingReason.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "reason"))
    ThrottlingReason.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "resource"))
    ThrottlingReason.type = Types::ThrottlingReason
    ThrottlingReasonList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingReason, name: "member"))
    TimeToLiveDescription.add_member(:time_to_live_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLiveStatus, name: "TimeToLiveStatus"))
    TimeToLiveDescription.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLiveAttributeName, name: "AttributeName"))
    TimeToLiveDescription.type = Types::TimeToLiveDescription
    TimeToLiveSpecification.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLiveEnabled, name: "Enabled", traits: {"smithy.api#required" => {}}))
    TimeToLiveSpecification.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLiveAttributeName, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    TimeToLiveSpecification.type = Types::TimeToLiveSpecification
    TimeToLiveStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    TimeToLiveStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    TimeToLiveStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    TimeToLiveStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    TransactGetItem.add_member(:get, ::Smithy::Schema::Shapes::MemberShape.new(target: Get, name: "Get", traits: {"smithy.api#required" => {}}))
    TransactGetItem.type = Types::TransactGetItem
    TransactGetItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactGetItem, name: "member"))
    TransactGetItemsInput.add_member(:transact_items, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactGetItemList, name: "TransactItems", traits: {"smithy.api#required" => {}}))
    TransactGetItemsInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    TransactGetItemsInput.type = Types::TransactGetItemsInput
    TransactGetItemsOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityMultiple, name: "ConsumedCapacity"))
    TransactGetItemsOutput.add_member(:responses, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemResponseList, name: "Responses"))
    TransactGetItemsOutput.type = Types::TransactGetItemsOutput
    TransactWriteItem.add_member(:condition_check, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionCheck, name: "ConditionCheck"))
    TransactWriteItem.add_member(:put, ::Smithy::Schema::Shapes::MemberShape.new(target: Put, name: "Put"))
    TransactWriteItem.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Delete, name: "Delete"))
    TransactWriteItem.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: Update, name: "Update"))
    TransactWriteItem.type = Types::TransactWriteItem
    TransactWriteItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactWriteItem, name: "member"))
    TransactWriteItemsInput.add_member(:transact_items, ::Smithy::Schema::Shapes::MemberShape.new(target: TransactWriteItemList, name: "TransactItems", traits: {"smithy.api#required" => {}}))
    TransactWriteItemsInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    TransactWriteItemsInput.add_member(:return_item_collection_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnItemCollectionMetrics, name: "ReturnItemCollectionMetrics"))
    TransactWriteItemsInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    TransactWriteItemsInput.type = Types::TransactWriteItemsInput
    TransactWriteItemsOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityMultiple, name: "ConsumedCapacity"))
    TransactWriteItemsOutput.add_member(:item_collection_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCollectionMetricsPerTable, name: "ItemCollectionMetrics"))
    TransactWriteItemsOutput.type = Types::TransactWriteItemsOutput
    TransactionCanceledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TransactionCanceledException.add_member(:cancellation_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: CancellationReasonList, name: "CancellationReasons"))
    TransactionCanceledException.type = Types::TransactionCanceledException
    TransactionConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TransactionConflictException.type = Types::TransactionConflictException
    TransactionInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TransactionInProgressException.type = Types::TransactionInProgressException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnString, name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    Update.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"smithy.api#required" => {}}))
    Update.add_member(:update_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateExpression, name: "UpdateExpression", traits: {"smithy.api#required" => {}}))
    Update.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}}))
    Update.add_member(:condition_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExpression, name: "ConditionExpression"))
    Update.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    Update.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeValueMap, name: "ExpressionAttributeValues"))
    Update.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnValuesOnConditionCheckFailure, name: "ReturnValuesOnConditionCheckFailure"))
    Update.type = Types::Update
    UpdateContinuousBackupsInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateContinuousBackupsInput.add_member(:point_in_time_recovery_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PointInTimeRecoverySpecification, name: "PointInTimeRecoverySpecification", traits: {"smithy.api#required" => {}}))
    UpdateContinuousBackupsInput.type = Types::UpdateContinuousBackupsInput
    UpdateContinuousBackupsOutput.add_member(:continuous_backups_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuousBackupsDescription, name: "ContinuousBackupsDescription"))
    UpdateContinuousBackupsOutput.type = Types::UpdateContinuousBackupsOutput
    UpdateContributorInsightsInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateContributorInsightsInput.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    UpdateContributorInsightsInput.add_member(:contributor_insights_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorInsightsAction, name: "ContributorInsightsAction", traits: {"smithy.api#required" => {}}))
    UpdateContributorInsightsInput.add_member(:contributor_insights_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorInsightsMode, name: "ContributorInsightsMode"))
    UpdateContributorInsightsInput.type = Types::UpdateContributorInsightsInput
    UpdateContributorInsightsOutput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    UpdateContributorInsightsOutput.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    UpdateContributorInsightsOutput.add_member(:contributor_insights_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorInsightsStatus, name: "ContributorInsightsStatus"))
    UpdateContributorInsightsOutput.add_member(:contributor_insights_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ContributorInsightsMode, name: "ContributorInsightsMode"))
    UpdateContributorInsightsOutput.type = Types::UpdateContributorInsightsOutput
    UpdateGlobalSecondaryIndexAction.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    UpdateGlobalSecondaryIndexAction.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughput, name: "ProvisionedThroughput"))
    UpdateGlobalSecondaryIndexAction.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughput, name: "OnDemandThroughput"))
    UpdateGlobalSecondaryIndexAction.add_member(:warm_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmThroughput, name: "WarmThroughput"))
    UpdateGlobalSecondaryIndexAction.type = Types::UpdateGlobalSecondaryIndexAction
    UpdateGlobalTableInput.add_member(:global_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "GlobalTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateGlobalTableInput.add_member(:replica_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaUpdateList, name: "ReplicaUpdates", traits: {"smithy.api#required" => {}}))
    UpdateGlobalTableInput.type = Types::UpdateGlobalTableInput
    UpdateGlobalTableOutput.add_member(:global_table_description, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableDescription, name: "GlobalTableDescription"))
    UpdateGlobalTableOutput.type = Types::UpdateGlobalTableOutput
    UpdateGlobalTableSettingsInput.add_member(:global_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "GlobalTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateGlobalTableSettingsInput.add_member(:global_table_billing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, name: "GlobalTableBillingMode"))
    UpdateGlobalTableSettingsInput.add_member(:global_table_provisioned_write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "GlobalTableProvisionedWriteCapacityUnits"))
    UpdateGlobalTableSettingsInput.add_member(:global_table_provisioned_write_capacity_auto_scaling_settings_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsUpdate, name: "GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate"))
    UpdateGlobalTableSettingsInput.add_member(:global_table_global_secondary_index_settings_update, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableGlobalSecondaryIndexSettingsUpdateList, name: "GlobalTableGlobalSecondaryIndexSettingsUpdate"))
    UpdateGlobalTableSettingsInput.add_member(:replica_settings_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaSettingsUpdateList, name: "ReplicaSettingsUpdate"))
    UpdateGlobalTableSettingsInput.type = Types::UpdateGlobalTableSettingsInput
    UpdateGlobalTableSettingsOutput.add_member(:global_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "GlobalTableName"))
    UpdateGlobalTableSettingsOutput.add_member(:replica_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaSettingsDescriptionList, name: "ReplicaSettings"))
    UpdateGlobalTableSettingsOutput.type = Types::UpdateGlobalTableSettingsOutput
    UpdateItemInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateItemInput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Key, name: "Key", traits: {"smithy.api#required" => {}}))
    UpdateItemInput.add_member(:attribute_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeUpdates, name: "AttributeUpdates"))
    UpdateItemInput.add_member(:expected, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedAttributeMap, name: "Expected"))
    UpdateItemInput.add_member(:conditional_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionalOperator, name: "ConditionalOperator"))
    UpdateItemInput.add_member(:return_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnValue, name: "ReturnValues"))
    UpdateItemInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnConsumedCapacity, name: "ReturnConsumedCapacity"))
    UpdateItemInput.add_member(:return_item_collection_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnItemCollectionMetrics, name: "ReturnItemCollectionMetrics"))
    UpdateItemInput.add_member(:update_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateExpression, name: "UpdateExpression"))
    UpdateItemInput.add_member(:condition_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionExpression, name: "ConditionExpression"))
    UpdateItemInput.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeNameMap, name: "ExpressionAttributeNames"))
    UpdateItemInput.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionAttributeValueMap, name: "ExpressionAttributeValues"))
    UpdateItemInput.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnValuesOnConditionCheckFailure, name: "ReturnValuesOnConditionCheckFailure"))
    UpdateItemInput.type = Types::UpdateItemInput
    UpdateItemOutput.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Attributes"))
    UpdateItemOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacity, name: "ConsumedCapacity"))
    UpdateItemOutput.add_member(:item_collection_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ItemCollectionMetrics, name: "ItemCollectionMetrics"))
    UpdateItemOutput.type = Types::UpdateItemOutput
    UpdateKinesisStreamingConfiguration.add_member(:approximate_creation_date_time_precision, ::Smithy::Schema::Shapes::MemberShape.new(target: ApproximateCreationDateTimePrecision, name: "ApproximateCreationDateTimePrecision"))
    UpdateKinesisStreamingConfiguration.type = Types::UpdateKinesisStreamingConfiguration
    UpdateKinesisStreamingDestinationInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateKinesisStreamingDestinationInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "StreamArn", traits: {"smithy.api#required" => {}}))
    UpdateKinesisStreamingDestinationInput.add_member(:update_kinesis_streaming_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateKinesisStreamingConfiguration, name: "UpdateKinesisStreamingConfiguration"))
    UpdateKinesisStreamingDestinationInput.type = Types::UpdateKinesisStreamingDestinationInput
    UpdateKinesisStreamingDestinationOutput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    UpdateKinesisStreamingDestinationOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "StreamArn"))
    UpdateKinesisStreamingDestinationOutput.add_member(:destination_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationStatus, name: "DestinationStatus"))
    UpdateKinesisStreamingDestinationOutput.add_member(:update_kinesis_streaming_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateKinesisStreamingConfiguration, name: "UpdateKinesisStreamingConfiguration"))
    UpdateKinesisStreamingDestinationOutput.type = Types::UpdateKinesisStreamingDestinationOutput
    UpdateReplicationGroupMemberAction.add_member(:region_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "RegionName", traits: {"smithy.api#required" => {}}))
    UpdateReplicationGroupMemberAction.add_member(:kms_master_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSMasterKeyId, name: "KMSMasterKeyId"))
    UpdateReplicationGroupMemberAction.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughputOverride, name: "ProvisionedThroughputOverride"))
    UpdateReplicationGroupMemberAction.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughputOverride, name: "OnDemandThroughputOverride"))
    UpdateReplicationGroupMemberAction.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaGlobalSecondaryIndexList, name: "GlobalSecondaryIndexes"))
    UpdateReplicationGroupMemberAction.add_member(:table_class_override, ::Smithy::Schema::Shapes::MemberShape.new(target: TableClass, name: "TableClassOverride"))
    UpdateReplicationGroupMemberAction.type = Types::UpdateReplicationGroupMemberAction
    UpdateTableInput.add_member(:attribute_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeDefinitions, name: "AttributeDefinitions"))
    UpdateTableInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateTableInput.add_member(:billing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingMode, name: "BillingMode"))
    UpdateTableInput.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedThroughput, name: "ProvisionedThroughput"))
    UpdateTableInput.add_member(:global_secondary_index_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexUpdateList, name: "GlobalSecondaryIndexUpdates"))
    UpdateTableInput.add_member(:stream_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSpecification, name: "StreamSpecification"))
    UpdateTableInput.add_member(:sse_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: SSESpecification, name: "SSESpecification"))
    UpdateTableInput.add_member(:replica_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationGroupUpdateList, name: "ReplicaUpdates"))
    UpdateTableInput.add_member(:table_class, ::Smithy::Schema::Shapes::MemberShape.new(target: TableClass, name: "TableClass"))
    UpdateTableInput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtectionEnabled, name: "DeletionProtectionEnabled"))
    UpdateTableInput.add_member(:multi_region_consistency, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionConsistency, name: "MultiRegionConsistency"))
    UpdateTableInput.add_member(:global_table_witness_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableWitnessGroupUpdateList, name: "GlobalTableWitnessUpdates"))
    UpdateTableInput.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandThroughput, name: "OnDemandThroughput"))
    UpdateTableInput.add_member(:warm_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmThroughput, name: "WarmThroughput"))
    UpdateTableInput.add_member(:global_table_settings_replication_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalTableSettingsReplicationMode, name: "GlobalTableSettingsReplicationMode"))
    UpdateTableInput.add_member(:vector_index_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIndexUpdateList, name: "VectorIndexUpdates"))
    UpdateTableInput.type = Types::UpdateTableInput
    UpdateTableOutput.add_member(:table_description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableDescription, name: "TableDescription"))
    UpdateTableOutput.type = Types::UpdateTableOutput
    UpdateTableReplicaAutoScalingInput.add_member(:global_secondary_index_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalSecondaryIndexAutoScalingUpdateList, name: "GlobalSecondaryIndexUpdates"))
    UpdateTableReplicaAutoScalingInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateTableReplicaAutoScalingInput.add_member(:provisioned_write_capacity_auto_scaling_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingSettingsUpdate, name: "ProvisionedWriteCapacityAutoScalingUpdate"))
    UpdateTableReplicaAutoScalingInput.add_member(:replica_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaAutoScalingUpdateList, name: "ReplicaUpdates"))
    UpdateTableReplicaAutoScalingInput.type = Types::UpdateTableReplicaAutoScalingInput
    UpdateTableReplicaAutoScalingOutput.add_member(:table_auto_scaling_description, ::Smithy::Schema::Shapes::MemberShape.new(target: TableAutoScalingDescription, name: "TableAutoScalingDescription"))
    UpdateTableReplicaAutoScalingOutput.type = Types::UpdateTableReplicaAutoScalingOutput
    UpdateTimeToLiveInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableArn, name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateTimeToLiveInput.add_member(:time_to_live_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLiveSpecification, name: "TimeToLiveSpecification", traits: {"smithy.api#required" => {}}))
    UpdateTimeToLiveInput.type = Types::UpdateTimeToLiveInput
    UpdateTimeToLiveOutput.add_member(:time_to_live_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeToLiveSpecification, name: "TimeToLiveSpecification"))
    UpdateTimeToLiveOutput.type = Types::UpdateTimeToLiveOutput
    VectorAttributeDefinition.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorAttributeName, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    VectorAttributeDefinition.type = Types::VectorAttributeDefinition
    VectorCapacity.add_member(:vector_search_request_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityUnits, name: "VectorSearchRequestBytes"))
    VectorCapacity.add_member(:vector_write_request_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumedCapacityUnits, name: "VectorWriteRequestBytes"))
    VectorCapacity.type = Types::VectorCapacity
    VectorDistanceFunction.add_member(:cosine, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COSINE", traits: {"smithy.api#enumValue" => "COSINE"}))
    VectorDistanceFunction.add_member(:dot_product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOT_PRODUCT", traits: {"smithy.api#enumValue" => "DOT_PRODUCT"}))
    VectorDistanceFunction.add_member(:euclidean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EUCLIDEAN", traits: {"smithy.api#enumValue" => "EUCLIDEAN"}))
    VectorIndex.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    VectorIndex.add_member(:vector_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorAttributeDefinition, name: "VectorAttribute", traits: {"smithy.api#required" => {}}))
    VectorIndex.add_member(:search_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSchema, name: "SearchSchema"))
    VectorIndex.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: Projection, name: "Projection", traits: {"smithy.api#required" => {}}))
    VectorIndex.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "Dimensions", traits: {"smithy.api#required" => {}}))
    VectorIndex.add_member(:distance_function, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorDistanceFunction, name: "DistanceFunction", traits: {"smithy.api#required" => {}}))
    VectorIndex.type = Types::VectorIndex
    VectorIndexDescription.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    VectorIndexDescription.add_member(:search_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSchema, name: "SearchSchema"))
    VectorIndexDescription.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: Projection, name: "Projection"))
    VectorIndexDescription.add_member(:vector_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorAttributeDefinition, name: "VectorAttribute"))
    VectorIndexDescription.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "Dimensions"))
    VectorIndexDescription.add_member(:distance_function, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorDistanceFunction, name: "DistanceFunction"))
    VectorIndexDescription.add_member(:index_status, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexStatus, name: "IndexStatus"))
    VectorIndexDescription.add_member(:backfilling, ::Smithy::Schema::Shapes::MemberShape.new(target: Backfilling, name: "Backfilling"))
    VectorIndexDescription.add_member(:index_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "IndexSizeBytes"))
    VectorIndexDescription.add_member(:item_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "ItemCount"))
    VectorIndexDescription.add_member(:index_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IndexArn"))
    VectorIndexDescription.type = Types::VectorIndexDescription
    VectorIndexDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIndexDescription, name: "member"))
    VectorIndexInfo.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "IndexName"))
    VectorIndexInfo.add_member(:vector_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorAttributeDefinition, name: "VectorAttribute"))
    VectorIndexInfo.add_member(:search_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchSchema, name: "SearchSchema"))
    VectorIndexInfo.add_member(:projection, ::Smithy::Schema::Shapes::MemberShape.new(target: Projection, name: "Projection"))
    VectorIndexInfo.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "Dimensions"))
    VectorIndexInfo.add_member(:distance_function, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorDistanceFunction, name: "DistanceFunction"))
    VectorIndexInfo.type = Types::VectorIndexInfo
    VectorIndexList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIndex, name: "member"))
    VectorIndexUpdate.add_member(:create, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateVectorIndexAction, name: "Create"))
    VectorIndexUpdate.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteVectorIndexAction, name: "Delete"))
    VectorIndexUpdate.type = Types::VectorIndexUpdate
    VectorIndexUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIndexUpdate, name: "member"))
    VectorIndexes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorIndexInfo, name: "member"))
    VectorIndexesCapacityMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexName, name: "key"))
    VectorIndexesCapacityMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: VectorCapacity, name: "value"))
    WarmThroughput.add_member(:read_units_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "ReadUnitsPerSecond"))
    WarmThroughput.add_member(:write_units_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: LongObject, name: "WriteUnitsPerSecond"))
    WarmThroughput.type = Types::WarmThroughput
    WitnessStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    WitnessStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    WitnessStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    WriteRequest.add_member(:put_request, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRequest, name: "PutRequest"))
    WriteRequest.add_member(:delete_request, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteRequest, name: "DeleteRequest"))
    WriteRequest.type = Types::WriteRequest
    WriteRequests.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WriteRequest, name: "member"))

    DynamoDB20120810 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.dynamodb#DynamoDB_20120810"
      service.name = "DynamoDB20120810"
      service.version = "2012-08-10"
      service.traits = {"aws.api#clientEndpointDiscovery" => {"operation" => "com.amazonaws.dynamodb#DescribeEndpoints", "error" => "com.amazonaws.dynamodb#InvalidEndpointException"}, "aws.api#service" => {"sdkId" => "DynamoDB", "arnNamespace" => "dynamodb", "cloudFormationName" => "DynamoDB", "cloudTrailEventSource" => "dynamodb.amazonaws.com", "endpointPrefix" => "dynamodb"}, "aws.auth#sigv4" => {"name" => "dynamodb"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#suppress" => ["RuleSetAwsBuiltIn.AWS::Auth::AccountId"], "smithy.api#title" => "Amazon DynamoDB", "smithy.api#xmlNamespace" => {"uri" => "http://dynamodb.amazonaws.com/doc/2012-08-10/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "AccountId" => {"builtIn" => "AWS::Auth::AccountId", "required" => false, "documentation" => "The AWS AccountId used for the request.", "type" => "string"}, "AccountIdEndpointMode" => {"builtIn" => "AWS::Auth::AccountIdEndpointMode", "required" => false, "documentation" => "The AccountId Endpoint Mode.", "type" => "string"}, "ResourceArn" => {"required" => false, "documentation" => "ResourceArn containing arn of resource", "type" => "string"}, "ResourceArnList" => {"required" => false, "documentation" => "ResourceArnList containing list of resource arns", "type" => "stringArray"}, "IsSearchOperation" => {"required" => false, "documentation" => "Set to true for SearchVectors to route to the Search FQDN", "type" => "boolean"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "stringEquals", "argv" => [{"ref" => "Region"}, "local"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "parseURL", "argv" => [{"ref" => "Endpoint"}], "assign" => "parsedEndpoint"}, {"fn" => "stringEquals", "argv" => ["dynamodb.{Region}.{PartitionResult#dualStackDnsSuffix}", {"fn" => "getAttr", "argv" => [{"ref" => "parsedEndpoint"}, "authority"]}]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "stringEquals", "argv" => ["search-dynamodb.{Region}.{PartitionResult#dualStackDnsSuffix}", {"fn" => "getAttr", "argv" => [{"ref" => "parsedEndpoint"}, "authority"]}]}, {"fn" => "isSet", "argv" => [{"ref" => "AccountIdEndpointMode"}]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "AccountIdEndpointMode"}, "disabled"]}, {"fn" => "isSet", "argv" => [{"ref" => "ResourceArn"}]}, {"fn" => "aws.parseArn", "argv" => [{"ref" => "ResourceArn"}], "assign" => "ParsedArn_ssa_2"}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "ParsedArn_ssa_2"}, "region"]}, {"ref" => "Region"}]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "ParsedArn_ssa_2"}, "service"]}, "dynamodb"]}, {"fn" => "isValidHostLabel", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "ParsedArn_ssa_2"}, "region"]}, false]}, {"fn" => "isValidHostLabel", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "ParsedArn_ssa_2"}, "accountId"]}, false]}, {"fn" => "isSet", "argv" => [{"ref" => "ResourceArnList"}]}, {"fn" => "getAttr", "argv" => [{"ref" => "ResourceArnList"}, "[0]"], "assign" => "FirstArn"}, {"fn" => "aws.parseArn", "argv" => [{"ref" => "FirstArn"}], "assign" => "ParsedArn_ssa_1"}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "ParsedArn_ssa_1"}, "region"]}, {"ref" => "Region"}]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "ParsedArn_ssa_1"}, "service"]}, "dynamodb"]}, {"fn" => "isValidHostLabel", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "ParsedArn_ssa_1"}, "accountId"]}, false]}, {"fn" => "isValidHostLabel", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "ParsedArn_ssa_1"}, "region"]}, false]}, {"fn" => "isSet", "argv" => [{"ref" => "AccountId"}]}, {"fn" => "stringEquals", "argv" => [{"ref" => "AccountIdEndpointMode"}, "required"]}, {"fn" => "isValidHostLabel", "argv" => [{"ref" => "AccountId"}, false]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "coalesce", "argv" => [{"ref" => "IsSearchOperation"}, false]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "{Endpoint}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: FIPS and local endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and local endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "http://localhost:8000", "properties" => {"authSchemes" => [{"signingRegion" => "us-east-1", "signingName" => "dynamodb", "name" => "sigv4"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://search-dynamodb-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://dynamodb-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://search-dynamodb.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://dynamodb.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://search-dynamodb-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://dynamodb-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{ParsedArn_ssa_2#accountId}.search-ddb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{ParsedArn_ssa_2#accountId}.ddb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{ParsedArn_ssa_1#accountId}.search-ddb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{ParsedArn_ssa_1#accountId}.ddb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{AccountId}.search-ddb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{AccountId}.ddb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Credentials-sourced account ID parameter is invalid", "type" => "error"}, {"conditions" => [], "error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://search-dynamodb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://dynamodb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{ParsedArn_ssa_2#accountId}.search-ddb.{Region}.{PartitionResult#dnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{ParsedArn_ssa_2#accountId}.ddb.{Region}.{PartitionResult#dnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{ParsedArn_ssa_1#accountId}.search-ddb.{Region}.{PartitionResult#dnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{ParsedArn_ssa_1#accountId}.ddb.{Region}.{PartitionResult#dnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{AccountId}.search-ddb.{Region}.{PartitionResult#dnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{AccountId}.ddb.{Region}.{PartitionResult#dnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 82, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEjAAAAAgX14QEAAAAFAAAAAwX14QIF9eEEAAAAAQAAAE0AAAAHAAAAAgAAAD0AAAAIAAAAAwAAACIAAAAJAAAABAAAAAoF9eEjAAAABQX14QcAAAALAAAACwAAAAwAAABFAAAADAAAAA4AAAANAAAAHAX14RkAAABFAAAADQAAACEAAAAPAAAADgAAABAAAAAVAAAADwAAABEAAAAVAAAAEAAAABIAAAAVAAAAEQAAABMAAAAVAAAAEgAAABQAAAAVAAAAEwAAACAAAAAVAAAAFAAAABYAAAAcAAAAFQAAABcAAAAcAAAAFgAAABgAAAAcAAAAFwAAABkAAAAcAAAAGAAAABoAAAAcAAAAGQAAABsAAAAcAAAAGgAAAB8AAAAcAAAAGwAAAB0AAAAhAAAAHQAAAB4F9eEXAAAAHwX14SEF9eEiAAAAHwX14R8F9eEgAAAAHwX14R0F9eEeAAAAHAX14RgAAABFAAAABAAAACMF9eEjAAAABQX14QYAAAAkAAAACQAAACUF9eEcAAAACwAAACYAAAA8AAAADAAAACgAAAAnAAAAHAX14RkAAAA8AAAADQAAADsAAAApAAAADgAAACoAAAAvAAAADwAAACsAAAAvAAAAEAAAACwAAAAvAAAAEQAAAC0AAAAvAAAAEgAAAC4AAAAvAAAAEwAAADoAAAAvAAAAFAAAADAAAAA2AAAAFQAAADEAAAA2AAAAFgAAADIAAAA2AAAAFwAAADMAAAA2AAAAGAAAADQAAAA2AAAAGQAAADUAAAA2AAAAGgAAADkAAAA2AAAAGwAAADcAAAA7AAAAHQAAADgF9eEXAAAAHwX14RUF9eEWAAAAHwX14RMF9eEUAAAAHwX14REF9eESAAAAHAX14RgAAAA8AAAAHwX14RoF9eEbAAAAAwAAAEYAAAA+AAAABAAAAD8F9eEjAAAABQX14QUAAABAAAAABgAAAEEF9eEQAAAACwAAAEIAAABDAAAAHAX14QgAAABDAAAAHgAAAEUAAABEAAAAHwX14Q4F9eEPAAAAHwX14QwF9eENAAAABAAAAEcF9eEjAAAABQX14QUAAABIAAAABgAAAEkF9eELAAAACQAAAEoF9eELAAAACwAAAEsAAABMAAAAHAX14QgAAABMAAAAHwX14QkF9eEKAAAAAgX14QEAAABOAAAAAwX14QIAAABPAAAABAAAAFAF9eEEAAAABwAAAFEF9eEEAAAACAX14QMAAABSAAAACgX14QMF9eEE"}}
      service.add_operation(:batch_execute_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#BatchExecuteStatement"
        operation.name = "BatchExecuteStatement"
        operation.input = BatchExecuteStatementInput
        operation.output = BatchExecuteStatementOutput
        operation.errors << InternalServerError
        operation.errors << RequestLimitExceeded
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#BatchGetItem"
        operation.name = "BatchGetItem"
        operation.input = BatchGetItemInput
        operation.output = BatchGetItemOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << RequestLimitExceeded
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.rules#operationContextParams" => {"ResourceArnList" => {"path" => "keys(RequestItems)"}}}
      end)
      service.add_operation(:batch_write_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#BatchWriteItem"
        operation.name = "BatchWriteItem"
        operation.input = BatchWriteItemInput
        operation.output = BatchWriteItemOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ItemCollectionSizeLimitExceededException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ReplicatedWriteConflictException
        operation.errors << RequestLimitExceeded
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.rules#operationContextParams" => {"ResourceArnList" => {"path" => "keys(RequestItems)"}}}
      end)
      service.add_operation(:create_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#CreateBackup"
        operation.name = "CreateBackup"
        operation.input = CreateBackupInput
        operation.output = CreateBackupOutput
        operation.errors << BackupInUseException
        operation.errors << ContinuousBackupsUnavailableException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << TableInUseException
        operation.errors << TableNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:create_global_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#CreateGlobalTable"
        operation.name = "CreateGlobalTable"
        operation.input = CreateGlobalTableInput
        operation.output = CreateGlobalTableOutput
        operation.errors << GlobalTableAlreadyExistsException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << TableNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:create_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#CreateTable"
        operation.name = "CreateTable"
        operation.input = CreateTableInput
        operation.output = CreateTableOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:delete_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DeleteBackup"
        operation.name = "DeleteBackup"
        operation.input = DeleteBackupInput
        operation.output = DeleteBackupOutput
        operation.errors << BackupInUseException
        operation.errors << BackupNotFoundException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:delete_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DeleteItem"
        operation.name = "DeleteItem"
        operation.input = DeleteItemInput
        operation.output = DeleteItemOutput
        operation.errors << ConditionalCheckFailedException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ItemCollectionSizeLimitExceededException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ReplicatedWriteConflictException
        operation.errors << RequestLimitExceeded
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TransactionConflictException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyInput
        operation.output = DeleteResourcePolicyOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << PolicyNotFoundException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:delete_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DeleteTable"
        operation.name = "DeleteTable"
        operation.input = DeleteTableInput
        operation.output = DeleteTableOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeBackup"
        operation.name = "DescribeBackup"
        operation.input = DescribeBackupInput
        operation.output = DescribeBackupOutput
        operation.errors << BackupNotFoundException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_continuous_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeContinuousBackups"
        operation.name = "DescribeContinuousBackups"
        operation.input = DescribeContinuousBackupsInput
        operation.output = DescribeContinuousBackupsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << TableNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_contributor_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeContributorInsights"
        operation.name = "DescribeContributorInsights"
        operation.input = DescribeContributorInsightsInput
        operation.output = DescribeContributorInsightsOutput
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeEndpoints"
        operation.name = "DescribeEndpoints"
        operation.input = DescribeEndpointsRequest
        operation.output = DescribeEndpointsResponse
        operation.traits = {}
      end)
      service.add_operation(:describe_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeExport"
        operation.name = "DescribeExport"
        operation.input = DescribeExportInput
        operation.output = DescribeExportOutput
        operation.errors << ExportNotFoundException
        operation.errors << InternalServerError
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:describe_global_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeGlobalTable"
        operation.name = "DescribeGlobalTable"
        operation.input = DescribeGlobalTableInput
        operation.output = DescribeGlobalTableOutput
        operation.errors << GlobalTableNotFoundException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_global_table_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeGlobalTableSettings"
        operation.name = "DescribeGlobalTableSettings"
        operation.input = DescribeGlobalTableSettingsInput
        operation.output = DescribeGlobalTableSettingsOutput
        operation.errors << GlobalTableNotFoundException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeImport"
        operation.name = "DescribeImport"
        operation.input = DescribeImportInput
        operation.output = DescribeImportOutput
        operation.errors << ImportNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_kinesis_streaming_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeKinesisStreamingDestination"
        operation.name = "DescribeKinesisStreamingDestination"
        operation.input = DescribeKinesisStreamingDestinationInput
        operation.output = DescribeKinesisStreamingDestinationOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeLimits"
        operation.name = "DescribeLimits"
        operation.input = DescribeLimitsInput
        operation.output = DescribeLimitsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeTable"
        operation.name = "DescribeTable"
        operation.input = DescribeTableInput
        operation.output = DescribeTableOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_table_replica_auto_scaling, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeTableReplicaAutoScaling"
        operation.name = "DescribeTableReplicaAutoScaling"
        operation.input = DescribeTableReplicaAutoScalingInput
        operation.output = DescribeTableReplicaAutoScalingOutput
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_time_to_live, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeTimeToLive"
        operation.name = "DescribeTimeToLive"
        operation.input = DescribeTimeToLiveInput
        operation.output = DescribeTimeToLiveOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:disable_kinesis_streaming_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DisableKinesisStreamingDestination"
        operation.name = "DisableKinesisStreamingDestination"
        operation.input = DisableKinesisStreamingDestinationInput
        operation.output = DisableKinesisStreamingDestinationOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:enable_kinesis_streaming_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#EnableKinesisStreamingDestination"
        operation.name = "EnableKinesisStreamingDestination"
        operation.input = EnableKinesisStreamingDestinationInput
        operation.output = EnableKinesisStreamingDestinationOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:execute_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ExecuteStatement"
        operation.name = "ExecuteStatement"
        operation.input = ExecuteStatementInput
        operation.output = ExecuteStatementOutput
        operation.errors << ConditionalCheckFailedException
        operation.errors << DuplicateItemException
        operation.errors << InternalServerError
        operation.errors << ItemCollectionSizeLimitExceededException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << RequestLimitExceeded
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TransactionConflictException
        operation.traits = {}
      end)
      service.add_operation(:execute_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ExecuteTransaction"
        operation.name = "ExecuteTransaction"
        operation.input = ExecuteTransactionInput
        operation.output = ExecuteTransactionOutput
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerError
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << RequestLimitExceeded
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TransactionCanceledException
        operation.errors << TransactionInProgressException
        operation.traits = {}
      end)
      service.add_operation(:export_table_to_point_in_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ExportTableToPointInTime"
        operation.name = "ExportTableToPointInTime"
        operation.input = ExportTableToPointInTimeInput
        operation.output = ExportTableToPointInTimeOutput
        operation.errors << ExportConflictException
        operation.errors << InternalServerError
        operation.errors << InvalidExportTimeException
        operation.errors << LimitExceededException
        operation.errors << PointInTimeRecoveryUnavailableException
        operation.errors << TableNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#GetItem"
        operation.name = "GetItem"
        operation.input = GetItemInput
        operation.output = GetItemOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << RequestLimitExceeded
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyInput
        operation.output = GetResourcePolicyOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << PolicyNotFoundException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:import_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ImportTable"
        operation.name = "ImportTable"
        operation.input = ImportTableInput
        operation.output = ImportTableOutput
        operation.errors << ImportConflictException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.traits = {"smithy.rules#operationContextParams" => {"ResourceArn" => {"path" => "TableCreationParameters.TableName"}}}
      end)
      service.add_operation(:list_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListBackups"
        operation.name = "ListBackups"
        operation.input = ListBackupsInput
        operation.output = ListBackupsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:list_contributor_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListContributorInsights"
        operation.name = "ListContributorInsights"
        operation.input = ListContributorInsightsInput
        operation.output = ListContributorInsightsOutput
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListContributorInsights.new
      end)
      service.add_operation(:list_exports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListExports"
        operation.name = "ListExports"
        operation.input = ListExportsInput
        operation.output = ListExportsOutput
        operation.errors << InternalServerError
        operation.errors << LimitExceededException
        operation.traits = {}
        operation[:paginator] = Paginators::ListExports.new
      end)
      service.add_operation(:list_global_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListGlobalTables"
        operation.name = "ListGlobalTables"
        operation.input = ListGlobalTablesInput
        operation.output = ListGlobalTablesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:list_imports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListImports"
        operation.name = "ListImports"
        operation.input = ListImportsInput
        operation.output = ListImportsOutput
        operation.errors << LimitExceededException
        operation.traits = {}
        operation[:paginator] = Paginators::ListImports.new
      end)
      service.add_operation(:list_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListTables"
        operation.name = "ListTables"
        operation.input = ListTablesInput
        operation.output = ListTablesOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.test#smokeTests" => [{"id" => "ListTablesSuccess", "params" => {"Limit" => 1}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListTables.new
      end)
      service.add_operation(:list_tags_of_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListTagsOfResource"
        operation.name = "ListTagsOfResource"
        operation.input = ListTagsOfResourceInput
        operation.output = ListTagsOfResourceOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:put_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#PutItem"
        operation.name = "PutItem"
        operation.input = PutItemInput
        operation.output = PutItemOutput
        operation.errors << ConditionalCheckFailedException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ItemCollectionSizeLimitExceededException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ReplicatedWriteConflictException
        operation.errors << RequestLimitExceeded
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TransactionConflictException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyInput
        operation.output = PutResourcePolicyOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << PolicyNotFoundException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#Query"
        operation.name = "Query"
        operation.input = QueryInput
        operation.output = QueryOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << RequestLimitExceeded
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.api#suppress" => ["PaginatedTrait"]}
        operation[:paginator] = Paginators::Query.new
      end)
      service.add_operation(:restore_table_from_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#RestoreTableFromBackup"
        operation.name = "RestoreTableFromBackup"
        operation.input = RestoreTableFromBackupInput
        operation.output = RestoreTableFromBackupOutput
        operation.errors << BackupInUseException
        operation.errors << BackupNotFoundException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << TableAlreadyExistsException
        operation.errors << TableInUseException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:restore_table_to_point_in_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#RestoreTableToPointInTime"
        operation.name = "RestoreTableToPointInTime"
        operation.input = RestoreTableToPointInTimeInput
        operation.output = RestoreTableToPointInTimeOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << InvalidRestoreTimeException
        operation.errors << LimitExceededException
        operation.errors << PointInTimeRecoveryUnavailableException
        operation.errors << TableAlreadyExistsException
        operation.errors << TableInUseException
        operation.errors << TableNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#Scan"
        operation.name = "Scan"
        operation.input = ScanInput
        operation.output = ScanOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << RequestLimitExceeded
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.api#suppress" => ["PaginatedTrait"]}
        operation[:paginator] = Paginators::Scan.new
      end)
      service.add_operation(:search_vectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#SearchVectors"
        operation.name = "SearchVectors"
        operation.input = SearchVectorsInput
        operation.output = SearchVectorsOutput
        operation.errors << InternalServerError
        operation.errors << RequestLimitExceeded
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.rules#staticContextParams" => {"IsSearchOperation" => {"value" => true}}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:transact_get_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#TransactGetItems"
        operation.name = "TransactGetItems"
        operation.input = TransactGetItemsInput
        operation.output = TransactGetItemsOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << RequestLimitExceeded
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TransactionCanceledException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.rules#operationContextParams" => {"ResourceArnList" => {"path" => "TransactItems[*].Get.TableName"}}}
      end)
      service.add_operation(:transact_write_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#TransactWriteItems"
        operation.name = "TransactWriteItems"
        operation.input = TransactWriteItemsInput
        operation.output = TransactWriteItemsOutput
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << RequestLimitExceeded
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TransactionCanceledException
        operation.errors << TransactionInProgressException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.rules#operationContextParams" => {"ResourceArnList" => {"path" => "TransactItems[*].[ConditionCheck.TableName, Put.TableName, Delete.TableName, Update.TableName][]"}}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_continuous_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateContinuousBackups"
        operation.name = "UpdateContinuousBackups"
        operation.input = UpdateContinuousBackupsInput
        operation.output = UpdateContinuousBackupsOutput
        operation.errors << ContinuousBackupsUnavailableException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << TableNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_contributor_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateContributorInsights"
        operation.name = "UpdateContributorInsights"
        operation.input = UpdateContributorInsightsInput
        operation.output = UpdateContributorInsightsOutput
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_global_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateGlobalTable"
        operation.name = "UpdateGlobalTable"
        operation.input = UpdateGlobalTableInput
        operation.output = UpdateGlobalTableOutput
        operation.errors << GlobalTableNotFoundException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ReplicaAlreadyExistsException
        operation.errors << ReplicaNotFoundException
        operation.errors << TableNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_global_table_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateGlobalTableSettings"
        operation.name = "UpdateGlobalTableSettings"
        operation.input = UpdateGlobalTableSettingsInput
        operation.output = UpdateGlobalTableSettingsOutput
        operation.errors << GlobalTableNotFoundException
        operation.errors << IndexNotFoundException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << ReplicaNotFoundException
        operation.errors << ResourceInUseException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateItem"
        operation.name = "UpdateItem"
        operation.input = UpdateItemInput
        operation.output = UpdateItemOutput
        operation.errors << ConditionalCheckFailedException
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << ItemCollectionSizeLimitExceededException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ReplicatedWriteConflictException
        operation.errors << RequestLimitExceeded
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << TransactionConflictException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_kinesis_streaming_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateKinesisStreamingDestination"
        operation.name = "UpdateKinesisStreamingDestination"
        operation.input = UpdateKinesisStreamingDestinationInput
        operation.output = UpdateKinesisStreamingDestinationOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateTable"
        operation.name = "UpdateTable"
        operation.input = UpdateTableInput
        operation.output = UpdateTableOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_table_replica_auto_scaling, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateTableReplicaAutoScaling"
        operation.name = "UpdateTableReplicaAutoScaling"
        operation.input = UpdateTableReplicaAutoScalingInput
        operation.output = UpdateTableReplicaAutoScalingOutput
        operation.errors << InternalServerError
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_time_to_live, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateTimeToLive"
        operation.name = "UpdateTimeToLive"
        operation.input = UpdateTimeToLiveInput
        operation.output = UpdateTimeToLiveOutput
        operation.errors << InternalServerError
        operation.errors << InvalidEndpointException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
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
