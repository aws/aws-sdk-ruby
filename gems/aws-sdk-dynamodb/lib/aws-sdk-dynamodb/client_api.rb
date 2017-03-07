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
    Backfilling = Shapes::BooleanShape.new(name: 'Backfilling')
    BatchGetItemInput = Shapes::StructureShape.new(name: 'BatchGetItemInput')
    BatchGetItemOutput = Shapes::StructureShape.new(name: 'BatchGetItemOutput')
    BatchGetRequestMap = Shapes::MapShape.new(name: 'BatchGetRequestMap')
    BatchGetResponseMap = Shapes::MapShape.new(name: 'BatchGetResponseMap')
    BatchWriteItemInput = Shapes::StructureShape.new(name: 'BatchWriteItemInput')
    BatchWriteItemOutput = Shapes::StructureShape.new(name: 'BatchWriteItemOutput')
    BatchWriteItemRequestMap = Shapes::MapShape.new(name: 'BatchWriteItemRequestMap')
    BinaryAttributeValue = Shapes::BlobShape.new(name: 'BinaryAttributeValue')
    BinarySetAttributeValue = Shapes::ListShape.new(name: 'BinarySetAttributeValue')
    BooleanAttributeValue = Shapes::BooleanShape.new(name: 'BooleanAttributeValue')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    Capacity = Shapes::StructureShape.new(name: 'Capacity')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    Condition = Shapes::StructureShape.new(name: 'Condition')
    ConditionExpression = Shapes::StringShape.new(name: 'ConditionExpression')
    ConditionalCheckFailedException = Shapes::StructureShape.new(name: 'ConditionalCheckFailedException')
    ConditionalOperator = Shapes::StringShape.new(name: 'ConditionalOperator')
    ConsistentRead = Shapes::BooleanShape.new(name: 'ConsistentRead')
    ConsumedCapacity = Shapes::StructureShape.new(name: 'ConsumedCapacity')
    ConsumedCapacityMultiple = Shapes::ListShape.new(name: 'ConsumedCapacityMultiple')
    ConsumedCapacityUnits = Shapes::FloatShape.new(name: 'ConsumedCapacityUnits')
    CreateGlobalSecondaryIndexAction = Shapes::StructureShape.new(name: 'CreateGlobalSecondaryIndexAction')
    CreateTableInput = Shapes::StructureShape.new(name: 'CreateTableInput')
    CreateTableOutput = Shapes::StructureShape.new(name: 'CreateTableOutput')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteGlobalSecondaryIndexAction = Shapes::StructureShape.new(name: 'DeleteGlobalSecondaryIndexAction')
    DeleteItemInput = Shapes::StructureShape.new(name: 'DeleteItemInput')
    DeleteItemOutput = Shapes::StructureShape.new(name: 'DeleteItemOutput')
    DeleteRequest = Shapes::StructureShape.new(name: 'DeleteRequest')
    DeleteTableInput = Shapes::StructureShape.new(name: 'DeleteTableInput')
    DeleteTableOutput = Shapes::StructureShape.new(name: 'DeleteTableOutput')
    DescribeLimitsInput = Shapes::StructureShape.new(name: 'DescribeLimitsInput')
    DescribeLimitsOutput = Shapes::StructureShape.new(name: 'DescribeLimitsOutput')
    DescribeTableInput = Shapes::StructureShape.new(name: 'DescribeTableInput')
    DescribeTableOutput = Shapes::StructureShape.new(name: 'DescribeTableOutput')
    DescribeTimeToLiveInput = Shapes::StructureShape.new(name: 'DescribeTimeToLiveInput')
    DescribeTimeToLiveOutput = Shapes::StructureShape.new(name: 'DescribeTimeToLiveOutput')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExpectedAttributeMap = Shapes::MapShape.new(name: 'ExpectedAttributeMap')
    ExpectedAttributeValue = Shapes::StructureShape.new(name: 'ExpectedAttributeValue')
    ExpressionAttributeNameMap = Shapes::MapShape.new(name: 'ExpressionAttributeNameMap')
    ExpressionAttributeNameVariable = Shapes::StringShape.new(name: 'ExpressionAttributeNameVariable')
    ExpressionAttributeValueMap = Shapes::MapShape.new(name: 'ExpressionAttributeValueMap')
    ExpressionAttributeValueVariable = Shapes::StringShape.new(name: 'ExpressionAttributeValueVariable')
    FilterConditionMap = Shapes::MapShape.new(name: 'FilterConditionMap')
    GetItemInput = Shapes::StructureShape.new(name: 'GetItemInput')
    GetItemOutput = Shapes::StructureShape.new(name: 'GetItemOutput')
    GlobalSecondaryIndex = Shapes::StructureShape.new(name: 'GlobalSecondaryIndex')
    GlobalSecondaryIndexDescription = Shapes::StructureShape.new(name: 'GlobalSecondaryIndexDescription')
    GlobalSecondaryIndexDescriptionList = Shapes::ListShape.new(name: 'GlobalSecondaryIndexDescriptionList')
    GlobalSecondaryIndexList = Shapes::ListShape.new(name: 'GlobalSecondaryIndexList')
    GlobalSecondaryIndexUpdate = Shapes::StructureShape.new(name: 'GlobalSecondaryIndexUpdate')
    GlobalSecondaryIndexUpdateList = Shapes::ListShape.new(name: 'GlobalSecondaryIndexUpdateList')
    IndexName = Shapes::StringShape.new(name: 'IndexName')
    IndexStatus = Shapes::StringShape.new(name: 'IndexStatus')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    ItemCollectionKeyAttributeMap = Shapes::MapShape.new(name: 'ItemCollectionKeyAttributeMap')
    ItemCollectionMetrics = Shapes::StructureShape.new(name: 'ItemCollectionMetrics')
    ItemCollectionMetricsMultiple = Shapes::ListShape.new(name: 'ItemCollectionMetricsMultiple')
    ItemCollectionMetricsPerTable = Shapes::MapShape.new(name: 'ItemCollectionMetricsPerTable')
    ItemCollectionSizeEstimateBound = Shapes::FloatShape.new(name: 'ItemCollectionSizeEstimateBound')
    ItemCollectionSizeEstimateRange = Shapes::ListShape.new(name: 'ItemCollectionSizeEstimateRange')
    ItemCollectionSizeLimitExceededException = Shapes::StructureShape.new(name: 'ItemCollectionSizeLimitExceededException')
    ItemList = Shapes::ListShape.new(name: 'ItemList')
    Key = Shapes::MapShape.new(name: 'Key')
    KeyConditions = Shapes::MapShape.new(name: 'KeyConditions')
    KeyExpression = Shapes::StringShape.new(name: 'KeyExpression')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    KeySchema = Shapes::ListShape.new(name: 'KeySchema')
    KeySchemaAttributeName = Shapes::StringShape.new(name: 'KeySchemaAttributeName')
    KeySchemaElement = Shapes::StructureShape.new(name: 'KeySchemaElement')
    KeyType = Shapes::StringShape.new(name: 'KeyType')
    KeysAndAttributes = Shapes::StructureShape.new(name: 'KeysAndAttributes')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAttributeValue = Shapes::ListShape.new(name: 'ListAttributeValue')
    ListTablesInput = Shapes::StructureShape.new(name: 'ListTablesInput')
    ListTablesInputLimit = Shapes::IntegerShape.new(name: 'ListTablesInputLimit')
    ListTablesOutput = Shapes::StructureShape.new(name: 'ListTablesOutput')
    ListTagsOfResourceInput = Shapes::StructureShape.new(name: 'ListTagsOfResourceInput')
    ListTagsOfResourceOutput = Shapes::StructureShape.new(name: 'ListTagsOfResourceOutput')
    LocalSecondaryIndex = Shapes::StructureShape.new(name: 'LocalSecondaryIndex')
    LocalSecondaryIndexDescription = Shapes::StructureShape.new(name: 'LocalSecondaryIndexDescription')
    LocalSecondaryIndexDescriptionList = Shapes::ListShape.new(name: 'LocalSecondaryIndexDescriptionList')
    LocalSecondaryIndexList = Shapes::ListShape.new(name: 'LocalSecondaryIndexList')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MapAttributeValue = Shapes::MapShape.new(name: 'MapAttributeValue')
    NextTokenString = Shapes::StringShape.new(name: 'NextTokenString')
    NonKeyAttributeName = Shapes::StringShape.new(name: 'NonKeyAttributeName')
    NonKeyAttributeNameList = Shapes::ListShape.new(name: 'NonKeyAttributeNameList')
    NullAttributeValue = Shapes::BooleanShape.new(name: 'NullAttributeValue')
    NumberAttributeValue = Shapes::StringShape.new(name: 'NumberAttributeValue')
    NumberSetAttributeValue = Shapes::ListShape.new(name: 'NumberSetAttributeValue')
    PositiveIntegerObject = Shapes::IntegerShape.new(name: 'PositiveIntegerObject')
    PositiveLongObject = Shapes::IntegerShape.new(name: 'PositiveLongObject')
    Projection = Shapes::StructureShape.new(name: 'Projection')
    ProjectionExpression = Shapes::StringShape.new(name: 'ProjectionExpression')
    ProjectionType = Shapes::StringShape.new(name: 'ProjectionType')
    ProvisionedThroughput = Shapes::StructureShape.new(name: 'ProvisionedThroughput')
    ProvisionedThroughputDescription = Shapes::StructureShape.new(name: 'ProvisionedThroughputDescription')
    ProvisionedThroughputExceededException = Shapes::StructureShape.new(name: 'ProvisionedThroughputExceededException')
    PutItemInput = Shapes::StructureShape.new(name: 'PutItemInput')
    PutItemInputAttributeMap = Shapes::MapShape.new(name: 'PutItemInputAttributeMap')
    PutItemOutput = Shapes::StructureShape.new(name: 'PutItemOutput')
    PutRequest = Shapes::StructureShape.new(name: 'PutRequest')
    QueryInput = Shapes::StructureShape.new(name: 'QueryInput')
    QueryOutput = Shapes::StructureShape.new(name: 'QueryOutput')
    ResourceArnString = Shapes::StringShape.new(name: 'ResourceArnString')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ReturnConsumedCapacity = Shapes::StringShape.new(name: 'ReturnConsumedCapacity')
    ReturnItemCollectionMetrics = Shapes::StringShape.new(name: 'ReturnItemCollectionMetrics')
    ReturnValue = Shapes::StringShape.new(name: 'ReturnValue')
    ScalarAttributeType = Shapes::StringShape.new(name: 'ScalarAttributeType')
    ScanInput = Shapes::StructureShape.new(name: 'ScanInput')
    ScanOutput = Shapes::StructureShape.new(name: 'ScanOutput')
    ScanSegment = Shapes::IntegerShape.new(name: 'ScanSegment')
    ScanTotalSegments = Shapes::IntegerShape.new(name: 'ScanTotalSegments')
    SecondaryIndexesCapacityMap = Shapes::MapShape.new(name: 'SecondaryIndexesCapacityMap')
    Select = Shapes::StringShape.new(name: 'Select')
    StreamArn = Shapes::StringShape.new(name: 'StreamArn')
    StreamEnabled = Shapes::BooleanShape.new(name: 'StreamEnabled')
    StreamSpecification = Shapes::StructureShape.new(name: 'StreamSpecification')
    StreamViewType = Shapes::StringShape.new(name: 'StreamViewType')
    String = Shapes::StringShape.new(name: 'String')
    StringAttributeValue = Shapes::StringShape.new(name: 'StringAttributeValue')
    StringSetAttributeValue = Shapes::ListShape.new(name: 'StringSetAttributeValue')
    TableDescription = Shapes::StructureShape.new(name: 'TableDescription')
    TableName = Shapes::StringShape.new(name: 'TableName')
    TableNameList = Shapes::ListShape.new(name: 'TableNameList')
    TableStatus = Shapes::StringShape.new(name: 'TableStatus')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagKeyString = Shapes::StringShape.new(name: 'TagKeyString')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagValueString = Shapes::StringShape.new(name: 'TagValueString')
    TimeToLiveAttributeName = Shapes::StringShape.new(name: 'TimeToLiveAttributeName')
    TimeToLiveDescription = Shapes::StructureShape.new(name: 'TimeToLiveDescription')
    TimeToLiveEnabled = Shapes::BooleanShape.new(name: 'TimeToLiveEnabled')
    TimeToLiveSpecification = Shapes::StructureShape.new(name: 'TimeToLiveSpecification')
    TimeToLiveStatus = Shapes::StringShape.new(name: 'TimeToLiveStatus')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UpdateExpression = Shapes::StringShape.new(name: 'UpdateExpression')
    UpdateGlobalSecondaryIndexAction = Shapes::StructureShape.new(name: 'UpdateGlobalSecondaryIndexAction')
    UpdateItemInput = Shapes::StructureShape.new(name: 'UpdateItemInput')
    UpdateItemOutput = Shapes::StructureShape.new(name: 'UpdateItemOutput')
    UpdateTableInput = Shapes::StructureShape.new(name: 'UpdateTableInput')
    UpdateTableOutput = Shapes::StructureShape.new(name: 'UpdateTableOutput')
    UpdateTimeToLiveInput = Shapes::StructureShape.new(name: 'UpdateTimeToLiveInput')
    UpdateTimeToLiveOutput = Shapes::StructureShape.new(name: 'UpdateTimeToLiveOutput')
    WriteRequest = Shapes::StructureShape.new(name: 'WriteRequest')
    WriteRequests = Shapes::ListShape.new(name: 'WriteRequests')

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

    BinarySetAttributeValue.member = Shapes::ShapeRef.new(shape: BinaryAttributeValue)

    Capacity.add_member(:capacity_units, Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "CapacityUnits"))
    Capacity.struct_class = Types::Capacity

    Condition.add_member(:attribute_value_list, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "AttributeValueList"))
    Condition.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, required: true, location_name: "ComparisonOperator"))
    Condition.struct_class = Types::Condition

    ConsumedCapacity.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    ConsumedCapacity.add_member(:capacity_units, Shapes::ShapeRef.new(shape: ConsumedCapacityUnits, location_name: "CapacityUnits"))
    ConsumedCapacity.add_member(:table, Shapes::ShapeRef.new(shape: Capacity, location_name: "Table"))
    ConsumedCapacity.add_member(:local_secondary_indexes, Shapes::ShapeRef.new(shape: SecondaryIndexesCapacityMap, location_name: "LocalSecondaryIndexes"))
    ConsumedCapacity.add_member(:global_secondary_indexes, Shapes::ShapeRef.new(shape: SecondaryIndexesCapacityMap, location_name: "GlobalSecondaryIndexes"))
    ConsumedCapacity.struct_class = Types::ConsumedCapacity

    ConsumedCapacityMultiple.member = Shapes::ShapeRef.new(shape: ConsumedCapacity)

    CreateGlobalSecondaryIndexAction.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "IndexName"))
    CreateGlobalSecondaryIndexAction.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, required: true, location_name: "KeySchema"))
    CreateGlobalSecondaryIndexAction.add_member(:projection, Shapes::ShapeRef.new(shape: Projection, required: true, location_name: "Projection"))
    CreateGlobalSecondaryIndexAction.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, required: true, location_name: "ProvisionedThroughput"))
    CreateGlobalSecondaryIndexAction.struct_class = Types::CreateGlobalSecondaryIndexAction

    CreateTableInput.add_member(:attribute_definitions, Shapes::ShapeRef.new(shape: AttributeDefinitions, required: true, location_name: "AttributeDefinitions"))
    CreateTableInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    CreateTableInput.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, required: true, location_name: "KeySchema"))
    CreateTableInput.add_member(:local_secondary_indexes, Shapes::ShapeRef.new(shape: LocalSecondaryIndexList, location_name: "LocalSecondaryIndexes"))
    CreateTableInput.add_member(:global_secondary_indexes, Shapes::ShapeRef.new(shape: GlobalSecondaryIndexList, location_name: "GlobalSecondaryIndexes"))
    CreateTableInput.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, required: true, location_name: "ProvisionedThroughput"))
    CreateTableInput.add_member(:stream_specification, Shapes::ShapeRef.new(shape: StreamSpecification, location_name: "StreamSpecification"))
    CreateTableInput.struct_class = Types::CreateTableInput

    CreateTableOutput.add_member(:table_description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "TableDescription"))
    CreateTableOutput.struct_class = Types::CreateTableOutput

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

    DeleteRequest.add_member(:key, Shapes::ShapeRef.new(shape: Key, required: true, location_name: "Key"))
    DeleteRequest.struct_class = Types::DeleteRequest

    DeleteTableInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    DeleteTableInput.struct_class = Types::DeleteTableInput

    DeleteTableOutput.add_member(:table_description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "TableDescription"))
    DeleteTableOutput.struct_class = Types::DeleteTableOutput

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

    DescribeTimeToLiveInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    DescribeTimeToLiveInput.struct_class = Types::DescribeTimeToLiveInput

    DescribeTimeToLiveOutput.add_member(:time_to_live_description, Shapes::ShapeRef.new(shape: TimeToLiveDescription, location_name: "TimeToLiveDescription"))
    DescribeTimeToLiveOutput.struct_class = Types::DescribeTimeToLiveOutput

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

    FilterConditionMap.key = Shapes::ShapeRef.new(shape: AttributeName)
    FilterConditionMap.value = Shapes::ShapeRef.new(shape: Condition)

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
    GlobalSecondaryIndex.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, required: true, location_name: "ProvisionedThroughput"))
    GlobalSecondaryIndex.struct_class = Types::GlobalSecondaryIndex

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

    GlobalSecondaryIndexList.member = Shapes::ShapeRef.new(shape: GlobalSecondaryIndex)

    GlobalSecondaryIndexUpdate.add_member(:update, Shapes::ShapeRef.new(shape: UpdateGlobalSecondaryIndexAction, location_name: "Update"))
    GlobalSecondaryIndexUpdate.add_member(:create, Shapes::ShapeRef.new(shape: CreateGlobalSecondaryIndexAction, location_name: "Create"))
    GlobalSecondaryIndexUpdate.add_member(:delete, Shapes::ShapeRef.new(shape: DeleteGlobalSecondaryIndexAction, location_name: "Delete"))
    GlobalSecondaryIndexUpdate.struct_class = Types::GlobalSecondaryIndexUpdate

    GlobalSecondaryIndexUpdateList.member = Shapes::ShapeRef.new(shape: GlobalSecondaryIndexUpdate)

    ItemCollectionKeyAttributeMap.key = Shapes::ShapeRef.new(shape: AttributeName)
    ItemCollectionKeyAttributeMap.value = Shapes::ShapeRef.new(shape: AttributeValue)

    ItemCollectionMetrics.add_member(:item_collection_key, Shapes::ShapeRef.new(shape: ItemCollectionKeyAttributeMap, location_name: "ItemCollectionKey"))
    ItemCollectionMetrics.add_member(:size_estimate_range_gb, Shapes::ShapeRef.new(shape: ItemCollectionSizeEstimateRange, location_name: "SizeEstimateRangeGB"))
    ItemCollectionMetrics.struct_class = Types::ItemCollectionMetrics

    ItemCollectionMetricsMultiple.member = Shapes::ShapeRef.new(shape: ItemCollectionMetrics)

    ItemCollectionMetricsPerTable.key = Shapes::ShapeRef.new(shape: TableName)
    ItemCollectionMetricsPerTable.value = Shapes::ShapeRef.new(shape: ItemCollectionMetricsMultiple)

    ItemCollectionSizeEstimateRange.member = Shapes::ShapeRef.new(shape: ItemCollectionSizeEstimateBound)

    ItemList.member = Shapes::ShapeRef.new(shape: AttributeMap)

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

    ListAttributeValue.member = Shapes::ShapeRef.new(shape: AttributeValue)

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

    LocalSecondaryIndexList.member = Shapes::ShapeRef.new(shape: LocalSecondaryIndex)

    MapAttributeValue.key = Shapes::ShapeRef.new(shape: AttributeName)
    MapAttributeValue.value = Shapes::ShapeRef.new(shape: AttributeValue)

    NonKeyAttributeNameList.member = Shapes::ShapeRef.new(shape: NonKeyAttributeName)

    NumberSetAttributeValue.member = Shapes::ShapeRef.new(shape: NumberAttributeValue)

    Projection.add_member(:projection_type, Shapes::ShapeRef.new(shape: ProjectionType, location_name: "ProjectionType"))
    Projection.add_member(:non_key_attributes, Shapes::ShapeRef.new(shape: NonKeyAttributeNameList, location_name: "NonKeyAttributes"))
    Projection.struct_class = Types::Projection

    ProvisionedThroughput.add_member(:read_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, required: true, location_name: "ReadCapacityUnits"))
    ProvisionedThroughput.add_member(:write_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, required: true, location_name: "WriteCapacityUnits"))
    ProvisionedThroughput.struct_class = Types::ProvisionedThroughput

    ProvisionedThroughputDescription.add_member(:last_increase_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastIncreaseDateTime"))
    ProvisionedThroughputDescription.add_member(:last_decrease_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastDecreaseDateTime"))
    ProvisionedThroughputDescription.add_member(:number_of_decreases_today, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "NumberOfDecreasesToday"))
    ProvisionedThroughputDescription.add_member(:read_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "ReadCapacityUnits"))
    ProvisionedThroughputDescription.add_member(:write_capacity_units, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "WriteCapacityUnits"))
    ProvisionedThroughputDescription.struct_class = Types::ProvisionedThroughputDescription

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

    StreamSpecification.add_member(:stream_enabled, Shapes::ShapeRef.new(shape: StreamEnabled, location_name: "StreamEnabled"))
    StreamSpecification.add_member(:stream_view_type, Shapes::ShapeRef.new(shape: StreamViewType, location_name: "StreamViewType"))
    StreamSpecification.struct_class = Types::StreamSpecification

    StringSetAttributeValue.member = Shapes::ShapeRef.new(shape: StringAttributeValue)

    TableDescription.add_member(:attribute_definitions, Shapes::ShapeRef.new(shape: AttributeDefinitions, location_name: "AttributeDefinitions"))
    TableDescription.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    TableDescription.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema"))
    TableDescription.add_member(:table_status, Shapes::ShapeRef.new(shape: TableStatus, location_name: "TableStatus"))
    TableDescription.add_member(:creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationDateTime"))
    TableDescription.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughputDescription, location_name: "ProvisionedThroughput"))
    TableDescription.add_member(:table_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "TableSizeBytes"))
    TableDescription.add_member(:item_count, Shapes::ShapeRef.new(shape: Long, location_name: "ItemCount"))
    TableDescription.add_member(:table_arn, Shapes::ShapeRef.new(shape: String, location_name: "TableArn"))
    TableDescription.add_member(:local_secondary_indexes, Shapes::ShapeRef.new(shape: LocalSecondaryIndexDescriptionList, location_name: "LocalSecondaryIndexes"))
    TableDescription.add_member(:global_secondary_indexes, Shapes::ShapeRef.new(shape: GlobalSecondaryIndexDescriptionList, location_name: "GlobalSecondaryIndexes"))
    TableDescription.add_member(:stream_specification, Shapes::ShapeRef.new(shape: StreamSpecification, location_name: "StreamSpecification"))
    TableDescription.add_member(:latest_stream_label, Shapes::ShapeRef.new(shape: String, location_name: "LatestStreamLabel"))
    TableDescription.add_member(:latest_stream_arn, Shapes::ShapeRef.new(shape: StreamArn, location_name: "LatestStreamArn"))
    TableDescription.struct_class = Types::TableDescription

    TableNameList.member = Shapes::ShapeRef.new(shape: TableName)

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

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UpdateGlobalSecondaryIndexAction.add_member(:index_name, Shapes::ShapeRef.new(shape: IndexName, required: true, location_name: "IndexName"))
    UpdateGlobalSecondaryIndexAction.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, required: true, location_name: "ProvisionedThroughput"))
    UpdateGlobalSecondaryIndexAction.struct_class = Types::UpdateGlobalSecondaryIndexAction

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

    UpdateTableInput.add_member(:attribute_definitions, Shapes::ShapeRef.new(shape: AttributeDefinitions, location_name: "AttributeDefinitions"))
    UpdateTableInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "TableName"))
    UpdateTableInput.add_member(:provisioned_throughput, Shapes::ShapeRef.new(shape: ProvisionedThroughput, location_name: "ProvisionedThroughput"))
    UpdateTableInput.add_member(:global_secondary_index_updates, Shapes::ShapeRef.new(shape: GlobalSecondaryIndexUpdateList, location_name: "GlobalSecondaryIndexUpdates"))
    UpdateTableInput.add_member(:stream_specification, Shapes::ShapeRef.new(shape: StreamSpecification, location_name: "StreamSpecification"))
    UpdateTableInput.struct_class = Types::UpdateTableInput

    UpdateTableOutput.add_member(:table_description, Shapes::ShapeRef.new(shape: TableDescription, location_name: "TableDescription"))
    UpdateTableOutput.struct_class = Types::UpdateTableOutput

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
        "endpointPrefix" => "dynamodb",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "Amazon DynamoDB",
        "signatureVersion" => "v4",
        "targetPrefix" => "DynamoDB_20120810",
      }

      api.add_operation(:batch_get_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetItemInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.input = Shapes::ShapeRef.new(shape: BatchWriteItemInput)
        o.output = Shapes::ShapeRef.new(shape: BatchWriteItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ItemCollectionSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTableInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteItemInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConditionalCheckFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ItemCollectionSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTableInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLimitsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeLimitsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTableInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_time_to_live, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTimeToLive"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTimeToLiveInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeTimeToLiveOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetItemInput)
        o.output = Shapes::ShapeRef.new(shape: GetItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_tables, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTables"
        o.http_method = "POST"
        o.http_request_uri = "/"
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsOfResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsOfResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:put_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutItemInput)
        o.output = Shapes::ShapeRef.new(shape: PutItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConditionalCheckFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ItemCollectionSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Query"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: QueryInput)
        o.output = Shapes::ShapeRef.new(shape: QueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "last_evaluated_key" => "exclusive_start_key"
          }
        )
      end)

      api.add_operation(:scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Scan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ScanInput)
        o.output = Shapes::ShapeRef.new(shape: ScanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:update_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateItemInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateItemOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConditionalCheckFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ItemCollectionSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_table, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTable"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTableInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTableOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_time_to_live, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTimeToLive"
        o.http_method = "POST"
        o.http_request_uri = "/"
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
