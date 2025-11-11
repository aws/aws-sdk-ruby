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
    KeySchema = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#KeySchema", name: "KeySchema", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
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
    WarmThroughput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#WarmThroughput", name: "WarmThroughput")
    WitnessStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodb#WitnessStatus", name: "WitnessStatus")
    WriteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodb#WriteRequest", name: "WriteRequest")
    WriteRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodb#WriteRequests", name: "WriteRequests", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})

    ApproximateCreationDateTimePrecision.add_member(:millisecond, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MILLISECOND", traits: {"smithy.api#enumValue" => "MILLISECOND"}))
    ApproximateCreationDateTimePrecision.add_member(:microsecond, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MICROSECOND", traits: {"smithy.api#enumValue" => "MICROSECOND"}))
    ArchivalSummary.add_member(:archival_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "ArchivalDateTime"))
    ArchivalSummary.add_member(:archival_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArchivalReason, location_name: "ArchivalReason"))
    ArchivalSummary.add_member(:archival_backup_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupArn, location_name: "ArchivalBackupArn"))
    ArchivalSummary.type = Types::ArchivalSummary
    AttributeAction.add_member(:add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADD", traits: {"smithy.api#enumValue" => "ADD"}))
    AttributeAction.add_member(:put, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUT", traits: {"smithy.api#enumValue" => "PUT"}))
    AttributeAction.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    AttributeDefinition.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchemaAttributeName, location_name: "AttributeName", traits: {"smithy.api#required" => {}}))
    AttributeDefinition.add_member(:attribute_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalarAttributeType, location_name: "AttributeType", traits: {"smithy.api#required" => {}}))
    AttributeDefinition.type = Types::AttributeDefinition
    AttributeDefinitions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeDefinition)
    AttributeMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    AttributeMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    AttributeNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    AttributeUpdates.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    AttributeUpdates.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueUpdate)
    AttributeValue.add_member(:s, Types::AttributeValue::S, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringAttributeValue, location_name: "S"))
    AttributeValue.add_member(:n, Types::AttributeValue::N, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberAttributeValue, location_name: "N"))
    AttributeValue.add_member(:b, Types::AttributeValue::B, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryAttributeValue, location_name: "B"))
    AttributeValue.add_member(:ss, Types::AttributeValue::SS, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringSetAttributeValue, location_name: "SS"))
    AttributeValue.add_member(:ns, Types::AttributeValue::NS, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberSetAttributeValue, location_name: "NS"))
    AttributeValue.add_member(:bs, Types::AttributeValue::BS, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BinarySetAttributeValue, location_name: "BS"))
    AttributeValue.add_member(:m, Types::AttributeValue::M, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MapAttributeValue, location_name: "M"))
    AttributeValue.add_member(:l, Types::AttributeValue::L, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttributeValue, location_name: "L"))
    AttributeValue.add_member(:null, Types::AttributeValue::NULL, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullAttributeValue, location_name: "NULL"))
    AttributeValue.add_member(:bool, Types::AttributeValue::BOOL, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAttributeValue, location_name: "BOOL"))
    AttributeValue.add_member(:unknown, Types::AttributeValue::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AttributeValue.type = Types::AttributeValue
    AttributeValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    AttributeValueUpdate.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue, location_name: "Value"))
    AttributeValueUpdate.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeAction, location_name: "Action"))
    AttributeValueUpdate.type = Types::AttributeValueUpdate
    AutoScalingPolicyDescription.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicyName, location_name: "PolicyName"))
    AutoScalingPolicyDescription.add_member(:target_tracking_scaling_policy_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingTargetTrackingScalingPolicyConfigurationDescription, location_name: "TargetTrackingScalingPolicyConfiguration"))
    AutoScalingPolicyDescription.type = Types::AutoScalingPolicyDescription
    AutoScalingPolicyDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicyDescription)
    AutoScalingPolicyUpdate.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicyName, location_name: "PolicyName"))
    AutoScalingPolicyUpdate.add_member(:target_tracking_scaling_policy_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate, location_name: "TargetTrackingScalingPolicyConfiguration", traits: {"smithy.api#required" => {}}))
    AutoScalingPolicyUpdate.type = Types::AutoScalingPolicyUpdate
    AutoScalingSettingsDescription.add_member(:minimum_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "MinimumUnits"))
    AutoScalingSettingsDescription.add_member(:maximum_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "MaximumUnits"))
    AutoScalingSettingsDescription.add_member(:auto_scaling_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: "AutoScalingDisabled"))
    AutoScalingSettingsDescription.add_member(:auto_scaling_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "AutoScalingRoleArn"))
    AutoScalingSettingsDescription.add_member(:scaling_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicyDescriptionList, location_name: "ScalingPolicies"))
    AutoScalingSettingsDescription.type = Types::AutoScalingSettingsDescription
    AutoScalingSettingsUpdate.add_member(:minimum_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "MinimumUnits"))
    AutoScalingSettingsUpdate.add_member(:maximum_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "MaximumUnits"))
    AutoScalingSettingsUpdate.add_member(:auto_scaling_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: "AutoScalingDisabled"))
    AutoScalingSettingsUpdate.add_member(:auto_scaling_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingRoleArn, location_name: "AutoScalingRoleArn"))
    AutoScalingSettingsUpdate.add_member(:scaling_policy_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingPolicyUpdate, location_name: "ScalingPolicyUpdate"))
    AutoScalingSettingsUpdate.type = Types::AutoScalingSettingsUpdate
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.add_member(:disable_scale_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: "DisableScaleIn"))
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.add_member(:scale_in_cooldown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerObject, location_name: "ScaleInCooldown"))
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.add_member(:scale_out_cooldown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerObject, location_name: "ScaleOutCooldown"))
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.add_member(:target_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleObject, location_name: "TargetValue", traits: {"smithy.api#required" => {}}))
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.type = Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.add_member(:disable_scale_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: "DisableScaleIn"))
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.add_member(:scale_in_cooldown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerObject, location_name: "ScaleInCooldown"))
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.add_member(:scale_out_cooldown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerObject, location_name: "ScaleOutCooldown"))
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.add_member(:target_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleObject, location_name: "TargetValue", traits: {"smithy.api#required" => {}}))
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.type = Types::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
    BackupDescription.add_member(:backup_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupDetails, location_name: "BackupDetails"))
    BackupDescription.add_member(:source_table_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceTableDetails, location_name: "SourceTableDetails"))
    BackupDescription.add_member(:source_table_feature_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceTableFeatureDetails, location_name: "SourceTableFeatureDetails"))
    BackupDescription.type = Types::BackupDescription
    BackupDetails.add_member(:backup_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupArn, location_name: "BackupArn", traits: {"smithy.api#required" => {}}))
    BackupDetails.add_member(:backup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupName, location_name: "BackupName", traits: {"smithy.api#required" => {}}))
    BackupDetails.add_member(:backup_size_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupSizeBytes, location_name: "BackupSizeBytes"))
    BackupDetails.add_member(:backup_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupStatus, location_name: "BackupStatus", traits: {"smithy.api#required" => {}}))
    BackupDetails.add_member(:backup_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupType, location_name: "BackupType", traits: {"smithy.api#required" => {}}))
    BackupDetails.add_member(:backup_creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupCreationDateTime, location_name: "BackupCreationDateTime", traits: {"smithy.api#required" => {}}))
    BackupDetails.add_member(:backup_expiry_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "BackupExpiryDateTime"))
    BackupDetails.type = Types::BackupDetails
    BackupInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BackupInUseException.type = Types::BackupInUseException
    BackupNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BackupNotFoundException.type = Types::BackupNotFoundException
    BackupStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    BackupStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    BackupStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    BackupSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupSummary)
    BackupSummary.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    BackupSummary.add_member(:table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableId, location_name: "TableId"))
    BackupSummary.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableArn"))
    BackupSummary.add_member(:backup_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupArn, location_name: "BackupArn"))
    BackupSummary.add_member(:backup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupName, location_name: "BackupName"))
    BackupSummary.add_member(:backup_creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupCreationDateTime, location_name: "BackupCreationDateTime"))
    BackupSummary.add_member(:backup_expiry_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "BackupExpiryDateTime"))
    BackupSummary.add_member(:backup_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupStatus, location_name: "BackupStatus"))
    BackupSummary.add_member(:backup_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupType, location_name: "BackupType"))
    BackupSummary.add_member(:backup_size_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupSizeBytes, location_name: "BackupSizeBytes"))
    BackupSummary.type = Types::BackupSummary
    BackupType.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    BackupType.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSTEM", traits: {"smithy.api#enumValue" => "SYSTEM"}))
    BackupType.add_member(:aws_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_BACKUP", traits: {"smithy.api#enumValue" => "AWS_BACKUP"}))
    BackupTypeFilter.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    BackupTypeFilter.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSTEM", traits: {"smithy.api#enumValue" => "SYSTEM"}))
    BackupTypeFilter.add_member(:aws_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_BACKUP", traits: {"smithy.api#enumValue" => "AWS_BACKUP"}))
    BackupTypeFilter.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    BatchExecuteStatementInput.add_member(:statements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartiQLBatchRequest, location_name: "Statements", traits: {"smithy.api#required" => {}}))
    BatchExecuteStatementInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    BatchExecuteStatementInput.type = Types::BatchExecuteStatementInput
    BatchExecuteStatementOutput.add_member(:responses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartiQLBatchResponse, location_name: "Responses"))
    BatchExecuteStatementOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacityMultiple, location_name: "ConsumedCapacity"))
    BatchExecuteStatementOutput.type = Types::BatchExecuteStatementOutput
    BatchGetItemInput.add_member(:request_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRequestMap, location_name: "RequestItems", traits: {"smithy.api#required" => {}}))
    BatchGetItemInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    BatchGetItemInput.type = Types::BatchGetItemInput
    BatchGetItemOutput.add_member(:responses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetResponseMap, location_name: "Responses"))
    BatchGetItemOutput.add_member(:unprocessed_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRequestMap, location_name: "UnprocessedKeys"))
    BatchGetItemOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacityMultiple, location_name: "ConsumedCapacity"))
    BatchGetItemOutput.type = Types::BatchGetItemOutput
    BatchGetRequestMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn)
    BatchGetRequestMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeysAndAttributes)
    BatchGetResponseMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn)
    BatchGetResponseMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemList)
    BatchStatementError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStatementErrorCodeEnum, location_name: "Code"))
    BatchStatementError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BatchStatementError.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Item"))
    BatchStatementError.type = Types::BatchStatementError
    BatchStatementErrorCodeEnum.add_member(:conditional_check_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ConditionalCheckFailed", traits: {"smithy.api#enumValue" => "ConditionalCheckFailed"}))
    BatchStatementErrorCodeEnum.add_member(:item_collection_size_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ItemCollectionSizeLimitExceeded", traits: {"smithy.api#enumValue" => "ItemCollectionSizeLimitExceeded"}))
    BatchStatementErrorCodeEnum.add_member(:request_limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RequestLimitExceeded", traits: {"smithy.api#enumValue" => "RequestLimitExceeded"}))
    BatchStatementErrorCodeEnum.add_member(:validation_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ValidationError", traits: {"smithy.api#enumValue" => "ValidationError"}))
    BatchStatementErrorCodeEnum.add_member(:provisioned_throughput_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ProvisionedThroughputExceeded", traits: {"smithy.api#enumValue" => "ProvisionedThroughputExceeded"}))
    BatchStatementErrorCodeEnum.add_member(:transaction_conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TransactionConflict", traits: {"smithy.api#enumValue" => "TransactionConflict"}))
    BatchStatementErrorCodeEnum.add_member(:throttling_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ThrottlingError", traits: {"smithy.api#enumValue" => "ThrottlingError"}))
    BatchStatementErrorCodeEnum.add_member(:internal_server_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "InternalServerError", traits: {"smithy.api#enumValue" => "InternalServerError"}))
    BatchStatementErrorCodeEnum.add_member(:resource_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ResourceNotFound", traits: {"smithy.api#enumValue" => "ResourceNotFound"}))
    BatchStatementErrorCodeEnum.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AccessDenied", traits: {"smithy.api#enumValue" => "AccessDenied"}))
    BatchStatementErrorCodeEnum.add_member(:duplicate_item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DuplicateItem", traits: {"smithy.api#enumValue" => "DuplicateItem"}))
    BatchStatementRequest.add_member(:statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartiQLStatement, location_name: "Statement", traits: {"smithy.api#required" => {}}))
    BatchStatementRequest.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatementParameters, location_name: "Parameters"))
    BatchStatementRequest.add_member(:consistent_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistentRead, location_name: "ConsistentRead"))
    BatchStatementRequest.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    BatchStatementRequest.type = Types::BatchStatementRequest
    BatchStatementResponse.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStatementError, location_name: "Error"))
    BatchStatementResponse.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    BatchStatementResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Item"))
    BatchStatementResponse.type = Types::BatchStatementResponse
    BatchWriteItemInput.add_member(:request_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchWriteItemRequestMap, location_name: "RequestItems", traits: {"smithy.api#required" => {}}))
    BatchWriteItemInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    BatchWriteItemInput.add_member(:return_item_collection_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnItemCollectionMetrics, location_name: "ReturnItemCollectionMetrics"))
    BatchWriteItemInput.type = Types::BatchWriteItemInput
    BatchWriteItemOutput.add_member(:unprocessed_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchWriteItemRequestMap, location_name: "UnprocessedItems"))
    BatchWriteItemOutput.add_member(:item_collection_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionMetricsPerTable, location_name: "ItemCollectionMetrics"))
    BatchWriteItemOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacityMultiple, location_name: "ConsumedCapacity"))
    BatchWriteItemOutput.type = Types::BatchWriteItemOutput
    BatchWriteItemRequestMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn)
    BatchWriteItemRequestMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteRequests)
    BillingMode.add_member(:provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONED", traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    BillingMode.add_member(:pay_per_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PAY_PER_REQUEST", traits: {"smithy.api#enumValue" => "PAY_PER_REQUEST"}))
    BillingModeSummary.add_member(:billing_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: "BillingMode"))
    BillingModeSummary.add_member(:last_update_to_pay_per_request_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdateToPayPerRequestDateTime"))
    BillingModeSummary.type = Types::BillingModeSummary
    BinarySetAttributeValue.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryAttributeValue)
    CancellationReason.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Item"))
    CancellationReason.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: "Code"))
    CancellationReason.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    CancellationReason.type = Types::CancellationReason
    CancellationReasonList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancellationReason)
    Capacity.add_member(:read_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "ReadCapacityUnits"))
    Capacity.add_member(:write_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "WriteCapacityUnits"))
    Capacity.add_member(:capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "CapacityUnits"))
    Capacity.type = Types::Capacity
    ComparisonOperator.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQ", traits: {"smithy.api#enumValue" => "EQ"}))
    ComparisonOperator.add_member(:ne, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NE", traits: {"smithy.api#enumValue" => "NE"}))
    ComparisonOperator.add_member(:in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN", traits: {"smithy.api#enumValue" => "IN"}))
    ComparisonOperator.add_member(:le, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LE", traits: {"smithy.api#enumValue" => "LE"}))
    ComparisonOperator.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LT", traits: {"smithy.api#enumValue" => "LT"}))
    ComparisonOperator.add_member(:ge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GE", traits: {"smithy.api#enumValue" => "GE"}))
    ComparisonOperator.add_member(:gt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GT", traits: {"smithy.api#enumValue" => "GT"}))
    ComparisonOperator.add_member(:between, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    ComparisonOperator.add_member(:not_null, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_NULL", traits: {"smithy.api#enumValue" => "NOT_NULL"}))
    ComparisonOperator.add_member(:null, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NULL", traits: {"smithy.api#enumValue" => "NULL"}))
    ComparisonOperator.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    ComparisonOperator.add_member(:not_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_CONTAINS", traits: {"smithy.api#enumValue" => "NOT_CONTAINS"}))
    ComparisonOperator.add_member(:begins_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    Condition.add_member(:attribute_value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "AttributeValueList"))
    Condition.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "ComparisonOperator", traits: {"smithy.api#required" => {}}))
    Condition.type = Types::Condition
    ConditionCheck.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "Key", traits: {"smithy.api#required" => {}}))
    ConditionCheck.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}}))
    ConditionCheck.add_member(:condition_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "ConditionExpression", traits: {"smithy.api#required" => {}}))
    ConditionCheck.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    ConditionCheck.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    ConditionCheck.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    ConditionCheck.type = Types::ConditionCheck
    ConditionalCheckFailedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConditionalCheckFailedException.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Item"))
    ConditionalCheckFailedException.type = Types::ConditionalCheckFailedException
    ConditionalOperator.add_member(:and, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AND", traits: {"smithy.api#enumValue" => "AND"}))
    ConditionalOperator.add_member(:or, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OR", traits: {"smithy.api#enumValue" => "OR"}))
    ConsumedCapacity.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName"))
    ConsumedCapacity.add_member(:capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "CapacityUnits"))
    ConsumedCapacity.add_member(:read_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "ReadCapacityUnits"))
    ConsumedCapacity.add_member(:write_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "WriteCapacityUnits"))
    ConsumedCapacity.add_member(:table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Capacity, location_name: "Table"))
    ConsumedCapacity.add_member(:local_secondary_indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecondaryIndexesCapacityMap, location_name: "LocalSecondaryIndexes"))
    ConsumedCapacity.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecondaryIndexesCapacityMap, location_name: "GlobalSecondaryIndexes"))
    ConsumedCapacity.type = Types::ConsumedCapacity
    ConsumedCapacityMultiple.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacity)
    ContinuousBackupsDescription.add_member(:continuous_backups_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousBackupsStatus, location_name: "ContinuousBackupsStatus", traits: {"smithy.api#required" => {}}))
    ContinuousBackupsDescription.add_member(:point_in_time_recovery_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PointInTimeRecoveryDescription, location_name: "PointInTimeRecoveryDescription"))
    ContinuousBackupsDescription.type = Types::ContinuousBackupsDescription
    ContinuousBackupsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ContinuousBackupsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ContinuousBackupsUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ContinuousBackupsUnavailableException.type = Types::ContinuousBackupsUnavailableException
    ContributorInsightsAction.add_member(:enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLE", traits: {"smithy.api#enumValue" => "ENABLE"}))
    ContributorInsightsAction.add_member(:disable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    ContributorInsightsMode.add_member(:accessed_and_throttled_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCESSED_AND_THROTTLED_KEYS", traits: {"smithy.api#enumValue" => "ACCESSED_AND_THROTTLED_KEYS"}))
    ContributorInsightsMode.add_member(:throttled_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THROTTLED_KEYS", traits: {"smithy.api#enumValue" => "THROTTLED_KEYS"}))
    ContributorInsightsRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorInsightsRule)
    ContributorInsightsStatus.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    ContributorInsightsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ContributorInsightsStatus.add_member(:disabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    ContributorInsightsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ContributorInsightsStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ContributorInsightsSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorInsightsSummary)
    ContributorInsightsSummary.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    ContributorInsightsSummary.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    ContributorInsightsSummary.add_member(:contributor_insights_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorInsightsStatus, location_name: "ContributorInsightsStatus"))
    ContributorInsightsSummary.add_member(:contributor_insights_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorInsightsMode, location_name: "ContributorInsightsMode"))
    ContributorInsightsSummary.type = Types::ContributorInsightsSummary
    CreateBackupInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    CreateBackupInput.add_member(:backup_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupName, location_name: "BackupName", traits: {"smithy.api#required" => {}}))
    CreateBackupInput.type = Types::CreateBackupInput
    CreateBackupOutput.add_member(:backup_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupDetails, location_name: "BackupDetails"))
    CreateBackupOutput.type = Types::CreateBackupOutput
    CreateGlobalSecondaryIndexAction.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName", traits: {"smithy.api#required" => {}}))
    CreateGlobalSecondaryIndexAction.add_member(:key_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema", traits: {"smithy.api#required" => {}}))
    CreateGlobalSecondaryIndexAction.add_member(:projection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Projection, location_name: "Projection", traits: {"smithy.api#required" => {}}))
    CreateGlobalSecondaryIndexAction.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput"))
    CreateGlobalSecondaryIndexAction.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughput, location_name: "OnDemandThroughput"))
    CreateGlobalSecondaryIndexAction.add_member(:warm_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WarmThroughput, location_name: "WarmThroughput"))
    CreateGlobalSecondaryIndexAction.type = Types::CreateGlobalSecondaryIndexAction
    CreateGlobalTableInput.add_member(:global_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "GlobalTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    CreateGlobalTableInput.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaList, location_name: "ReplicationGroup", traits: {"smithy.api#required" => {}}))
    CreateGlobalTableInput.type = Types::CreateGlobalTableInput
    CreateGlobalTableOutput.add_member(:global_table_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableDescription, location_name: "GlobalTableDescription"))
    CreateGlobalTableOutput.type = Types::CreateGlobalTableOutput
    CreateGlobalTableWitnessGroupMemberAction.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName", traits: {"smithy.api#required" => {}}))
    CreateGlobalTableWitnessGroupMemberAction.type = Types::CreateGlobalTableWitnessGroupMemberAction
    CreateReplicaAction.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName", traits: {"smithy.api#required" => {}}))
    CreateReplicaAction.type = Types::CreateReplicaAction
    CreateReplicationGroupMemberAction.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName", traits: {"smithy.api#required" => {}}))
    CreateReplicationGroupMemberAction.add_member(:kms_master_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSMasterKeyId, location_name: "KMSMasterKeyId"))
    CreateReplicationGroupMemberAction.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputOverride, location_name: "ProvisionedThroughputOverride"))
    CreateReplicationGroupMemberAction.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughputOverride, location_name: "OnDemandThroughputOverride"))
    CreateReplicationGroupMemberAction.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexes"))
    CreateReplicationGroupMemberAction.add_member(:table_class_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableClass, location_name: "TableClassOverride"))
    CreateReplicationGroupMemberAction.type = Types::CreateReplicationGroupMemberAction
    CreateTableInput.add_member(:attribute_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeDefinitions, location_name: "AttributeDefinitions", traits: {"smithy.api#required" => {}}))
    CreateTableInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    CreateTableInput.add_member(:key_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema", traits: {"smithy.api#required" => {}}))
    CreateTableInput.add_member(:local_secondary_indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalSecondaryIndexList, location_name: "LocalSecondaryIndexes"))
    CreateTableInput.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexes"))
    CreateTableInput.add_member(:billing_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: "BillingMode"))
    CreateTableInput.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput"))
    CreateTableInput.add_member(:stream_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSpecification, location_name: "StreamSpecification"))
    CreateTableInput.add_member(:sse_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSESpecification, location_name: "SSESpecification"))
    CreateTableInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTableInput.add_member(:table_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableClass, location_name: "TableClass"))
    CreateTableInput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, location_name: "DeletionProtectionEnabled"))
    CreateTableInput.add_member(:warm_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WarmThroughput, location_name: "WarmThroughput"))
    CreateTableInput.add_member(:resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "ResourcePolicy"))
    CreateTableInput.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughput, location_name: "OnDemandThroughput"))
    CreateTableInput.type = Types::CreateTableInput
    CreateTableOutput.add_member(:table_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableDescription, location_name: "TableDescription"))
    CreateTableOutput.type = Types::CreateTableOutput
    CsvHeaderList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CsvHeader)
    CsvOptions.add_member(:delimiter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CsvDelimiter, location_name: "Delimiter"))
    CsvOptions.add_member(:header_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CsvHeaderList, location_name: "HeaderList"))
    CsvOptions.type = Types::CsvOptions
    Delete.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Delete.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}}))
    Delete.add_member(:condition_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "ConditionExpression"))
    Delete.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    Delete.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    Delete.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    Delete.type = Types::Delete
    DeleteBackupInput.add_member(:backup_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupArn, location_name: "BackupArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DeleteBackupInput.type = Types::DeleteBackupInput
    DeleteBackupOutput.add_member(:backup_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupDescription, location_name: "BackupDescription"))
    DeleteBackupOutput.type = Types::DeleteBackupOutput
    DeleteGlobalSecondaryIndexAction.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName", traits: {"smithy.api#required" => {}}))
    DeleteGlobalSecondaryIndexAction.type = Types::DeleteGlobalSecondaryIndexAction
    DeleteGlobalTableWitnessGroupMemberAction.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName", traits: {"smithy.api#required" => {}}))
    DeleteGlobalTableWitnessGroupMemberAction.type = Types::DeleteGlobalTableWitnessGroupMemberAction
    DeleteItemInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DeleteItemInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "Key", traits: {"smithy.api#required" => {}}))
    DeleteItemInput.add_member(:expected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedAttributeMap, location_name: "Expected"))
    DeleteItemInput.add_member(:conditional_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalOperator, location_name: "ConditionalOperator"))
    DeleteItemInput.add_member(:return_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnValue, location_name: "ReturnValues"))
    DeleteItemInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    DeleteItemInput.add_member(:return_item_collection_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnItemCollectionMetrics, location_name: "ReturnItemCollectionMetrics"))
    DeleteItemInput.add_member(:condition_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "ConditionExpression"))
    DeleteItemInput.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    DeleteItemInput.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    DeleteItemInput.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    DeleteItemInput.type = Types::DeleteItemInput
    DeleteItemOutput.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Attributes"))
    DeleteItemOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "ConsumedCapacity"))
    DeleteItemOutput.add_member(:item_collection_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionMetrics, location_name: "ItemCollectionMetrics"))
    DeleteItemOutput.type = Types::DeleteItemOutput
    DeleteReplicaAction.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName", traits: {"smithy.api#required" => {}}))
    DeleteReplicaAction.type = Types::DeleteReplicaAction
    DeleteReplicationGroupMemberAction.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName", traits: {"smithy.api#required" => {}}))
    DeleteReplicationGroupMemberAction.type = Types::DeleteReplicationGroupMemberAction
    DeleteRequest.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "Key", traits: {"smithy.api#required" => {}}))
    DeleteRequest.type = Types::DeleteRequest
    DeleteResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DeleteResourcePolicyInput.add_member(:expected_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: "ExpectedRevisionId"))
    DeleteResourcePolicyInput.type = Types::DeleteResourcePolicyInput
    DeleteResourcePolicyOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: "RevisionId"))
    DeleteResourcePolicyOutput.type = Types::DeleteResourcePolicyOutput
    DeleteTableInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DeleteTableInput.type = Types::DeleteTableInput
    DeleteTableOutput.add_member(:table_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableDescription, location_name: "TableDescription"))
    DeleteTableOutput.type = Types::DeleteTableOutput
    DescribeBackupInput.add_member(:backup_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupArn, location_name: "BackupArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeBackupInput.type = Types::DescribeBackupInput
    DescribeBackupOutput.add_member(:backup_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupDescription, location_name: "BackupDescription"))
    DescribeBackupOutput.type = Types::DescribeBackupOutput
    DescribeContinuousBackupsInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeContinuousBackupsInput.type = Types::DescribeContinuousBackupsInput
    DescribeContinuousBackupsOutput.add_member(:continuous_backups_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousBackupsDescription, location_name: "ContinuousBackupsDescription"))
    DescribeContinuousBackupsOutput.type = Types::DescribeContinuousBackupsOutput
    DescribeContributorInsightsInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeContributorInsightsInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    DescribeContributorInsightsInput.type = Types::DescribeContributorInsightsInput
    DescribeContributorInsightsOutput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    DescribeContributorInsightsOutput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    DescribeContributorInsightsOutput.add_member(:contributor_insights_rule_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorInsightsRuleList, location_name: "ContributorInsightsRuleList"))
    DescribeContributorInsightsOutput.add_member(:contributor_insights_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorInsightsStatus, location_name: "ContributorInsightsStatus"))
    DescribeContributorInsightsOutput.add_member(:last_update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdateDateTime, location_name: "LastUpdateDateTime"))
    DescribeContributorInsightsOutput.add_member(:failure_exception, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureException, location_name: "FailureException"))
    DescribeContributorInsightsOutput.add_member(:contributor_insights_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorInsightsMode, location_name: "ContributorInsightsMode"))
    DescribeContributorInsightsOutput.type = Types::DescribeContributorInsightsOutput
    DescribeEndpointsRequest.type = Types::DescribeEndpointsRequest
    DescribeEndpointsResponse.add_member(:endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoints, location_name: "Endpoints", traits: {"smithy.api#required" => {}}))
    DescribeEndpointsResponse.type = Types::DescribeEndpointsResponse
    DescribeExportInput.add_member(:export_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportArn, location_name: "ExportArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeExportInput.type = Types::DescribeExportInput
    DescribeExportOutput.add_member(:export_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDescription, location_name: "ExportDescription"))
    DescribeExportOutput.type = Types::DescribeExportOutput
    DescribeGlobalTableInput.add_member(:global_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "GlobalTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeGlobalTableInput.type = Types::DescribeGlobalTableInput
    DescribeGlobalTableOutput.add_member(:global_table_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableDescription, location_name: "GlobalTableDescription"))
    DescribeGlobalTableOutput.type = Types::DescribeGlobalTableOutput
    DescribeGlobalTableSettingsInput.add_member(:global_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "GlobalTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeGlobalTableSettingsInput.type = Types::DescribeGlobalTableSettingsInput
    DescribeGlobalTableSettingsOutput.add_member(:global_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "GlobalTableName"))
    DescribeGlobalTableSettingsOutput.add_member(:replica_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaSettingsDescriptionList, location_name: "ReplicaSettings"))
    DescribeGlobalTableSettingsOutput.type = Types::DescribeGlobalTableSettingsOutput
    DescribeImportInput.add_member(:import_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportArn, location_name: "ImportArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeImportInput.type = Types::DescribeImportInput
    DescribeImportOutput.add_member(:import_table_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTableDescription, location_name: "ImportTableDescription", traits: {"smithy.api#required" => {}}))
    DescribeImportOutput.type = Types::DescribeImportOutput
    DescribeKinesisStreamingDestinationInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeKinesisStreamingDestinationInput.type = Types::DescribeKinesisStreamingDestinationInput
    DescribeKinesisStreamingDestinationOutput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    DescribeKinesisStreamingDestinationOutput.add_member(:kinesis_data_stream_destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisDataStreamDestinations, location_name: "KinesisDataStreamDestinations"))
    DescribeKinesisStreamingDestinationOutput.type = Types::DescribeKinesisStreamingDestinationOutput
    DescribeLimitsInput.type = Types::DescribeLimitsInput
    DescribeLimitsOutput.add_member(:account_max_read_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "AccountMaxReadCapacityUnits"))
    DescribeLimitsOutput.add_member(:account_max_write_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "AccountMaxWriteCapacityUnits"))
    DescribeLimitsOutput.add_member(:table_max_read_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "TableMaxReadCapacityUnits"))
    DescribeLimitsOutput.add_member(:table_max_write_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "TableMaxWriteCapacityUnits"))
    DescribeLimitsOutput.type = Types::DescribeLimitsOutput
    DescribeTableInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeTableInput.type = Types::DescribeTableInput
    DescribeTableOutput.add_member(:table, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableDescription, location_name: "Table"))
    DescribeTableOutput.type = Types::DescribeTableOutput
    DescribeTableReplicaAutoScalingInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeTableReplicaAutoScalingInput.type = Types::DescribeTableReplicaAutoScalingInput
    DescribeTableReplicaAutoScalingOutput.add_member(:table_auto_scaling_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableAutoScalingDescription, location_name: "TableAutoScalingDescription"))
    DescribeTableReplicaAutoScalingOutput.type = Types::DescribeTableReplicaAutoScalingOutput
    DescribeTimeToLiveInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DescribeTimeToLiveInput.type = Types::DescribeTimeToLiveInput
    DescribeTimeToLiveOutput.add_member(:time_to_live_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLiveDescription, location_name: "TimeToLiveDescription"))
    DescribeTimeToLiveOutput.type = Types::DescribeTimeToLiveOutput
    DestinationStatus.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    DestinationStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DestinationStatus.add_member(:disabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    DestinationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DestinationStatus.add_member(:enable_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLE_FAILED", traits: {"smithy.api#enumValue" => "ENABLE_FAILED"}))
    DestinationStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    DisableKinesisStreamingDestinationInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    DisableKinesisStreamingDestinationInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: "StreamArn", traits: {"smithy.api#required" => {}}))
    DisableKinesisStreamingDestinationInput.add_member(:enable_kinesis_streaming_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableKinesisStreamingConfiguration, location_name: "EnableKinesisStreamingConfiguration"))
    DisableKinesisStreamingDestinationInput.type = Types::DisableKinesisStreamingDestinationInput
    DisableKinesisStreamingDestinationOutput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    DisableKinesisStreamingDestinationOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: "StreamArn"))
    DisableKinesisStreamingDestinationOutput.add_member(:destination_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationStatus, location_name: "DestinationStatus"))
    DisableKinesisStreamingDestinationOutput.add_member(:enable_kinesis_streaming_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableKinesisStreamingConfiguration, location_name: "EnableKinesisStreamingConfiguration"))
    DisableKinesisStreamingDestinationOutput.type = Types::DisableKinesisStreamingDestinationOutput
    DuplicateItemException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DuplicateItemException.type = Types::DuplicateItemException
    EnableKinesisStreamingConfiguration.add_member(:approximate_creation_date_time_precision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApproximateCreationDateTimePrecision, location_name: "ApproximateCreationDateTimePrecision"))
    EnableKinesisStreamingConfiguration.type = Types::EnableKinesisStreamingConfiguration
    EnableKinesisStreamingDestinationInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    EnableKinesisStreamingDestinationInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: "StreamArn", traits: {"smithy.api#required" => {}}))
    EnableKinesisStreamingDestinationInput.add_member(:enable_kinesis_streaming_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableKinesisStreamingConfiguration, location_name: "EnableKinesisStreamingConfiguration"))
    EnableKinesisStreamingDestinationInput.type = Types::EnableKinesisStreamingDestinationInput
    EnableKinesisStreamingDestinationOutput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    EnableKinesisStreamingDestinationOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: "StreamArn"))
    EnableKinesisStreamingDestinationOutput.add_member(:destination_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationStatus, location_name: "DestinationStatus"))
    EnableKinesisStreamingDestinationOutput.add_member(:enable_kinesis_streaming_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableKinesisStreamingConfiguration, location_name: "EnableKinesisStreamingConfiguration"))
    EnableKinesisStreamingDestinationOutput.type = Types::EnableKinesisStreamingDestinationOutput
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Address", traits: {"smithy.api#required" => {}}))
    Endpoint.add_member(:cache_period_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: "CachePeriodInMinutes", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Endpoint.type = Types::Endpoint
    Endpoints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint)
    ExecuteStatementInput.add_member(:statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartiQLStatement, location_name: "Statement", traits: {"smithy.api#required" => {}}))
    ExecuteStatementInput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatementParameters, location_name: "Parameters"))
    ExecuteStatementInput.add_member(:consistent_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistentRead, location_name: "ConsistentRead"))
    ExecuteStatementInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartiQLNextToken, location_name: "NextToken"))
    ExecuteStatementInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    ExecuteStatementInput.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "Limit"))
    ExecuteStatementInput.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    ExecuteStatementInput.type = Types::ExecuteStatementInput
    ExecuteStatementOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemList, location_name: "Items"))
    ExecuteStatementOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartiQLNextToken, location_name: "NextToken"))
    ExecuteStatementOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "ConsumedCapacity"))
    ExecuteStatementOutput.add_member(:last_evaluated_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "LastEvaluatedKey"))
    ExecuteStatementOutput.type = Types::ExecuteStatementOutput
    ExecuteTransactionInput.add_member(:transact_statements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterizedStatements, location_name: "TransactStatements", traits: {"smithy.api#required" => {}}))
    ExecuteTransactionInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ExecuteTransactionInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    ExecuteTransactionInput.type = Types::ExecuteTransactionInput
    ExecuteTransactionOutput.add_member(:responses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemResponseList, location_name: "Responses"))
    ExecuteTransactionOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacityMultiple, location_name: "ConsumedCapacity"))
    ExecuteTransactionOutput.type = Types::ExecuteTransactionOutput
    ExpectedAttributeMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    ExpectedAttributeMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedAttributeValue)
    ExpectedAttributeValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue, location_name: "Value"))
    ExpectedAttributeValue.add_member(:exists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Exists"))
    ExpectedAttributeValue.add_member(:comparison_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "ComparisonOperator"))
    ExpectedAttributeValue.add_member(:attribute_value_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "AttributeValueList"))
    ExpectedAttributeValue.type = Types::ExpectedAttributeValue
    ExportConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ExportConflictException.type = Types::ExportConflictException
    ExportDescription.add_member(:export_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportArn, location_name: "ExportArn"))
    ExportDescription.add_member(:export_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatus, location_name: "ExportStatus"))
    ExportDescription.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStartTime, location_name: "StartTime"))
    ExportDescription.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportEndTime, location_name: "EndTime"))
    ExportDescription.add_member(:export_manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportManifest, location_name: "ExportManifest"))
    ExportDescription.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableArn"))
    ExportDescription.add_member(:table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableId, location_name: "TableId"))
    ExportDescription.add_member(:export_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTime, location_name: "ExportTime"))
    ExportDescription.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    ExportDescription.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket"))
    ExportDescription.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketOwner, location_name: "S3BucketOwner"))
    ExportDescription.add_member(:s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "S3Prefix"))
    ExportDescription.add_member(:s3_sse_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3SseAlgorithm, location_name: "S3SseAlgorithm"))
    ExportDescription.add_member(:s3_sse_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3SseKmsKeyId, location_name: "S3SseKmsKeyId"))
    ExportDescription.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureCode, location_name: "FailureCode"))
    ExportDescription.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureMessage, location_name: "FailureMessage"))
    ExportDescription.add_member(:export_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormat, location_name: "ExportFormat"))
    ExportDescription.add_member(:billed_size_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BilledSizeBytes, location_name: "BilledSizeBytes"))
    ExportDescription.add_member(:item_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCount, location_name: "ItemCount"))
    ExportDescription.add_member(:export_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportType, location_name: "ExportType"))
    ExportDescription.add_member(:incremental_export_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalExportSpecification, location_name: "IncrementalExportSpecification"))
    ExportDescription.type = Types::ExportDescription
    ExportFormat.add_member(:dynamodb_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DYNAMODB_JSON", traits: {"smithy.api#enumValue" => "DYNAMODB_JSON"}))
    ExportFormat.add_member(:ion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ION", traits: {"smithy.api#enumValue" => "ION"}))
    ExportNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ExportNotFoundException.type = Types::ExportNotFoundException
    ExportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ExportStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExportStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExportSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSummary)
    ExportSummary.add_member(:export_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportArn, location_name: "ExportArn"))
    ExportSummary.add_member(:export_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatus, location_name: "ExportStatus"))
    ExportSummary.add_member(:export_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportType, location_name: "ExportType"))
    ExportSummary.type = Types::ExportSummary
    ExportTableToPointInTimeInput.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ExportTableToPointInTimeInput.add_member(:export_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTime, location_name: "ExportTime"))
    ExportTableToPointInTimeInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ExportTableToPointInTimeInput.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    ExportTableToPointInTimeInput.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketOwner, location_name: "S3BucketOwner"))
    ExportTableToPointInTimeInput.add_member(:s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "S3Prefix"))
    ExportTableToPointInTimeInput.add_member(:s3_sse_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3SseAlgorithm, location_name: "S3SseAlgorithm"))
    ExportTableToPointInTimeInput.add_member(:s3_sse_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3SseKmsKeyId, location_name: "S3SseKmsKeyId"))
    ExportTableToPointInTimeInput.add_member(:export_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormat, location_name: "ExportFormat"))
    ExportTableToPointInTimeInput.add_member(:export_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportType, location_name: "ExportType"))
    ExportTableToPointInTimeInput.add_member(:incremental_export_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncrementalExportSpecification, location_name: "IncrementalExportSpecification"))
    ExportTableToPointInTimeInput.type = Types::ExportTableToPointInTimeInput
    ExportTableToPointInTimeOutput.add_member(:export_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDescription, location_name: "ExportDescription"))
    ExportTableToPointInTimeOutput.type = Types::ExportTableToPointInTimeOutput
    ExportType.add_member(:full_export, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL_EXPORT", traits: {"smithy.api#enumValue" => "FULL_EXPORT"}))
    ExportType.add_member(:incremental_export, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCREMENTAL_EXPORT", traits: {"smithy.api#enumValue" => "INCREMENTAL_EXPORT"}))
    ExportViewType.add_member(:new_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEW_IMAGE", traits: {"smithy.api#enumValue" => "NEW_IMAGE"}))
    ExportViewType.add_member(:new_and_old_images, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEW_AND_OLD_IMAGES", traits: {"smithy.api#enumValue" => "NEW_AND_OLD_IMAGES"}))
    ExpressionAttributeNameMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeNameVariable)
    ExpressionAttributeNameMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    ExpressionAttributeValueMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeValueVariable)
    ExpressionAttributeValueMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    FailureException.add_member(:exception_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionName, location_name: "ExceptionName"))
    FailureException.add_member(:exception_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionDescription, location_name: "ExceptionDescription"))
    FailureException.type = Types::FailureException
    FilterConditionMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    FilterConditionMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Condition)
    Get.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Get.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}}))
    Get.add_member(:projection_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectionExpression, location_name: "ProjectionExpression"))
    Get.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    Get.type = Types::Get
    GetItemInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    GetItemInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "Key", traits: {"smithy.api#required" => {}}))
    GetItemInput.add_member(:attributes_to_get, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributesToGet"))
    GetItemInput.add_member(:consistent_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistentRead, location_name: "ConsistentRead"))
    GetItemInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    GetItemInput.add_member(:projection_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectionExpression, location_name: "ProjectionExpression"))
    GetItemInput.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    GetItemInput.type = Types::GetItemInput
    GetItemOutput.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Item"))
    GetItemOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "ConsumedCapacity"))
    GetItemOutput.type = Types::GetItemOutput
    GetResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "Policy"))
    GetResourcePolicyOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: "RevisionId"))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    GlobalSecondaryIndex.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName", traits: {"smithy.api#required" => {}}))
    GlobalSecondaryIndex.add_member(:key_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema", traits: {"smithy.api#required" => {}}))
    GlobalSecondaryIndex.add_member(:projection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Projection, location_name: "Projection", traits: {"smithy.api#required" => {}}))
    GlobalSecondaryIndex.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput"))
    GlobalSecondaryIndex.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughput, location_name: "OnDemandThroughput"))
    GlobalSecondaryIndex.add_member(:warm_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WarmThroughput, location_name: "WarmThroughput"))
    GlobalSecondaryIndex.type = Types::GlobalSecondaryIndex
    GlobalSecondaryIndexAutoScalingUpdate.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    GlobalSecondaryIndexAutoScalingUpdate.add_member(:provisioned_write_capacity_auto_scaling_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ProvisionedWriteCapacityAutoScalingUpdate"))
    GlobalSecondaryIndexAutoScalingUpdate.type = Types::GlobalSecondaryIndexAutoScalingUpdate
    GlobalSecondaryIndexAutoScalingUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexAutoScalingUpdate)
    GlobalSecondaryIndexDescription.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    GlobalSecondaryIndexDescription.add_member(:key_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema"))
    GlobalSecondaryIndexDescription.add_member(:projection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Projection, location_name: "Projection"))
    GlobalSecondaryIndexDescription.add_member(:index_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatus, location_name: "IndexStatus"))
    GlobalSecondaryIndexDescription.add_member(:backfilling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Backfilling, location_name: "Backfilling"))
    GlobalSecondaryIndexDescription.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputDescription, location_name: "ProvisionedThroughput"))
    GlobalSecondaryIndexDescription.add_member(:index_size_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: "IndexSizeBytes"))
    GlobalSecondaryIndexDescription.add_member(:item_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: "ItemCount"))
    GlobalSecondaryIndexDescription.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "IndexArn"))
    GlobalSecondaryIndexDescription.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughput, location_name: "OnDemandThroughput"))
    GlobalSecondaryIndexDescription.add_member(:warm_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexWarmThroughputDescription, location_name: "WarmThroughput"))
    GlobalSecondaryIndexDescription.type = Types::GlobalSecondaryIndexDescription
    GlobalSecondaryIndexDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexDescription)
    GlobalSecondaryIndexInfo.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    GlobalSecondaryIndexInfo.add_member(:key_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema"))
    GlobalSecondaryIndexInfo.add_member(:projection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Projection, location_name: "Projection"))
    GlobalSecondaryIndexInfo.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput"))
    GlobalSecondaryIndexInfo.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughput, location_name: "OnDemandThroughput"))
    GlobalSecondaryIndexInfo.type = Types::GlobalSecondaryIndexInfo
    GlobalSecondaryIndexList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndex)
    GlobalSecondaryIndexUpdate.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGlobalSecondaryIndexAction, location_name: "Update"))
    GlobalSecondaryIndexUpdate.add_member(:create, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalSecondaryIndexAction, location_name: "Create"))
    GlobalSecondaryIndexUpdate.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGlobalSecondaryIndexAction, location_name: "Delete"))
    GlobalSecondaryIndexUpdate.type = Types::GlobalSecondaryIndexUpdate
    GlobalSecondaryIndexUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexUpdate)
    GlobalSecondaryIndexWarmThroughputDescription.add_member(:read_units_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ReadUnitsPerSecond"))
    GlobalSecondaryIndexWarmThroughputDescription.add_member(:write_units_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "WriteUnitsPerSecond"))
    GlobalSecondaryIndexWarmThroughputDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatus, location_name: "Status"))
    GlobalSecondaryIndexWarmThroughputDescription.type = Types::GlobalSecondaryIndexWarmThroughputDescription
    GlobalSecondaryIndexes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexInfo)
    GlobalTable.add_member(:global_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "GlobalTableName"))
    GlobalTable.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaList, location_name: "ReplicationGroup"))
    GlobalTable.type = Types::GlobalTable
    GlobalTableAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    GlobalTableAlreadyExistsException.type = Types::GlobalTableAlreadyExistsException
    GlobalTableDescription.add_member(:replication_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaDescriptionList, location_name: "ReplicationGroup"))
    GlobalTableDescription.add_member(:global_table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableArnString, location_name: "GlobalTableArn"))
    GlobalTableDescription.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "CreationDateTime"))
    GlobalTableDescription.add_member(:global_table_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableStatus, location_name: "GlobalTableStatus"))
    GlobalTableDescription.add_member(:global_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "GlobalTableName"))
    GlobalTableDescription.type = Types::GlobalTableDescription
    GlobalTableGlobalSecondaryIndexSettingsUpdate.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName", traits: {"smithy.api#required" => {}}))
    GlobalTableGlobalSecondaryIndexSettingsUpdate.add_member(:provisioned_write_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ProvisionedWriteCapacityUnits"))
    GlobalTableGlobalSecondaryIndexSettingsUpdate.add_member(:provisioned_write_capacity_auto_scaling_settings_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ProvisionedWriteCapacityAutoScalingSettingsUpdate"))
    GlobalTableGlobalSecondaryIndexSettingsUpdate.type = Types::GlobalTableGlobalSecondaryIndexSettingsUpdate
    GlobalTableGlobalSecondaryIndexSettingsUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableGlobalSecondaryIndexSettingsUpdate)
    GlobalTableList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTable)
    GlobalTableNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    GlobalTableNotFoundException.type = Types::GlobalTableNotFoundException
    GlobalTableStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    GlobalTableStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GlobalTableStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    GlobalTableStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    GlobalTableWitnessDescription.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName"))
    GlobalTableWitnessDescription.add_member(:witness_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WitnessStatus, location_name: "WitnessStatus"))
    GlobalTableWitnessDescription.type = Types::GlobalTableWitnessDescription
    GlobalTableWitnessDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableWitnessDescription)
    GlobalTableWitnessGroupUpdate.add_member(:create, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalTableWitnessGroupMemberAction, location_name: "Create"))
    GlobalTableWitnessGroupUpdate.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGlobalTableWitnessGroupMemberAction, location_name: "Delete"))
    GlobalTableWitnessGroupUpdate.type = Types::GlobalTableWitnessGroupUpdate
    GlobalTableWitnessGroupUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableWitnessGroupUpdate)
    IdempotentParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    ImportConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ImportConflictException.type = Types::ImportConflictException
    ImportNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ImportNotFoundException.type = Types::ImportNotFoundException
    ImportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ImportStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ImportStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLING", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    ImportStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ImportStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ImportSummary.add_member(:import_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportArn, location_name: "ImportArn"))
    ImportSummary.add_member(:import_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatus, location_name: "ImportStatus"))
    ImportSummary.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableArn"))
    ImportSummary.add_member(:s3_bucket_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketSource, location_name: "S3BucketSource"))
    ImportSummary.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogGroupArn, location_name: "CloudWatchLogGroupArn"))
    ImportSummary.add_member(:input_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputFormat, location_name: "InputFormat"))
    ImportSummary.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStartTime, location_name: "StartTime"))
    ImportSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportEndTime, location_name: "EndTime"))
    ImportSummary.type = Types::ImportSummary
    ImportSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSummary)
    ImportTableDescription.add_member(:import_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportArn, location_name: "ImportArn"))
    ImportTableDescription.add_member(:import_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStatus, location_name: "ImportStatus"))
    ImportTableDescription.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableArn"))
    ImportTableDescription.add_member(:table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableId, location_name: "TableId"))
    ImportTableDescription.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    ImportTableDescription.add_member(:s3_bucket_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketSource, location_name: "S3BucketSource"))
    ImportTableDescription.add_member(:error_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCount, location_name: "ErrorCount", traits: {"smithy.api#default" => 0}))
    ImportTableDescription.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogGroupArn, location_name: "CloudWatchLogGroupArn"))
    ImportTableDescription.add_member(:input_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputFormat, location_name: "InputFormat"))
    ImportTableDescription.add_member(:input_format_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputFormatOptions, location_name: "InputFormatOptions"))
    ImportTableDescription.add_member(:input_compression_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputCompressionType, location_name: "InputCompressionType"))
    ImportTableDescription.add_member(:table_creation_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableCreationParameters, location_name: "TableCreationParameters"))
    ImportTableDescription.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportStartTime, location_name: "StartTime"))
    ImportTableDescription.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportEndTime, location_name: "EndTime"))
    ImportTableDescription.add_member(:processed_size_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: "ProcessedSizeBytes"))
    ImportTableDescription.add_member(:processed_item_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedItemCount, location_name: "ProcessedItemCount", traits: {"smithy.api#default" => 0}))
    ImportTableDescription.add_member(:imported_item_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedItemCount, location_name: "ImportedItemCount", traits: {"smithy.api#default" => 0}))
    ImportTableDescription.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureCode, location_name: "FailureCode"))
    ImportTableDescription.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureMessage, location_name: "FailureMessage"))
    ImportTableDescription.type = Types::ImportTableDescription
    ImportTableInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ImportTableInput.add_member(:s3_bucket_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketSource, location_name: "S3BucketSource", traits: {"smithy.api#required" => {}}))
    ImportTableInput.add_member(:input_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputFormat, location_name: "InputFormat", traits: {"smithy.api#required" => {}}))
    ImportTableInput.add_member(:input_format_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputFormatOptions, location_name: "InputFormatOptions"))
    ImportTableInput.add_member(:input_compression_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputCompressionType, location_name: "InputCompressionType"))
    ImportTableInput.add_member(:table_creation_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableCreationParameters, location_name: "TableCreationParameters", traits: {"smithy.api#required" => {}}))
    ImportTableInput.type = Types::ImportTableInput
    ImportTableOutput.add_member(:import_table_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTableDescription, location_name: "ImportTableDescription", traits: {"smithy.api#required" => {}}))
    ImportTableOutput.type = Types::ImportTableOutput
    IncrementalExportSpecification.add_member(:export_from_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFromTime, location_name: "ExportFromTime"))
    IncrementalExportSpecification.add_member(:export_to_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportToTime, location_name: "ExportToTime"))
    IncrementalExportSpecification.add_member(:export_view_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportViewType, location_name: "ExportViewType"))
    IncrementalExportSpecification.type = Types::IncrementalExportSpecification
    IndexNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    IndexNotFoundException.type = Types::IndexNotFoundException
    IndexStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    IndexStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    IndexStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    IndexStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InputCompressionType.add_member(:gzip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GZIP", traits: {"smithy.api#enumValue" => "GZIP"}))
    InputCompressionType.add_member(:zstd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZSTD", traits: {"smithy.api#enumValue" => "ZSTD"}))
    InputCompressionType.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    InputFormat.add_member(:dynamodb_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DYNAMODB_JSON", traits: {"smithy.api#enumValue" => "DYNAMODB_JSON"}))
    InputFormat.add_member(:ion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ION", traits: {"smithy.api#enumValue" => "ION"}))
    InputFormat.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    InputFormatOptions.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CsvOptions, location_name: "Csv"))
    InputFormatOptions.type = Types::InputFormatOptions
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServerError.type = Types::InternalServerError
    InvalidEndpointException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidEndpointException.type = Types::InvalidEndpointException
    InvalidExportTimeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidExportTimeException.type = Types::InvalidExportTimeException
    InvalidRestoreTimeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidRestoreTimeException.type = Types::InvalidRestoreTimeException
    ItemCollectionKeyAttributeMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    ItemCollectionKeyAttributeMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    ItemCollectionMetrics.add_member(:item_collection_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionKeyAttributeMap, location_name: "ItemCollectionKey"))
    ItemCollectionMetrics.add_member(:size_estimate_range_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionSizeEstimateRange, location_name: "SizeEstimateRangeGB"))
    ItemCollectionMetrics.type = Types::ItemCollectionMetrics
    ItemCollectionMetricsMultiple.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionMetrics)
    ItemCollectionMetricsPerTable.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn)
    ItemCollectionMetricsPerTable.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionMetricsMultiple)
    ItemCollectionSizeEstimateRange.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionSizeEstimateBound)
    ItemCollectionSizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ItemCollectionSizeLimitExceededException.type = Types::ItemCollectionSizeLimitExceededException
    ItemList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap)
    ItemResponse.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Item"))
    ItemResponse.type = Types::ItemResponse
    ItemResponseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemResponse)
    Key.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    Key.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    KeyConditions.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    KeyConditions.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Condition)
    KeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key)
    KeySchema.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchemaElement)
    KeySchemaElement.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchemaAttributeName, location_name: "AttributeName", traits: {"smithy.api#required" => {}}))
    KeySchemaElement.add_member(:key_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyType, location_name: "KeyType", traits: {"smithy.api#required" => {}}))
    KeySchemaElement.type = Types::KeySchemaElement
    KeyType.add_member(:hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HASH", traits: {"smithy.api#enumValue" => "HASH"}))
    KeyType.add_member(:range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RANGE", traits: {"smithy.api#enumValue" => "RANGE"}))
    KeysAndAttributes.add_member(:keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyList, location_name: "Keys", traits: {"smithy.api#required" => {}}))
    KeysAndAttributes.add_member(:attributes_to_get, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributesToGet"))
    KeysAndAttributes.add_member(:consistent_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistentRead, location_name: "ConsistentRead"))
    KeysAndAttributes.add_member(:projection_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectionExpression, location_name: "ProjectionExpression"))
    KeysAndAttributes.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    KeysAndAttributes.type = Types::KeysAndAttributes
    KinesisDataStreamDestination.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: "StreamArn"))
    KinesisDataStreamDestination.add_member(:destination_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationStatus, location_name: "DestinationStatus"))
    KinesisDataStreamDestination.add_member(:destination_status_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DestinationStatusDescription"))
    KinesisDataStreamDestination.add_member(:approximate_creation_date_time_precision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApproximateCreationDateTimePrecision, location_name: "ApproximateCreationDateTimePrecision"))
    KinesisDataStreamDestination.type = Types::KinesisDataStreamDestination
    KinesisDataStreamDestinations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisDataStreamDestination)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAttributeValue.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    ListBackupsInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ListBackupsInput.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupsInputLimit, location_name: "Limit"))
    ListBackupsInput.add_member(:time_range_lower_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRangeLowerBound, location_name: "TimeRangeLowerBound"))
    ListBackupsInput.add_member(:time_range_upper_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRangeUpperBound, location_name: "TimeRangeUpperBound"))
    ListBackupsInput.add_member(:exclusive_start_backup_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupArn, location_name: "ExclusiveStartBackupArn"))
    ListBackupsInput.add_member(:backup_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupTypeFilter, location_name: "BackupType"))
    ListBackupsInput.type = Types::ListBackupsInput
    ListBackupsOutput.add_member(:backup_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupSummaries, location_name: "BackupSummaries"))
    ListBackupsOutput.add_member(:last_evaluated_backup_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupArn, location_name: "LastEvaluatedBackupArn"))
    ListBackupsOutput.type = Types::ListBackupsOutput
    ListContributorInsightsInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ListContributorInsightsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListContributorInsightsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListContributorInsightsLimit, location_name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListContributorInsightsInput.type = Types::ListContributorInsightsInput
    ListContributorInsightsOutput.add_member(:contributor_insights_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorInsightsSummaries, location_name: "ContributorInsightsSummaries"))
    ListContributorInsightsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListContributorInsightsOutput.type = Types::ListContributorInsightsOutput
    ListExportsInput.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableArn", traits: {"smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ListExportsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportsMaxLimit, location_name: "MaxResults"))
    ListExportsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportNextToken, location_name: "NextToken"))
    ListExportsInput.type = Types::ListExportsInput
    ListExportsOutput.add_member(:export_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSummaries, location_name: "ExportSummaries"))
    ListExportsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportNextToken, location_name: "NextToken"))
    ListExportsOutput.type = Types::ListExportsOutput
    ListGlobalTablesInput.add_member(:exclusive_start_global_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "ExclusiveStartGlobalTableName"))
    ListGlobalTablesInput.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "Limit"))
    ListGlobalTablesInput.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName"))
    ListGlobalTablesInput.type = Types::ListGlobalTablesInput
    ListGlobalTablesOutput.add_member(:global_tables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableList, location_name: "GlobalTables"))
    ListGlobalTablesOutput.add_member(:last_evaluated_global_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "LastEvaluatedGlobalTableName"))
    ListGlobalTablesOutput.type = Types::ListGlobalTablesOutput
    ListImportsInput.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableArn", traits: {"smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ListImportsInput.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportsMaxLimit, location_name: "PageSize"))
    ListImportsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportNextToken, location_name: "NextToken"))
    ListImportsInput.type = Types::ListImportsInput
    ListImportsOutput.add_member(:import_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSummaryList, location_name: "ImportSummaryList"))
    ListImportsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportNextToken, location_name: "NextToken"))
    ListImportsOutput.type = Types::ListImportsOutput
    ListTablesInput.add_member(:exclusive_start_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "ExclusiveStartTableName"))
    ListTablesInput.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesInputLimit, location_name: "Limit"))
    ListTablesInput.type = Types::ListTablesInput
    ListTablesOutput.add_member(:table_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableNameList, location_name: "TableNames"))
    ListTablesOutput.add_member(:last_evaluated_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "LastEvaluatedTableName"))
    ListTablesOutput.type = Types::ListTablesOutput
    ListTagsOfResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ListTagsOfResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListTagsOfResourceInput.type = Types::ListTagsOfResourceInput
    ListTagsOfResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsOfResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListTagsOfResourceOutput.type = Types::ListTagsOfResourceOutput
    LocalSecondaryIndex.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName", traits: {"smithy.api#required" => {}}))
    LocalSecondaryIndex.add_member(:key_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema", traits: {"smithy.api#required" => {}}))
    LocalSecondaryIndex.add_member(:projection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Projection, location_name: "Projection", traits: {"smithy.api#required" => {}}))
    LocalSecondaryIndex.type = Types::LocalSecondaryIndex
    LocalSecondaryIndexDescription.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    LocalSecondaryIndexDescription.add_member(:key_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema"))
    LocalSecondaryIndexDescription.add_member(:projection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Projection, location_name: "Projection"))
    LocalSecondaryIndexDescription.add_member(:index_size_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: "IndexSizeBytes"))
    LocalSecondaryIndexDescription.add_member(:item_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: "ItemCount"))
    LocalSecondaryIndexDescription.add_member(:index_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "IndexArn"))
    LocalSecondaryIndexDescription.type = Types::LocalSecondaryIndexDescription
    LocalSecondaryIndexDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalSecondaryIndexDescription)
    LocalSecondaryIndexInfo.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    LocalSecondaryIndexInfo.add_member(:key_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema"))
    LocalSecondaryIndexInfo.add_member(:projection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Projection, location_name: "Projection"))
    LocalSecondaryIndexInfo.type = Types::LocalSecondaryIndexInfo
    LocalSecondaryIndexList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalSecondaryIndex)
    LocalSecondaryIndexes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalSecondaryIndexInfo)
    MapAttributeValue.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    MapAttributeValue.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    MultiRegionConsistency.add_member(:eventual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVENTUAL", traits: {"smithy.api#enumValue" => "EVENTUAL"}))
    MultiRegionConsistency.add_member(:strong, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRONG", traits: {"smithy.api#enumValue" => "STRONG"}))
    NonKeyAttributeNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonKeyAttributeName)
    NumberSetAttributeValue.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberAttributeValue)
    OnDemandThroughput.add_member(:max_read_request_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: "MaxReadRequestUnits"))
    OnDemandThroughput.add_member(:max_write_request_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: "MaxWriteRequestUnits"))
    OnDemandThroughput.type = Types::OnDemandThroughput
    OnDemandThroughputOverride.add_member(:max_read_request_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: "MaxReadRequestUnits"))
    OnDemandThroughputOverride.type = Types::OnDemandThroughputOverride
    ParameterizedStatement.add_member(:statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartiQLStatement, location_name: "Statement", traits: {"smithy.api#required" => {}}))
    ParameterizedStatement.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreparedStatementParameters, location_name: "Parameters"))
    ParameterizedStatement.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    ParameterizedStatement.type = Types::ParameterizedStatement
    ParameterizedStatements.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterizedStatement)
    PartiQLBatchRequest.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStatementRequest)
    PartiQLBatchResponse.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStatementResponse)
    PointInTimeRecoveryDescription.add_member(:point_in_time_recovery_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PointInTimeRecoveryStatus, location_name: "PointInTimeRecoveryStatus"))
    PointInTimeRecoveryDescription.add_member(:recovery_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPeriodInDays, location_name: "RecoveryPeriodInDays"))
    PointInTimeRecoveryDescription.add_member(:earliest_restorable_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "EarliestRestorableDateTime"))
    PointInTimeRecoveryDescription.add_member(:latest_restorable_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "LatestRestorableDateTime"))
    PointInTimeRecoveryDescription.type = Types::PointInTimeRecoveryDescription
    PointInTimeRecoverySpecification.add_member(:point_in_time_recovery_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: "PointInTimeRecoveryEnabled", traits: {"smithy.api#required" => {}}))
    PointInTimeRecoverySpecification.add_member(:recovery_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecoveryPeriodInDays, location_name: "RecoveryPeriodInDays"))
    PointInTimeRecoverySpecification.type = Types::PointInTimeRecoverySpecification
    PointInTimeRecoveryStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    PointInTimeRecoveryStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PointInTimeRecoveryUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    PointInTimeRecoveryUnavailableException.type = Types::PointInTimeRecoveryUnavailableException
    PolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    PolicyNotFoundException.type = Types::PolicyNotFoundException
    PreparedStatementParameters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    Projection.add_member(:projection_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectionType, location_name: "ProjectionType"))
    Projection.add_member(:non_key_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonKeyAttributeNameList, location_name: "NonKeyAttributes"))
    Projection.type = Types::Projection
    ProjectionType.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    ProjectionType.add_member(:keys_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KEYS_ONLY", traits: {"smithy.api#enumValue" => "KEYS_ONLY"}))
    ProjectionType.add_member(:include, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCLUDE", traits: {"smithy.api#enumValue" => "INCLUDE"}))
    ProvisionedThroughput.add_member(:read_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ReadCapacityUnits", traits: {"smithy.api#required" => {}}))
    ProvisionedThroughput.add_member(:write_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "WriteCapacityUnits", traits: {"smithy.api#required" => {}}))
    ProvisionedThroughput.type = Types::ProvisionedThroughput
    ProvisionedThroughputDescription.add_member(:last_increase_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "LastIncreaseDateTime"))
    ProvisionedThroughputDescription.add_member(:last_decrease_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "LastDecreaseDateTime"))
    ProvisionedThroughputDescription.add_member(:number_of_decreases_today, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "NumberOfDecreasesToday"))
    ProvisionedThroughputDescription.add_member(:read_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeLongObject, location_name: "ReadCapacityUnits"))
    ProvisionedThroughputDescription.add_member(:write_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeLongObject, location_name: "WriteCapacityUnits"))
    ProvisionedThroughputDescription.type = Types::ProvisionedThroughputDescription
    ProvisionedThroughputExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ProvisionedThroughputExceededException.add_member(:throttling_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingReasonList, location_name: "ThrottlingReasons"))
    ProvisionedThroughputExceededException.type = Types::ProvisionedThroughputExceededException
    ProvisionedThroughputOverride.add_member(:read_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ReadCapacityUnits"))
    ProvisionedThroughputOverride.type = Types::ProvisionedThroughputOverride
    Put.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutItemInputAttributeMap, location_name: "Item", traits: {"smithy.api#required" => {}}))
    Put.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}}))
    Put.add_member(:condition_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "ConditionExpression"))
    Put.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    Put.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    Put.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    Put.type = Types::Put
    PutItemInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    PutItemInput.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutItemInputAttributeMap, location_name: "Item", traits: {"smithy.api#required" => {}}))
    PutItemInput.add_member(:expected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedAttributeMap, location_name: "Expected"))
    PutItemInput.add_member(:return_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnValue, location_name: "ReturnValues"))
    PutItemInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    PutItemInput.add_member(:return_item_collection_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnItemCollectionMetrics, location_name: "ReturnItemCollectionMetrics"))
    PutItemInput.add_member(:conditional_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalOperator, location_name: "ConditionalOperator"))
    PutItemInput.add_member(:condition_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "ConditionExpression"))
    PutItemInput.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    PutItemInput.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    PutItemInput.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    PutItemInput.type = Types::PutItemInput
    PutItemInputAttributeMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    PutItemInputAttributeMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    PutItemOutput.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Attributes"))
    PutItemOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "ConsumedCapacity"))
    PutItemOutput.add_member(:item_collection_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionMetrics, location_name: "ItemCollectionMetrics"))
    PutItemOutput.type = Types::PutItemOutput
    PutRequest.add_member(:item, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutItemInputAttributeMap, location_name: "Item", traits: {"smithy.api#required" => {}}))
    PutRequest.type = Types::PutRequest
    PutResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    PutResourcePolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "Policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyInput.add_member(:expected_revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: "ExpectedRevisionId"))
    PutResourcePolicyInput.add_member(:confirm_remove_self_resource_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmRemoveSelfResourceAccess, location_name: "ConfirmRemoveSelfResourceAccess", traits: {"smithy.api#default" => false, "smithy.api#httpHeader" => "x-amz-confirm-remove-self-resource-access"}))
    PutResourcePolicyInput.type = Types::PutResourcePolicyInput
    PutResourcePolicyOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevisionId, location_name: "RevisionId"))
    PutResourcePolicyOutput.type = Types::PutResourcePolicyOutput
    QueryInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    QueryInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    QueryInput.add_member(:select, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Select, location_name: "Select"))
    QueryInput.add_member(:attributes_to_get, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributesToGet"))
    QueryInput.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "Limit"))
    QueryInput.add_member(:consistent_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistentRead, location_name: "ConsistentRead"))
    QueryInput.add_member(:key_conditions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyConditions, location_name: "KeyConditions"))
    QueryInput.add_member(:query_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterConditionMap, location_name: "QueryFilter"))
    QueryInput.add_member(:conditional_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalOperator, location_name: "ConditionalOperator"))
    QueryInput.add_member(:scan_index_forward, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: "ScanIndexForward"))
    QueryInput.add_member(:exclusive_start_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "ExclusiveStartKey"))
    QueryInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    QueryInput.add_member(:projection_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectionExpression, location_name: "ProjectionExpression"))
    QueryInput.add_member(:filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "FilterExpression"))
    QueryInput.add_member(:key_condition_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyExpression, location_name: "KeyConditionExpression"))
    QueryInput.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    QueryInput.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    QueryInput.type = Types::QueryInput
    QueryOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemList, location_name: "Items"))
    QueryOutput.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Count", traits: {"smithy.api#default" => 0}))
    QueryOutput.add_member(:scanned_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "ScannedCount", traits: {"smithy.api#default" => 0}))
    QueryOutput.add_member(:last_evaluated_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "LastEvaluatedKey"))
    QueryOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "ConsumedCapacity"))
    QueryOutput.type = Types::QueryOutput
    Replica.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName"))
    Replica.type = Types::Replica
    ReplicaAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ReplicaAlreadyExistsException.type = Types::ReplicaAlreadyExistsException
    ReplicaAutoScalingDescription.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName"))
    ReplicaAutoScalingDescription.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexAutoScalingDescriptionList, location_name: "GlobalSecondaryIndexes"))
    ReplicaAutoScalingDescription.add_member(:replica_provisioned_read_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ReplicaProvisionedReadCapacityAutoScalingSettings"))
    ReplicaAutoScalingDescription.add_member(:replica_provisioned_write_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ReplicaProvisionedWriteCapacityAutoScalingSettings"))
    ReplicaAutoScalingDescription.add_member(:replica_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaStatus, location_name: "ReplicaStatus"))
    ReplicaAutoScalingDescription.type = Types::ReplicaAutoScalingDescription
    ReplicaAutoScalingDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaAutoScalingDescription)
    ReplicaAutoScalingUpdate.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName", traits: {"smithy.api#required" => {}}))
    ReplicaAutoScalingUpdate.add_member(:replica_global_secondary_index_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexAutoScalingUpdateList, location_name: "ReplicaGlobalSecondaryIndexUpdates"))
    ReplicaAutoScalingUpdate.add_member(:replica_provisioned_read_capacity_auto_scaling_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ReplicaProvisionedReadCapacityAutoScalingUpdate"))
    ReplicaAutoScalingUpdate.type = Types::ReplicaAutoScalingUpdate
    ReplicaAutoScalingUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaAutoScalingUpdate)
    ReplicaDescription.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName"))
    ReplicaDescription.add_member(:replica_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaStatus, location_name: "ReplicaStatus"))
    ReplicaDescription.add_member(:replica_status_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaStatusDescription, location_name: "ReplicaStatusDescription"))
    ReplicaDescription.add_member(:replica_status_percent_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaStatusPercentProgress, location_name: "ReplicaStatusPercentProgress"))
    ReplicaDescription.add_member(:kms_master_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSMasterKeyId, location_name: "KMSMasterKeyId"))
    ReplicaDescription.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputOverride, location_name: "ProvisionedThroughputOverride"))
    ReplicaDescription.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughputOverride, location_name: "OnDemandThroughputOverride"))
    ReplicaDescription.add_member(:warm_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableWarmThroughputDescription, location_name: "WarmThroughput"))
    ReplicaDescription.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexDescriptionList, location_name: "GlobalSecondaryIndexes"))
    ReplicaDescription.add_member(:replica_inaccessible_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "ReplicaInaccessibleDateTime"))
    ReplicaDescription.add_member(:replica_table_class_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableClassSummary, location_name: "ReplicaTableClassSummary"))
    ReplicaDescription.type = Types::ReplicaDescription
    ReplicaDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaDescription)
    ReplicaGlobalSecondaryIndex.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName", traits: {"smithy.api#required" => {}}))
    ReplicaGlobalSecondaryIndex.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputOverride, location_name: "ProvisionedThroughputOverride"))
    ReplicaGlobalSecondaryIndex.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughputOverride, location_name: "OnDemandThroughputOverride"))
    ReplicaGlobalSecondaryIndex.type = Types::ReplicaGlobalSecondaryIndex
    ReplicaGlobalSecondaryIndexAutoScalingDescription.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    ReplicaGlobalSecondaryIndexAutoScalingDescription.add_member(:index_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatus, location_name: "IndexStatus"))
    ReplicaGlobalSecondaryIndexAutoScalingDescription.add_member(:provisioned_read_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ProvisionedReadCapacityAutoScalingSettings"))
    ReplicaGlobalSecondaryIndexAutoScalingDescription.add_member(:provisioned_write_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ProvisionedWriteCapacityAutoScalingSettings"))
    ReplicaGlobalSecondaryIndexAutoScalingDescription.type = Types::ReplicaGlobalSecondaryIndexAutoScalingDescription
    ReplicaGlobalSecondaryIndexAutoScalingDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexAutoScalingDescription)
    ReplicaGlobalSecondaryIndexAutoScalingUpdate.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    ReplicaGlobalSecondaryIndexAutoScalingUpdate.add_member(:provisioned_read_capacity_auto_scaling_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ProvisionedReadCapacityAutoScalingUpdate"))
    ReplicaGlobalSecondaryIndexAutoScalingUpdate.type = Types::ReplicaGlobalSecondaryIndexAutoScalingUpdate
    ReplicaGlobalSecondaryIndexAutoScalingUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexAutoScalingUpdate)
    ReplicaGlobalSecondaryIndexDescription.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    ReplicaGlobalSecondaryIndexDescription.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputOverride, location_name: "ProvisionedThroughputOverride"))
    ReplicaGlobalSecondaryIndexDescription.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughputOverride, location_name: "OnDemandThroughputOverride"))
    ReplicaGlobalSecondaryIndexDescription.add_member(:warm_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexWarmThroughputDescription, location_name: "WarmThroughput"))
    ReplicaGlobalSecondaryIndexDescription.type = Types::ReplicaGlobalSecondaryIndexDescription
    ReplicaGlobalSecondaryIndexDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexDescription)
    ReplicaGlobalSecondaryIndexList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndex)
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName", traits: {"smithy.api#required" => {}}))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:index_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexStatus, location_name: "IndexStatus"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:provisioned_read_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ProvisionedReadCapacityUnits"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:provisioned_read_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ProvisionedReadCapacityAutoScalingSettings"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:provisioned_write_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ProvisionedWriteCapacityUnits"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:provisioned_write_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ProvisionedWriteCapacityAutoScalingSettings"))
    ReplicaGlobalSecondaryIndexSettingsDescription.type = Types::ReplicaGlobalSecondaryIndexSettingsDescription
    ReplicaGlobalSecondaryIndexSettingsDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexSettingsDescription)
    ReplicaGlobalSecondaryIndexSettingsUpdate.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName", traits: {"smithy.api#required" => {}}))
    ReplicaGlobalSecondaryIndexSettingsUpdate.add_member(:provisioned_read_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ProvisionedReadCapacityUnits"))
    ReplicaGlobalSecondaryIndexSettingsUpdate.add_member(:provisioned_read_capacity_auto_scaling_settings_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ProvisionedReadCapacityAutoScalingSettingsUpdate"))
    ReplicaGlobalSecondaryIndexSettingsUpdate.type = Types::ReplicaGlobalSecondaryIndexSettingsUpdate
    ReplicaGlobalSecondaryIndexSettingsUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexSettingsUpdate)
    ReplicaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Replica)
    ReplicaNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ReplicaNotFoundException.type = Types::ReplicaNotFoundException
    ReplicaSettingsDescription.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName", traits: {"smithy.api#required" => {}}))
    ReplicaSettingsDescription.add_member(:replica_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaStatus, location_name: "ReplicaStatus"))
    ReplicaSettingsDescription.add_member(:replica_billing_mode_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingModeSummary, location_name: "ReplicaBillingModeSummary"))
    ReplicaSettingsDescription.add_member(:replica_provisioned_read_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeLongObject, location_name: "ReplicaProvisionedReadCapacityUnits"))
    ReplicaSettingsDescription.add_member(:replica_provisioned_read_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ReplicaProvisionedReadCapacityAutoScalingSettings"))
    ReplicaSettingsDescription.add_member(:replica_provisioned_write_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeLongObject, location_name: "ReplicaProvisionedWriteCapacityUnits"))
    ReplicaSettingsDescription.add_member(:replica_provisioned_write_capacity_auto_scaling_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ReplicaProvisionedWriteCapacityAutoScalingSettings"))
    ReplicaSettingsDescription.add_member(:replica_global_secondary_index_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexSettingsDescriptionList, location_name: "ReplicaGlobalSecondaryIndexSettings"))
    ReplicaSettingsDescription.add_member(:replica_table_class_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableClassSummary, location_name: "ReplicaTableClassSummary"))
    ReplicaSettingsDescription.type = Types::ReplicaSettingsDescription
    ReplicaSettingsDescriptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaSettingsDescription)
    ReplicaSettingsUpdate.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName", traits: {"smithy.api#required" => {}}))
    ReplicaSettingsUpdate.add_member(:replica_provisioned_read_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ReplicaProvisionedReadCapacityUnits"))
    ReplicaSettingsUpdate.add_member(:replica_provisioned_read_capacity_auto_scaling_settings_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate"))
    ReplicaSettingsUpdate.add_member(:replica_global_secondary_index_settings_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexSettingsUpdateList, location_name: "ReplicaGlobalSecondaryIndexSettingsUpdate"))
    ReplicaSettingsUpdate.add_member(:replica_table_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableClass, location_name: "ReplicaTableClass"))
    ReplicaSettingsUpdate.type = Types::ReplicaSettingsUpdate
    ReplicaSettingsUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaSettingsUpdate)
    ReplicaStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ReplicaStatus.add_member(:creation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATION_FAILED", traits: {"smithy.api#enumValue" => "CREATION_FAILED"}))
    ReplicaStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ReplicaStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ReplicaStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ReplicaStatus.add_member(:region_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGION_DISABLED", traits: {"smithy.api#enumValue" => "REGION_DISABLED"}))
    ReplicaStatus.add_member(:inaccessible_encryption_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACCESSIBLE_ENCRYPTION_CREDENTIALS", traits: {"smithy.api#enumValue" => "INACCESSIBLE_ENCRYPTION_CREDENTIALS"}))
    ReplicaStatus.add_member(:archiving, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARCHIVING", traits: {"smithy.api#enumValue" => "ARCHIVING"}))
    ReplicaStatus.add_member(:archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    ReplicaStatus.add_member(:replication_not_authorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLICATION_NOT_AUTHORIZED", traits: {"smithy.api#enumValue" => "REPLICATION_NOT_AUTHORIZED"}))
    ReplicaUpdate.add_member(:create, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicaAction, location_name: "Create"))
    ReplicaUpdate.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicaAction, location_name: "Delete"))
    ReplicaUpdate.type = Types::ReplicaUpdate
    ReplicaUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaUpdate)
    ReplicatedWriteConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ReplicatedWriteConflictException.type = Types::ReplicatedWriteConflictException
    ReplicationGroupUpdate.add_member(:create, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReplicationGroupMemberAction, location_name: "Create"))
    ReplicationGroupUpdate.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReplicationGroupMemberAction, location_name: "Update"))
    ReplicationGroupUpdate.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReplicationGroupMemberAction, location_name: "Delete"))
    ReplicationGroupUpdate.type = Types::ReplicationGroupUpdate
    ReplicationGroupUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupUpdate)
    RequestLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    RequestLimitExceeded.add_member(:throttling_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingReasonList, location_name: "ThrottlingReasons"))
    RequestLimitExceeded.type = Types::RequestLimitExceeded
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreSummary.add_member(:source_backup_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupArn, location_name: "SourceBackupArn"))
    RestoreSummary.add_member(:source_table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "SourceTableArn"))
    RestoreSummary.add_member(:restore_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "RestoreDateTime", traits: {"smithy.api#required" => {}}))
    RestoreSummary.add_member(:restore_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreInProgress, location_name: "RestoreInProgress", traits: {"smithy.api#required" => {}}))
    RestoreSummary.type = Types::RestoreSummary
    RestoreTableFromBackupInput.add_member(:target_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TargetTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    RestoreTableFromBackupInput.add_member(:backup_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupArn, location_name: "BackupArn", traits: {"smithy.api#required" => {}}))
    RestoreTableFromBackupInput.add_member(:billing_mode_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: "BillingModeOverride"))
    RestoreTableFromBackupInput.add_member(:global_secondary_index_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexOverride"))
    RestoreTableFromBackupInput.add_member(:local_secondary_index_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalSecondaryIndexList, location_name: "LocalSecondaryIndexOverride"))
    RestoreTableFromBackupInput.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughputOverride"))
    RestoreTableFromBackupInput.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughput, location_name: "OnDemandThroughputOverride"))
    RestoreTableFromBackupInput.add_member(:sse_specification_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSESpecification, location_name: "SSESpecificationOverride"))
    RestoreTableFromBackupInput.type = Types::RestoreTableFromBackupInput
    RestoreTableFromBackupOutput.add_member(:table_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableDescription, location_name: "TableDescription"))
    RestoreTableFromBackupOutput.type = Types::RestoreTableFromBackupOutput
    RestoreTableToPointInTimeInput.add_member(:source_table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "SourceTableArn"))
    RestoreTableToPointInTimeInput.add_member(:source_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "SourceTableName"))
    RestoreTableToPointInTimeInput.add_member(:target_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TargetTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    RestoreTableToPointInTimeInput.add_member(:use_latest_restorable_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: "UseLatestRestorableTime"))
    RestoreTableToPointInTimeInput.add_member(:restore_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "RestoreDateTime"))
    RestoreTableToPointInTimeInput.add_member(:billing_mode_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: "BillingModeOverride"))
    RestoreTableToPointInTimeInput.add_member(:global_secondary_index_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexOverride"))
    RestoreTableToPointInTimeInput.add_member(:local_secondary_index_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalSecondaryIndexList, location_name: "LocalSecondaryIndexOverride"))
    RestoreTableToPointInTimeInput.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughputOverride"))
    RestoreTableToPointInTimeInput.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughput, location_name: "OnDemandThroughputOverride"))
    RestoreTableToPointInTimeInput.add_member(:sse_specification_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSESpecification, location_name: "SSESpecificationOverride"))
    RestoreTableToPointInTimeInput.type = Types::RestoreTableToPointInTimeInput
    RestoreTableToPointInTimeOutput.add_member(:table_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableDescription, location_name: "TableDescription"))
    RestoreTableToPointInTimeOutput.type = Types::RestoreTableToPointInTimeOutput
    ReturnConsumedCapacity.add_member(:indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INDEXES", traits: {"smithy.api#enumValue" => "INDEXES"}))
    ReturnConsumedCapacity.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TOTAL", traits: {"smithy.api#enumValue" => "TOTAL"}))
    ReturnConsumedCapacity.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ReturnItemCollectionMetrics.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIZE", traits: {"smithy.api#enumValue" => "SIZE"}))
    ReturnItemCollectionMetrics.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ReturnValue.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ReturnValue.add_member(:all_old, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL_OLD", traits: {"smithy.api#enumValue" => "ALL_OLD"}))
    ReturnValue.add_member(:updated_old, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATED_OLD", traits: {"smithy.api#enumValue" => "UPDATED_OLD"}))
    ReturnValue.add_member(:all_new, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL_NEW", traits: {"smithy.api#enumValue" => "ALL_NEW"}))
    ReturnValue.add_member(:updated_new, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATED_NEW", traits: {"smithy.api#enumValue" => "UPDATED_NEW"}))
    ReturnValuesOnConditionCheckFailure.add_member(:all_old, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL_OLD", traits: {"smithy.api#enumValue" => "ALL_OLD"}))
    ReturnValuesOnConditionCheckFailure.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    S3BucketSource.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketOwner, location_name: "S3BucketOwner"))
    S3BucketSource.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    S3BucketSource.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "S3KeyPrefix"))
    S3BucketSource.type = Types::S3BucketSource
    S3SseAlgorithm.add_member(:aes256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AES256", traits: {"smithy.api#enumValue" => "AES256"}))
    S3SseAlgorithm.add_member(:kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    SSEDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSEStatus, location_name: "Status"))
    SSEDescription.add_member(:sse_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSEType, location_name: "SSEType"))
    SSEDescription.add_member(:kms_master_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSMasterKeyArn, location_name: "KMSMasterKeyArn"))
    SSEDescription.add_member(:inaccessible_encryption_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "InaccessibleEncryptionDateTime"))
    SSEDescription.type = Types::SSEDescription
    SSESpecification.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSEEnabled, location_name: "Enabled"))
    SSESpecification.add_member(:sse_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSEType, location_name: "SSEType"))
    SSESpecification.add_member(:kms_master_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSMasterKeyId, location_name: "KMSMasterKeyId"))
    SSESpecification.type = Types::SSESpecification
    SSEStatus.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    SSEStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    SSEStatus.add_member(:disabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    SSEStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    SSEStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    SSEType.add_member(:aes256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AES256", traits: {"smithy.api#enumValue" => "AES256"}))
    SSEType.add_member(:kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    ScalarAttributeType.add_member(:s, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S", traits: {"smithy.api#enumValue" => "S"}))
    ScalarAttributeType.add_member(:n, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "N", traits: {"smithy.api#enumValue" => "N"}))
    ScalarAttributeType.add_member(:b, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "B", traits: {"smithy.api#enumValue" => "B"}))
    ScanInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ScanInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    ScanInput.add_member(:attributes_to_get, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributesToGet"))
    ScanInput.add_member(:limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "Limit"))
    ScanInput.add_member(:select, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Select, location_name: "Select"))
    ScanInput.add_member(:scan_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterConditionMap, location_name: "ScanFilter"))
    ScanInput.add_member(:conditional_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalOperator, location_name: "ConditionalOperator"))
    ScanInput.add_member(:exclusive_start_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "ExclusiveStartKey"))
    ScanInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    ScanInput.add_member(:total_segments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanTotalSegments, location_name: "TotalSegments"))
    ScanInput.add_member(:segment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanSegment, location_name: "Segment"))
    ScanInput.add_member(:projection_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectionExpression, location_name: "ProjectionExpression"))
    ScanInput.add_member(:filter_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "FilterExpression"))
    ScanInput.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    ScanInput.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    ScanInput.add_member(:consistent_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsistentRead, location_name: "ConsistentRead"))
    ScanInput.type = Types::ScanInput
    ScanOutput.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemList, location_name: "Items"))
    ScanOutput.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "Count", traits: {"smithy.api#default" => 0}))
    ScanOutput.add_member(:scanned_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: "ScannedCount", traits: {"smithy.api#default" => 0}))
    ScanOutput.add_member(:last_evaluated_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "LastEvaluatedKey"))
    ScanOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "ConsumedCapacity"))
    ScanOutput.type = Types::ScanOutput
    SecondaryIndexesCapacityMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName)
    SecondaryIndexesCapacityMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Capacity)
    Select.add_member(:all_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL_ATTRIBUTES", traits: {"smithy.api#enumValue" => "ALL_ATTRIBUTES"}))
    Select.add_member(:all_projected_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL_PROJECTED_ATTRIBUTES", traits: {"smithy.api#enumValue" => "ALL_PROJECTED_ATTRIBUTES"}))
    Select.add_member(:specific_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPECIFIC_ATTRIBUTES", traits: {"smithy.api#enumValue" => "SPECIFIC_ATTRIBUTES"}))
    Select.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    SourceTableDetails.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName", traits: {"smithy.api#required" => {}}))
    SourceTableDetails.add_member(:table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableId, location_name: "TableId", traits: {"smithy.api#required" => {}}))
    SourceTableDetails.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableArn"))
    SourceTableDetails.add_member(:table_size_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: "TableSizeBytes"))
    SourceTableDetails.add_member(:key_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema", traits: {"smithy.api#required" => {}}))
    SourceTableDetails.add_member(:table_creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableCreationDateTime, location_name: "TableCreationDateTime", traits: {"smithy.api#required" => {}}))
    SourceTableDetails.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput", traits: {"smithy.api#required" => {}}))
    SourceTableDetails.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughput, location_name: "OnDemandThroughput"))
    SourceTableDetails.add_member(:item_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCount, location_name: "ItemCount"))
    SourceTableDetails.add_member(:billing_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: "BillingMode"))
    SourceTableDetails.type = Types::SourceTableDetails
    SourceTableFeatureDetails.add_member(:local_secondary_indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalSecondaryIndexes, location_name: "LocalSecondaryIndexes"))
    SourceTableFeatureDetails.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexes, location_name: "GlobalSecondaryIndexes"))
    SourceTableFeatureDetails.add_member(:stream_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSpecification, location_name: "StreamDescription"))
    SourceTableFeatureDetails.add_member(:time_to_live_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLiveDescription, location_name: "TimeToLiveDescription"))
    SourceTableFeatureDetails.add_member(:sse_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSEDescription, location_name: "SSEDescription"))
    SourceTableFeatureDetails.type = Types::SourceTableFeatureDetails
    StreamSpecification.add_member(:stream_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamEnabled, location_name: "StreamEnabled", traits: {"smithy.api#required" => {}}))
    StreamSpecification.add_member(:stream_view_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamViewType, location_name: "StreamViewType"))
    StreamSpecification.type = Types::StreamSpecification
    StreamViewType.add_member(:new_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEW_IMAGE", traits: {"smithy.api#enumValue" => "NEW_IMAGE"}))
    StreamViewType.add_member(:old_image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OLD_IMAGE", traits: {"smithy.api#enumValue" => "OLD_IMAGE"}))
    StreamViewType.add_member(:new_and_old_images, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEW_AND_OLD_IMAGES", traits: {"smithy.api#enumValue" => "NEW_AND_OLD_IMAGES"}))
    StreamViewType.add_member(:keys_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KEYS_ONLY", traits: {"smithy.api#enumValue" => "KEYS_ONLY"}))
    StringSetAttributeValue.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringAttributeValue)
    TableAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TableAlreadyExistsException.type = Types::TableAlreadyExistsException
    TableAutoScalingDescription.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    TableAutoScalingDescription.add_member(:table_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableStatus, location_name: "TableStatus"))
    TableAutoScalingDescription.add_member(:replicas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaAutoScalingDescriptionList, location_name: "Replicas"))
    TableAutoScalingDescription.type = Types::TableAutoScalingDescription
    TableClass.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    TableClass.add_member(:standard_infrequent_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD_INFREQUENT_ACCESS", traits: {"smithy.api#enumValue" => "STANDARD_INFREQUENT_ACCESS"}))
    TableClassSummary.add_member(:table_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableClass, location_name: "TableClass"))
    TableClassSummary.add_member(:last_update_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdateDateTime"))
    TableClassSummary.type = Types::TableClassSummary
    TableCreationParameters.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName", traits: {"smithy.api#required" => {}}))
    TableCreationParameters.add_member(:attribute_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeDefinitions, location_name: "AttributeDefinitions", traits: {"smithy.api#required" => {}}))
    TableCreationParameters.add_member(:key_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema", traits: {"smithy.api#required" => {}}))
    TableCreationParameters.add_member(:billing_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: "BillingMode"))
    TableCreationParameters.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput"))
    TableCreationParameters.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughput, location_name: "OnDemandThroughput"))
    TableCreationParameters.add_member(:sse_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSESpecification, location_name: "SSESpecification"))
    TableCreationParameters.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexes"))
    TableCreationParameters.type = Types::TableCreationParameters
    TableDescription.add_member(:attribute_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeDefinitions, location_name: "AttributeDefinitions"))
    TableDescription.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    TableDescription.add_member(:key_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema"))
    TableDescription.add_member(:table_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableStatus, location_name: "TableStatus"))
    TableDescription.add_member(:creation_date_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "CreationDateTime"))
    TableDescription.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputDescription, location_name: "ProvisionedThroughput"))
    TableDescription.add_member(:table_size_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: "TableSizeBytes"))
    TableDescription.add_member(:item_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: "ItemCount"))
    TableDescription.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TableArn"))
    TableDescription.add_member(:table_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableId, location_name: "TableId"))
    TableDescription.add_member(:billing_mode_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingModeSummary, location_name: "BillingModeSummary"))
    TableDescription.add_member(:local_secondary_indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocalSecondaryIndexDescriptionList, location_name: "LocalSecondaryIndexes"))
    TableDescription.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexDescriptionList, location_name: "GlobalSecondaryIndexes"))
    TableDescription.add_member(:stream_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSpecification, location_name: "StreamSpecification"))
    TableDescription.add_member(:latest_stream_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LatestStreamLabel"))
    TableDescription.add_member(:latest_stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: "LatestStreamArn"))
    TableDescription.add_member(:global_table_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "GlobalTableVersion"))
    TableDescription.add_member(:replicas, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaDescriptionList, location_name: "Replicas"))
    TableDescription.add_member(:global_table_witnesses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableWitnessDescriptionList, location_name: "GlobalTableWitnesses"))
    TableDescription.add_member(:restore_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreSummary, location_name: "RestoreSummary"))
    TableDescription.add_member(:sse_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSEDescription, location_name: "SSEDescription"))
    TableDescription.add_member(:archival_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArchivalSummary, location_name: "ArchivalSummary"))
    TableDescription.add_member(:table_class_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableClassSummary, location_name: "TableClassSummary"))
    TableDescription.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, location_name: "DeletionProtectionEnabled"))
    TableDescription.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughput, location_name: "OnDemandThroughput"))
    TableDescription.add_member(:warm_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableWarmThroughputDescription, location_name: "WarmThroughput"))
    TableDescription.add_member(:multi_region_consistency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionConsistency, location_name: "MultiRegionConsistency"))
    TableDescription.type = Types::TableDescription
    TableInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TableInUseException.type = Types::TableInUseException
    TableNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName)
    TableNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TableNotFoundException.type = Types::TableNotFoundException
    TableStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    TableStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    TableStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    TableStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TableStatus.add_member(:inaccessible_encryption_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACCESSIBLE_ENCRYPTION_CREDENTIALS", traits: {"smithy.api#enumValue" => "INACCESSIBLE_ENCRYPTION_CREDENTIALS"}))
    TableStatus.add_member(:archiving, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARCHIVING", traits: {"smithy.api#enumValue" => "ARCHIVING"}))
    TableStatus.add_member(:archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARCHIVED", traits: {"smithy.api#enumValue" => "ARCHIVED"}))
    TableStatus.add_member(:replication_not_authorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLICATION_NOT_AUTHORIZED", traits: {"smithy.api#enumValue" => "REPLICATION_NOT_AUTHORIZED"}))
    TableWarmThroughputDescription.add_member(:read_units_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ReadUnitsPerSecond"))
    TableWarmThroughputDescription.add_member(:write_units_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "WriteUnitsPerSecond"))
    TableWarmThroughputDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableStatus, location_name: "Status"))
    TableWarmThroughputDescription.type = Types::TableWarmThroughputDescription
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyString, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueString, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyString)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityErrorMessage, location_name: "message"))
    ThrottlingException.add_member(:throttling_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingReasonList, location_name: "throttlingReasons"))
    ThrottlingException.type = Types::ThrottlingException
    ThrottlingReason.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: "reason"))
    ThrottlingReason.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, location_name: "resource"))
    ThrottlingReason.type = Types::ThrottlingReason
    ThrottlingReasonList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingReason)
    TimeToLiveDescription.add_member(:time_to_live_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLiveStatus, location_name: "TimeToLiveStatus"))
    TimeToLiveDescription.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLiveAttributeName, location_name: "AttributeName"))
    TimeToLiveDescription.type = Types::TimeToLiveDescription
    TimeToLiveSpecification.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLiveEnabled, location_name: "Enabled", traits: {"smithy.api#required" => {}}))
    TimeToLiveSpecification.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLiveAttributeName, location_name: "AttributeName", traits: {"smithy.api#required" => {}}))
    TimeToLiveSpecification.type = Types::TimeToLiveSpecification
    TimeToLiveStatus.add_member(:enabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    TimeToLiveStatus.add_member(:disabling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    TimeToLiveStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    TimeToLiveStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    TransactGetItem.add_member(:get, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Get, location_name: "Get", traits: {"smithy.api#required" => {}}))
    TransactGetItem.type = Types::TransactGetItem
    TransactGetItemList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactGetItem)
    TransactGetItemsInput.add_member(:transact_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactGetItemList, location_name: "TransactItems", traits: {"smithy.api#required" => {}}))
    TransactGetItemsInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    TransactGetItemsInput.type = Types::TransactGetItemsInput
    TransactGetItemsOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacityMultiple, location_name: "ConsumedCapacity"))
    TransactGetItemsOutput.add_member(:responses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemResponseList, location_name: "Responses"))
    TransactGetItemsOutput.type = Types::TransactGetItemsOutput
    TransactWriteItem.add_member(:condition_check, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionCheck, location_name: "ConditionCheck"))
    TransactWriteItem.add_member(:put, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Put, location_name: "Put"))
    TransactWriteItem.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Delete, location_name: "Delete"))
    TransactWriteItem.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Update, location_name: "Update"))
    TransactWriteItem.type = Types::TransactWriteItem
    TransactWriteItemList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactWriteItem)
    TransactWriteItemsInput.add_member(:transact_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactWriteItemList, location_name: "TransactItems", traits: {"smithy.api#required" => {}}))
    TransactWriteItemsInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    TransactWriteItemsInput.add_member(:return_item_collection_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnItemCollectionMetrics, location_name: "ReturnItemCollectionMetrics"))
    TransactWriteItemsInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    TransactWriteItemsInput.type = Types::TransactWriteItemsInput
    TransactWriteItemsOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacityMultiple, location_name: "ConsumedCapacity"))
    TransactWriteItemsOutput.add_member(:item_collection_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionMetricsPerTable, location_name: "ItemCollectionMetrics"))
    TransactWriteItemsOutput.type = Types::TransactWriteItemsOutput
    TransactionCanceledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TransactionCanceledException.add_member(:cancellation_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancellationReasonList, location_name: "CancellationReasons"))
    TransactionCanceledException.type = Types::TransactionCanceledException
    TransactionConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TransactionConflictException.type = Types::TransactionConflictException
    TransactionInProgressException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TransactionInProgressException.type = Types::TransactionInProgressException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnString, location_name: "ResourceArn", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    Update.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Update.add_member(:update_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExpression, location_name: "UpdateExpression", traits: {"smithy.api#required" => {}}))
    Update.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}}))
    Update.add_member(:condition_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "ConditionExpression"))
    Update.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    Update.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    Update.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    Update.type = Types::Update
    UpdateContinuousBackupsInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateContinuousBackupsInput.add_member(:point_in_time_recovery_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PointInTimeRecoverySpecification, location_name: "PointInTimeRecoverySpecification", traits: {"smithy.api#required" => {}}))
    UpdateContinuousBackupsInput.type = Types::UpdateContinuousBackupsInput
    UpdateContinuousBackupsOutput.add_member(:continuous_backups_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousBackupsDescription, location_name: "ContinuousBackupsDescription"))
    UpdateContinuousBackupsOutput.type = Types::UpdateContinuousBackupsOutput
    UpdateContributorInsightsInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateContributorInsightsInput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    UpdateContributorInsightsInput.add_member(:contributor_insights_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorInsightsAction, location_name: "ContributorInsightsAction", traits: {"smithy.api#required" => {}}))
    UpdateContributorInsightsInput.add_member(:contributor_insights_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorInsightsMode, location_name: "ContributorInsightsMode"))
    UpdateContributorInsightsInput.type = Types::UpdateContributorInsightsInput
    UpdateContributorInsightsOutput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    UpdateContributorInsightsOutput.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    UpdateContributorInsightsOutput.add_member(:contributor_insights_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorInsightsStatus, location_name: "ContributorInsightsStatus"))
    UpdateContributorInsightsOutput.add_member(:contributor_insights_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContributorInsightsMode, location_name: "ContributorInsightsMode"))
    UpdateContributorInsightsOutput.type = Types::UpdateContributorInsightsOutput
    UpdateGlobalSecondaryIndexAction.add_member(:index_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName", traits: {"smithy.api#required" => {}}))
    UpdateGlobalSecondaryIndexAction.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput"))
    UpdateGlobalSecondaryIndexAction.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughput, location_name: "OnDemandThroughput"))
    UpdateGlobalSecondaryIndexAction.add_member(:warm_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WarmThroughput, location_name: "WarmThroughput"))
    UpdateGlobalSecondaryIndexAction.type = Types::UpdateGlobalSecondaryIndexAction
    UpdateGlobalTableInput.add_member(:global_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "GlobalTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateGlobalTableInput.add_member(:replica_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaUpdateList, location_name: "ReplicaUpdates", traits: {"smithy.api#required" => {}}))
    UpdateGlobalTableInput.type = Types::UpdateGlobalTableInput
    UpdateGlobalTableOutput.add_member(:global_table_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableDescription, location_name: "GlobalTableDescription"))
    UpdateGlobalTableOutput.type = Types::UpdateGlobalTableOutput
    UpdateGlobalTableSettingsInput.add_member(:global_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "GlobalTableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateGlobalTableSettingsInput.add_member(:global_table_billing_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: "GlobalTableBillingMode"))
    UpdateGlobalTableSettingsInput.add_member(:global_table_provisioned_write_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "GlobalTableProvisionedWriteCapacityUnits"))
    UpdateGlobalTableSettingsInput.add_member(:global_table_provisioned_write_capacity_auto_scaling_settings_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate"))
    UpdateGlobalTableSettingsInput.add_member(:global_table_global_secondary_index_settings_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableGlobalSecondaryIndexSettingsUpdateList, location_name: "GlobalTableGlobalSecondaryIndexSettingsUpdate"))
    UpdateGlobalTableSettingsInput.add_member(:replica_settings_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaSettingsUpdateList, location_name: "ReplicaSettingsUpdate"))
    UpdateGlobalTableSettingsInput.type = Types::UpdateGlobalTableSettingsInput
    UpdateGlobalTableSettingsOutput.add_member(:global_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "GlobalTableName"))
    UpdateGlobalTableSettingsOutput.add_member(:replica_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaSettingsDescriptionList, location_name: "ReplicaSettings"))
    UpdateGlobalTableSettingsOutput.type = Types::UpdateGlobalTableSettingsOutput
    UpdateItemInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateItemInput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key, location_name: "Key", traits: {"smithy.api#required" => {}}))
    UpdateItemInput.add_member(:attribute_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeUpdates, location_name: "AttributeUpdates"))
    UpdateItemInput.add_member(:expected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedAttributeMap, location_name: "Expected"))
    UpdateItemInput.add_member(:conditional_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalOperator, location_name: "ConditionalOperator"))
    UpdateItemInput.add_member(:return_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnValue, location_name: "ReturnValues"))
    UpdateItemInput.add_member(:return_consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    UpdateItemInput.add_member(:return_item_collection_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnItemCollectionMetrics, location_name: "ReturnItemCollectionMetrics"))
    UpdateItemInput.add_member(:update_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExpression, location_name: "UpdateExpression"))
    UpdateItemInput.add_member(:condition_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "ConditionExpression"))
    UpdateItemInput.add_member(:expression_attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    UpdateItemInput.add_member(:expression_attribute_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    UpdateItemInput.add_member(:return_values_on_condition_check_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    UpdateItemInput.type = Types::UpdateItemInput
    UpdateItemOutput.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Attributes"))
    UpdateItemOutput.add_member(:consumed_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "ConsumedCapacity"))
    UpdateItemOutput.add_member(:item_collection_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionMetrics, location_name: "ItemCollectionMetrics"))
    UpdateItemOutput.type = Types::UpdateItemOutput
    UpdateKinesisStreamingConfiguration.add_member(:approximate_creation_date_time_precision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApproximateCreationDateTimePrecision, location_name: "ApproximateCreationDateTimePrecision"))
    UpdateKinesisStreamingConfiguration.type = Types::UpdateKinesisStreamingConfiguration
    UpdateKinesisStreamingDestinationInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateKinesisStreamingDestinationInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: "StreamArn", traits: {"smithy.api#required" => {}}))
    UpdateKinesisStreamingDestinationInput.add_member(:update_kinesis_streaming_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKinesisStreamingConfiguration, location_name: "UpdateKinesisStreamingConfiguration"))
    UpdateKinesisStreamingDestinationInput.type = Types::UpdateKinesisStreamingDestinationInput
    UpdateKinesisStreamingDestinationOutput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    UpdateKinesisStreamingDestinationOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: "StreamArn"))
    UpdateKinesisStreamingDestinationOutput.add_member(:destination_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationStatus, location_name: "DestinationStatus"))
    UpdateKinesisStreamingDestinationOutput.add_member(:update_kinesis_streaming_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKinesisStreamingConfiguration, location_name: "UpdateKinesisStreamingConfiguration"))
    UpdateKinesisStreamingDestinationOutput.type = Types::UpdateKinesisStreamingDestinationOutput
    UpdateReplicationGroupMemberAction.add_member(:region_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName", traits: {"smithy.api#required" => {}}))
    UpdateReplicationGroupMemberAction.add_member(:kms_master_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSMasterKeyId, location_name: "KMSMasterKeyId"))
    UpdateReplicationGroupMemberAction.add_member(:provisioned_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputOverride, location_name: "ProvisionedThroughputOverride"))
    UpdateReplicationGroupMemberAction.add_member(:on_demand_throughput_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughputOverride, location_name: "OnDemandThroughputOverride"))
    UpdateReplicationGroupMemberAction.add_member(:global_secondary_indexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexes"))
    UpdateReplicationGroupMemberAction.add_member(:table_class_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableClass, location_name: "TableClassOverride"))
    UpdateReplicationGroupMemberAction.type = Types::UpdateReplicationGroupMemberAction
    UpdateTableInput.add_member(:attribute_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeDefinitions, location_name: "AttributeDefinitions"))
    UpdateTableInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateTableInput.add_member(:billing_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingMode, location_name: "BillingMode"))
    UpdateTableInput.add_member(:provisioned_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput"))
    UpdateTableInput.add_member(:global_secondary_index_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexUpdateList, location_name: "GlobalSecondaryIndexUpdates"))
    UpdateTableInput.add_member(:stream_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamSpecification, location_name: "StreamSpecification"))
    UpdateTableInput.add_member(:sse_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSESpecification, location_name: "SSESpecification"))
    UpdateTableInput.add_member(:replica_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationGroupUpdateList, location_name: "ReplicaUpdates"))
    UpdateTableInput.add_member(:table_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableClass, location_name: "TableClass"))
    UpdateTableInput.add_member(:deletion_protection_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtectionEnabled, location_name: "DeletionProtectionEnabled"))
    UpdateTableInput.add_member(:multi_region_consistency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionConsistency, location_name: "MultiRegionConsistency"))
    UpdateTableInput.add_member(:global_table_witness_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableWitnessGroupUpdateList, location_name: "GlobalTableWitnessUpdates"))
    UpdateTableInput.add_member(:on_demand_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandThroughput, location_name: "OnDemandThroughput"))
    UpdateTableInput.add_member(:warm_throughput, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WarmThroughput, location_name: "WarmThroughput"))
    UpdateTableInput.type = Types::UpdateTableInput
    UpdateTableOutput.add_member(:table_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableDescription, location_name: "TableDescription"))
    UpdateTableOutput.type = Types::UpdateTableOutput
    UpdateTableReplicaAutoScalingInput.add_member(:global_secondary_index_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalSecondaryIndexAutoScalingUpdateList, location_name: "GlobalSecondaryIndexUpdates"))
    UpdateTableReplicaAutoScalingInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateTableReplicaAutoScalingInput.add_member(:provisioned_write_capacity_auto_scaling_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ProvisionedWriteCapacityAutoScalingUpdate"))
    UpdateTableReplicaAutoScalingInput.add_member(:replica_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaAutoScalingUpdateList, location_name: "ReplicaUpdates"))
    UpdateTableReplicaAutoScalingInput.type = Types::UpdateTableReplicaAutoScalingInput
    UpdateTableReplicaAutoScalingOutput.add_member(:table_auto_scaling_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableAutoScalingDescription, location_name: "TableAutoScalingDescription"))
    UpdateTableReplicaAutoScalingOutput.type = Types::UpdateTableReplicaAutoScalingOutput
    UpdateTimeToLiveInput.add_member(:table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableArn, location_name: "TableName", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UpdateTimeToLiveInput.add_member(:time_to_live_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLiveSpecification, location_name: "TimeToLiveSpecification", traits: {"smithy.api#required" => {}}))
    UpdateTimeToLiveInput.type = Types::UpdateTimeToLiveInput
    UpdateTimeToLiveOutput.add_member(:time_to_live_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeToLiveSpecification, location_name: "TimeToLiveSpecification"))
    UpdateTimeToLiveOutput.type = Types::UpdateTimeToLiveOutput
    WarmThroughput.add_member(:read_units_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: "ReadUnitsPerSecond"))
    WarmThroughput.add_member(:write_units_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongObject, location_name: "WriteUnitsPerSecond"))
    WarmThroughput.type = Types::WarmThroughput
    WitnessStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    WitnessStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    WitnessStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    WriteRequest.add_member(:put_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutRequest, location_name: "PutRequest"))
    WriteRequest.add_member(:delete_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRequest, location_name: "DeleteRequest"))
    WriteRequest.type = Types::WriteRequest
    WriteRequests.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteRequest)

    DynamoDB_20120810 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.dynamodb#DynamoDB_20120810"
      service.name = "DynamoDB_20120810"
      service.version = "2012-08-10"
      service.traits = {"aws.api#clientEndpointDiscovery" => {"operation" => "com.amazonaws.dynamodb#DescribeEndpoints", "error" => "com.amazonaws.dynamodb#InvalidEndpointException"}, "aws.api#service" => {"sdkId" => "DynamoDB", "arnNamespace" => "dynamodb", "cloudFormationName" => "DynamoDB", "cloudTrailEventSource" => "dynamodb.amazonaws.com", "endpointPrefix" => "dynamodb"}, "aws.auth#sigv4" => {"name" => "dynamodb"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#suppress" => ["RuleSetAwsBuiltIn.AWS::Auth::AccountId"], "smithy.api#title" => "Amazon DynamoDB", "smithy.api#xmlNamespace" => {"uri" => "http://dynamodb.amazonaws.com/doc/2012-08-10/"}}
      service.add_operation(:batch_execute_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#BatchExecuteStatement"
        operation.name = "BatchExecuteStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchExecuteStatementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchExecuteStatementOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#BatchGetItem"
        operation.name = "BatchGetItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetItemInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetItemOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.rules#operationContextParams" => {"ResourceArnList" => {"path" => "keys(RequestItems)"}}}
      end)
      service.add_operation(:batch_write_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#BatchWriteItem"
        operation.name = "BatchWriteItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchWriteItemInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchWriteItemOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionSizeLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicatedWriteConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.rules#operationContextParams" => {"ResourceArnList" => {"path" => "keys(RequestItems)"}}}
      end)
      service.add_operation(:create_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#CreateBackup"
        operation.name = "CreateBackup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousBackupsUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:create_global_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#CreateGlobalTable"
        operation.name = "CreateGlobalTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalTableInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalTableOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:create_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#CreateTable"
        operation.name = "CreateTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTableInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTableOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:delete_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DeleteBackup"
        operation.name = "DeleteBackup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:delete_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DeleteItem"
        operation.name = "DeleteItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteItemInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteItemOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalCheckFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionSizeLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicatedWriteConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionConflictException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:delete_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DeleteTable"
        operation.name = "DeleteTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTableInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTableOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeBackup"
        operation.name = "DescribeBackup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_continuous_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeContinuousBackups"
        operation.name = "DescribeContinuousBackups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeContinuousBackupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeContinuousBackupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_contributor_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeContributorInsights"
        operation.name = "DescribeContributorInsights"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeContributorInsightsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeContributorInsightsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeEndpoints"
        operation.name = "DescribeEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointsResponse)
        operation.traits = {}
      end)
      service.add_operation(:describe_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeExport"
        operation.name = "DescribeExport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExportInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExportOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:describe_global_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeGlobalTable"
        operation.name = "DescribeGlobalTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGlobalTableInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGlobalTableOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_global_table_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeGlobalTableSettings"
        operation.name = "DescribeGlobalTableSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGlobalTableSettingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGlobalTableSettingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeImport"
        operation.name = "DescribeImport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImportInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImportOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_kinesis_streaming_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeKinesisStreamingDestination"
        operation.name = "DescribeKinesisStreamingDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKinesisStreamingDestinationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeKinesisStreamingDestinationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeLimits"
        operation.name = "DescribeLimits"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLimitsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLimitsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeTable"
        operation.name = "DescribeTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:describe_table_replica_auto_scaling, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeTableReplicaAutoScaling"
        operation.name = "DescribeTableReplicaAutoScaling"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableReplicaAutoScalingInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableReplicaAutoScalingOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_time_to_live, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DescribeTimeToLive"
        operation.name = "DescribeTimeToLive"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTimeToLiveInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTimeToLiveOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:disable_kinesis_streaming_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#DisableKinesisStreamingDestination"
        operation.name = "DisableKinesisStreamingDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableKinesisStreamingDestinationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableKinesisStreamingDestinationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:enable_kinesis_streaming_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#EnableKinesisStreamingDestination"
        operation.name = "EnableKinesisStreamingDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableKinesisStreamingDestinationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableKinesisStreamingDestinationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:execute_statement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ExecuteStatement"
        operation.name = "ExecuteStatement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteStatementInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteStatementOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalCheckFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateItemException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionSizeLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionConflictException)
        operation.traits = {}
      end)
      service.add_operation(:execute_transaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ExecuteTransaction"
        operation.name = "ExecuteTransaction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteTransactionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteTransactionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCanceledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {}
      end)
      service.add_operation(:export_table_to_point_in_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ExportTableToPointInTime"
        operation.name = "ExportTableToPointInTime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTableToPointInTimeInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportTableToPointInTimeOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidExportTimeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PointInTimeRecoveryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#GetItem"
        operation.name = "GetItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetItemInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetItemOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:import_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ImportTable"
        operation.name = "ImportTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTableInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTableOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.rules#operationContextParams" => {"ResourceArn" => {"path" => "TableCreationParameters.TableName"}}}
      end)
      service.add_operation(:list_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListBackups"
        operation.name = "ListBackups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:list_contributor_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListContributorInsights"
        operation.name = "ListContributorInsights"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListContributorInsightsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListContributorInsightsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListContributorInsights.new
      end)
      service.add_operation(:list_exports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListExports"
        operation.name = "ListExports"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListExports.new
      end)
      service.add_operation(:list_global_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListGlobalTables"
        operation.name = "ListGlobalTables"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGlobalTablesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGlobalTablesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:list_imports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListImports"
        operation.name = "ListImports"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListImports.new
      end)
      service.add_operation(:list_tables, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListTables"
        operation.name = "ListTables"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTablesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.test#smokeTests" => [{"id" => "ListTablesSuccess", "params" => {"Limit" => 1}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListTables.new
      end)
      service.add_operation(:list_tags_of_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#ListTagsOfResource"
        operation.name = "ListTagsOfResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsOfResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsOfResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:put_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#PutItem"
        operation.name = "PutItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutItemInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutItemOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalCheckFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionSizeLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicatedWriteConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionConflictException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#Query"
        operation.name = "Query"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.api#suppress" => ["PaginatedTrait"]}
        operation[:paginator] = Paginators::Query.new
      end)
      service.add_operation(:restore_table_from_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#RestoreTableFromBackup"
        operation.name = "RestoreTableFromBackup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableFromBackupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableFromBackupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableInUseException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:restore_table_to_point_in_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#RestoreTableToPointInTime"
        operation.name = "RestoreTableToPointInTime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableToPointInTimeInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableToPointInTimeOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRestoreTimeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PointInTimeRecoveryUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#Scan"
        operation.name = "Scan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.api#suppress" => ["PaginatedTrait"]}
        operation[:paginator] = Paginators::Scan.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:transact_get_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#TransactGetItems"
        operation.name = "TransactGetItems"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactGetItemsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactGetItemsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCanceledException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.rules#operationContextParams" => {"ResourceArnList" => {"path" => "TransactItems[*].Get.TableName"}}}
      end)
      service.add_operation(:transact_write_items, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#TransactWriteItems"
        operation.name = "TransactWriteItems"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactWriteItemsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactWriteItemsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionCanceledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionInProgressException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}, "smithy.rules#operationContextParams" => {"ResourceArnList" => {"path" => "TransactItems[*].[ConditionCheck.TableName, Put.TableName, Delete.TableName, Update.TableName][]"}}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_continuous_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateContinuousBackups"
        operation.name = "UpdateContinuousBackups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContinuousBackupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContinuousBackupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuousBackupsUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_contributor_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateContributorInsights"
        operation.name = "UpdateContributorInsights"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContributorInsightsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContributorInsightsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_global_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateGlobalTable"
        operation.name = "UpdateGlobalTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGlobalTableInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGlobalTableOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_global_table_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateGlobalTableSettings"
        operation.name = "UpdateGlobalTableSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGlobalTableSettingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGlobalTableSettingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalTableNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IndexNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_item, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateItem"
        operation.name = "UpdateItem"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateItemInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateItemOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalCheckFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ItemCollectionSizeLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicatedWriteConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionConflictException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_kinesis_streaming_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateKinesisStreamingDestination"
        operation.name = "UpdateKinesisStreamingDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKinesisStreamingDestinationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateKinesisStreamingDestinationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_table, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateTable"
        operation.name = "UpdateTable"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.api#clientDiscoveredEndpoint" => {"required" => false}}
      end)
      service.add_operation(:update_table_replica_auto_scaling, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateTableReplicaAutoScaling"
        operation.name = "UpdateTableReplicaAutoScaling"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableReplicaAutoScalingInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTableReplicaAutoScalingOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_time_to_live, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodb#UpdateTimeToLive"
        operation.name = "UpdateTimeToLive"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimeToLiveInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimeToLiveOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
