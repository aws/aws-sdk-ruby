# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DynamoDB
  # @api private
  module ClientApi

    include Seahorse::Model

    ArchivalReason = Shapes::StringShape.new(name: 'ArchivalReason')
    ArchivalSummary = Shapes::StructureShape.new(name: 'ArchivalSummary')
    AttributeAction = Shapes::StringShape.new(name: 'AttributeAction')
    AttributeDefinition = Shapes::StructureShape.new(name: 'AttributeDefinition')
    AttributeDefinitions = Shapes::ListShape.new(name: 'AttributeDefinitions')
    AttributeMap = Shapes::MapShape.new(name: 'AttributeMap')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeNameList = Shapes::ListShape.new(name: 'AttributeNameList')
    AttributeUpdates = Shapes::MapShape.new(name: 'AttributeUpdates')
    AttributeValue = Shapes::StructureShape.new(name: 'AttributeValue')
    AttributeValueList = Shapes::ListShape.new(name: 'AttributeValueList')
    AttributeValueUpdate = Shapes::StructureShape.new(name: 'AttributeValueUpdate')
    AutoScalingPolicyDescription = Shapes::StructureShape.new(name: 'AutoScalingPolicyDescription')
    AutoScalingPolicyDescriptionList = Shapes::ListShape.new(name: 'AutoScalingPolicyDescriptionList')
    AutoScalingPolicyName = Shapes::StringShape.new(name: 'AutoScalingPolicyName')
    AutoScalingPolicyUpdate = Shapes::StructureShape.new(name: 'AutoScalingPolicyUpdate')
    AutoScalingRoleArn = Shapes::StringShape.new(name: 'AutoScalingRoleArn')
    AutoScalingSettingsDescription = Shapes::StructureShape.new(name: 'AutoScalingSettingsDescription')
    AutoScalingSettingsUpdate = Shapes::StructureShape.new(name: 'AutoScalingSettingsUpdate')
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription = Shapes::StructureShape.new(name: 'AutoScalingTargetTrackingScalingPolicyConfigurationDescription')
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate = Shapes::StructureShape.new(name: 'AutoScalingTargetTrackingScalingPolicyConfigurationUpdate')
    Backfilling = Shapes::BooleanShape.new(name: 'Backfilling')
    BackupArn = Shapes::StringShape.new(name: 'BackupArn')
    BackupCreationDateTime = Shapes::TimestampShape.new(name: 'BackupCreationDateTime')
    BackupDescription = Shapes::StructureShape.new(name: 'BackupDescription')
    BackupDetails = Shapes::StructureShape.new(name: 'BackupDetails')
    BackupInUseException = Shapes::StructureShape.new(name: 'BackupInUseException')
    BackupName = Shapes::StringShape.new(name: 'BackupName')
    BackupNotFoundException = Shapes::StructureShape.new(name: 'BackupNotFoundException')
    BackupSizeBytes = Shapes::IntegerShape.new(name: 'BackupSizeBytes')
    BackupStatus = Shapes::StringShape.new(name: 'BackupStatus')
    BackupSummaries = Shapes::ListShape.new(name: 'BackupSummaries')
    BackupSummary = Shapes::StructureShape.new(name: 'BackupSummary')
    BackupType = Shapes::StringShape.new(name: 'BackupType')
    BackupTypeFilter = Shapes::StringShape.new(name: 'BackupTypeFilter')
    BackupsInputLimit = Shapes::IntegerShape.new(name: 'BackupsInputLimit')
    BatchGetItemInput = Shapes::StructureShape.new(name: 'BatchGetItemInput')
    BatchGetItemOutput = Shapes::StructureShape.new(name: 'BatchGetItemOutput')
    BatchGetRequestMap = Shapes::MapShape.new(name: 'BatchGetRequestMap')
    BatchGetResponseMap = Shapes::MapShape.new(name: 'BatchGetResponseMap')
    BatchWriteItemInput = Shapes::StructureShape.new(name: 'BatchWriteItemInput')
    BatchWriteItemOutput = Shapes::StructureShape.new(name: 'BatchWriteItemOutput')
    BatchWriteItemRequestMap = Shapes::MapShape.new(name: 'BatchWriteItemRequestMap')
    BillingMode = Shapes::StringShape.new(name: 'BillingMode')
    BillingModeSummary = Shapes::StructureShape.new(name: 'BillingModeSummary')
    BinaryAttributeValue = Shapes::BlobShape.new(name: 'BinaryAttributeValue')
    BinarySetAttributeValue = Shapes::ListShape.new(name: 'BinarySetAttributeValue')
    BooleanAttributeValue = Shapes::BooleanShape.new(name: 'BooleanAttributeValue')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    CancellationReason = Shapes::StructureShape.new(name: 'CancellationReason')
    CancellationReasonList = Shapes::ListShape.new(name: 'CancellationReasonList')
    Capacity = Shapes::StructureShape.new(name: 'Capacity')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    Code = Shapes::StringShape.new(name: 'Code')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    ConditionCheck = Shapes::StructureShape.new(name: 'ConditionCheck')
    ConditionExpression = Shapes::StringShape.new(name: 'ConditionExpression')
    ConditionalCheckFailedException = Shapes::StructureShape.new(name: 'ConditionalCheckFailedException')
    ConditionalOperator = Shapes::StringShape.new(name: 'ConditionalOperator')
    ConsistentRead = Shapes::BooleanShape.new(name: 'ConsistentRead')
    ConsumedCapacity = Shapes::StructureShape.new(name: 'ConsumedCapacity')
    ConsumedCapacityMultiple = Shapes::ListShape.new(name: 'ConsumedCapacityMultiple')
    ConsumedCapacityUnits = Shapes::FloatShape.new(name: 'ConsumedCapacityUnits')
    ContinuousBackupsDescription = Shapes::StructureShape.new(name: 'ContinuousBackupsDescription')
    ContinuousBackupsStatus = Shapes::StringShape.new(name: 'ContinuousBackupsStatus')
    ContinuousBackupsUnavailableException = Shapes::StructureShape.new(name: 'ContinuousBackupsUnavailableException')
    ContributorInsightsAction = Shapes::StringShape.new(name: 'ContributorInsightsAction')
    ContributorInsightsRule = Shapes::StringShape.new(name: 'ContributorInsightsRule')
    ContributorInsightsRuleList = Shapes::ListShape.new(name: 'ContributorInsightsRuleList')
    ContributorInsightsStatus = Shapes::StringShape.new(name: 'ContributorInsightsStatus')
    ContributorInsightsSummaries = Shapes::ListShape.new(name: 'ContributorInsightsSummaries')
    ContributorInsightsSummary = Shapes::StructureShape.new(name: 'ContributorInsightsSummary')
    CreateBackupInput = Shapes::StructureShape.new(name: 'CreateBackupInput')
    CreateBackupOutput = Shapes::StructureShape.new(name: 'CreateBackupOutput')
    CreateGlobalSecondaryIndexAction = Shapes::StructureShape.new(name: 'CreateGlobalSecondaryIndexAction')
    CreateGlobalTableInput = Shapes::StructureShape.new(name: 'CreateGlobalTableInput')
    CreateGlobalTableOutput = Shapes::StructureShape.new(name: 'CreateGlobalTableOutput')
    CreateReplicaAction = Shapes::StructureShape.new(name: 'CreateReplicaAction')
    CreateReplicationGroupMemberAction = Shapes::StructureShape.new(name: 'CreateReplicationGroupMemberAction')
    CreateTableInput = Shapes::StructureShape.new(name: 'CreateTableInput')
    CreateTableOutput = Shapes::StructureShape.new(name: 'CreateTableOutput')
    Date = Shapes::TimestampShape.new(name: 'Date')
    Delete = Shapes::StructureShape.new(name: 'Delete')
    DeleteBackupInput = Shapes::StructureShape.new(name: 'DeleteBackupInput')
    DeleteBackupOutput = Shapes::StructureShape.new(name: 'DeleteBackupOutput')
    DeleteGlobalSecondaryIndexAction = Shapes::StructureShape.new(name: 'DeleteGlobalSecondaryIndexAction')
    DeleteItemInput = Shapes::StructureShape.new(name: 'DeleteItemInput')
    DeleteItemOutput = Shapes::StructureShape.new(name: 'DeleteItemOutput')
    DeleteReplicaAction = Shapes::StructureShape.new(name: 'DeleteReplicaAction')
    DeleteReplicationGroupMemberAction = Shapes::StructureShape.new(name: 'DeleteReplicationGroupMemberAction')
    DeleteRequest = Shapes::StructureShape.new(name: 'DeleteRequest')
    DeleteTableInput = Shapes::StructureShape.new(name: 'DeleteTableInput')
    DeleteTableOutput = Shapes::StructureShape.new(name: 'DeleteTableOutput')
    DescribeBackupInput = Shapes::StructureShape.new(name: 'DescribeBackupInput')
    DescribeBackupOutput = Shapes::StructureShape.new(name: 'DescribeBackupOutput')
    DescribeContinuousBackupsInput = Shapes::StructureShape.new(name: 'DescribeContinuousBackupsInput')
    DescribeContinuousBackupsOutput = Shapes::StructureShape.new(name: 'DescribeContinuousBackupsOutput')
    DescribeContributorInsightsInput = Shapes::StructureShape.new(name: 'DescribeContributorInsightsInput')
    DescribeContributorInsightsOutput = Shapes::StructureShape.new(name: 'DescribeContributorInsightsOutput')
    DescribeEndpointsRequest = Shapes::StructureShape.new(name: 'DescribeEndpointsRequest')
    DescribeEndpointsResponse = Shapes::StructureShape.new(name: 'DescribeEndpointsResponse')
    DescribeGlobalTableInput = Shapes::StructureShape.new(name: 'DescribeGlobalTableInput')
    DescribeGlobalTableOutput = Shapes::StructureShape.new(name: 'DescribeGlobalTableOutput')
    DescribeGlobalTableSettingsInput = Shapes::StructureShape.new(name: 'DescribeGlobalTableSettingsInput')
    DescribeGlobalTableSettingsOutput = Shapes::StructureShape.new(name: 'DescribeGlobalTableSettingsOutput')
    DescribeLimitsInput = Shapes::StructureShape.new(name: 'DescribeLimitsInput')
    DescribeLimitsOutput = Shapes::StructureShape.new(name: 'DescribeLimitsOutput')
    DescribeTableInput = Shapes::StructureShape.new(name: 'DescribeTableInput')
    DescribeTableOutput = Shapes::StructureShape.new(name: 'DescribeTableOutput')
    DescribeTableReplicaAutoScalingInput = Shapes::StructureShape.new(name: 'DescribeTableReplicaAutoScalingInput')
    DescribeTableReplicaAutoScalingOutput = Shapes::StructureShape.new(name: 'DescribeTableReplicaAutoScalingOutput')
    DescribeTimeToLiveInput = Shapes::StructureShape.new(name: 'DescribeTimeToLiveInput')
    DescribeTimeToLiveOutput = Shapes::StructureShape.new(name: 'DescribeTimeToLiveOutput')
    Double = Shapes::FloatShape.new(name: 'Double')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    Endpoints = Shapes::ListShape.new(name: 'Endpoints')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExceptionDescription = Shapes::StringShape.new(name: 'ExceptionDescription')
    ExceptionName = Shapes::StringShape.new(name: 'ExceptionName')
    ExpectedAttributeMap = Shapes::MapShape.new(name: 'ExpectedAttributeMap')
    ExpectedAttributeValue = Shapes::StructureShape.new(name: 'ExpectedAttributeValue')
    ExpressionAttributeNameMap = Shapes::MapShape.new(name: 'ExpressionAttributeNameMap')
    ExpressionAttributeNameVariable = Shapes::StringShape.new(name: 'ExpressionAttributeNameVariable')
    ExpressionAttributeValueMap = Shapes::MapShape.new(name: 'ExpressionAttributeValueMap')
    ExpressionAttributeValueVariable = Shapes::StringShape.new(name: 'ExpressionAttributeValueVariable')
    FailureException = Shapes::StructureShape.new(name: 'FailureException')
    FilterConditionMap = Shapes::MapShape.new(name: 'FilterConditionMap')
    Get = Shapes::StructureShape.new(name: 'Get')
    GetItemInput = Shapes::StructureShape.new(name: 'GetItemInput')
    GetItemOutput = Shapes::StructureShape.new(name: 'GetItemOutput')
    GlobalSecondaryIndex = Shapes::StructureShape.new(name: 'GlobalSecondaryIndex')
    GlobalSecondaryIndexAutoScalingUpdate = Shapes::StructureShape.new(name: 'GlobalSecondaryIndexAutoScalingUpdate')
    GlobalSecondaryIndexAutoScalingUpdateList = Shapes::ListShape.new(name: 'GlobalSecondaryIndexAutoScalingUpdateList')
    GlobalSecondaryIndexDescription = Shapes::StructureShape.new(name: 'GlobalSecondaryIndexDescription')
    GlobalSecondaryIndexDescriptionList = Shapes::ListShape.new(name: 'GlobalSecondaryIndexDescriptionList')
    GlobalSecondaryIndexInfo = Shapes::StructureShape.new(name: 'GlobalSecondaryIndexInfo')
    GlobalSecondaryIndexList = Shapes::ListShape.new(name: 'GlobalSecondaryIndexList')
    GlobalSecondaryIndexUpdate = Shapes::StructureShape.new(name: 'GlobalSecondaryIndexUpdate')
    GlobalSecondaryIndexUpdateList = Shapes::ListShape.new(name: 'GlobalSecondaryIndexUpdateList')
    GlobalSecondaryIndexes = Shapes::ListShape.new(name: 'GlobalSecondaryIndexes')
    GlobalTable = Shapes::StructureShape.new(name: 'GlobalTable')
    GlobalTableAlreadyExistsException = Shapes::StructureShape.new(name: 'GlobalTableAlreadyExistsException')
    GlobalTableArnString = Shapes::StringShape.new(name: 'GlobalTableArnString')
    GlobalTableDescription = Shapes::StructureShape.new(name: 'GlobalTableDescription')
    GlobalTableGlobalSecondaryIndexSettingsUpdate = Shapes::StructureShape.new(name: 'GlobalTableGlobalSecondaryIndexSettingsUpdate')
    GlobalTableGlobalSecondaryIndexSettingsUpdateList = Shapes::ListShape.new(name: 'GlobalTableGlobalSecondaryIndexSettingsUpdateList')
    GlobalTableList = Shapes::ListShape.new(name: 'GlobalTableList')
    GlobalTableNotFoundException = Shapes::StructureShape.new(name: 'GlobalTableNotFoundException')
    GlobalTableStatus = Shapes::StringShape.new(name: 'GlobalTableStatus')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    IndexName = Shapes::StringShape.new(name: 'IndexName')
    IndexNotFoundException = Shapes::StructureShape.new(name: 'IndexNotFoundException')
    IndexStatus = Shapes::StringShape.new(name: 'IndexStatus')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerObject = Shapes::IntegerShape.new(name: 'IntegerObject')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidRestoreTimeException = Shapes::StructureShape.new(name: 'InvalidRestoreTimeException')
    ItemCollectionKeyAttributeMap = Shapes::MapShape.new(name: 'ItemCollectionKeyAttributeMap')
    ItemCollectionMetrics = Shapes::StructureShape.new(name: 'ItemCollectionMetrics')
    ItemCollectionMetricsMultiple = Shapes::ListShape.new(name: 'ItemCollectionMetricsMultiple')
    ItemCollectionMetricsPerTable = Shapes::MapShape.new(name: 'ItemCollectionMetricsPerTable')
    ItemCollectionSizeEstimateBound = Shapes::FloatShape.new(name: 'ItemCollectionSizeEstimateBound')
    ItemCollectionSizeEstimateRange = Shapes::ListShape.new(name: 'ItemCollectionSizeEstimateRange')
    ItemCollectionSizeLimitExceededException = Shapes::StructureShape.new(name: 'ItemCollectionSizeLimitExceededException')
    ItemCount = Shapes::IntegerShape.new(name: 'ItemCount')
    ItemList = Shapes::ListShape.new(name: 'ItemList')
    ItemResponse = Shapes::StructureShape.new(name: 'ItemResponse')
    ItemResponseList = Shapes::ListShape.new(name: 'ItemResponseList')
    KMSMasterKeyArn = Shapes::StringShape.new(name: 'KMSMasterKeyArn')
    KMSMasterKeyId = Shapes::StringShape.new(name: 'KMSMasterKeyId')
    Key = Shapes::MapShape.new(name: 'Key')
    KeyConditions = Shapes::MapShape.new(name: 'KeyConditions')
    KeyExpression = Shapes::StringShape.new(name: 'KeyExpression')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    KeySchema = Shapes::ListShape.new(name: 'KeySchema')
    KeySchemaAttributeName = Shapes::StringShape.new(name: 'KeySchemaAttributeName')
    KeySchemaElement = Shapes::StructureShape.new(name: 'KeySchemaElement')
    KeyType = Shapes::StringShape.new(name: 'KeyType')
    KeysAndAttributes = Shapes::StructureShape.new(name: 'KeysAndAttributes')
    LastUpdateDateTime = Shapes::TimestampShape.new(name: 'LastUpdateDateTime')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAttributeValue = Shapes::ListShape.new(name: 'ListAttributeValue')
    ListBackupsInput = Shapes::StructureShape.new(name: 'ListBackupsInput')
    ListBackupsOutput = Shapes::StructureShape.new(name: 'ListBackupsOutput')
    ListContributorInsightsInput = Shapes::StructureShape.new(name: 'ListContributorInsightsInput')
    ListContributorInsightsLimit = Shapes::IntegerShape.new(name: 'ListContributorInsightsLimit')
    ListContributorInsightsOutput = Shapes::StructureShape.new(name: 'ListContributorInsightsOutput')
    ListGlobalTablesInput = Shapes::StructureShape.new(name: 'ListGlobalTablesInput')
    ListGlobalTablesOutput = Shapes::StructureShape.new(name: 'ListGlobalTablesOutput')
    ListTablesInput = Shapes::StructureShape.new(name: 'ListTablesInput')
    ListTablesInputLimit = Shapes::IntegerShape.new(name: 'ListTablesInputLimit')
    ListTablesOutput = Shapes::StructureShape.new(name: 'ListTablesOutput')
    ListTagsOfResourceInput = Shapes::StructureShape.new(name: 'ListTagsOfResourceInput')
    ListTagsOfResourceOutput = Shapes::StructureShape.new(name: 'ListTagsOfResourceOutput')
    LocalSecondaryIndex = Shapes::StructureShape.new(name: 'LocalSecondaryIndex')
    LocalSecondaryIndexDescription = Shapes::StructureShape.new(name: 'LocalSecondaryIndexDescription')
    LocalSecondaryIndexDescriptionList = Shapes::ListShape.new(name: 'LocalSecondaryIndexDescriptionList')
    LocalSecondaryIndexInfo = Shapes::StructureShape.new(name: 'LocalSecondaryIndexInfo')
    LocalSecondaryIndexList = Shapes::ListShape.new(name: 'LocalSecondaryIndexList')
    LocalSecondaryIndexes = Shapes::ListShape.new(name: 'LocalSecondaryIndexes')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MapAttributeValue = Shapes::MapShape.new(name: 'MapAttributeValue')
    NextTokenString = Shapes::StringShape.new(name: 'NextTokenString')
    NonKeyAttributeName = Shapes::StringShape.new(name: 'NonKeyAttributeName')
    NonKeyAttributeNameList = Shapes::ListShape.new(name: 'NonKeyAttributeNameList')
    NonNegativeLongObject = Shapes::IntegerShape.new(name: 'NonNegativeLongObject')
    NullAttributeValue = Shapes::BooleanShape.new(name: 'NullAttributeValue')
    NumberAttributeValue = Shapes::StringShape.new(name: 'NumberAttributeValue')
    NumberSetAttributeValue = Shapes::ListShape.new(name: 'NumberSetAttributeValue')
    PointInTimeRecoveryDescription = Shapes::StructureShape.new(name: 'PointInTimeRecoveryDescription')
    PointInTimeRecoverySpecification = Shapes::StructureShape.new(name: 'PointInTimeRecoverySpecification')
    PointInTimeRecoveryStatus = Shapes::StringShape.new(name: 'PointInTimeRecoveryStatus')
    PointInTimeRecoveryUnavailableException = Shapes::StructureShape.new(name: 'PointInTimeRecoveryUnavailableException')
    PositiveIntegerObject = Shapes::IntegerShape.new(name: 'PositiveIntegerObject')
    PositiveLongObject = Shapes::IntegerShape.new(name: 'PositiveLongObject')
    Projection = Shapes::StructureShape.new(name: 'Projection')
    ProjectionExpression = Shapes::StringShape.new(name: 'ProjectionExpression')
    ProjectionType = Shapes::StringShape.new(name: 'ProjectionType')
    ProvisionedThroughput = Shapes::StructureShape.new(name: 'ProvisionedThroughput')
    ProvisionedThroughputDescription = Shapes::StructureShape.new(name: 'ProvisionedThroughputDescription')
    ProvisionedThroughputExceededException = Shapes::StructureShape.new(name: 'ProvisionedThroughputExceededException')
    ProvisionedThroughputOverride = Shapes::StructureShape.new(name: 'ProvisionedThroughputOverride')
    Put = Shapes::StructureShape.new(name: 'Put')
    PutItemInput = Shapes::StructureShape.new(name: 'PutItemInput')
    PutItemInputAttributeMap = Shapes::MapShape.new(name: 'PutItemInputAttributeMap')
    PutItemOutput = Shapes::StructureShape.new(name: 'PutItemOutput')
    PutRequest = Shapes::StructureShape.new(name: 'PutRequest')
    QueryInput = Shapes::StructureShape.new(name: 'QueryInput')
    QueryOutput = Shapes::StructureShape.new(name: 'QueryOutput')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    Replica = Shapes::StructureShape.new(name: 'Replica')
    ReplicaAlreadyExistsException = Shapes::StructureShape.new(name: 'ReplicaAlreadyExistsException')
    ReplicaAutoScalingDescription = Shapes::StructureShape.new(name: 'ReplicaAutoScalingDescription')
    ReplicaAutoScalingDescriptionList = Shapes::ListShape.new(name: 'ReplicaAutoScalingDescriptionList')
    ReplicaAutoScalingUpdate = Shapes::StructureShape.new(name: 'ReplicaAutoScalingUpdate')
    ReplicaAutoScalingUpdateList = Shapes::ListShape.new(name: 'ReplicaAutoScalingUpdateList')
    ReplicaDescription = Shapes::StructureShape.new(name: 'ReplicaDescription')
    ReplicaDescriptionList = Shapes::ListShape.new(name: 'ReplicaDescriptionList')
    ReplicaGlobalSecondaryIndex = Shapes::StructureShape.new(name: 'ReplicaGlobalSecondaryIndex')
    ReplicaGlobalSecondaryIndexAutoScalingDescription = Shapes::StructureShape.new(name: 'ReplicaGlobalSecondaryIndexAutoScalingDescription')
    ReplicaGlobalSecondaryIndexAutoScalingDescriptionList = Shapes::ListShape.new(name: 'ReplicaGlobalSecondaryIndexAutoScalingDescriptionList')
    ReplicaGlobalSecondaryIndexAutoScalingUpdate = Shapes::StructureShape.new(name: 'ReplicaGlobalSecondaryIndexAutoScalingUpdate')
    ReplicaGlobalSecondaryIndexAutoScalingUpdateList = Shapes::ListShape.new(name: 'ReplicaGlobalSecondaryIndexAutoScalingUpdateList')
    ReplicaGlobalSecondaryIndexDescription = Shapes::StructureShape.new(name: 'ReplicaGlobalSecondaryIndexDescription')
    ReplicaGlobalSecondaryIndexDescriptionList = Shapes::ListShape.new(name: 'ReplicaGlobalSecondaryIndexDescriptionList')
    ReplicaGlobalSecondaryIndexList = Shapes::ListShape.new(name: 'ReplicaGlobalSecondaryIndexList')
    ReplicaGlobalSecondaryIndexSettingsDescription = Shapes::StructureShape.new(name: 'ReplicaGlobalSecondaryIndexSettingsDescription')
    ReplicaGlobalSecondaryIndexSettingsDescriptionList = Shapes::ListShape.new(name: 'ReplicaGlobalSecondaryIndexSettingsDescriptionList')
    ReplicaGlobalSecondaryIndexSettingsUpdate = Shapes::StructureShape.new(name: 'ReplicaGlobalSecondaryIndexSettingsUpdate')
    ReplicaGlobalSecondaryIndexSettingsUpdateList = Shapes::ListShape.new(name: 'ReplicaGlobalSecondaryIndexSettingsUpdateList')
    ReplicaList = Shapes::ListShape.new(name: 'ReplicaList')
    ReplicaNotFoundException = Shapes::StructureShape.new(name: 'ReplicaNotFoundException')
    ReplicaSettingsDescription = Shapes::StructureShape.new(name: 'ReplicaSettingsDescription')
    ReplicaSettingsDescriptionList = Shapes::ListShape.new(name: 'ReplicaSettingsDescriptionList')
    ReplicaSettingsUpdate = Shapes::StructureShape.new(name: 'ReplicaSettingsUpdate')
    ReplicaSettingsUpdateList = Shapes::ListShape.new(name: 'ReplicaSettingsUpdateList')
    ReplicaStatus = Shapes::StringShape.new(name: 'ReplicaStatus')
    ReplicaStatusDescription = Shapes::StringShape.new(name: 'ReplicaStatusDescription')
    ReplicaStatusPercentProgress = Shapes::StringShape.new(name: 'ReplicaStatusPercentProgress')
    ReplicaUpdate = Shapes::StructureShape.new(name: 'ReplicaUpdate')
    ReplicaUpdateList = Shapes::ListShape.new(name: 'ReplicaUpdateList')
    ReplicationGroupUpdate = Shapes::StructureShape.new(name: 'ReplicationGroupUpdate')
    ReplicationGroupUpdateList = Shapes::ListShape.new(name: 'ReplicationGroupUpdateList')
    RequestLimitExceeded = Shapes::StructureShape.new(name: 'RequestLimitExceeded')
    ResourceArnString = Shapes::StringShape.new(name: 'ResourceArnString')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RestoreInProgress = Shapes::BooleanShape.new(name: 'RestoreInProgress')
    RestoreSummary = Shapes::StructureShape.new(name: 'RestoreSummary')
    RestoreTableFromBackupInput = Shapes::StructureShape.new(name: 'RestoreTableFromBackupInput')
    RestoreTableFromBackupOutput = Shapes::StructureShape.new(name: 'RestoreTableFromBackupOutput')
    RestoreTableToPointInTimeInput = Shapes::StructureShape.new(name: 'RestoreTableToPointInTimeInput')
    RestoreTableToPointInTimeOutput = Shapes::StructureShape.new(name: 'RestoreTableToPointInTimeOutput')
    ReturnConsumedCapacity = Shapes::StringShape.new(name: 'ReturnConsumedCapacity')
    ReturnItemCollectionMetrics = Shapes::StringShape.new(name: 'ReturnItemCollectionMetrics')
    ReturnValue = Shapes::StringShape.new(name: 'ReturnValue')
    ReturnValuesOnConditionCheckFailure = Shapes::StringShape.new(name: 'ReturnValuesOnConditionCheckFailure')
    SSEDescription = Shapes::StructureShape.new(name: 'SSEDescription')
    SSEEnabled = Shapes::BooleanShape.new(name: 'SSEEnabled')
    SSESpecification = Shapes::StructureShape.new(name: 'SSESpecification')
    SSEStatus = Shapes::StringShape.new(name: 'SSEStatus')
    SSEType = Shapes::StringShape.new(name: 'SSEType')
    ScalarAttributeType = Shapes::StringShape.new(name: 'ScalarAttributeType')
    ScanInput = Shapes::StructureShape.new(name: 'ScanInput')
    ScanOutput = Shapes::StructureShape.new(name: 'ScanOutput')
    ScanSegment = Shapes::IntegerShape.new(name: 'ScanSegment')
    ScanTotalSegments = Shapes::IntegerShape.new(name: 'ScanTotalSegments')
    SecondaryIndexesCapacityMap = Shapes::MapShape.new(name: 'SecondaryIndexesCapacityMap')
    Select = Shapes::StringShape.new(name: 'Select')
    SourceTableDetails = Shapes::StructureShape.new(name: 'SourceTableDetails')
    SourceTableFeatureDetails = Shapes::StructureShape.new(name: 'SourceTableFeatureDetails')
    StreamArn = Shapes::StringShape.new(name: 'StreamArn')
    StreamEnabled = Shapes::BooleanShape.new(name: 'StreamEnabled')
    StreamSpecification = Shapes::StructureShape.new(name: 'StreamSpecification')
    StreamViewType = Shapes::StringShape.new(name: 'StreamViewType')
    String = Shapes::StringShape.new(name: 'String')
    StringAttributeValue = Shapes::StringShape.new(name: 'StringAttributeValue')
    StringSetAttributeValue = Shapes::ListShape.new(name: 'StringSetAttributeValue')
    TableAlreadyExistsException = Shapes::StructureShape.new(name: 'TableAlreadyExistsException')
    TableArn = Shapes::StringShape.new(name: 'TableArn')
    TableAutoScalingDescription = Shapes::StructureShape.new(name: 'TableAutoScalingDescription')
    TableCreationDateTime = Shapes::TimestampShape.new(name: 'TableCreationDateTime')
    TableDescription = Shapes::StructureShape.new(name: 'TableDescription')
    TableId = Shapes::StringShape.new(name: 'TableId')
    TableInUseException = Shapes::StructureShape.new(name: 'TableInUseException')
    TableName = Shapes::StringShape.new(name: 'TableName')
    TableNameList = Shapes::ListShape.new(name: 'TableNameList')
    TableNotFoundException = Shapes::StructureShape.new(name: 'TableNotFoundException')
    TableStatus = Shapes::StringShape.new(name: 'TableStatus')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagKeyString = Shapes::StringShape.new(name: 'TagKeyString')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagValueString = Shapes::StringShape.new(name: 'TagValueString')
    TimeRangeLowerBound = Shapes::TimestampShape.new(name: 'TimeRangeLowerBound')
    TimeRangeUpperBound = Shapes::TimestampShape.new(name: 'TimeRangeUpperBound')
    TimeToLiveAttributeName = Shapes::StringShape.new(name: 'TimeToLiveAttributeName')
    TimeToLiveDescription = Shapes::StructureShape.new(name: 'TimeToLiveDescription')
    TimeToLiveEnabled = Shapes::BooleanShape.new(name: 'TimeToLiveEnabled')
    TimeToLiveSpecification = Shapes::StructureShape.new(name: 'TimeToLiveSpecification')
    TimeToLiveStatus = Shapes::StringShape.new(name: 'TimeToLiveStatus')
    TransactGetItem = Shapes::StructureShape.new(name: 'TransactGetItem')
    TransactGetItemList = Shapes::ListShape.new(name: 'TransactGetItemList')
    TransactGetItemsInput = Shapes::StructureShape.new(name: 'TransactGetItemsInput')
    TransactGetItemsOutput = Shapes::StructureShape.new(name: 'TransactGetItemsOutput')
    TransactWriteItem = Shapes::StructureShape.new(name: 'TransactWriteItem')
    TransactWriteItemList = Shapes::ListShape.new(name: 'TransactWriteItemList')
    TransactWriteItemsInput = Shapes::StructureShape.new(name: 'TransactWriteItemsInput')
    TransactWriteItemsOutput = Shapes::StructureShape.new(name: 'TransactWriteItemsOutput')
    TransactionCanceledException = Shapes::StructureShape.new(name: 'TransactionCanceledException')
    TransactionConflictException = Shapes::StructureShape.new(name: 'TransactionConflictException')
    TransactionInProgressException = Shapes::StructureShape.new(name: 'TransactionInProgressException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    Update = Shapes::StructureShape.new(name: 'Update')
    UpdateContinuousBackupsInput = Shapes::StructureShape.new(name: 'UpdateContinuousBackupsInput')
    UpdateContinuousBackupsOutput = Shapes::StructureShape.new(name: 'UpdateContinuousBackupsOutput')
    UpdateContributorInsightsInput = Shapes::StructureShape.new(name: 'UpdateContributorInsightsInput')
    UpdateContributorInsightsOutput = Shapes::StructureShape.new(name: 'UpdateContributorInsightsOutput')
    UpdateExpression = Shapes::StringShape.new(name: 'UpdateExpression')
    UpdateGlobalSecondaryIndexAction = Shapes::StructureShape.new(name: 'UpdateGlobalSecondaryIndexAction')
    UpdateGlobalTableInput = Shapes::StructureShape.new(name: 'UpdateGlobalTableInput')
    UpdateGlobalTableOutput = Shapes::StructureShape.new(name: 'UpdateGlobalTableOutput')
    UpdateGlobalTableSettingsInput = Shapes::StructureShape.new(name: 'UpdateGlobalTableSettingsInput')
    UpdateGlobalTableSettingsOutput = Shapes::StructureShape.new(name: 'UpdateGlobalTableSettingsOutput')
    UpdateItemInput = Shapes::StructureShape.new(name: 'UpdateItemInput')
    UpdateItemOutput = Shapes::StructureShape.new(name: 'UpdateItemOutput')
    UpdateReplicationGroupMemberAction = Shapes::StructureShape.new(name: 'UpdateReplicationGroupMemberAction')
    UpdateTableInput = Shapes::StructureShape.new(name: 'UpdateTableInput')
    UpdateTableOutput = Shapes::StructureShape.new(name: 'UpdateTableOutput')
    UpdateTableReplicaAutoScalingInput = Shapes::StructureShape.new(name: 'UpdateTableReplicaAutoScalingInput')
    UpdateTableReplicaAutoScalingOutput = Shapes::StructureShape.new(name: 'UpdateTableReplicaAutoScalingOutput')
    UpdateTimeToLiveInput = Shapes::StructureShape.new(name: 'UpdateTimeToLiveInput')
    UpdateTimeToLiveOutput = Shapes::StructureShape.new(name: 'UpdateTimeToLiveOutput')
    WriteRequest = Shapes::StructureShape.new(name: 'WriteRequest')
    WriteRequests = Shapes::ListShape.new(name: 'WriteRequests')

    ArchivalSummary.add_member(:archival_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "ArchivalDateTime"))
    ArchivalSummary.add_member(:archival_reason, Shapes::ShapeRef.new(shape: ArchivalReason, location_name: "ArchivalReason"))
    ArchivalSummary.add_member(:archival_backup_arn, Shapes::ShapeRef.new(shape: BackupArn, location_name: "ArchivalBackupArn"))
    ArchivalSummary.struct_class = Types::ArchivalSummary

    AttributeDefinition.add_member(:attribute_name, Shapes::ShapeRef.new(shape: KeySchemaAttributeName, required: true, location_name: "AttributeName"))
    AttributeDefinition.add_member(:attribute_type, Shapes::ShapeRef.new(shape: ScalarAttributeType, required: true, location_name: "AttributeType"))
    AttributeDefinition.struct_class = Types::AttributeDefinition

    AttributeDefinitions.member = Shapes::ShapeRef.new(shape: AttributeDefinition)

    AttributeMap.key = Shapes::ShapeRef.new(shape: AttributeName)
    AttributeMap.value = Shapes::ShapeRef.new(shape: AttributeValue)

    AttributeNameList.member = Shapes::ShapeRef.new(shape: AttributeName)

    AttributeUpdates.key = Shapes::ShapeRef.new(shape: AttributeName)
    AttributeUpdates.value = Shapes::ShapeRef.new(shape: AttributeValueUpdate)

    AttributeValue.add_member(:s, Shapes::ShapeRef.new(shape: StringAttributeValue, location_name: "S"))
    AttributeValue.add_member(:n, Shapes::ShapeRef.new(shape: NumberAttributeValue, location_name: "N"))
    AttributeValue.add_member(:b, Shapes::ShapeRef.new(shape: BinaryAttributeValue, location_name: "B"))
    AttributeValue.add_member(:ss, Shapes::ShapeRef.new(shape: StringSetAttributeValue, location_name: "SS"))
    AttributeValue.add_member(:ns, Shapes::ShapeRef.new(shape: NumberSetAttributeValue, location_name: "NS"))
    AttributeValue.add_member(:bs, Shapes::ShapeRef.new(shape: BinarySetAttributeValue, location_name: "BS"))
    AttributeValue.add_member(:m, Shapes::ShapeRef.new(shape: MapAttributeValue, location_name: "M"))
    AttributeValue.add_member(:l, Shapes::ShapeRef.new(shape: ListAttributeValue, location_name: "L"))
    AttributeValue.add_member(:null, Shapes::ShapeRef.new(shape: NullAttributeValue, location_name: "NULL"))
    AttributeValue.add_member(:bool, Shapes::ShapeRef.new(shape: BooleanAttributeValue, location_name: "BOOL"))
    AttributeValue.struct_class = Types::AttributeValue

    AttributeValueList.member = Shapes::ShapeRef.new(shape: AttributeValue)

    AttributeValueUpdate.add_member(:value, Shapes::ShapeRef.new(shape: AttributeValue, location_name: "Value"))
    AttributeValueUpdate.add_member(:action, Shapes::ShapeRef.new(shape: AttributeAction, location_name: "Action"))
    AttributeValueUpdate.struct_class = Types::AttributeValueUpdate

    AutoScalingPolicyDescription.add_member(:policy_name, Shapes::ShapeRef.new(shape: AutoScalingPolicyName, location_name: "PolicyName"))
    AutoScalingPolicyDescription.add_member(:target_tracking_scaling_policy_configuration, Shapes::ShapeRef.new(shape: AutoScalingTargetTrackingScalingPolicyConfigurationDescription, location_name: "TargetTrackingScalingPolicyConfiguration"))
    AutoScalingPolicyDescription.struct_class = Types::AutoScalingPolicyDescription

    AutoScalingPolicyDescriptionList.member = Shapes::ShapeRef.new(shape: AutoScalingPolicyDescription)

    AutoScalingPolicyUpdate.add_member(:policy_name, Shapes::ShapeRef.new(shape: AutoScalingPolicyName, location_name: "PolicyName"))
    AutoScalingPolicyUpdate.add_member(:target_tracking_scaling_policy_configuration, Shapes::ShapeRef.new(shape: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate, required: true, location_name: "TargetTrackingScalingPolicyConfiguration"))
    AutoScalingPolicyUpdate.struct_class = Types::AutoScalingPolicyUpdate

    AutoScalingSettingsDescription.add_member(:minimum_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "MinimumUnits"))
    AutoScalingSettingsDescription.add_member(:maximum_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "MaximumUnits"))
    AutoScalingSettingsDescription.add_member(:auto_scaling_disabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "AutoScalingDisabled"))
    AutoScalingSettingsDescription.add_member(:auto_scaling_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "AutoScalingRoleArn"))
    AutoScalingSettingsDescription.add_member(:scaling_policies, Shapes::ShapeRef.new(shape: AutoScalingPolicyDescriptionList, location_name: "ScalingPolicies"))
    AutoScalingSettingsDescription.struct_class = Types::AutoScalingSettingsDescription

    AutoScalingSettingsUpdate.add_member(:minimum_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "MinimumUnits"))
    AutoScalingSettingsUpdate.add_member(:maximum_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "MaximumUnits"))
    AutoScalingSettingsUpdate.add_member(:auto_scaling_disabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "AutoScalingDisabled"))
    AutoScalingSettingsUpdate.add_member(:auto_scaling_role_arn, Shapes::ShapeRef.new(shape: AutoScalingRoleArn, location_name: "AutoScalingRoleArn"))
    AutoScalingSettingsUpdate.add_member(:scaling_policy_update, Shapes::ShapeRef.new(shape: AutoScalingPolicyUpdate, location_name: "ScalingPolicyUpdate"))
    AutoScalingSettingsUpdate.struct_class = Types::AutoScalingSettingsUpdate

    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.add_member(:disable_scale_in, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "DisableScaleIn"))
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.add_member(:scale_in_cooldown, Shapes::ShapeRef.new(shape: IntegerObject, location_name: "ScaleInCooldown"))
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.add_member(:scale_out_cooldown, Shapes::ShapeRef.new(shape: IntegerObject, location_name: "ScaleOutCooldown"))
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.add_member(:target_value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "TargetValue"))
    AutoScalingTargetTrackingScalingPolicyConfigurationDescription.struct_class = Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription

    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.add_member(:disable_scale_in, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "DisableScaleIn"))
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.add_member(:scale_in_cooldown, Shapes::ShapeRef.new(shape: IntegerObject, location_name: "ScaleInCooldown"))
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.add_member(:scale_out_cooldown, Shapes::ShapeRef.new(shape: IntegerObject, location_name: "ScaleOutCooldown"))
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.add_member(:target_value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "TargetValue"))
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.struct_class = Types::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate

    BackupDescription.add_member(:backup_details, Shapes::ShapeRef.new(shape: BackupDetails, location_name: "BackupDetails"))
    BackupDescription.add_member(:source_table_details, Shapes::ShapeRef.new(shape: SourceTableDetails, location_name: "SourceTableDetails"))
    BackupDescription.add_member(:source_table_feature_details, Shapes::ShapeRef.new(shape: SourceTableFeatureDetails, location_name: "SourceTableFeatureDetails"))
    BackupDescription.struct_class = Types::BackupDescription

    BackupDetails.add_member(:backup_arn, Shapes::ShapeRef.new(shape: BackupArn, required: true, location_name: "BackupArn"))
    BackupDetails.add_member(:backup_name, Shapes::ShapeRef.new(shape: BackupName, required: true, location_name: "BackupName"))
    BackupDetails.add_member(:backup_size_bytes, Shapes::ShapeRef.new(shape: BackupSizeBytes, location_name: "BackupSizeBytes"))
    BackupDetails.add_member(:backup_status, Shapes::ShapeRef.new(shape: BackupStatus, required: true, location_name: "BackupStatus"))
    BackupDetails.add_member(:backup_type, Shapes::ShapeRef.new(shape: BackupType, required: true, location_name: "BackupType"))
    BackupDetails.add_member(:backup_creation_date_time, Shapes::ShapeRef.new(shape: BackupCreationDateTime, required: true, location_name: "BackupCreationDateTime"))
    BackupDetails.add_member(:backup_expiry_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "BackupExpiryDateTime"))
    BackupDetails.struct_class = Types::BackupDetails

    BackupInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BackupInUseException.struct_class = Types::BackupInUseException

    BackupNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BackupNotFoundException.struct_class = Types::BackupNotFoundException

    BackupSummaries.member = Shapes::ShapeRef.new(shape: BackupSummary)

    BackupSummary.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    BackupSummary.add_member(:table_id, Shapes::ShapeRef.new(shape: TableId, location_name: "TableId"))
    BackupSummary.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableArn, location_name: "TableArn"))
    BackupSummary.add_member(:backup_arn, Shapes::ShapeRef.new(shape: BackupArn, location_name: "BackupArn"))
    BackupSummary.add_member(:backup_name, Shapes::ShapeRef.new(shape: BackupName, location_name: "BackupName"))
    BackupSummary.add_member(:backup_creation_date_time, Shapes::ShapeRef.new(shape: BackupCreationDateTime, location_name: "BackupCreationDateTime"))
    BackupSummary.add_member(:backup_expiry_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "BackupExpiryDateTime"))
    BackupSummary.add_member(:backup_status, Shapes::ShapeRef.new(shape: BackupStatus, location_name: "BackupStatus"))
    BackupSummary.add_member(:backup_type, Shapes::ShapeRef.new(shape: BackupType, location_name: "BackupType"))
    BackupSummary.add_member(:backup_size_bytes, Shapes::ShapeRef.new(shape: BackupSizeBytes, location_name: "BackupSizeBytes"))
    BackupSummary.struct_class = Types::BackupSummary

    BatchGetItemInput.add_member(:request_items, Shapes::ShapeRef.new(shape: BatchGetRequestMap, required: true, location_name: "RequestItems"))
    BatchGetItemInput.add_member(:return_consumed_capacity, Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    BatchGetItemInput.struct_class = Types::BatchGetItemInput

    BatchGetItemOutput.add_member(:responses, Shapes::ShapeRef.new(shape: BatchGetResponseMap, location_name: "Responses"))
    BatchGetItemOutput.add_member(:unprocessed_keys, Shapes::ShapeRef.new(shape: BatchGetRequestMap, location_name: "UnprocessedKeys"))
    BatchGetItemOutput.add_member(:consumed_capacity, Shapes::ShapeRef.new(shape: ConsumedCapacityMultiple, location_name: "ConsumedCapacity"))
    BatchGetItemOutput.struct_class = Types::BatchGetItemOutput

    BatchGetRequestMap.key = Shapes::ShapeRef.new(shape: TableName)
    BatchGetRequestMap.value = Shapes::ShapeRef.new(shape: KeysAndAttributes)

    BatchGetResponseMap.key = Shapes::ShapeRef.new(shape: TableName)
    BatchGetResponseMap.value = Shapes::ShapeRef.new(shape: ItemList)

    BatchWriteItemInput.add_member(:request_items, Shapes::ShapeRef.new(shape: BatchWriteItemRequestMap, required: true, location_name: "RequestItems"))
    BatchWriteItemInput.add_member(:return_consumed_capacity, Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    BatchWriteItemInput.add_member(:return_item_collection_metrics, Shapes::ShapeRef.new(shape: ReturnItemCollectionMetrics, location_name: "ReturnItemCollectionMetrics"))
    BatchWriteItemInput.struct_class = Types::BatchWriteItemInput

    BatchWriteItemOutput.add_member(:unprocessed_items, Shapes::ShapeRef.new(shape: BatchWriteItemRequestMap, location_name: "UnprocessedItems"))
    BatchWriteItemOutput.add_member(:item_collection_metrics, Shapes::ShapeRef.new(shape: ItemCollectionMetricsPerTable, location_name: "ItemCollectionMetrics"))
    BatchWriteItemOutput.add_member(:consumed_capacity, Shapes::ShapeRef.new(shape: ConsumedCapacityMultiple, location_name: "ConsumedCapacity"))
    BatchWriteItemOutput.struct_class = Types::BatchWriteItemOutput

    BatchWriteItemRequestMap.key = Shapes::ShapeRef.new(shape: TableName)
    BatchWriteItemRequestMap.value = Shapes::ShapeRef.new(shape: WriteRequests)

    BillingModeSummary.add_member(:billing_mode, Shapes::ShapeRef.new(shape: BillingMode, location_name: "BillingMode"))
    BillingModeSummary.add_member(:last_update_to_pay_per_request_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdateToPayPerRequestDateTime"))
    BillingModeSummary.struct_class = Types::BillingModeSummary

    BinarySetAttributeValue.member = Shapes::ShapeRef.new(shape: BinaryAttributeValue)

    CancellationReason.add_member(:item, Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Item"))
    CancellationReason.add_member(:code, Shapes::ShapeRef.new(shape: Code, location_name: "Code"))
    CancellationReason.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    CancellationReason.struct_class = Types::CancellationReason

    CancellationReasonList.member = Shapes::ShapeRef.new(shape: CancellationReason)

    Capacity.add_member(:read_capacity_units, Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "ReadCapacityUnits"))
    Capacity.add_member(:write_capacity_units, Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "WriteCapacityUnits"))
    Capacity.add_member(:capacity_units, Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "CapacityUnits"))
    Capacity.struct_class = Types::Capacity

    Condition.add_member(:attribute_value_list, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "AttributeValueList"))
    Condition.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    Condition.struct_class = Types::Condition

    ConditionCheck.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    ConditionCheck.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    ConditionCheck.add_member(:condition_expression, Shapes::ShapeRef.new(shape: ConditionExpression, required: true, location_name: "ConditionExpression"))
    ConditionCheck.add_member(:expression_attribute_names, Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    ConditionCheck.add_member(:expression_attribute_values, Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    ConditionCheck.add_member(:return_values_on_condition_check_failure, Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    ConditionCheck.struct_class = Types::ConditionCheck

    ConditionalCheckFailedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConditionalCheckFailedException.struct_class = Types::ConditionalCheckFailedException

    ConsumedCapacity.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    ConsumedCapacity.add_member(:capacity_units, Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "CapacityUnits"))
    ConsumedCapacity.add_member(:read_capacity_units, Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "ReadCapacityUnits"))
    ConsumedCapacity.add_member(:write_capacity_units, Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "WriteCapacityUnits"))
    ConsumedCapacity.add_member(:table, Shapes::ShapeRef.new(shape: Capacity, location_name: "Table"))
    ConsumedCapacity.add_member(:local_secondary_indexes, Shapes::ShapeRef.new(shape: SecondaryIndexesCapacityMap, location_name: "LocalSecondaryIndexes"))
    ConsumedCapacity.add_member(:global_secondary_indexes, Shapes::ShapeRef.new(shape: SecondaryIndexesCapacityMap, location_name: "GlobalSecondaryIndexes"))
    ConsumedCapacity.struct_class = Types::ConsumedCapacity

    ConsumedCapacityMultiple.member = Shapes::ShapeRef.new(shape: ConsumedCapacity)

    ContinuousBackupsDescription.add_member(:continuous_backups_status, Shapes::ShapeRef.new(shape: ContinuousBackupsStatus, required: true, location_name: "ContinuousBackupsStatus"))
    ContinuousBackupsDescription.add_member(:point_in_time_recovery_description, Shapes::ShapeRef.new(shape: PointInTimeRecoveryDescription, location_name: "PointInTimeRecoveryDescription"))
    ContinuousBackupsDescription.struct_class = Types::ContinuousBackupsDescription

    ContinuousBackupsUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ContinuousBackupsUnavailableException.struct_class = Types::ContinuousBackupsUnavailableException

    ContributorInsightsRuleList.member = Shapes::ShapeRef.new(shape: ContributorInsightsRule)

    ContributorInsightsSummaries.member = Shapes::ShapeRef.new(shape: ContributorInsightsSummary)

    ContributorInsightsSummary.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    ContributorInsightsSummary.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    ContributorInsightsSummary.add_member(:contributor_insights_status, Shapes::ShapeRef.new(shape: ContributorInsightsStatus, location_name: "ContributorInsightsStatus"))
    ContributorInsightsSummary.struct_class = Types::ContributorInsightsSummary

    CreateBackupInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    CreateBackupInput.add_member(:backup_name, Shapes::ShapeRef.new(shape: BackupName, required: true, location_name: "BackupName"))
    CreateBackupInput.struct_class = Types::CreateBackupInput

    CreateBackupOutput.add_member(:backup_details, Shapes::ShapeRef.new(shape: BackupDetails, location_name: "BackupDetails"))
    CreateBackupOutput.struct_class = Types::CreateBackupOutput

    CreateGlobalSecondaryIndexAction.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "IndexName"))
    CreateGlobalSecondaryIndexAction.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, required: true, location_name: "KeySchema"))
    CreateGlobalSecondaryIndexAction.add_member(:projection, Shapes::ShapeRef.new(shape: Projection, required: true, location_name: "Projection"))
    CreateGlobalSecondaryIndexAction.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput"))
    CreateGlobalSecondaryIndexAction.struct_class = Types::CreateGlobalSecondaryIndexAction

    CreateGlobalTableInput.add_member(:global_table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "GlobalTableName"))
    CreateGlobalTableInput.add_member(:replication_group, Shapes::ShapeRef.new(shape: ReplicaList, required: true, location_name: "ReplicationGroup"))
    CreateGlobalTableInput.struct_class = Types::CreateGlobalTableInput

    CreateGlobalTableOutput.add_member(:global_table_description, Shapes::ShapeRef.new(shape: GlobalTableDescription, location_name: "GlobalTableDescription"))
    CreateGlobalTableOutput.struct_class = Types::CreateGlobalTableOutput

    CreateReplicaAction.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "RegionName"))
    CreateReplicaAction.struct_class = Types::CreateReplicaAction

    CreateReplicationGroupMemberAction.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "RegionName"))
    CreateReplicationGroupMemberAction.add_member(:kms_master_key_id, Shapes::ShapeRef.new(shape: KMSMasterKeyId, location_name: "KMSMasterKeyId"))
    CreateReplicationGroupMemberAction.add_member(:provisioned_throughput_override, Shapes::ShapeRef.new(shape: ProvisionedThroughputOverride, location_name: "ProvisionedThroughputOverride"))
    CreateReplicationGroupMemberAction.add_member(:global_secondary_indexes, Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexes"))
    CreateReplicationGroupMemberAction.struct_class = Types::CreateReplicationGroupMemberAction

    CreateTableInput.add_member(:attribute_definitions, Shapes::ShapeRef.new(shape: AttributeDefinitions, required: true, location_name: "AttributeDefinitions"))
    CreateTableInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    CreateTableInput.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, required: true, location_name: "KeySchema"))
    CreateTableInput.add_member(:local_secondary_indexes, Shapes::ShapeRef.new(shape: LocalSecondaryIndexList, location_name: "LocalSecondaryIndexes"))
    CreateTableInput.add_member(:global_secondary_indexes, Shapes::ShapeRef.new(shape: GlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexes"))
    CreateTableInput.add_member(:billing_mode, Shapes::ShapeRef.new(shape: BillingMode, location_name: "BillingMode"))
    CreateTableInput.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput"))
    CreateTableInput.add_member(:stream_specification, Shapes::ShapeRef.new(shape: StreamSpecification, location_name: "StreamSpecification"))
    CreateTableInput.add_member(:sse_specification, Shapes::ShapeRef.new(shape: SSESpecification, location_name: "SSESpecification"))
    CreateTableInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTableInput.struct_class = Types::CreateTableInput

    CreateTableOutput.add_member(:table_description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "TableDescription"))
    CreateTableOutput.struct_class = Types::CreateTableOutput

    Delete.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    Delete.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    Delete.add_member(:condition_expression, Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "ConditionExpression"))
    Delete.add_member(:expression_attribute_names, Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    Delete.add_member(:expression_attribute_values, Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    Delete.add_member(:return_values_on_condition_check_failure, Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    Delete.struct_class = Types::Delete

    DeleteBackupInput.add_member(:backup_arn, Shapes::ShapeRef.new(shape: BackupArn, required: true, location_name: "BackupArn"))
    DeleteBackupInput.struct_class = Types::DeleteBackupInput

    DeleteBackupOutput.add_member(:backup_description, Shapes::ShapeRef.new(shape: BackupDescription, location_name: "BackupDescription"))
    DeleteBackupOutput.struct_class = Types::DeleteBackupOutput

    DeleteGlobalSecondaryIndexAction.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "IndexName"))
    DeleteGlobalSecondaryIndexAction.struct_class = Types::DeleteGlobalSecondaryIndexAction

    DeleteItemInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    DeleteItemInput.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    DeleteItemInput.add_member(:expected, Shapes::ShapeRef.new(shape: ExpectedAttributeMap, location_name: "Expected"))
    DeleteItemInput.add_member(:conditional_operator, Shapes::ShapeRef.new(shape: ConditionalOperator, location_name: "ConditionalOperator"))
    DeleteItemInput.add_member(:return_values, Shapes::ShapeRef.new(shape: ReturnValue, location_name: "ReturnValues"))
    DeleteItemInput.add_member(:return_consumed_capacity, Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    DeleteItemInput.add_member(:return_item_collection_metrics, Shapes::ShapeRef.new(shape: ReturnItemCollectionMetrics, location_name: "ReturnItemCollectionMetrics"))
    DeleteItemInput.add_member(:condition_expression, Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "ConditionExpression"))
    DeleteItemInput.add_member(:expression_attribute_names, Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    DeleteItemInput.add_member(:expression_attribute_values, Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    DeleteItemInput.struct_class = Types::DeleteItemInput

    DeleteItemOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Attributes"))
    DeleteItemOutput.add_member(:consumed_capacity, Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "ConsumedCapacity"))
    DeleteItemOutput.add_member(:item_collection_metrics, Shapes::ShapeRef.new(shape: ItemCollectionMetrics, location_name: "ItemCollectionMetrics"))
    DeleteItemOutput.struct_class = Types::DeleteItemOutput

    DeleteReplicaAction.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "RegionName"))
    DeleteReplicaAction.struct_class = Types::DeleteReplicaAction

    DeleteReplicationGroupMemberAction.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "RegionName"))
    DeleteReplicationGroupMemberAction.struct_class = Types::DeleteReplicationGroupMemberAction

    DeleteRequest.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    DeleteRequest.struct_class = Types::DeleteRequest

    DeleteTableInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    DeleteTableInput.struct_class = Types::DeleteTableInput

    DeleteTableOutput.add_member(:table_description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "TableDescription"))
    DeleteTableOutput.struct_class = Types::DeleteTableOutput

    DescribeBackupInput.add_member(:backup_arn, Shapes::ShapeRef.new(shape: BackupArn, required: true, location_name: "BackupArn"))
    DescribeBackupInput.struct_class = Types::DescribeBackupInput

    DescribeBackupOutput.add_member(:backup_description, Shapes::ShapeRef.new(shape: BackupDescription, location_name: "BackupDescription"))
    DescribeBackupOutput.struct_class = Types::DescribeBackupOutput

    DescribeContinuousBackupsInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    DescribeContinuousBackupsInput.struct_class = Types::DescribeContinuousBackupsInput

    DescribeContinuousBackupsOutput.add_member(:continuous_backups_description, Shapes::ShapeRef.new(shape: ContinuousBackupsDescription, location_name: "ContinuousBackupsDescription"))
    DescribeContinuousBackupsOutput.struct_class = Types::DescribeContinuousBackupsOutput

    DescribeContributorInsightsInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    DescribeContributorInsightsInput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    DescribeContributorInsightsInput.struct_class = Types::DescribeContributorInsightsInput

    DescribeContributorInsightsOutput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    DescribeContributorInsightsOutput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    DescribeContributorInsightsOutput.add_member(:contributor_insights_rule_list, Shapes::ShapeRef.new(shape: ContributorInsightsRuleList, location_name: "ContributorInsightsRuleList"))
    DescribeContributorInsightsOutput.add_member(:contributor_insights_status, Shapes::ShapeRef.new(shape: ContributorInsightsStatus, location_name: "ContributorInsightsStatus"))
    DescribeContributorInsightsOutput.add_member(:last_update_date_time, Shapes::ShapeRef.new(shape: LastUpdateDateTime, location_name: "LastUpdateDateTime"))
    DescribeContributorInsightsOutput.add_member(:failure_exception, Shapes::ShapeRef.new(shape: FailureException, location_name: "FailureException"))
    DescribeContributorInsightsOutput.struct_class = Types::DescribeContributorInsightsOutput

    DescribeEndpointsRequest.struct_class = Types::DescribeEndpointsRequest

    DescribeEndpointsResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: Endpoints, required: true, location_name: "Endpoints"))
    DescribeEndpointsResponse.struct_class = Types::DescribeEndpointsResponse

    DescribeGlobalTableInput.add_member(:global_table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "GlobalTableName"))
    DescribeGlobalTableInput.struct_class = Types::DescribeGlobalTableInput

    DescribeGlobalTableOutput.add_member(:global_table_description, Shapes::ShapeRef.new(shape: GlobalTableDescription, location_name: "GlobalTableDescription"))
    DescribeGlobalTableOutput.struct_class = Types::DescribeGlobalTableOutput

    DescribeGlobalTableSettingsInput.add_member(:global_table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "GlobalTableName"))
    DescribeGlobalTableSettingsInput.struct_class = Types::DescribeGlobalTableSettingsInput

    DescribeGlobalTableSettingsOutput.add_member(:global_table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "GlobalTableName"))
    DescribeGlobalTableSettingsOutput.add_member(:replica_settings, Shapes::ShapeRef.new(shape: ReplicaSettingsDescriptionList, location_name: "ReplicaSettings"))
    DescribeGlobalTableSettingsOutput.struct_class = Types::DescribeGlobalTableSettingsOutput

    DescribeLimitsInput.struct_class = Types::DescribeLimitsInput

    DescribeLimitsOutput.add_member(:account_max_read_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "AccountMaxReadCapacityUnits"))
    DescribeLimitsOutput.add_member(:account_max_write_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "AccountMaxWriteCapacityUnits"))
    DescribeLimitsOutput.add_member(:table_max_read_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "TableMaxReadCapacityUnits"))
    DescribeLimitsOutput.add_member(:table_max_write_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "TableMaxWriteCapacityUnits"))
    DescribeLimitsOutput.struct_class = Types::DescribeLimitsOutput

    DescribeTableInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    DescribeTableInput.struct_class = Types::DescribeTableInput

    DescribeTableOutput.add_member(:table, Shapes::ShapeRef.new(shape: TableDescription, location_name: "Table"))
    DescribeTableOutput.struct_class = Types::DescribeTableOutput

    DescribeTableReplicaAutoScalingInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    DescribeTableReplicaAutoScalingInput.struct_class = Types::DescribeTableReplicaAutoScalingInput

    DescribeTableReplicaAutoScalingOutput.add_member(:table_auto_scaling_description, Shapes::ShapeRef.new(shape: TableAutoScalingDescription, location_name: "TableAutoScalingDescription"))
    DescribeTableReplicaAutoScalingOutput.struct_class = Types::DescribeTableReplicaAutoScalingOutput

    DescribeTimeToLiveInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    DescribeTimeToLiveInput.struct_class = Types::DescribeTimeToLiveInput

    DescribeTimeToLiveOutput.add_member(:time_to_live_description, Shapes::ShapeRef.new(shape: TimeToLiveDescription, location_name: "TimeToLiveDescription"))
    DescribeTimeToLiveOutput.struct_class = Types::DescribeTimeToLiveOutput

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Address"))
    Endpoint.add_member(:cache_period_in_minutes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "CachePeriodInMinutes"))
    Endpoint.struct_class = Types::Endpoint

    Endpoints.member = Shapes::ShapeRef.new(shape: Endpoint)

    ExpectedAttributeMap.key = Shapes::ShapeRef.new(shape: AttributeName)
    ExpectedAttributeMap.value = Shapes::ShapeRef.new(shape: ExpectedAttributeValue)

    ExpectedAttributeValue.add_member(:value, Shapes::ShapeRef.new(shape: AttributeValue, location_name: "Value"))
    ExpectedAttributeValue.add_member(:exists, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Exists"))
    ExpectedAttributeValue.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "ComparisonOperator"))
    ExpectedAttributeValue.add_member(:attribute_value_list, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "AttributeValueList"))
    ExpectedAttributeValue.struct_class = Types::ExpectedAttributeValue

    ExpressionAttributeNameMap.key = Shapes::ShapeRef.new(shape: ExpressionAttributeNameVariable)
    ExpressionAttributeNameMap.value = Shapes::ShapeRef.new(shape: AttributeName)

    ExpressionAttributeValueMap.key = Shapes::ShapeRef.new(shape: ExpressionAttributeValueVariable)
    ExpressionAttributeValueMap.value = Shapes::ShapeRef.new(shape: AttributeValue)

    FailureException.add_member(:exception_name, Shapes::ShapeRef.new(shape: ExceptionName, location_name: "ExceptionName"))
    FailureException.add_member(:exception_description, Shapes::ShapeRef.new(shape: ExceptionDescription, location_name: "ExceptionDescription"))
    FailureException.struct_class = Types::FailureException

    FilterConditionMap.key = Shapes::ShapeRef.new(shape: AttributeName)
    FilterConditionMap.value = Shapes::ShapeRef.new(shape: Condition)

    Get.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    Get.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    Get.add_member(:projection_expression, Shapes::ShapeRef.new(shape: ProjectionExpression, location_name: "ProjectionExpression"))
    Get.add_member(:expression_attribute_names, Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    Get.struct_class = Types::Get

    GetItemInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    GetItemInput.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    GetItemInput.add_member(:attributes_to_get, Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributesToGet"))
    GetItemInput.add_member(:consistent_read, Shapes::ShapeRef.new(shape: ConsistentRead, location_name: "ConsistentRead"))
    GetItemInput.add_member(:return_consumed_capacity, Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    GetItemInput.add_member(:projection_expression, Shapes::ShapeRef.new(shape: ProjectionExpression, location_name: "ProjectionExpression"))
    GetItemInput.add_member(:expression_attribute_names, Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    GetItemInput.struct_class = Types::GetItemInput

    GetItemOutput.add_member(:item, Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Item"))
    GetItemOutput.add_member(:consumed_capacity, Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "ConsumedCapacity"))
    GetItemOutput.struct_class = Types::GetItemOutput

    GlobalSecondaryIndex.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "IndexName"))
    GlobalSecondaryIndex.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, required: true, location_name: "KeySchema"))
    GlobalSecondaryIndex.add_member(:projection, Shapes::ShapeRef.new(shape: Projection, required: true, location_name: "Projection"))
    GlobalSecondaryIndex.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput"))
    GlobalSecondaryIndex.struct_class = Types::GlobalSecondaryIndex

    GlobalSecondaryIndexAutoScalingUpdate.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    GlobalSecondaryIndexAutoScalingUpdate.add_member(:provisioned_write_capacity_auto_scaling_update, Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ProvisionedWriteCapacityAutoScalingUpdate"))
    GlobalSecondaryIndexAutoScalingUpdate.struct_class = Types::GlobalSecondaryIndexAutoScalingUpdate

    GlobalSecondaryIndexAutoScalingUpdateList.member = Shapes::ShapeRef.new(shape: GlobalSecondaryIndexAutoScalingUpdate)

    GlobalSecondaryIndexDescription.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    GlobalSecondaryIndexDescription.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema"))
    GlobalSecondaryIndexDescription.add_member(:projection, Shapes::ShapeRef.new(shape: Projection, location_name: "Projection"))
    GlobalSecondaryIndexDescription.add_member(:index_status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "IndexStatus"))
    GlobalSecondaryIndexDescription.add_member(:backfilling, Shapes::ShapeRef.new(shape: Backfilling, location_name: "Backfilling"))
    GlobalSecondaryIndexDescription.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughputDescription, location_name: "ProvisionedThroughput"))
    GlobalSecondaryIndexDescription.add_member(:index_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "IndexSizeBytes"))
    GlobalSecondaryIndexDescription.add_member(:item_count, Shapes::ShapeRef.new(shape: Long, location_name: "ItemCount"))
    GlobalSecondaryIndexDescription.add_member(:index_arn, Shapes::ShapeRef.new(shape: String, location_name: "IndexArn"))
    GlobalSecondaryIndexDescription.struct_class = Types::GlobalSecondaryIndexDescription

    GlobalSecondaryIndexDescriptionList.member = Shapes::ShapeRef.new(shape: GlobalSecondaryIndexDescription)

    GlobalSecondaryIndexInfo.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    GlobalSecondaryIndexInfo.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema"))
    GlobalSecondaryIndexInfo.add_member(:projection, Shapes::ShapeRef.new(shape: Projection, location_name: "Projection"))
    GlobalSecondaryIndexInfo.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput"))
    GlobalSecondaryIndexInfo.struct_class = Types::GlobalSecondaryIndexInfo

    GlobalSecondaryIndexList.member = Shapes::ShapeRef.new(shape: GlobalSecondaryIndex)

    GlobalSecondaryIndexUpdate.add_member(:update, Shapes::ShapeRef.new(shape: UpdateGlobalSecondaryIndexAction, location_name: "Update"))
    GlobalSecondaryIndexUpdate.add_member(:create, Shapes::ShapeRef.new(shape: CreateGlobalSecondaryIndexAction, location_name: "Create"))
    GlobalSecondaryIndexUpdate.add_member(:delete, Shapes::ShapeRef.new(shape: DeleteGlobalSecondaryIndexAction, location_name: "Delete"))
    GlobalSecondaryIndexUpdate.struct_class = Types::GlobalSecondaryIndexUpdate

    GlobalSecondaryIndexUpdateList.member = Shapes::ShapeRef.new(shape: GlobalSecondaryIndexUpdate)

    GlobalSecondaryIndexes.member = Shapes::ShapeRef.new(shape: GlobalSecondaryIndexInfo)

    GlobalTable.add_member(:global_table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "GlobalTableName"))
    GlobalTable.add_member(:replication_group, Shapes::ShapeRef.new(shape: ReplicaList, location_name: "ReplicationGroup"))
    GlobalTable.struct_class = Types::GlobalTable

    GlobalTableAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    GlobalTableAlreadyExistsException.struct_class = Types::GlobalTableAlreadyExistsException

    GlobalTableDescription.add_member(:replication_group, Shapes::ShapeRef.new(shape: ReplicaDescriptionList, location_name: "ReplicationGroup"))
    GlobalTableDescription.add_member(:global_table_arn, Shapes::ShapeRef.new(shape: GlobalTableArnString, location_name: "GlobalTableArn"))
    GlobalTableDescription.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationDateTime"))
    GlobalTableDescription.add_member(:global_table_status, Shapes::ShapeRef.new(shape: GlobalTableStatus, location_name: "GlobalTableStatus"))
    GlobalTableDescription.add_member(:global_table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "GlobalTableName"))
    GlobalTableDescription.struct_class = Types::GlobalTableDescription

    GlobalTableGlobalSecondaryIndexSettingsUpdate.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "IndexName"))
    GlobalTableGlobalSecondaryIndexSettingsUpdate.add_member(:provisioned_write_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ProvisionedWriteCapacityUnits"))
    GlobalTableGlobalSecondaryIndexSettingsUpdate.add_member(:provisioned_write_capacity_auto_scaling_settings_update, Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ProvisionedWriteCapacityAutoScalingSettingsUpdate"))
    GlobalTableGlobalSecondaryIndexSettingsUpdate.struct_class = Types::GlobalTableGlobalSecondaryIndexSettingsUpdate

    GlobalTableGlobalSecondaryIndexSettingsUpdateList.member = Shapes::ShapeRef.new(shape: GlobalTableGlobalSecondaryIndexSettingsUpdate)

    GlobalTableList.member = Shapes::ShapeRef.new(shape: GlobalTable)

    GlobalTableNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    GlobalTableNotFoundException.struct_class = Types::GlobalTableNotFoundException

    IdempotentParameterMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    IdempotentParameterMismatchException.struct_class = Types::IdempotentParameterMismatchException

    IndexNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    IndexNotFoundException.struct_class = Types::IndexNotFoundException

    InternalServerError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalServerError.struct_class = Types::InternalServerError

    InvalidRestoreTimeException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidRestoreTimeException.struct_class = Types::InvalidRestoreTimeException

    ItemCollectionKeyAttributeMap.key = Shapes::ShapeRef.new(shape: AttributeName)
    ItemCollectionKeyAttributeMap.value = Shapes::ShapeRef.new(shape: AttributeValue)

    ItemCollectionMetrics.add_member(:item_collection_key, Shapes::ShapeRef.new(shape: ItemCollectionKeyAttributeMap, location_name: "ItemCollectionKey"))
    ItemCollectionMetrics.add_member(:size_estimate_range_gb, Shapes::ShapeRef.new(shape: ItemCollectionSizeEstimateRange, location_name: "SizeEstimateRangeGB"))
    ItemCollectionMetrics.struct_class = Types::ItemCollectionMetrics

    ItemCollectionMetricsMultiple.member = Shapes::ShapeRef.new(shape: ItemCollectionMetrics)

    ItemCollectionMetricsPerTable.key = Shapes::ShapeRef.new(shape: TableName)
    ItemCollectionMetricsPerTable.value = Shapes::ShapeRef.new(shape: ItemCollectionMetricsMultiple)

    ItemCollectionSizeEstimateRange.member = Shapes::ShapeRef.new(shape: ItemCollectionSizeEstimateBound)

    ItemCollectionSizeLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ItemCollectionSizeLimitExceededException.struct_class = Types::ItemCollectionSizeLimitExceededException

    ItemList.member = Shapes::ShapeRef.new(shape: AttributeMap)

    ItemResponse.add_member(:item, Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Item"))
    ItemResponse.struct_class = Types::ItemResponse

    ItemResponseList.member = Shapes::ShapeRef.new(shape: ItemResponse)

    Key.key = Shapes::ShapeRef.new(shape: AttributeName)
    Key.value = Shapes::ShapeRef.new(shape: AttributeValue)

    KeyConditions.key = Shapes::ShapeRef.new(shape: AttributeName)
    KeyConditions.value = Shapes::ShapeRef.new(shape: Condition)

    KeyList.member = Shapes::ShapeRef.new(shape: Key)

    KeySchema.member = Shapes::ShapeRef.new(shape: KeySchemaElement)

    KeySchemaElement.add_member(:attribute_name, Shapes::ShapeRef.new(shape: KeySchemaAttributeName, required: true, location_name: "AttributeName"))
    KeySchemaElement.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyType, required: true, location_name: "KeyType"))
    KeySchemaElement.struct_class = Types::KeySchemaElement

    KeysAndAttributes.add_member(:keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "Keys"))
    KeysAndAttributes.add_member(:attributes_to_get, Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributesToGet"))
    KeysAndAttributes.add_member(:consistent_read, Shapes::ShapeRef.new(shape: ConsistentRead, location_name: "ConsistentRead"))
    KeysAndAttributes.add_member(:projection_expression, Shapes::ShapeRef.new(shape: ProjectionExpression, location_name: "ProjectionExpression"))
    KeysAndAttributes.add_member(:expression_attribute_names, Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    KeysAndAttributes.struct_class = Types::KeysAndAttributes

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAttributeValue.member = Shapes::ShapeRef.new(shape: AttributeValue)

    ListBackupsInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    ListBackupsInput.add_member(:limit, Shapes::ShapeRef.new(shape: BackupsInputLimit, location_name: "Limit"))
    ListBackupsInput.add_member(:time_range_lower_bound, Shapes::ShapeRef.new(shape: TimeRangeLowerBound, location_name: "TimeRangeLowerBound"))
    ListBackupsInput.add_member(:time_range_upper_bound, Shapes::ShapeRef.new(shape: TimeRangeUpperBound, location_name: "TimeRangeUpperBound"))
    ListBackupsInput.add_member(:exclusive_start_backup_arn, Shapes::ShapeRef.new(shape: BackupArn, location_name: "ExclusiveStartBackupArn"))
    ListBackupsInput.add_member(:backup_type, Shapes::ShapeRef.new(shape: BackupTypeFilter, location_name: "BackupType"))
    ListBackupsInput.struct_class = Types::ListBackupsInput

    ListBackupsOutput.add_member(:backup_summaries, Shapes::ShapeRef.new(shape: BackupSummaries, location_name: "BackupSummaries"))
    ListBackupsOutput.add_member(:last_evaluated_backup_arn, Shapes::ShapeRef.new(shape: BackupArn, location_name: "LastEvaluatedBackupArn"))
    ListBackupsOutput.struct_class = Types::ListBackupsOutput

    ListContributorInsightsInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    ListContributorInsightsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListContributorInsightsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListContributorInsightsLimit, location_name: "MaxResults"))
    ListContributorInsightsInput.struct_class = Types::ListContributorInsightsInput

    ListContributorInsightsOutput.add_member(:contributor_insights_summaries, Shapes::ShapeRef.new(shape: ContributorInsightsSummaries, location_name: "ContributorInsightsSummaries"))
    ListContributorInsightsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListContributorInsightsOutput.struct_class = Types::ListContributorInsightsOutput

    ListGlobalTablesInput.add_member(:exclusive_start_global_table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "ExclusiveStartGlobalTableName"))
    ListGlobalTablesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "Limit"))
    ListGlobalTablesInput.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName"))
    ListGlobalTablesInput.struct_class = Types::ListGlobalTablesInput

    ListGlobalTablesOutput.add_member(:global_tables, Shapes::ShapeRef.new(shape: GlobalTableList, location_name: "GlobalTables"))
    ListGlobalTablesOutput.add_member(:last_evaluated_global_table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "LastEvaluatedGlobalTableName"))
    ListGlobalTablesOutput.struct_class = Types::ListGlobalTablesOutput

    ListTablesInput.add_member(:exclusive_start_table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "ExclusiveStartTableName"))
    ListTablesInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListTablesInputLimit, location_name: "Limit"))
    ListTablesInput.struct_class = Types::ListTablesInput

    ListTablesOutput.add_member(:table_names, Shapes::ShapeRef.new(shape: TableNameList, location_name: "TableNames"))
    ListTablesOutput.add_member(:last_evaluated_table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "LastEvaluatedTableName"))
    ListTablesOutput.struct_class = Types::ListTablesOutput

    ListTagsOfResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    ListTagsOfResourceInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListTagsOfResourceInput.struct_class = Types::ListTagsOfResourceInput

    ListTagsOfResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsOfResourceOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListTagsOfResourceOutput.struct_class = Types::ListTagsOfResourceOutput

    LocalSecondaryIndex.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "IndexName"))
    LocalSecondaryIndex.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, required: true, location_name: "KeySchema"))
    LocalSecondaryIndex.add_member(:projection, Shapes::ShapeRef.new(shape: Projection, required: true, location_name: "Projection"))
    LocalSecondaryIndex.struct_class = Types::LocalSecondaryIndex

    LocalSecondaryIndexDescription.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    LocalSecondaryIndexDescription.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema"))
    LocalSecondaryIndexDescription.add_member(:projection, Shapes::ShapeRef.new(shape: Projection, location_name: "Projection"))
    LocalSecondaryIndexDescription.add_member(:index_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "IndexSizeBytes"))
    LocalSecondaryIndexDescription.add_member(:item_count, Shapes::ShapeRef.new(shape: Long, location_name: "ItemCount"))
    LocalSecondaryIndexDescription.add_member(:index_arn, Shapes::ShapeRef.new(shape: String, location_name: "IndexArn"))
    LocalSecondaryIndexDescription.struct_class = Types::LocalSecondaryIndexDescription

    LocalSecondaryIndexDescriptionList.member = Shapes::ShapeRef.new(shape: LocalSecondaryIndexDescription)

    LocalSecondaryIndexInfo.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    LocalSecondaryIndexInfo.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema"))
    LocalSecondaryIndexInfo.add_member(:projection, Shapes::ShapeRef.new(shape: Projection, location_name: "Projection"))
    LocalSecondaryIndexInfo.struct_class = Types::LocalSecondaryIndexInfo

    LocalSecondaryIndexList.member = Shapes::ShapeRef.new(shape: LocalSecondaryIndex)

    LocalSecondaryIndexes.member = Shapes::ShapeRef.new(shape: LocalSecondaryIndexInfo)

    MapAttributeValue.key = Shapes::ShapeRef.new(shape: AttributeName)
    MapAttributeValue.value = Shapes::ShapeRef.new(shape: AttributeValue)

    NonKeyAttributeNameList.member = Shapes::ShapeRef.new(shape: NonKeyAttributeName)

    NumberSetAttributeValue.member = Shapes::ShapeRef.new(shape: NumberAttributeValue)

    PointInTimeRecoveryDescription.add_member(:point_in_time_recovery_status, Shapes::ShapeRef.new(shape: PointInTimeRecoveryStatus, location_name: "PointInTimeRecoveryStatus"))
    PointInTimeRecoveryDescription.add_member(:earliest_restorable_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "EarliestRestorableDateTime"))
    PointInTimeRecoveryDescription.add_member(:latest_restorable_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "LatestRestorableDateTime"))
    PointInTimeRecoveryDescription.struct_class = Types::PointInTimeRecoveryDescription

    PointInTimeRecoverySpecification.add_member(:point_in_time_recovery_enabled, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "PointInTimeRecoveryEnabled"))
    PointInTimeRecoverySpecification.struct_class = Types::PointInTimeRecoverySpecification

    PointInTimeRecoveryUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    PointInTimeRecoveryUnavailableException.struct_class = Types::PointInTimeRecoveryUnavailableException

    Projection.add_member(:projection_type, Shapes::ShapeRef.new(shape: ProjectionType, location_name: "ProjectionType"))
    Projection.add_member(:non_key_attributes, Shapes::ShapeRef.new(shape: NonKeyAttributeNameList, location_name: "NonKeyAttributes"))
    Projection.struct_class = Types::Projection

    ProvisionedThroughput.add_member(:read_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, required: true, location_name: "ReadCapacityUnits"))
    ProvisionedThroughput.add_member(:write_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, required: true, location_name: "WriteCapacityUnits"))
    ProvisionedThroughput.struct_class = Types::ProvisionedThroughput

    ProvisionedThroughputDescription.add_member(:last_increase_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastIncreaseDateTime"))
    ProvisionedThroughputDescription.add_member(:last_decrease_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastDecreaseDateTime"))
    ProvisionedThroughputDescription.add_member(:number_of_decreases_today, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "NumberOfDecreasesToday"))
    ProvisionedThroughputDescription.add_member(:read_capacity_units, Shapes::ShapeRef.new(shape: NonNegativeLongObject, location_name: "ReadCapacityUnits"))
    ProvisionedThroughputDescription.add_member(:write_capacity_units, Shapes::ShapeRef.new(shape: NonNegativeLongObject, location_name: "WriteCapacityUnits"))
    ProvisionedThroughputDescription.struct_class = Types::ProvisionedThroughputDescription

    ProvisionedThroughputExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ProvisionedThroughputExceededException.struct_class = Types::ProvisionedThroughputExceededException

    ProvisionedThroughputOverride.add_member(:read_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ReadCapacityUnits"))
    ProvisionedThroughputOverride.struct_class = Types::ProvisionedThroughputOverride

    Put.add_member(:item, Shapes::ShapeRef.new(shape: PutItemInputAttributeMap, required: true, location_name: "Item"))
    Put.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    Put.add_member(:condition_expression, Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "ConditionExpression"))
    Put.add_member(:expression_attribute_names, Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    Put.add_member(:expression_attribute_values, Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    Put.add_member(:return_values_on_condition_check_failure, Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    Put.struct_class = Types::Put

    PutItemInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    PutItemInput.add_member(:item, Shapes::ShapeRef.new(shape: PutItemInputAttributeMap, required: true, location_name: "Item"))
    PutItemInput.add_member(:expected, Shapes::ShapeRef.new(shape: ExpectedAttributeMap, location_name: "Expected"))
    PutItemInput.add_member(:return_values, Shapes::ShapeRef.new(shape: ReturnValue, location_name: "ReturnValues"))
    PutItemInput.add_member(:return_consumed_capacity, Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    PutItemInput.add_member(:return_item_collection_metrics, Shapes::ShapeRef.new(shape: ReturnItemCollectionMetrics, location_name: "ReturnItemCollectionMetrics"))
    PutItemInput.add_member(:conditional_operator, Shapes::ShapeRef.new(shape: ConditionalOperator, location_name: "ConditionalOperator"))
    PutItemInput.add_member(:condition_expression, Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "ConditionExpression"))
    PutItemInput.add_member(:expression_attribute_names, Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    PutItemInput.add_member(:expression_attribute_values, Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    PutItemInput.struct_class = Types::PutItemInput

    PutItemInputAttributeMap.key = Shapes::ShapeRef.new(shape: AttributeName)
    PutItemInputAttributeMap.value = Shapes::ShapeRef.new(shape: AttributeValue)

    PutItemOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Attributes"))
    PutItemOutput.add_member(:consumed_capacity, Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "ConsumedCapacity"))
    PutItemOutput.add_member(:item_collection_metrics, Shapes::ShapeRef.new(shape: ItemCollectionMetrics, location_name: "ItemCollectionMetrics"))
    PutItemOutput.struct_class = Types::PutItemOutput

    PutRequest.add_member(:item, Shapes::ShapeRef.new(shape: PutItemInputAttributeMap, required: true, location_name: "Item"))
    PutRequest.struct_class = Types::PutRequest

    QueryInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    QueryInput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    QueryInput.add_member(:select, Shapes::ShapeRef.new(shape: Select, location_name: "Select"))
    QueryInput.add_member(:attributes_to_get, Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributesToGet"))
    QueryInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "Limit"))
    QueryInput.add_member(:consistent_read, Shapes::ShapeRef.new(shape: ConsistentRead, location_name: "ConsistentRead"))
    QueryInput.add_member(:key_conditions, Shapes::ShapeRef.new(shape: KeyConditions, location_name: "KeyConditions"))
    QueryInput.add_member(:query_filter, Shapes::ShapeRef.new(shape: FilterConditionMap, location_name: "QueryFilter"))
    QueryInput.add_member(:conditional_operator, Shapes::ShapeRef.new(shape: ConditionalOperator, location_name: "ConditionalOperator"))
    QueryInput.add_member(:scan_index_forward, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "ScanIndexForward"))
    QueryInput.add_member(:exclusive_start_key, Shapes::ShapeRef.new(shape: Key, location_name: "ExclusiveStartKey"))
    QueryInput.add_member(:return_consumed_capacity, Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    QueryInput.add_member(:projection_expression, Shapes::ShapeRef.new(shape: ProjectionExpression, location_name: "ProjectionExpression"))
    QueryInput.add_member(:filter_expression, Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "FilterExpression"))
    QueryInput.add_member(:key_condition_expression, Shapes::ShapeRef.new(shape: KeyExpression, location_name: "KeyConditionExpression"))
    QueryInput.add_member(:expression_attribute_names, Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    QueryInput.add_member(:expression_attribute_values, Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    QueryInput.struct_class = Types::QueryInput

    QueryOutput.add_member(:items, Shapes::ShapeRef.new(shape: ItemList, location_name: "Items"))
    QueryOutput.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    QueryOutput.add_member(:scanned_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ScannedCount"))
    QueryOutput.add_member(:last_evaluated_key, Shapes::ShapeRef.new(shape: Key, location_name: "LastEvaluatedKey"))
    QueryOutput.add_member(:consumed_capacity, Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "ConsumedCapacity"))
    QueryOutput.struct_class = Types::QueryOutput

    Replica.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName"))
    Replica.struct_class = Types::Replica

    ReplicaAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ReplicaAlreadyExistsException.struct_class = Types::ReplicaAlreadyExistsException

    ReplicaAutoScalingDescription.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName"))
    ReplicaAutoScalingDescription.add_member(:global_secondary_indexes, Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexAutoScalingDescriptionList, location_name: "GlobalSecondaryIndexes"))
    ReplicaAutoScalingDescription.add_member(:replica_provisioned_read_capacity_auto_scaling_settings, Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ReplicaProvisionedReadCapacityAutoScalingSettings"))
    ReplicaAutoScalingDescription.add_member(:replica_provisioned_write_capacity_auto_scaling_settings, Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ReplicaProvisionedWriteCapacityAutoScalingSettings"))
    ReplicaAutoScalingDescription.add_member(:replica_status, Shapes::ShapeRef.new(shape: ReplicaStatus, location_name: "ReplicaStatus"))
    ReplicaAutoScalingDescription.struct_class = Types::ReplicaAutoScalingDescription

    ReplicaAutoScalingDescriptionList.member = Shapes::ShapeRef.new(shape: ReplicaAutoScalingDescription)

    ReplicaAutoScalingUpdate.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "RegionName"))
    ReplicaAutoScalingUpdate.add_member(:replica_global_secondary_index_updates, Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexAutoScalingUpdateList, location_name: "ReplicaGlobalSecondaryIndexUpdates"))
    ReplicaAutoScalingUpdate.add_member(:replica_provisioned_read_capacity_auto_scaling_update, Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ReplicaProvisionedReadCapacityAutoScalingUpdate"))
    ReplicaAutoScalingUpdate.struct_class = Types::ReplicaAutoScalingUpdate

    ReplicaAutoScalingUpdateList.member = Shapes::ShapeRef.new(shape: ReplicaAutoScalingUpdate)

    ReplicaDescription.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, location_name: "RegionName"))
    ReplicaDescription.add_member(:replica_status, Shapes::ShapeRef.new(shape: ReplicaStatus, location_name: "ReplicaStatus"))
    ReplicaDescription.add_member(:replica_status_description, Shapes::ShapeRef.new(shape: ReplicaStatusDescription, location_name: "ReplicaStatusDescription"))
    ReplicaDescription.add_member(:replica_status_percent_progress, Shapes::ShapeRef.new(shape: ReplicaStatusPercentProgress, location_name: "ReplicaStatusPercentProgress"))
    ReplicaDescription.add_member(:kms_master_key_id, Shapes::ShapeRef.new(shape: KMSMasterKeyId, location_name: "KMSMasterKeyId"))
    ReplicaDescription.add_member(:provisioned_throughput_override, Shapes::ShapeRef.new(shape: ProvisionedThroughputOverride, location_name: "ProvisionedThroughputOverride"))
    ReplicaDescription.add_member(:global_secondary_indexes, Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexDescriptionList, location_name: "GlobalSecondaryIndexes"))
    ReplicaDescription.add_member(:replica_inaccessible_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "ReplicaInaccessibleDateTime"))
    ReplicaDescription.struct_class = Types::ReplicaDescription

    ReplicaDescriptionList.member = Shapes::ShapeRef.new(shape: ReplicaDescription)

    ReplicaGlobalSecondaryIndex.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "IndexName"))
    ReplicaGlobalSecondaryIndex.add_member(:provisioned_throughput_override, Shapes::ShapeRef.new(shape: ProvisionedThroughputOverride, location_name: "ProvisionedThroughputOverride"))
    ReplicaGlobalSecondaryIndex.struct_class = Types::ReplicaGlobalSecondaryIndex

    ReplicaGlobalSecondaryIndexAutoScalingDescription.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    ReplicaGlobalSecondaryIndexAutoScalingDescription.add_member(:index_status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "IndexStatus"))
    ReplicaGlobalSecondaryIndexAutoScalingDescription.add_member(:provisioned_read_capacity_auto_scaling_settings, Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ProvisionedReadCapacityAutoScalingSettings"))
    ReplicaGlobalSecondaryIndexAutoScalingDescription.add_member(:provisioned_write_capacity_auto_scaling_settings, Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ProvisionedWriteCapacityAutoScalingSettings"))
    ReplicaGlobalSecondaryIndexAutoScalingDescription.struct_class = Types::ReplicaGlobalSecondaryIndexAutoScalingDescription

    ReplicaGlobalSecondaryIndexAutoScalingDescriptionList.member = Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexAutoScalingDescription)

    ReplicaGlobalSecondaryIndexAutoScalingUpdate.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    ReplicaGlobalSecondaryIndexAutoScalingUpdate.add_member(:provisioned_read_capacity_auto_scaling_update, Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ProvisionedReadCapacityAutoScalingUpdate"))
    ReplicaGlobalSecondaryIndexAutoScalingUpdate.struct_class = Types::ReplicaGlobalSecondaryIndexAutoScalingUpdate

    ReplicaGlobalSecondaryIndexAutoScalingUpdateList.member = Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexAutoScalingUpdate)

    ReplicaGlobalSecondaryIndexDescription.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    ReplicaGlobalSecondaryIndexDescription.add_member(:provisioned_throughput_override, Shapes::ShapeRef.new(shape: ProvisionedThroughputOverride, location_name: "ProvisionedThroughputOverride"))
    ReplicaGlobalSecondaryIndexDescription.struct_class = Types::ReplicaGlobalSecondaryIndexDescription

    ReplicaGlobalSecondaryIndexDescriptionList.member = Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexDescription)

    ReplicaGlobalSecondaryIndexList.member = Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndex)

    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "IndexName"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:index_status, Shapes::ShapeRef.new(shape: IndexStatus, location_name: "IndexStatus"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:provisioned_read_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ProvisionedReadCapacityUnits"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:provisioned_read_capacity_auto_scaling_settings, Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ProvisionedReadCapacityAutoScalingSettings"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:provisioned_write_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ProvisionedWriteCapacityUnits"))
    ReplicaGlobalSecondaryIndexSettingsDescription.add_member(:provisioned_write_capacity_auto_scaling_settings, Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ProvisionedWriteCapacityAutoScalingSettings"))
    ReplicaGlobalSecondaryIndexSettingsDescription.struct_class = Types::ReplicaGlobalSecondaryIndexSettingsDescription

    ReplicaGlobalSecondaryIndexSettingsDescriptionList.member = Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexSettingsDescription)

    ReplicaGlobalSecondaryIndexSettingsUpdate.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "IndexName"))
    ReplicaGlobalSecondaryIndexSettingsUpdate.add_member(:provisioned_read_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ProvisionedReadCapacityUnits"))
    ReplicaGlobalSecondaryIndexSettingsUpdate.add_member(:provisioned_read_capacity_auto_scaling_settings_update, Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ProvisionedReadCapacityAutoScalingSettingsUpdate"))
    ReplicaGlobalSecondaryIndexSettingsUpdate.struct_class = Types::ReplicaGlobalSecondaryIndexSettingsUpdate

    ReplicaGlobalSecondaryIndexSettingsUpdateList.member = Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexSettingsUpdate)

    ReplicaList.member = Shapes::ShapeRef.new(shape: Replica)

    ReplicaNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ReplicaNotFoundException.struct_class = Types::ReplicaNotFoundException

    ReplicaSettingsDescription.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "RegionName"))
    ReplicaSettingsDescription.add_member(:replica_status, Shapes::ShapeRef.new(shape: ReplicaStatus, location_name: "ReplicaStatus"))
    ReplicaSettingsDescription.add_member(:replica_billing_mode_summary, Shapes::ShapeRef.new(shape: BillingModeSummary, location_name: "ReplicaBillingModeSummary"))
    ReplicaSettingsDescription.add_member(:replica_provisioned_read_capacity_units, Shapes::ShapeRef.new(shape: NonNegativeLongObject, location_name: "ReplicaProvisionedReadCapacityUnits"))
    ReplicaSettingsDescription.add_member(:replica_provisioned_read_capacity_auto_scaling_settings, Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ReplicaProvisionedReadCapacityAutoScalingSettings"))
    ReplicaSettingsDescription.add_member(:replica_provisioned_write_capacity_units, Shapes::ShapeRef.new(shape: NonNegativeLongObject, location_name: "ReplicaProvisionedWriteCapacityUnits"))
    ReplicaSettingsDescription.add_member(:replica_provisioned_write_capacity_auto_scaling_settings, Shapes::ShapeRef.new(shape: AutoScalingSettingsDescription, location_name: "ReplicaProvisionedWriteCapacityAutoScalingSettings"))
    ReplicaSettingsDescription.add_member(:replica_global_secondary_index_settings, Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexSettingsDescriptionList, location_name: "ReplicaGlobalSecondaryIndexSettings"))
    ReplicaSettingsDescription.struct_class = Types::ReplicaSettingsDescription

    ReplicaSettingsDescriptionList.member = Shapes::ShapeRef.new(shape: ReplicaSettingsDescription)

    ReplicaSettingsUpdate.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "RegionName"))
    ReplicaSettingsUpdate.add_member(:replica_provisioned_read_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ReplicaProvisionedReadCapacityUnits"))
    ReplicaSettingsUpdate.add_member(:replica_provisioned_read_capacity_auto_scaling_settings_update, Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate"))
    ReplicaSettingsUpdate.add_member(:replica_global_secondary_index_settings_update, Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexSettingsUpdateList, location_name: "ReplicaGlobalSecondaryIndexSettingsUpdate"))
    ReplicaSettingsUpdate.struct_class = Types::ReplicaSettingsUpdate

    ReplicaSettingsUpdateList.member = Shapes::ShapeRef.new(shape: ReplicaSettingsUpdate)

    ReplicaUpdate.add_member(:create, Shapes::ShapeRef.new(shape: CreateReplicaAction, location_name: "Create"))
    ReplicaUpdate.add_member(:delete, Shapes::ShapeRef.new(shape: DeleteReplicaAction, location_name: "Delete"))
    ReplicaUpdate.struct_class = Types::ReplicaUpdate

    ReplicaUpdateList.member = Shapes::ShapeRef.new(shape: ReplicaUpdate)

    ReplicationGroupUpdate.add_member(:create, Shapes::ShapeRef.new(shape: CreateReplicationGroupMemberAction, location_name: "Create"))
    ReplicationGroupUpdate.add_member(:update, Shapes::ShapeRef.new(shape: UpdateReplicationGroupMemberAction, location_name: "Update"))
    ReplicationGroupUpdate.add_member(:delete, Shapes::ShapeRef.new(shape: DeleteReplicationGroupMemberAction, location_name: "Delete"))
    ReplicationGroupUpdate.struct_class = Types::ReplicationGroupUpdate

    ReplicationGroupUpdateList.member = Shapes::ShapeRef.new(shape: ReplicationGroupUpdate)

    RequestLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    RequestLimitExceeded.struct_class = Types::RequestLimitExceeded

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RestoreSummary.add_member(:source_backup_arn, Shapes::ShapeRef.new(shape: BackupArn, location_name: "SourceBackupArn"))
    RestoreSummary.add_member(:source_table_arn, Shapes::ShapeRef.new(shape: TableArn, location_name: "SourceTableArn"))
    RestoreSummary.add_member(:restore_date_time, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "RestoreDateTime"))
    RestoreSummary.add_member(:restore_in_progress, Shapes::ShapeRef.new(shape: RestoreInProgress, required: true, location_name: "RestoreInProgress"))
    RestoreSummary.struct_class = Types::RestoreSummary

    RestoreTableFromBackupInput.add_member(:target_table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TargetTableName"))
    RestoreTableFromBackupInput.add_member(:backup_arn, Shapes::ShapeRef.new(shape: BackupArn, required: true, location_name: "BackupArn"))
    RestoreTableFromBackupInput.add_member(:billing_mode_override, Shapes::ShapeRef.new(shape: BillingMode, location_name: "BillingModeOverride"))
    RestoreTableFromBackupInput.add_member(:global_secondary_index_override, Shapes::ShapeRef.new(shape: GlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexOverride"))
    RestoreTableFromBackupInput.add_member(:local_secondary_index_override, Shapes::ShapeRef.new(shape: LocalSecondaryIndexList, location_name: "LocalSecondaryIndexOverride"))
    RestoreTableFromBackupInput.add_member(:provisioned_throughput_override, Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughputOverride"))
    RestoreTableFromBackupInput.add_member(:sse_specification_override, Shapes::ShapeRef.new(shape: SSESpecification, location_name: "SSESpecificationOverride"))
    RestoreTableFromBackupInput.struct_class = Types::RestoreTableFromBackupInput

    RestoreTableFromBackupOutput.add_member(:table_description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "TableDescription"))
    RestoreTableFromBackupOutput.struct_class = Types::RestoreTableFromBackupOutput

    RestoreTableToPointInTimeInput.add_member(:source_table_arn, Shapes::ShapeRef.new(shape: TableArn, location_name: "SourceTableArn"))
    RestoreTableToPointInTimeInput.add_member(:source_table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "SourceTableName"))
    RestoreTableToPointInTimeInput.add_member(:target_table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TargetTableName"))
    RestoreTableToPointInTimeInput.add_member(:use_latest_restorable_time, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "UseLatestRestorableTime"))
    RestoreTableToPointInTimeInput.add_member(:restore_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "RestoreDateTime"))
    RestoreTableToPointInTimeInput.add_member(:billing_mode_override, Shapes::ShapeRef.new(shape: BillingMode, location_name: "BillingModeOverride"))
    RestoreTableToPointInTimeInput.add_member(:global_secondary_index_override, Shapes::ShapeRef.new(shape: GlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexOverride"))
    RestoreTableToPointInTimeInput.add_member(:local_secondary_index_override, Shapes::ShapeRef.new(shape: LocalSecondaryIndexList, location_name: "LocalSecondaryIndexOverride"))
    RestoreTableToPointInTimeInput.add_member(:provisioned_throughput_override, Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughputOverride"))
    RestoreTableToPointInTimeInput.add_member(:sse_specification_override, Shapes::ShapeRef.new(shape: SSESpecification, location_name: "SSESpecificationOverride"))
    RestoreTableToPointInTimeInput.struct_class = Types::RestoreTableToPointInTimeInput

    RestoreTableToPointInTimeOutput.add_member(:table_description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "TableDescription"))
    RestoreTableToPointInTimeOutput.struct_class = Types::RestoreTableToPointInTimeOutput

    SSEDescription.add_member(:status, Shapes::ShapeRef.new(shape: SSEStatus, location_name: "Status"))
    SSEDescription.add_member(:sse_type, Shapes::ShapeRef.new(shape: SSEType, location_name: "SSEType"))
    SSEDescription.add_member(:kms_master_key_arn, Shapes::ShapeRef.new(shape: KMSMasterKeyArn, location_name: "KMSMasterKeyArn"))
    SSEDescription.add_member(:inaccessible_encryption_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "InaccessibleEncryptionDateTime"))
    SSEDescription.struct_class = Types::SSEDescription

    SSESpecification.add_member(:enabled, Shapes::ShapeRef.new(shape: SSEEnabled, location_name: "Enabled"))
    SSESpecification.add_member(:sse_type, Shapes::ShapeRef.new(shape: SSEType, location_name: "SSEType"))
    SSESpecification.add_member(:kms_master_key_id, Shapes::ShapeRef.new(shape: KMSMasterKeyId, location_name: "KMSMasterKeyId"))
    SSESpecification.struct_class = Types::SSESpecification

    ScanInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    ScanInput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    ScanInput.add_member(:attributes_to_get, Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributesToGet"))
    ScanInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "Limit"))
    ScanInput.add_member(:select, Shapes::ShapeRef.new(shape: Select, location_name: "Select"))
    ScanInput.add_member(:scan_filter, Shapes::ShapeRef.new(shape: FilterConditionMap, location_name: "ScanFilter"))
    ScanInput.add_member(:conditional_operator, Shapes::ShapeRef.new(shape: ConditionalOperator, location_name: "ConditionalOperator"))
    ScanInput.add_member(:exclusive_start_key, Shapes::ShapeRef.new(shape: Key, location_name: "ExclusiveStartKey"))
    ScanInput.add_member(:return_consumed_capacity, Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    ScanInput.add_member(:total_segments, Shapes::ShapeRef.new(shape: ScanTotalSegments, location_name: "TotalSegments"))
    ScanInput.add_member(:segment, Shapes::ShapeRef.new(shape: ScanSegment, location_name: "Segment"))
    ScanInput.add_member(:projection_expression, Shapes::ShapeRef.new(shape: ProjectionExpression, location_name: "ProjectionExpression"))
    ScanInput.add_member(:filter_expression, Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "FilterExpression"))
    ScanInput.add_member(:expression_attribute_names, Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    ScanInput.add_member(:expression_attribute_values, Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    ScanInput.add_member(:consistent_read, Shapes::ShapeRef.new(shape: ConsistentRead, location_name: "ConsistentRead"))
    ScanInput.struct_class = Types::ScanInput

    ScanOutput.add_member(:items, Shapes::ShapeRef.new(shape: ItemList, location_name: "Items"))
    ScanOutput.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    ScanOutput.add_member(:scanned_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ScannedCount"))
    ScanOutput.add_member(:last_evaluated_key, Shapes::ShapeRef.new(shape: Key, location_name: "LastEvaluatedKey"))
    ScanOutput.add_member(:consumed_capacity, Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "ConsumedCapacity"))
    ScanOutput.struct_class = Types::ScanOutput

    SecondaryIndexesCapacityMap.key = Shapes::ShapeRef.new(shape: IndexName)
    SecondaryIndexesCapacityMap.value = Shapes::ShapeRef.new(shape: Capacity)

    SourceTableDetails.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    SourceTableDetails.add_member(:table_id, Shapes::ShapeRef.new(shape: TableId, required: true, location_name: "TableId"))
    SourceTableDetails.add_member(:table_arn, Shapes::ShapeRef.new(shape: TableArn, location_name: "TableArn"))
    SourceTableDetails.add_member(:table_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "TableSizeBytes"))
    SourceTableDetails.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, required: true, location_name: "KeySchema"))
    SourceTableDetails.add_member(:table_creation_date_time, Shapes::ShapeRef.new(shape: TableCreationDateTime, required: true, location_name: "TableCreationDateTime"))
    SourceTableDetails.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, required: true, location_name: "ProvisionedThroughput"))
    SourceTableDetails.add_member(:item_count, Shapes::ShapeRef.new(shape: ItemCount, location_name: "ItemCount"))
    SourceTableDetails.add_member(:billing_mode, Shapes::ShapeRef.new(shape: BillingMode, location_name: "BillingMode"))
    SourceTableDetails.struct_class = Types::SourceTableDetails

    SourceTableFeatureDetails.add_member(:local_secondary_indexes, Shapes::ShapeRef.new(shape: LocalSecondaryIndexes, location_name: "LocalSecondaryIndexes"))
    SourceTableFeatureDetails.add_member(:global_secondary_indexes, Shapes::ShapeRef.new(shape: GlobalSecondaryIndexes, location_name: "GlobalSecondaryIndexes"))
    SourceTableFeatureDetails.add_member(:stream_description, Shapes::ShapeRef.new(shape: StreamSpecification, location_name: "StreamDescription"))
    SourceTableFeatureDetails.add_member(:time_to_live_description, Shapes::ShapeRef.new(shape: TimeToLiveDescription, location_name: "TimeToLiveDescription"))
    SourceTableFeatureDetails.add_member(:sse_description, Shapes::ShapeRef.new(shape: SSEDescription, location_name: "SSEDescription"))
    SourceTableFeatureDetails.struct_class = Types::SourceTableFeatureDetails

    StreamSpecification.add_member(:stream_enabled, Shapes::ShapeRef.new(shape: StreamEnabled, required: true, location_name: "StreamEnabled"))
    StreamSpecification.add_member(:stream_view_type, Shapes::ShapeRef.new(shape: StreamViewType, location_name: "StreamViewType"))
    StreamSpecification.struct_class = Types::StreamSpecification

    StringSetAttributeValue.member = Shapes::ShapeRef.new(shape: StringAttributeValue)

    TableAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TableAlreadyExistsException.struct_class = Types::TableAlreadyExistsException

    TableAutoScalingDescription.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    TableAutoScalingDescription.add_member(:table_status, Shapes::ShapeRef.new(shape: TableStatus, location_name: "TableStatus"))
    TableAutoScalingDescription.add_member(:replicas, Shapes::ShapeRef.new(shape: ReplicaAutoScalingDescriptionList, location_name: "Replicas"))
    TableAutoScalingDescription.struct_class = Types::TableAutoScalingDescription

    TableDescription.add_member(:attribute_definitions, Shapes::ShapeRef.new(shape: AttributeDefinitions, location_name: "AttributeDefinitions"))
    TableDescription.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    TableDescription.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema"))
    TableDescription.add_member(:table_status, Shapes::ShapeRef.new(shape: TableStatus, location_name: "TableStatus"))
    TableDescription.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationDateTime"))
    TableDescription.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughputDescription, location_name: "ProvisionedThroughput"))
    TableDescription.add_member(:table_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "TableSizeBytes"))
    TableDescription.add_member(:item_count, Shapes::ShapeRef.new(shape: Long, location_name: "ItemCount"))
    TableDescription.add_member(:table_arn, Shapes::ShapeRef.new(shape: String, location_name: "TableArn"))
    TableDescription.add_member(:table_id, Shapes::ShapeRef.new(shape: TableId, location_name: "TableId"))
    TableDescription.add_member(:billing_mode_summary, Shapes::ShapeRef.new(shape: BillingModeSummary, location_name: "BillingModeSummary"))
    TableDescription.add_member(:local_secondary_indexes, Shapes::ShapeRef.new(shape: LocalSecondaryIndexDescriptionList, location_name: "LocalSecondaryIndexes"))
    TableDescription.add_member(:global_secondary_indexes, Shapes::ShapeRef.new(shape: GlobalSecondaryIndexDescriptionList, location_name: "GlobalSecondaryIndexes"))
    TableDescription.add_member(:stream_specification, Shapes::ShapeRef.new(shape: StreamSpecification, location_name: "StreamSpecification"))
    TableDescription.add_member(:latest_stream_label, Shapes::ShapeRef.new(shape: String, location_name: "LatestStreamLabel"))
    TableDescription.add_member(:latest_stream_arn, Shapes::ShapeRef.new(shape: StreamArn, location_name: "LatestStreamArn"))
    TableDescription.add_member(:global_table_version, Shapes::ShapeRef.new(shape: String, location_name: "GlobalTableVersion"))
    TableDescription.add_member(:replicas, Shapes::ShapeRef.new(shape: ReplicaDescriptionList, location_name: "Replicas"))
    TableDescription.add_member(:restore_summary, Shapes::ShapeRef.new(shape: RestoreSummary, location_name: "RestoreSummary"))
    TableDescription.add_member(:sse_description, Shapes::ShapeRef.new(shape: SSEDescription, location_name: "SSEDescription"))
    TableDescription.add_member(:archival_summary, Shapes::ShapeRef.new(shape: ArchivalSummary, location_name: "ArchivalSummary"))
    TableDescription.struct_class = Types::TableDescription

    TableInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TableInUseException.struct_class = Types::TableInUseException

    TableNameList.member = Shapes::ShapeRef.new(shape: TableName)

    TableNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TableNotFoundException.struct_class = Types::TableNotFoundException

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKeyString, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValueString, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKeyString)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TimeToLiveDescription.add_member(:time_to_live_status, Shapes::ShapeRef.new(shape: TimeToLiveStatus, location_name: "TimeToLiveStatus"))
    TimeToLiveDescription.add_member(:attribute_name, Shapes::ShapeRef.new(shape: TimeToLiveAttributeName, location_name: "AttributeName"))
    TimeToLiveDescription.struct_class = Types::TimeToLiveDescription

    TimeToLiveSpecification.add_member(:enabled, Shapes::ShapeRef.new(shape: TimeToLiveEnabled, required: true, location_name: "Enabled"))
    TimeToLiveSpecification.add_member(:attribute_name, Shapes::ShapeRef.new(shape: TimeToLiveAttributeName, required: true, location_name: "AttributeName"))
    TimeToLiveSpecification.struct_class = Types::TimeToLiveSpecification

    TransactGetItem.add_member(:get, Shapes::ShapeRef.new(shape: Get, required: true, location_name: "Get"))
    TransactGetItem.struct_class = Types::TransactGetItem

    TransactGetItemList.member = Shapes::ShapeRef.new(shape: TransactGetItem)

    TransactGetItemsInput.add_member(:transact_items, Shapes::ShapeRef.new(shape: TransactGetItemList, required: true, location_name: "TransactItems"))
    TransactGetItemsInput.add_member(:return_consumed_capacity, Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    TransactGetItemsInput.struct_class = Types::TransactGetItemsInput

    TransactGetItemsOutput.add_member(:consumed_capacity, Shapes::ShapeRef.new(shape: ConsumedCapacityMultiple, location_name: "ConsumedCapacity"))
    TransactGetItemsOutput.add_member(:responses, Shapes::ShapeRef.new(shape: ItemResponseList, location_name: "Responses"))
    TransactGetItemsOutput.struct_class = Types::TransactGetItemsOutput

    TransactWriteItem.add_member(:condition_check, Shapes::ShapeRef.new(shape: ConditionCheck, location_name: "ConditionCheck"))
    TransactWriteItem.add_member(:put, Shapes::ShapeRef.new(shape: Put, location_name: "Put"))
    TransactWriteItem.add_member(:delete, Shapes::ShapeRef.new(shape: Delete, location_name: "Delete"))
    TransactWriteItem.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "Update"))
    TransactWriteItem.struct_class = Types::TransactWriteItem

    TransactWriteItemList.member = Shapes::ShapeRef.new(shape: TransactWriteItem)

    TransactWriteItemsInput.add_member(:transact_items, Shapes::ShapeRef.new(shape: TransactWriteItemList, required: true, location_name: "TransactItems"))
    TransactWriteItemsInput.add_member(:return_consumed_capacity, Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    TransactWriteItemsInput.add_member(:return_item_collection_metrics, Shapes::ShapeRef.new(shape: ReturnItemCollectionMetrics, location_name: "ReturnItemCollectionMetrics"))
    TransactWriteItemsInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    TransactWriteItemsInput.struct_class = Types::TransactWriteItemsInput

    TransactWriteItemsOutput.add_member(:consumed_capacity, Shapes::ShapeRef.new(shape: ConsumedCapacityMultiple, location_name: "ConsumedCapacity"))
    TransactWriteItemsOutput.add_member(:item_collection_metrics, Shapes::ShapeRef.new(shape: ItemCollectionMetricsPerTable, location_name: "ItemCollectionMetrics"))
    TransactWriteItemsOutput.struct_class = Types::TransactWriteItemsOutput

    TransactionCanceledException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TransactionCanceledException.add_member(:cancellation_reasons, Shapes::ShapeRef.new(shape: CancellationReasonList, location_name: "CancellationReasons"))
    TransactionCanceledException.struct_class = Types::TransactionCanceledException

    TransactionConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    TransactionConflictException.struct_class = Types::TransactionConflictException

    TransactionInProgressException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TransactionInProgressException.struct_class = Types::TransactionInProgressException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    Update.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    Update.add_member(:update_expression, Shapes::ShapeRef.new(shape: UpdateExpression, required: true, location_name: "UpdateExpression"))
    Update.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    Update.add_member(:condition_expression, Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "ConditionExpression"))
    Update.add_member(:expression_attribute_names, Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    Update.add_member(:expression_attribute_values, Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    Update.add_member(:return_values_on_condition_check_failure, Shapes::ShapeRef.new(shape: ReturnValuesOnConditionCheckFailure, location_name: "ReturnValuesOnConditionCheckFailure"))
    Update.struct_class = Types::Update

    UpdateContinuousBackupsInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    UpdateContinuousBackupsInput.add_member(:point_in_time_recovery_specification, Shapes::ShapeRef.new(shape: PointInTimeRecoverySpecification, required: true, location_name: "PointInTimeRecoverySpecification"))
    UpdateContinuousBackupsInput.struct_class = Types::UpdateContinuousBackupsInput

    UpdateContinuousBackupsOutput.add_member(:continuous_backups_description, Shapes::ShapeRef.new(shape: ContinuousBackupsDescription, location_name: "ContinuousBackupsDescription"))
    UpdateContinuousBackupsOutput.struct_class = Types::UpdateContinuousBackupsOutput

    UpdateContributorInsightsInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    UpdateContributorInsightsInput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    UpdateContributorInsightsInput.add_member(:contributor_insights_action, Shapes::ShapeRef.new(shape: ContributorInsightsAction, required: true, location_name: "ContributorInsightsAction"))
    UpdateContributorInsightsInput.struct_class = Types::UpdateContributorInsightsInput

    UpdateContributorInsightsOutput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    UpdateContributorInsightsOutput.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, location_name: "IndexName"))
    UpdateContributorInsightsOutput.add_member(:contributor_insights_status, Shapes::ShapeRef.new(shape: ContributorInsightsStatus, location_name: "ContributorInsightsStatus"))
    UpdateContributorInsightsOutput.struct_class = Types::UpdateContributorInsightsOutput

    UpdateGlobalSecondaryIndexAction.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "IndexName"))
    UpdateGlobalSecondaryIndexAction.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, required: true, location_name: "ProvisionedThroughput"))
    UpdateGlobalSecondaryIndexAction.struct_class = Types::UpdateGlobalSecondaryIndexAction

    UpdateGlobalTableInput.add_member(:global_table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "GlobalTableName"))
    UpdateGlobalTableInput.add_member(:replica_updates, Shapes::ShapeRef.new(shape: ReplicaUpdateList, required: true, location_name: "ReplicaUpdates"))
    UpdateGlobalTableInput.struct_class = Types::UpdateGlobalTableInput

    UpdateGlobalTableOutput.add_member(:global_table_description, Shapes::ShapeRef.new(shape: GlobalTableDescription, location_name: "GlobalTableDescription"))
    UpdateGlobalTableOutput.struct_class = Types::UpdateGlobalTableOutput

    UpdateGlobalTableSettingsInput.add_member(:global_table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "GlobalTableName"))
    UpdateGlobalTableSettingsInput.add_member(:global_table_billing_mode, Shapes::ShapeRef.new(shape: BillingMode, location_name: "GlobalTableBillingMode"))
    UpdateGlobalTableSettingsInput.add_member(:global_table_provisioned_write_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "GlobalTableProvisionedWriteCapacityUnits"))
    UpdateGlobalTableSettingsInput.add_member(:global_table_provisioned_write_capacity_auto_scaling_settings_update, Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate"))
    UpdateGlobalTableSettingsInput.add_member(:global_table_global_secondary_index_settings_update, Shapes::ShapeRef.new(shape: GlobalTableGlobalSecondaryIndexSettingsUpdateList, location_name: "GlobalTableGlobalSecondaryIndexSettingsUpdate"))
    UpdateGlobalTableSettingsInput.add_member(:replica_settings_update, Shapes::ShapeRef.new(shape: ReplicaSettingsUpdateList, location_name: "ReplicaSettingsUpdate"))
    UpdateGlobalTableSettingsInput.struct_class = Types::UpdateGlobalTableSettingsInput

    UpdateGlobalTableSettingsOutput.add_member(:global_table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "GlobalTableName"))
    UpdateGlobalTableSettingsOutput.add_member(:replica_settings, Shapes::ShapeRef.new(shape: ReplicaSettingsDescriptionList, location_name: "ReplicaSettings"))
    UpdateGlobalTableSettingsOutput.struct_class = Types::UpdateGlobalTableSettingsOutput

    UpdateItemInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    UpdateItemInput.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    UpdateItemInput.add_member(:attribute_updates, Shapes::ShapeRef.new(shape: AttributeUpdates, location_name: "AttributeUpdates"))
    UpdateItemInput.add_member(:expected, Shapes::ShapeRef.new(shape: ExpectedAttributeMap, location_name: "Expected"))
    UpdateItemInput.add_member(:conditional_operator, Shapes::ShapeRef.new(shape: ConditionalOperator, location_name: "ConditionalOperator"))
    UpdateItemInput.add_member(:return_values, Shapes::ShapeRef.new(shape: ReturnValue, location_name: "ReturnValues"))
    UpdateItemInput.add_member(:return_consumed_capacity, Shapes::ShapeRef.new(shape: ReturnConsumedCapacity, location_name: "ReturnConsumedCapacity"))
    UpdateItemInput.add_member(:return_item_collection_metrics, Shapes::ShapeRef.new(shape: ReturnItemCollectionMetrics, location_name: "ReturnItemCollectionMetrics"))
    UpdateItemInput.add_member(:update_expression, Shapes::ShapeRef.new(shape: UpdateExpression, location_name: "UpdateExpression"))
    UpdateItemInput.add_member(:condition_expression, Shapes::ShapeRef.new(shape: ConditionExpression, location_name: "ConditionExpression"))
    UpdateItemInput.add_member(:expression_attribute_names, Shapes::ShapeRef.new(shape: ExpressionAttributeNameMap, location_name: "ExpressionAttributeNames"))
    UpdateItemInput.add_member(:expression_attribute_values, Shapes::ShapeRef.new(shape: ExpressionAttributeValueMap, location_name: "ExpressionAttributeValues"))
    UpdateItemInput.struct_class = Types::UpdateItemInput

    UpdateItemOutput.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Attributes"))
    UpdateItemOutput.add_member(:consumed_capacity, Shapes::ShapeRef.new(shape: ConsumedCapacity, location_name: "ConsumedCapacity"))
    UpdateItemOutput.add_member(:item_collection_metrics, Shapes::ShapeRef.new(shape: ItemCollectionMetrics, location_name: "ItemCollectionMetrics"))
    UpdateItemOutput.struct_class = Types::UpdateItemOutput

    UpdateReplicationGroupMemberAction.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionName, required: true, location_name: "RegionName"))
    UpdateReplicationGroupMemberAction.add_member(:kms_master_key_id, Shapes::ShapeRef.new(shape: KMSMasterKeyId, location_name: "KMSMasterKeyId"))
    UpdateReplicationGroupMemberAction.add_member(:provisioned_throughput_override, Shapes::ShapeRef.new(shape: ProvisionedThroughputOverride, location_name: "ProvisionedThroughputOverride"))
    UpdateReplicationGroupMemberAction.add_member(:global_secondary_indexes, Shapes::ShapeRef.new(shape: ReplicaGlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexes"))
    UpdateReplicationGroupMemberAction.struct_class = Types::UpdateReplicationGroupMemberAction

    UpdateTableInput.add_member(:attribute_definitions, Shapes::ShapeRef.new(shape: AttributeDefinitions, location_name: "AttributeDefinitions"))
    UpdateTableInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    UpdateTableInput.add_member(:billing_mode, Shapes::ShapeRef.new(shape: BillingMode, location_name: "BillingMode"))
    UpdateTableInput.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput"))
    UpdateTableInput.add_member(:global_secondary_index_updates, Shapes::ShapeRef.new(shape: GlobalSecondaryIndexUpdateList, location_name: "GlobalSecondaryIndexUpdates"))
    UpdateTableInput.add_member(:stream_specification, Shapes::ShapeRef.new(shape: StreamSpecification, location_name: "StreamSpecification"))
    UpdateTableInput.add_member(:sse_specification, Shapes::ShapeRef.new(shape: SSESpecification, location_name: "SSESpecification"))
    UpdateTableInput.add_member(:replica_updates, Shapes::ShapeRef.new(shape: ReplicationGroupUpdateList, location_name: "ReplicaUpdates"))
    UpdateTableInput.struct_class = Types::UpdateTableInput

    UpdateTableOutput.add_member(:table_description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "TableDescription"))
    UpdateTableOutput.struct_class = Types::UpdateTableOutput

    UpdateTableReplicaAutoScalingInput.add_member(:global_secondary_index_updates, Shapes::ShapeRef.new(shape: GlobalSecondaryIndexAutoScalingUpdateList, location_name: "GlobalSecondaryIndexUpdates"))
    UpdateTableReplicaAutoScalingInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    UpdateTableReplicaAutoScalingInput.add_member(:provisioned_write_capacity_auto_scaling_update, Shapes::ShapeRef.new(shape: AutoScalingSettingsUpdate, location_name: "ProvisionedWriteCapacityAutoScalingUpdate"))
    UpdateTableReplicaAutoScalingInput.add_member(:replica_updates, Shapes::ShapeRef.new(shape: ReplicaAutoScalingUpdateList, location_name: "ReplicaUpdates"))
    UpdateTableReplicaAutoScalingInput.struct_class = Types::UpdateTableReplicaAutoScalingInput

    UpdateTableReplicaAutoScalingOutput.add_member(:table_auto_scaling_description, Shapes::ShapeRef.new(shape: TableAutoScalingDescription, location_name: "TableAutoScalingDescription"))
    UpdateTableReplicaAutoScalingOutput.struct_class = Types::UpdateTableReplicaAutoScalingOutput

    UpdateTimeToLiveInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    UpdateTimeToLiveInput.add_member(:time_to_live_specification, Shapes::ShapeRef.new(shape: TimeToLiveSpecification, required: true, location_name: "TimeToLiveSpecification"))
    UpdateTimeToLiveInput.struct_class = Types::UpdateTimeToLiveInput

    UpdateTimeToLiveOutput.add_member(:time_to_live_specification, Shapes::ShapeRef.new(shape: TimeToLiveSpecification, location_name: "TimeToLiveSpecification"))
    UpdateTimeToLiveOutput.struct_class = Types::UpdateTimeToLiveOutput

    WriteRequest.add_member(:put_request, Shapes::ShapeRef.new(shape: PutRequest, location_name: "PutRequest"))
    WriteRequest.add_member(:delete_request, Shapes::ShapeRef.new(shape: DeleteRequest, location_name: "DeleteRequest"))
    WriteRequest.struct_class = Types::WriteRequest

    WriteRequests.member = Shapes::ShapeRef.new(shape: WriteRequest)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2012-08-10"

      api.metadata = {
        "apiVersion" => "2012-08-10",
        "endpointPrefix" => "dynamodb",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "DynamoDB",
        "serviceFullName" => "Amazon DynamoDB",
        "serviceId" => "DynamoDB",
        "signatureVersion" => "v4",
        "targetPrefix" => "DynamoDB_20120810",
        "uid" => "dynamodb-2012-08-10",
      }
      api.endpoint_operation = :describe_endpoints

      api.add_operation(:batch_get_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: BatchGetItemInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "unprocessed_keys" => "request_items"
          }
        )
      end)

      api.add_operation(:batch_write_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchWriteItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: BatchWriteItemInput)
        o.output = Shapes::ShapeRef.new(shape: BatchWriteItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ItemCollectionSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: CreateBackupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateBackupOutput)
        o.errors << Shapes::ShapeRef.new(shape: TableNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TableInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContinuousBackupsUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BackupInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_global_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGlobalTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: CreateGlobalTableInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGlobalTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: GlobalTableAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TableNotFoundException)
      end)

      api.add_operation(:create_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: CreateTableInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteBackupInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteBackupOutput)
        o.errors << Shapes::ShapeRef.new(shape: BackupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BackupInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteItemInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConditionalCheckFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ItemCollectionSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionConflictException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteTableInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeBackupInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeBackupOutput)
        o.errors << Shapes::ShapeRef.new(shape: BackupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_continuous_backups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContinuousBackups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeContinuousBackupsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeContinuousBackupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: TableNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_contributor_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContributorInsights"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeContributorInsightsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeContributorInsightsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_operation = true
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointsResponse)
      end)

      api.add_operation(:describe_global_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGlobalTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeGlobalTableInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGlobalTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: GlobalTableNotFoundException)
      end)

      api.add_operation(:describe_global_table_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGlobalTableSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeGlobalTableSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGlobalTableSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: GlobalTableNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeLimitsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeLimitsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeTableInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_table_replica_auto_scaling, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTableReplicaAutoScaling"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTableReplicaAutoScalingInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTableReplicaAutoScalingOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_time_to_live, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTimeToLive"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeTimeToLiveInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTimeToLiveOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetItemInput)
        o.output = Shapes::ShapeRef.new(shape: GetItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_backups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBackups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: ListBackupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBackupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_contributor_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContributorInsights"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListContributorInsightsInput)
        o.output = Shapes::ShapeRef.new(shape: ListContributorInsightsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_global_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGlobalTables"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: ListGlobalTablesInput)
        o.output = Shapes::ShapeRef.new(shape: ListGlobalTablesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTables"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: ListTablesInput)
        o.output = Shapes::ShapeRef.new(shape: ListTablesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "last_evaluated_table_name" => "exclusive_start_table_name"
          }
        )
      end)

      api.add_operation(:list_tags_of_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsOfResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: ListTagsOfResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsOfResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:put_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutItemInput)
        o.output = Shapes::ShapeRef.new(shape: PutItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConditionalCheckFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ItemCollectionSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionConflictException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Query"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: QueryInput)
        o.output = Shapes::ShapeRef.new(shape: QueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "last_evaluated_key" => "exclusive_start_key"
          }
        )
      end)

      api.add_operation(:restore_table_from_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreTableFromBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: RestoreTableFromBackupInput)
        o.output = Shapes::ShapeRef.new(shape: RestoreTableFromBackupOutput)
        o.errors << Shapes::ShapeRef.new(shape: TableAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TableInUseException)
        o.errors << Shapes::ShapeRef.new(shape: BackupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BackupInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:restore_table_to_point_in_time, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreTableToPointInTime"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: RestoreTableToPointInTimeInput)
        o.output = Shapes::ShapeRef.new(shape: RestoreTableToPointInTimeOutput)
        o.errors << Shapes::ShapeRef.new(shape: TableAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TableNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TableInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRestoreTimeException)
        o.errors << Shapes::ShapeRef.new(shape: PointInTimeRecoveryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Scan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: ScanInput)
        o.output = Shapes::ShapeRef.new(shape: ScanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "last_evaluated_key" => "exclusive_start_key"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:transact_get_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TransactGetItems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: TransactGetItemsInput)
        o.output = Shapes::ShapeRef.new(shape: TransactGetItemsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCanceledException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:transact_write_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TransactWriteItems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: TransactWriteItemsInput)
        o.output = Shapes::ShapeRef.new(shape: TransactWriteItemsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionCanceledException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:update_continuous_backups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContinuousBackups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateContinuousBackupsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateContinuousBackupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: TableNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ContinuousBackupsUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_contributor_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContributorInsights"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateContributorInsightsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateContributorInsightsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_global_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGlobalTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateGlobalTableInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGlobalTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: GlobalTableNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ReplicaAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ReplicaNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TableNotFoundException)
      end)

      api.add_operation(:update_global_table_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGlobalTableSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateGlobalTableSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGlobalTableSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: GlobalTableNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ReplicaNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IndexNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateItemInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConditionalCheckFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ItemCollectionSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionConflictException)
        o.errors << Shapes::ShapeRef.new(shape: RequestLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateTableInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_table_replica_auto_scaling, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTableReplicaAutoScaling"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTableReplicaAutoScalingInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTableReplicaAutoScalingOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_time_to_live, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTimeToLive"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateTimeToLiveInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTimeToLiveOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)
    end

  end
end
