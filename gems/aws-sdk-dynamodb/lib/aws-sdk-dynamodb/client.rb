# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module DynamoDB
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :dynamodb

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # The *BatchGetItem* operation returns the attributes of one or more
      # items from one or more tables. You identify requested items by primary
      # key.
      #
      # A single operation can retrieve up to 16 MB of data, which can contain
      # as many as 100 items. *BatchGetItem* will return a partial result if
      # the response size limit is exceeded, the table\'s provisioned
      # throughput is exceeded, or an internal processing failure occurs. If a
      # partial result is returned, the operation returns a value for
      # *UnprocessedKeys*. You can use this value to retry the operation
      # starting with the next item to get.
      #
      # <important markdown="1"> If you request more than 100 items *BatchGetItem* will return a
      # *ValidationException* with the message \"Too many items requested for
      # the BatchGetItem call\".
      #
      #  </important>
      #
      # For example, if you ask to retrieve 100 items, but each individual
      # item is 300 KB in size, the system returns 52 items (so as not to
      # exceed the 16 MB limit). It also returns an appropriate
      # *UnprocessedKeys* value so you can get the next page of results. If
      # desired, your application can include its own logic to assemble the
      # pages of results into one data set.
      #
      # If *none* of the items can be processed due to insufficient
      # provisioned throughput on all of the tables in the request, then
      # *BatchGetItem* will return a *ProvisionedThroughputExceededException*.
      # If *at least one* of the items is successfully processed, then
      # *BatchGetItem* completes successfully, while returning the keys of the
      # unread items in *UnprocessedKeys*.
      #
      # <important markdown="1"> If DynamoDB returns any unprocessed items, you should retry the batch
      # operation on those items. However, *we strongly recommend that you use
      # an exponential backoff algorithm*. If you retry the batch operation
      # immediately, the underlying read or write requests can still fail due
      # to throttling on the individual tables. If you delay the batch
      # operation using exponential backoff, the individual requests in the
      # batch are much more likely to succeed.
      #
      #  For more information, see [Batch Operations and Error Handling][1] in
      # the *Amazon DynamoDB Developer Guide*.
      #
      #  </important>
      #
      # By default, *BatchGetItem* performs eventually consistent reads on
      # every table in the request. If you want strongly consistent reads
      # instead, you can set *ConsistentRead* to `true` for any or all tables.
      #
      # In order to minimize response latency, *BatchGetItem* retrieves items
      # in parallel.
      #
      # When designing your application, keep in mind that DynamoDB does not
      # return items in any particular order. To help parse the response by
      # item, include the primary key values for the items in your request in
      # the *AttributesToGet* parameter.
      #
      # If a requested item does not exist, it is not returned in the result.
      # Requests for nonexistent items consume the minimum read capacity units
      # according to the type of read. For more information, see [Capacity
      # Units Calculations][2] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations
      # [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations
      # @option params [required, Hash<String,Types::KeysAndAttributes>] :request_items
      #   A map of one or more table names and, for each table, a map that
      #   describes one or more items to retrieve from that table. Each table
      #   name can be used only once per *BatchGetItem* request.
      #
      #   Each element in the map of items to retrieve consists of the
      #   following:
      #
      #   * *ConsistentRead* - If `true`, a strongly consistent read is used; if
      #     `false` (the default), an eventually consistent read is used.
      #
      #   * *ExpressionAttributeNames* - One or more substitution tokens for
      #     attribute names in the *ProjectionExpression* parameter. The
      #     following are some use cases for using *ExpressionAttributeNames*\:
      #
      #     * To access an attribute whose name conflicts with a DynamoDB
      #       reserved word.
      #
      #     * To create a placeholder for repeating occurrences of an attribute
      #       name in an expression.
      #
      #     * To prevent special characters in an attribute name from being
      #       misinterpreted in an expression.
      #
      #     Use the **#** character in an expression to dereference an attribute
      #     name. For example, consider the following attribute name:
      #
      #     * `Percentile`
      #
      #     ^
      #
      #     The name of this attribute conflicts with a reserved word, so it
      #     cannot be used directly in an expression. (For the complete list of
      #     reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
      #     Developer Guide*). To work around this, you could specify the
      #     following for *ExpressionAttributeNames*\:
      #
      #     * `\{"#P":"Percentile"\}`
      #
      #     ^
      #
      #     You could then use this substitution in an expression, as in this
      #     example:
      #
      #     * `#P = :val`
      #
      #     ^
      #
      #     <note markdown="1"> Tokens that begin with the **\:** character are *expression
      #     attribute values*, which are placeholders for the actual value at
      #     runtime.
      #
      #      </note>
      #
      #     For more information on expression attribute names, see [Accessing
      #     Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
      #
      #   * *Keys* - An array of primary key attribute values that define
      #     specific items in the table. For each primary key, you must provide
      #     *all* of the key attributes. For example, with a simple primary key,
      #     you only need to provide the partition key value. For a composite
      #     key, you must provide *both* the partition key value and the sort
      #     key value.
      #
      #   * *ProjectionExpression* - A string that identifies one or more
      #     attributes to retrieve from the table. These attributes can include
      #     scalars, sets, or elements of a JSON document. The attributes in the
      #     expression must be separated by commas.
      #
      #     If no attribute names are specified, then all attributes will be
      #     returned. If any of the requested attributes are not found, they
      #     will not appear in the result.
      #
      #     For more information, see [Accessing Item Attributes][2] in the
      #     *Amazon DynamoDB Developer Guide*.
      #
      #   * *AttributesToGet* -
      #
      #     <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #     applications should use *ProjectionExpression* instead. Do not
      #     combine legacy parameters and expression parameters in a single API
      #     call; otherwise, DynamoDB will return a *ValidationException*
      #     exception.
      #
      #      This parameter allows you to retrieve attributes of type List or
      #     Map; however, it cannot retrieve individual elements within a List
      #     or a Map.
      #
      #      </important>
      #
      #     The names of one or more attributes to retrieve. If no attribute
      #     names are provided, then all attributes will be returned. If any of
      #     the requested attributes are not found, they will not appear in the
      #     result.
      #
      #     Note that *AttributesToGet* has no effect on provisioned throughput
      #     consumption. DynamoDB determines capacity units consumed based on
      #     item size, not on the amount of data that is returned to an
      #     application.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
      # @option params [String] :return_consumed_capacity
      #   Determines the level of detail about provisioned throughput
      #   consumption that is returned in the response:
      #
      #   * *INDEXES* - The response includes the aggregate *ConsumedCapacity*
      #     for the operation, together with *ConsumedCapacity* for each table
      #     and secondary index that was accessed.
      #
      #     Note that some operations, such as *GetItem* and *BatchGetItem*, do
      #     not access any indexes at all. In these cases, specifying *INDEXES*
      #     will only return *ConsumedCapacity* information for table(s).
      #
      #   * *TOTAL* - The response includes only the aggregate
      #     *ConsumedCapacity* for the operation.
      #
      #   * *NONE* - No *ConsumedCapacity* details are included in the response.
      # @return [Types::BatchGetItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::BatchGetItemOutput#responses #Responses} => Hash&lt;String,Array&lt;Hash&lt;String,Types::AttributeValue&gt;&gt;&gt;
      #   * {Types::BatchGetItemOutput#unprocessed_keys #UnprocessedKeys} => Hash&lt;String,Types::KeysAndAttributes&gt;
      #   * {Types::BatchGetItemOutput#consumed_capacity #ConsumedCapacity} => Array&lt;Types::ConsumedCapacity&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.batch_get_item({
      #     request_items: { # required
      #       "TableName" => {
      #         keys: [ # required
      #           {
      #             "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #           },
      #         ],
      #         attributes_to_get: ["AttributeName"],
      #         consistent_read: false,
      #         projection_expression: "ProjectionExpression",
      #         expression_attribute_names: {
      #           "ExpressionAttributeNameVariable" => "AttributeName",
      #         },
      #       },
      #     },
      #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
      #   })
      #
      # @example Response structure
      #   resp.responses #=> Hash
      #   resp.responses["TableName"] #=> Array
      #   resp.responses["TableName"][0] #=> Hash
      #   resp.responses["TableName"][0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.unprocessed_keys #=> Hash
      #   resp.unprocessed_keys["TableName"].keys #=> Array
      #   resp.unprocessed_keys["TableName"].keys[0] #=> Hash
      #   resp.unprocessed_keys["TableName"].keys[0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.unprocessed_keys["TableName"].attributes_to_get #=> Array
      #   resp.unprocessed_keys["TableName"].attributes_to_get[0] #=> String
      #   resp.unprocessed_keys["TableName"].consistent_read #=> Boolean
      #   resp.unprocessed_keys["TableName"].projection_expression #=> String
      #   resp.unprocessed_keys["TableName"].expression_attribute_names #=> Hash
      #   resp.unprocessed_keys["TableName"].expression_attribute_names["ExpressionAttributeNameVariable"] #=> String
      #   resp.consumed_capacity #=> Array
      #   resp.consumed_capacity[0].table_name #=> String
      #   resp.consumed_capacity[0].capacity_units #=> Float
      #   resp.consumed_capacity[0].table.capacity_units #=> Float
      #   resp.consumed_capacity[0].local_secondary_indexes #=> Hash
      #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].capacity_units #=> Float
      #   resp.consumed_capacity[0].global_secondary_indexes #=> Hash
      #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].capacity_units #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def batch_get_item(params = {}, options = {})
        req = build_request(:batch_get_item, params)
        req.send_request(options)
      end

      # The *BatchWriteItem* operation puts or deletes multiple items in one
      # or more tables. A single call to *BatchWriteItem* can write up to 16
      # MB of data, which can comprise as many as 25 put or delete requests.
      # Individual items to be written can be as large as 400 KB.
      #
      # <note markdown="1"> *BatchWriteItem* cannot update items. To update items, use the
      # *UpdateItem* API.
      #
      #  </note>
      #
      # The individual *PutItem* and *DeleteItem* operations specified in
      # *BatchWriteItem* are atomic; however *BatchWriteItem* as a whole is
      # not. If any requested operations fail because the table\'s provisioned
      # throughput is exceeded or an internal processing failure occurs, the
      # failed operations are returned in the *UnprocessedItems* response
      # parameter. You can investigate and optionally resend the requests.
      # Typically, you would call *BatchWriteItem* in a loop. Each iteration
      # would check for unprocessed items and submit a new *BatchWriteItem*
      # request with those unprocessed items until all items have been
      # processed.
      #
      # Note that if *none* of the items can be processed due to insufficient
      # provisioned throughput on all of the tables in the request, then
      # *BatchWriteItem* will return a
      # *ProvisionedThroughputExceededException*.
      #
      # <important markdown="1"> If DynamoDB returns any unprocessed items, you should retry the batch
      # operation on those items. However, *we strongly recommend that you use
      # an exponential backoff algorithm*. If you retry the batch operation
      # immediately, the underlying read or write requests can still fail due
      # to throttling on the individual tables. If you delay the batch
      # operation using exponential backoff, the individual requests in the
      # batch are much more likely to succeed.
      #
      #  For more information, see [Batch Operations and Error Handling][1] in
      # the *Amazon DynamoDB Developer Guide*.
      #
      #  </important>
      #
      # With *BatchWriteItem*, you can efficiently write or delete large
      # amounts of data, such as from Amazon Elastic MapReduce (EMR), or copy
      # data from another database into DynamoDB. In order to improve
      # performance with these large-scale operations, *BatchWriteItem* does
      # not behave in the same way as individual *PutItem* and *DeleteItem*
      # calls would. For example, you cannot specify conditions on individual
      # put and delete requests, and *BatchWriteItem* does not return deleted
      # items in the response.
      #
      # If you use a programming language that supports concurrency, you can
      # use threads to write items in parallel. Your application must include
      # the necessary logic to manage the threads. With languages that don\'t
      # support threading, you must update or delete the specified items one
      # at a time. In both situations, *BatchWriteItem* provides an
      # alternative where the API performs the specified put and delete
      # operations in parallel, giving you the power of the thread pool
      # approach without having to introduce complexity into your application.
      #
      # Parallel processing reduces latency, but each specified put and delete
      # request consumes the same number of write capacity units whether it is
      # processed in parallel or not. Delete operations on nonexistent items
      # consume one write capacity unit.
      #
      # If one or more of the following is true, DynamoDB rejects the entire
      # batch write operation:
      #
      # * One or more tables specified in the *BatchWriteItem* request does
      #   not exist.
      #
      # * Primary key attributes specified on an item in the request do not
      #   match those in the corresponding table\'s primary key schema.
      #
      # * You try to perform multiple operations on the same item in the same
      #   *BatchWriteItem* request. For example, you cannot put and delete the
      #   same item in the same *BatchWriteItem* request.
      #
      # * There are more than 25 requests in the batch.
      #
      # * Any individual item in a batch exceeds 400 KB.
      #
      # * The total request size exceeds 16 MB.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations
      # @option params [required, Hash<String,Array>] :request_items
      #   A map of one or more table names and, for each table, a list of
      #   operations to be performed (*DeleteRequest* or *PutRequest*). Each
      #   element in the map consists of the following:
      #
      #   * *DeleteRequest* - Perform a *DeleteItem* operation on the specified
      #     item. The item to be deleted is identified by a *Key* subelement:
      #
      #     * *Key* - A map of primary key attribute values that uniquely
      #       identify the ! item. Each entry in this map consists of an
      #       attribute name and an attribute value. For each primary key, you
      #       must provide *all* of the key attributes. For example, with a
      #       simple primary key, you only need to provide a value for the
      #       partition key. For a composite primary key, you must provide
      #       values for *both* the partition key and the sort key.
      #
      #     ^
      #
      #   * *PutRequest* - Perform a *PutItem* operation on the specified item.
      #     The item to be put is identified by an *Item* subelement:
      #
      #     * *Item* - A map of attributes and their values. Each entry in this
      #       map consists of an attribute name and an attribute value.
      #       Attribute values must not be null; string and binary type
      #       attributes must have lengths greater than zero; and set type
      #       attributes must not be empty. Requests that contain empty values
      #       will be rejected with a *ValidationException* exception.
      #
      #       If you specify any attributes that are part of an index key, then
      #       the data types for those attributes must match those of the schema
      #       in the table\'s attribute definition.
      # @option params [String] :return_consumed_capacity
      #   Determines the level of detail about provisioned throughput
      #   consumption that is returned in the response:
      #
      #   * *INDEXES* - The response includes the aggregate *ConsumedCapacity*
      #     for the operation, together with *ConsumedCapacity* for each table
      #     and secondary index that was accessed.
      #
      #     Note that some operations, such as *GetItem* and *BatchGetItem*, do
      #     not access any indexes at all. In these cases, specifying *INDEXES*
      #     will only return *ConsumedCapacity* information for table(s).
      #
      #   * *TOTAL* - The response includes only the aggregate
      #     *ConsumedCapacity* for the operation.
      #
      #   * *NONE* - No *ConsumedCapacity* details are included in the response.
      # @option params [String] :return_item_collection_metrics
      #   Determines whether item collection metrics are returned. If set to
      #   `SIZE`, the response includes statistics about item collections, if
      #   any, that were modified during the operation are returned in the
      #   response. If set to `NONE` (the default), no statistics are returned.
      # @return [Types::BatchWriteItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::BatchWriteItemOutput#unprocessed_items #UnprocessedItems} => Hash&lt;String,Array&lt;Types::WriteRequest&gt;&gt;
      #   * {Types::BatchWriteItemOutput#item_collection_metrics #ItemCollectionMetrics} => Hash&lt;String,Array&lt;Types::ItemCollectionMetrics&gt;&gt;
      #   * {Types::BatchWriteItemOutput#consumed_capacity #ConsumedCapacity} => Array&lt;Types::ConsumedCapacity&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.batch_write_item({
      #     request_items: { # required
      #       "TableName" => [
      #         {
      #           put_request: {
      #             item: { # required
      #               "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #             },
      #           },
      #           delete_request: {
      #             key: { # required
      #               "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #             },
      #           },
      #         },
      #       ],
      #     },
      #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
      #     return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
      #   })
      #
      # @example Response structure
      #   resp.unprocessed_items #=> Hash
      #   resp.unprocessed_items["TableName"] #=> Array
      #   resp.unprocessed_items["TableName"][0].put_request.item #=> Hash
      #   resp.unprocessed_items["TableName"][0].put_request.item["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.unprocessed_items["TableName"][0].delete_request.key #=> Hash
      #   resp.unprocessed_items["TableName"][0].delete_request.key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.item_collection_metrics #=> Hash
      #   resp.item_collection_metrics["TableName"] #=> Array
      #   resp.item_collection_metrics["TableName"][0].item_collection_key #=> Hash
      #   resp.item_collection_metrics["TableName"][0].item_collection_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.item_collection_metrics["TableName"][0].size_estimate_range_gb #=> Array
      #   resp.item_collection_metrics["TableName"][0].size_estimate_range_gb[0] #=> Float
      #   resp.consumed_capacity #=> Array
      #   resp.consumed_capacity[0].table_name #=> String
      #   resp.consumed_capacity[0].capacity_units #=> Float
      #   resp.consumed_capacity[0].table.capacity_units #=> Float
      #   resp.consumed_capacity[0].local_secondary_indexes #=> Hash
      #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].capacity_units #=> Float
      #   resp.consumed_capacity[0].global_secondary_indexes #=> Hash
      #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].capacity_units #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def batch_write_item(params = {}, options = {})
        req = build_request(:batch_write_item, params)
        req.send_request(options)
      end

      # The *CreateTable* operation adds a new table to your account. In an
      # AWS account, table names must be unique within each region. That is,
      # you can have two tables with same name if you create the tables in
      # different regions.
      #
      # *CreateTable* is an asynchronous operation. Upon receiving a
      # *CreateTable* request, DynamoDB immediately returns a response with a
      # *TableStatus* of `CREATING`. After the table is created, DynamoDB sets
      # the *TableStatus* to `ACTIVE`. You can perform read and write
      # operations only on an `ACTIVE` table.
      #
      # You can optionally define secondary indexes on the new table, as part
      # of the *CreateTable* operation. If you want to create multiple tables
      # with secondary indexes on them, you must create the tables
      # sequentially. Only one table with secondary indexes can be in the
      # `CREATING` state at any given time.
      #
      # You can use the *DescribeTable* API to check the table status.
      # @option params [required, Array<Types::AttributeDefinition>] :attribute_definitions
      #   An array of attributes that describe the key schema for the table and
      #   indexes.
      # @option params [required, String] :table_name
      #   The name of the table to create.
      # @option params [required, Array<Types::KeySchemaElement>] :key_schema
      #   Specifies the attributes that make up the primary key for a table or
      #   an index. The attributes in *KeySchema* must also be defined in the
      #   *AttributeDefinitions* array. For more information, see [Data
      #   Model][1] in the *Amazon DynamoDB Developer Guide*.
      #
      #   Each *KeySchemaElement* in the array is composed of:
      #
      #   * *AttributeName* - The name of this key attribute.
      #
      #   * *KeyType* - The role that the key attribute will assume:
      #
      #     * `HASH` - partition key
      #
      #     * `RANGE` - sort key
      #
      #   <note markdown="1"> The partition key of an item is also known as its *hash attribute*.
      #   The term \"hash attribute\" derives from DynamoDB\' usage of an
      #   internal hash function to evenly distribute data items across
      #   partitions, based on their partition key values.
      #
      #    The sort key of an item is also known as its *range attribute*. The
      #   term \"range attribute\" derives from the way DynamoDB stores items
      #   with the same partition key physically close together, in sorted order
      #   by the sort key value.
      #
      #    </note>
      #
      #   For a simple primary key (partition key), you must provide exactly one
      #   element with a *KeyType* of `HASH`.
      #
      #   For a composite primary key (partition key and sort key), you must
      #   provide exactly two elements, in this order: The first element must
      #   have a *KeyType* of `HASH`, and the second element must have a
      #   *KeyType* of `RANGE`.
      #
      #   For more information, see [Specifying the Primary Key][2] in the
      #   *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key
      # @option params [Array<Types::LocalSecondaryIndex>] :local_secondary_indexes
      #   One or more local secondary indexes (the maximum is five) to be
      #   created on the table. Each index is scoped to a given partition key
      #   value. There is a 10 GB size limit per partition key value; otherwise,
      #   the size of a local secondary index is unconstrained.
      #
      #   Each local secondary index in the array includes the following:
      #
      #   * *IndexName* - The name of the local secondary index. Must be unique
      #     only for this table.
      #
      #
      #
      #   * *KeySchema* - Specifies the key schema for the local secondary
      #     index. The key schema must begin with the same partition key as the
      #     table.
      #
      #   * *Projection* - Specifies attributes that are copied (projected) from
      #     the table into the index. These are in addition to the primary key
      #     attributes and index key attributes, which are automatically
      #     projected. Each attribute specification is composed of:
      #
      #     * *ProjectionType* - One of the following:
      #
      #       * `KEYS_ONLY` - Only the index and primary keys are projected into
      #         the index.
      #
      #       * `INCLUDE` - Only the specified table attributes are projected
      #         into the index. The list of projected attributes are in
      #         *NonKeyAttributes*.
      #
      #       * `ALL` - All of the table attributes are projected into the
      #         index.
      #
      #     * *NonKeyAttributes* - A list of one or more non-key attribute names
      #       that are projected into the secondary index. The total count of
      #       attributes provided in *NonKeyAttributes*, summed across all of
      #       the secondary indexes, must not exceed 20. If you project the same
      #       attribute into two different indexes, this counts as two distinct
      #       attributes when determining the total.
      # @option params [Array<Types::GlobalSecondaryIndex>] :global_secondary_indexes
      #   One or more global secondary indexes (the maximum is five) to be
      #   created on the table. Each global secondary index in the array
      #   includes the following:
      #
      #   * *IndexName* - The name of the global secondary index. Must be unique
      #     only for this table.
      #
      #
      #
      #   * *KeySchema* - Specifies the key schema for the global secondary
      #     index.
      #
      #   * *Projection* - Specifies attributes that are copied (projected) from
      #     the table into the index. These are in addition to the primary key
      #     attributes and index key attributes, which are automatically
      #     projected. Each attribute specification is composed of:
      #
      #     * *ProjectionType* - One of the following:
      #
      #       * `KEYS_ONLY` - Only the index and primary keys are projected into
      #         the index.
      #
      #       * `INCLUDE` - Only the specified table attributes are projected
      #         into the index. The list of projected attributes are in
      #         *NonKeyAttributes*.
      #
      #       * `ALL` - All of the table attributes are projected into the
      #         index.
      #
      #     * *NonKeyAttributes* - A list of one or more non-key attribute names
      #       that are projected into the secondary index. The total count of
      #       attributes provided in *NonKeyAttributes*, summed across all of
      #       the secondary indexes, must not exceed 20. If you project the same
      #       attribute into two different indexes, this counts as two distinct
      #       attributes when determining the total.
      #
      #   * *ProvisionedThroughput* - The provisioned throughput settings for
      #     the global secondary index, consisting of read and write capacity
      #     units.
      # @option params [required, Types::ProvisionedThroughput] :provisioned_throughput
      #   Represents the provisioned throughput settings for a specified table
      #   or index. The settings can be modified using the *UpdateTable*
      #   operation.
      #
      #   For current minimum and maximum provisioned throughput values, see
      #   [Limits][1] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
      # @option params [Types::StreamSpecification] :stream_specification
      #   The settings for DynamoDB Streams on the table. These settings consist
      #   of:
      #
      #   * *StreamEnabled* - Indicates whether Streams is to be enabled (true)
      #     or disabled (false).
      #
      #   * *StreamViewType* - When an item in the table is modified,
      #     *StreamViewType* determines what information is written to the
      #     table\'s stream. Valid values for *StreamViewType* are:
      #
      #     * *KEYS\_ONLY* - Only the key attributes of the modified item are
      #       written to the stream.
      #
      #     * *NEW\_IMAGE* - The entire item, as it appears after it was
      #       modified, is written to the stream.
      #
      #     * *OLD\_IMAGE* - The entire item, as it appeared before it was
      #       modified, is written to the stream.
      #
      #     * *NEW\_AND\_OLD\_IMAGES* - Both the new and the old item images of
      #       the item are written to the stream.
      # @return [Types::CreateTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateTableOutput#table_description #TableDescription} => Types::TableDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_table({
      #     attribute_definitions: [ # required
      #       {
      #         attribute_name: "KeySchemaAttributeName", # required
      #         attribute_type: "S", # required, accepts S, N, B
      #       },
      #     ],
      #     table_name: "TableName", # required
      #     key_schema: [ # required
      #       {
      #         attribute_name: "KeySchemaAttributeName", # required
      #         key_type: "HASH", # required, accepts HASH, RANGE
      #       },
      #     ],
      #     local_secondary_indexes: [
      #       {
      #         index_name: "IndexName", # required
      #         key_schema: [ # required
      #           {
      #             attribute_name: "KeySchemaAttributeName", # required
      #             key_type: "HASH", # required, accepts HASH, RANGE
      #           },
      #         ],
      #         projection: { # required
      #           projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
      #           non_key_attributes: ["NonKeyAttributeName"],
      #         },
      #       },
      #     ],
      #     global_secondary_indexes: [
      #       {
      #         index_name: "IndexName", # required
      #         key_schema: [ # required
      #           {
      #             attribute_name: "KeySchemaAttributeName", # required
      #             key_type: "HASH", # required, accepts HASH, RANGE
      #           },
      #         ],
      #         projection: { # required
      #           projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
      #           non_key_attributes: ["NonKeyAttributeName"],
      #         },
      #         provisioned_throughput: { # required
      #           read_capacity_units: 1, # required
      #           write_capacity_units: 1, # required
      #         },
      #       },
      #     ],
      #     provisioned_throughput: { # required
      #       read_capacity_units: 1, # required
      #       write_capacity_units: 1, # required
      #     },
      #     stream_specification: {
      #       stream_enabled: false,
      #       stream_view_type: "NEW_IMAGE", # accepts NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES, KEYS_ONLY
      #     },
      #   })
      #
      # @example Response structure
      #   resp.table_description.attribute_definitions #=> Array
      #   resp.table_description.attribute_definitions[0].attribute_name #=> String
      #   resp.table_description.attribute_definitions[0].attribute_type #=> String, one of "S", "N", "B"
      #   resp.table_description.table_name #=> String
      #   resp.table_description.key_schema #=> Array
      #   resp.table_description.key_schema[0].attribute_name #=> String
      #   resp.table_description.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
      #   resp.table_description.table_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
      #   resp.table_description.creation_date_time #=> Time
      #   resp.table_description.provisioned_throughput.last_increase_date_time #=> Time
      #   resp.table_description.provisioned_throughput.last_decrease_date_time #=> Time
      #   resp.table_description.provisioned_throughput.number_of_decreases_today #=> Integer
      #   resp.table_description.provisioned_throughput.read_capacity_units #=> Integer
      #   resp.table_description.provisioned_throughput.write_capacity_units #=> Integer
      #   resp.table_description.table_size_bytes #=> Integer
      #   resp.table_description.item_count #=> Integer
      #   resp.table_description.table_arn #=> String
      #   resp.table_description.local_secondary_indexes #=> Array
      #   resp.table_description.local_secondary_indexes[0].index_name #=> String
      #   resp.table_description.local_secondary_indexes[0].key_schema #=> Array
      #   resp.table_description.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
      #   resp.table_description.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
      #   resp.table_description.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
      #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes #=> Array
      #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
      #   resp.table_description.local_secondary_indexes[0].index_size_bytes #=> Integer
      #   resp.table_description.local_secondary_indexes[0].item_count #=> Integer
      #   resp.table_description.local_secondary_indexes[0].index_arn #=> String
      #   resp.table_description.global_secondary_indexes #=> Array
      #   resp.table_description.global_secondary_indexes[0].index_name #=> String
      #   resp.table_description.global_secondary_indexes[0].key_schema #=> Array
      #   resp.table_description.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
      #   resp.table_description.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
      #   resp.table_description.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
      #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes #=> Array
      #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
      #   resp.table_description.global_secondary_indexes[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
      #   resp.table_description.global_secondary_indexes[0].backfilling #=> Boolean
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_increase_date_time #=> Time
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_decrease_date_time #=> Time
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.number_of_decreases_today #=> Integer
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
      #   resp.table_description.global_secondary_indexes[0].index_size_bytes #=> Integer
      #   resp.table_description.global_secondary_indexes[0].item_count #=> Integer
      #   resp.table_description.global_secondary_indexes[0].index_arn #=> String
      #   resp.table_description.stream_specification.stream_enabled #=> Boolean
      #   resp.table_description.stream_specification.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
      #   resp.table_description.latest_stream_label #=> String
      #   resp.table_description.latest_stream_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_table(params = {}, options = {})
        req = build_request(:create_table, params)
        req.send_request(options)
      end

      # Deletes a single item in a table by primary key. You can perform a
      # conditional delete operation that deletes the item if it exists, or if
      # it has an expected attribute value.
      #
      # In addition to deleting an item, you can also return the item\'s
      # attribute values in the same operation, using the *ReturnValues*
      # parameter.
      #
      # Unless you specify conditions, the *DeleteItem* is an idempotent
      # operation; running it multiple times on the same item or attribute
      # does *not* result in an error response.
      #
      # Conditional deletes are useful for deleting items only if specific
      # conditions are met. If those conditions are met, DynamoDB performs the
      # delete. Otherwise, the item is not deleted.
      # @option params [required, String] :table_name
      #   The name of the table from which to delete the item.
      # @option params [required, Hash<String,Types::AttributeValue>] :key
      #   A map of attribute names to *AttributeValue* objects, representing the
      #   primary key of the item to delete.
      #
      #   For the primary key, you must provide all of the attributes. For
      #   example, with a simple primary key, you only need to provide a value
      #   for the partition key. For a composite primary key, you must provide
      #   values for both the partition key and the sort key.
      # @option params [Hash<String,Types::ExpectedAttributeValue>] :expected
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *ConditionExpression* instead. Do not combine
      #   legacy parameters and expression parameters in a single API call;
      #   otherwise, DynamoDB will return a *ValidationException* exception.
      #
      #    </important>
      #
      #   A map of attribute/condition pairs. *Expected* provides a conditional
      #   block for the *DeleteItem* operation.
      #
      #   Each element of *Expected* consists of an attribute name, a comparison
      #   operator, and one or more values. DynamoDB compares the attribute with
      #   the value(s) you supplied, using the comparison operator. For each
      #   *Expected* element, the result of the evaluation is either true or
      #   false.
      #
      #   If you specify more than one element in the *Expected* map, then by
      #   default all of the conditions must evaluate to true. In other words,
      #   the conditions are ANDed together. (You can use the
      #   *ConditionalOperator* parameter to OR the conditions instead. If you
      #   do this, then at least one of the conditions must evaluate to true,
      #   rather than all of them.)
      #
      #   If the *Expected* map evaluates to true, then the conditional
      #   operation succeeds; otherwise, it fails.
      #
      #   *Expected* contains the following:
      #
      #   * *AttributeValueList* - One or more values to evaluate against the
      #     supplied attribute. The number of values in the list depends on the
      #     *ComparisonOperator* being used.
      #
      #     For type Number, value comparisons are numeric.
      #
      #     String value comparisons for greater than, equals, or less than are
      #     based on ASCII character code values. For example, `a` is greater
      #     than `A`, and `a` is greater than `B`. For a list of code values,
      #     see
      #     [http://en.wikipedia.org/wiki/ASCII#ASCII\_printable\_characters][1].
      #
      #     For type Binary, DynamoDB treats each byte of the binary data as
      #     unsigned when it compares binary values.
      #
      #   * *ComparisonOperator* - A comparator for evaluating attributes in the
      #     *AttributeValueList*. When performing the comparison, DynamoDB uses
      #     strongly consistent reads.
      #
      #     The following comparison operators are available:
      #
      #     `EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS |
      #     NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN`
      #
      #     The following are descriptions of each comparison operator.
      #
      #     * `EQ`\: Equal. `EQ` is supported for all datatypes, including lists
      #       and maps.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, Binary, String Set, Number Set, or Binary
      #       Set. If an item contains an *AttributeValue* element of a
      #       different type than the one provided in the request, the value
      #       does not match. For example, `\{"S":"6"\}` does not equal
      #       `\{"N":"6"\}`. Also, `\{"N":"6"\}` does not equal `\{"NS":["6",
      #       "2", "1"]\}`.
      #
      #
      #
      #     * `NE`\: Not equal. `NE` is supported for all datatypes, including
      #       lists and maps.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* of type
      #       String, Number, Binary, String Set, Number Set, or Binary Set. If
      #       an item contains an *AttributeValue* of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not equal `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `LE`\: Less than or equal.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If an item
      #       contains an *AttributeValue* element of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `LT`\: Less than.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* of type
      #       String, Number, or Binary (not a set type). If an item contains an
      #       *AttributeValue* element of a different type than the one provided
      #       in the request, the value does not match. For example,
      #       `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also, `\{"N":"6"\}`
      #       does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `GE`\: Greater than or equal.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If an item
      #       contains an *AttributeValue* element of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `GT`\: Greater than.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If an item
      #       contains an *AttributeValue* element of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `NOT_NULL`\: The attribute exists. `NOT_NULL` is supported for all
      #       datatypes, including lists and maps.
      #
      #       <note markdown="1"> This operator tests for the existence of an attribute, not its
      #       data type. If the data type of attribute \"`a`\" is null, and you
      #       evaluate it using `NOT_NULL`, the result is a Boolean *true*. This
      #       result is because the attribute \"`a`\" exists; its data type is
      #       not relevant to the `NOT_NULL` comparison operator.
      #
      #        </note>
      #
      #     * `NULL`\: The attribute does not exist. `NULL` is supported for all
      #       datatypes, including lists and maps.
      #
      #       <note markdown="1"> This operator tests for the nonexistence of an attribute, not its
      #       data type. If the data type of attribute \"`a`\" is null, and you
      #       evaluate it using `NULL`, the result is a Boolean *false*. This is
      #       because the attribute \"`a`\" exists; its data type is not
      #       relevant to the `NULL` comparison operator.
      #
      #        </note>
      #
      #     * `CONTAINS`\: Checks for a subsequence, or value in a set.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If the target
      #       attribute of the comparison is of type String, then the operator
      #       checks for a substring match. If the target attribute of the
      #       comparison is of type Binary, then the operator looks for a
      #       subsequence of the target that matches the input. If the target
      #       attribute of the comparison is a set (\"`SS`\", \"`NS`\", or
      #       \"`BS`\"), then the operator evaluates to true if it finds an
      #       exact match with any member of the set.
      #
      #       CONTAINS is supported for lists: When evaluating \"`a CONTAINS
      #       b`\", \"`a`\" can be a list; however, \"`b`\" cannot be a set, a
      #       map, or a list.
      #
      #     * `NOT_CONTAINS`\: Checks for absence of a subsequence, or absence
      #       of a value in a set.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If the target
      #       attribute of the comparison is a String, then the operator checks
      #       for the absence of a substring match. If the target attribute of
      #       the comparison is Binary, then the operator checks for the absence
      #       of a subsequence of the target that matches the input. If the
      #       target attribute of the comparison is a set (\"`SS`\", \"`NS`\",
      #       or \"`BS`\"), then the operator evaluates to true if it *does not*
      #       find an exact match with any member of the set.
      #
      #       NOT\_CONTAINS is supported for lists: When evaluating \"`a NOT
      #       CONTAINS b`\", \"`a`\" can be a list; however, \"`b`\" cannot be a
      #       set, a map, or a list.
      #
      #     * `BEGINS_WITH`\: Checks for a prefix.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* of type
      #       String or Binary (not a Number or a set type). The target
      #       attribute of the comparison must be of type String or Binary (not
      #       a Number or a set type).
      #
      #
      #
      #     * `IN`\: Checks for matching elements within two sets.
      #
      #       *AttributeValueList* can contain one or more *AttributeValue*
      #       elements of type String, Number, or Binary (not a set type). These
      #       attributes are compared against an existing set type attribute of
      #       an item. If any elements of the input set are present in the item
      #       attribute, the expression evaluates to true.
      #
      #     * `BETWEEN`\: Greater than or equal to the first value, and less
      #       than or equal to the second value.
      #
      #       *AttributeValueList* must contain two *AttributeValue* elements of
      #       the same type, either String, Number, or Binary (not a set type).
      #       A target attribute matches if the target value is greater than, or
      #       equal to, the first element and less than, or equal to, the second
      #       element. If an item contains an *AttributeValue* element of a
      #       different type than the one provided in the request, the value
      #       does not match. For example, `\{"S":"6"\}` does not compare to
      #       `\{"N":"6"\}`. Also, `\{"N":"6"\}` does not compare to
      #       `\{"NS":["6", "2", "1"]\}`
      #
      #   For usage examples of *AttributeValueList* and *ComparisonOperator*,
      #   see [Legacy Conditional Parameters][2] in the *Amazon DynamoDB
      #   Developer Guide*.
      #
      #   For backward compatibility with previous DynamoDB releases, the
      #   following parameters can be used instead of *AttributeValueList* and
      #   *ComparisonOperator*\:
      #
      #   * *Value* - A value for DynamoDB to compare with an attribute.
      #
      #   * *Exists* - A Boolean value that causes DynamoDB to evaluate the
      #     value before attempting the conditional operation:
      #
      #     * If *Exists* is `true`, DynamoDB will check to see if that
      #       attribute value already exists in the table. If it is found, then
      #       the condition evaluates to true; otherwise the condition evaluate
      #       to false.
      #
      #     * If *Exists* is `false`, DynamoDB assumes that the attribute value
      #       does *not* exist in the table. If in fact the value does not
      #       exist, then the assumption is valid and the condition evaluates to
      #       true. If the value is found, despite the assumption that it does
      #       not exist, the condition evaluates to false.
      #
      #     Note that the default value for *Exists* is `true`.
      #
      #   The *Value* and *Exists* parameters are incompatible with
      #   *AttributeValueList* and *ComparisonOperator*. Note that if you use
      #   both sets of parameters at once, DynamoDB will return a
      #   *ValidationException* exception.
      #
      #   <note markdown="1"> This parameter does not support attributes of type List or Map.
      #
      #    </note>
      #
      #
      #
      #   [1]: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html
      # @option params [String] :conditional_operator
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *ConditionExpression* instead. Do not combine
      #   legacy parameters and expression parameters in a single API call;
      #   otherwise, DynamoDB will return a *ValidationException* exception.
      #
      #    </important>
      #
      #   A logical operator to apply to the conditions in the *Expected* map:
      #
      #   * `AND` - If all of the conditions evaluate to true, then the entire
      #     map evaluates to true.
      #
      #   * `OR` - If at least one of the conditions evaluate to true, then the
      #     entire map evaluates to true.
      #
      #   If you omit *ConditionalOperator*, then `AND` is the default.
      #
      #   The operation will succeed only if the entire map evaluates to true.
      #
      #   <note markdown="1"> This parameter does not support attributes of type List or Map.
      #
      #    </note>
      # @option params [String] :return_values
      #   Use *ReturnValues* if you want to get the item attributes as they
      #   appeared before they were deleted. For *DeleteItem*, the valid values
      #   are:
      #
      #   * `NONE` - If *ReturnValues* is not specified, or if its value is
      #     `NONE`, then nothing is returned. (This setting is the default for
      #     *ReturnValues*.)
      #
      #   * `ALL_OLD` - The content of the old item is returned.
      #
      #   <note markdown="1"> The *ReturnValues* parameter is used by several DynamoDB operations;
      #   however, *DeleteItem* does not recognize any values other than `NONE`
      #   or `ALL_OLD`.
      #
      #    </note>
      # @option params [String] :return_consumed_capacity
      #   Determines the level of detail about provisioned throughput
      #   consumption that is returned in the response:
      #
      #   * *INDEXES* - The response includes the aggregate *ConsumedCapacity*
      #     for the operation, together with *ConsumedCapacity* for each table
      #     and secondary index that was accessed.
      #
      #     Note that some operations, such as *GetItem* and *BatchGetItem*, do
      #     not access any indexes at all. In these cases, specifying *INDEXES*
      #     will only return *ConsumedCapacity* information for table(s).
      #
      #   * *TOTAL* - The response includes only the aggregate
      #     *ConsumedCapacity* for the operation.
      #
      #   * *NONE* - No *ConsumedCapacity* details are included in the response.
      # @option params [String] :return_item_collection_metrics
      #   Determines whether item collection metrics are returned. If set to
      #   `SIZE`, the response includes statistics about item collections, if
      #   any, that were modified during the operation are returned in the
      #   response. If set to `NONE` (the default), no statistics are returned.
      # @option params [String] :condition_expression
      #   A condition that must be satisfied in order for a conditional
      #   *DeleteItem* to succeed.
      #
      #   An expression can contain any of the following:
      #
      #   * Functions: `attribute_exists | attribute_not_exists | attribute_type
      #     | contains | begins_with | size`
      #
      #     These function names are case-sensitive.
      #
      #   * Comparison operators: ` = | &#x3C;&#x3E; | &#x3C; | &#x3E; | &#x3C;=
      #     | &#x3E;= | BETWEEN | IN`
      #
      #   * Logical operators: `AND | OR | NOT`
      #
      #   For more information on condition expressions, see [Specifying
      #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
      #
      #   <note markdown="1"> *ConditionExpression* replaces the legacy *ConditionalOperator* and
      #   *Expected* parameters.
      #
      #    </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
      # @option params [Hash<String,String>] :expression_attribute_names
      #   One or more substitution tokens for attribute names in an expression.
      #   The following are some use cases for using
      #   *ExpressionAttributeNames*\:
      #
      #   * To access an attribute whose name conflicts with a DynamoDB reserved
      #     word.
      #
      #   * To create a placeholder for repeating occurrences of an attribute
      #     name in an expression.
      #
      #   * To prevent special characters in an attribute name from being
      #     misinterpreted in an expression.
      #
      #   Use the **#** character in an expression to dereference an attribute
      #   name. For example, consider the following attribute name:
      #
      #   * `Percentile`
      #
      #   ^
      #
      #   The name of this attribute conflicts with a reserved word, so it
      #   cannot be used directly in an expression. (For the complete list of
      #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
      #   Developer Guide*). To work around this, you could specify the
      #   following for *ExpressionAttributeNames*\:
      #
      #   * `\{"#P":"Percentile"\}`
      #
      #   ^
      #
      #   You could then use this substitution in an expression, as in this
      #   example:
      #
      #   * `#P = :val`
      #
      #   ^
      #
      #   <note markdown="1"> Tokens that begin with the **\:** character are *expression attribute
      #   values*, which are placeholders for the actual value at runtime.
      #
      #    </note>
      #
      #   For more information on expression attribute names, see [Accessing
      #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
      # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
      #   One or more values that can be substituted in an expression.
      #
      #   Use the **\:** (colon) character in an expression to dereference an
      #   attribute value. For example, suppose that you wanted to check whether
      #   the value of the *ProductStatus* attribute was one of the following:
      #
      #   `Available | Backordered | Discontinued`
      #
      #   You would first need to specify *ExpressionAttributeValues* as
      #   follows:
      #
      #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
      #   ":disc":\{"S":"Discontinued"\} \}`
      #
      #   You could then use these values in an expression, such as this:
      #
      #   `ProductStatus IN (:avail, :back, :disc)`
      #
      #   For more information on expression attribute values, see [Specifying
      #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
      # @return [Types::DeleteItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteItemOutput#attributes #Attributes} => Hash&lt;String,Types::AttributeValue&gt;
      #   * {Types::DeleteItemOutput#consumed_capacity #ConsumedCapacity} => Types::ConsumedCapacity
      #   * {Types::DeleteItemOutput#item_collection_metrics #ItemCollectionMetrics} => Types::ItemCollectionMetrics
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_item({
      #     table_name: "TableName", # required
      #     key: { # required
      #       "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #     },
      #     expected: {
      #       "AttributeName" => {
      #         value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #         exists: false,
      #         comparison_operator: "EQ", # accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
      #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #       },
      #     },
      #     conditional_operator: "AND", # accepts AND, OR
      #     return_values: "NONE", # accepts NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW
      #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
      #     return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
      #     condition_expression: "ConditionExpression",
      #     expression_attribute_names: {
      #       "ExpressionAttributeNameVariable" => "AttributeName",
      #     },
      #     expression_attribute_values: {
      #       "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #     },
      #   })
      #
      # @example Response structure
      #   resp.attributes #=> Hash
      #   resp.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.consumed_capacity.table_name #=> String
      #   resp.consumed_capacity.capacity_units #=> Float
      #   resp.consumed_capacity.table.capacity_units #=> Float
      #   resp.consumed_capacity.local_secondary_indexes #=> Hash
      #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
      #   resp.consumed_capacity.global_secondary_indexes #=> Hash
      #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
      #   resp.item_collection_metrics.item_collection_key #=> Hash
      #   resp.item_collection_metrics.item_collection_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.item_collection_metrics.size_estimate_range_gb #=> Array
      #   resp.item_collection_metrics.size_estimate_range_gb[0] #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_item(params = {}, options = {})
        req = build_request(:delete_item, params)
        req.send_request(options)
      end

      # The *DeleteTable* operation deletes a table and all of its items.
      # After a *DeleteTable* request, the specified table is in the
      # `DELETING` state until DynamoDB completes the deletion. If the table
      # is in the `ACTIVE` state, you can delete it. If a table is in
      # `CREATING` or `UPDATING` states, then DynamoDB returns a
      # *ResourceInUseException*. If the specified table does not exist,
      # DynamoDB returns a *ResourceNotFoundException*. If table is already in
      # the `DELETING` state, no error is returned.
      #
      # <note markdown="1"> DynamoDB might continue to accept data read and write operations, such
      # as *GetItem* and *PutItem*, on a table in the `DELETING` state until
      # the table deletion is complete.
      #
      #  </note>
      #
      # When you delete a table, any indexes on that table are also deleted.
      #
      # If you have DynamoDB Streams enabled on the table, then the
      # corresponding stream on that table goes into the `DISABLED` state, and
      # the stream is automatically deleted after 24 hours.
      #
      # Use the *DescribeTable* API to check the status of the table.
      # @option params [required, String] :table_name
      #   The name of the table to delete.
      # @return [Types::DeleteTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteTableOutput#table_description #TableDescription} => Types::TableDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_table({
      #     table_name: "TableName", # required
      #   })
      #
      # @example Response structure
      #   resp.table_description.attribute_definitions #=> Array
      #   resp.table_description.attribute_definitions[0].attribute_name #=> String
      #   resp.table_description.attribute_definitions[0].attribute_type #=> String, one of "S", "N", "B"
      #   resp.table_description.table_name #=> String
      #   resp.table_description.key_schema #=> Array
      #   resp.table_description.key_schema[0].attribute_name #=> String
      #   resp.table_description.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
      #   resp.table_description.table_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
      #   resp.table_description.creation_date_time #=> Time
      #   resp.table_description.provisioned_throughput.last_increase_date_time #=> Time
      #   resp.table_description.provisioned_throughput.last_decrease_date_time #=> Time
      #   resp.table_description.provisioned_throughput.number_of_decreases_today #=> Integer
      #   resp.table_description.provisioned_throughput.read_capacity_units #=> Integer
      #   resp.table_description.provisioned_throughput.write_capacity_units #=> Integer
      #   resp.table_description.table_size_bytes #=> Integer
      #   resp.table_description.item_count #=> Integer
      #   resp.table_description.table_arn #=> String
      #   resp.table_description.local_secondary_indexes #=> Array
      #   resp.table_description.local_secondary_indexes[0].index_name #=> String
      #   resp.table_description.local_secondary_indexes[0].key_schema #=> Array
      #   resp.table_description.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
      #   resp.table_description.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
      #   resp.table_description.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
      #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes #=> Array
      #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
      #   resp.table_description.local_secondary_indexes[0].index_size_bytes #=> Integer
      #   resp.table_description.local_secondary_indexes[0].item_count #=> Integer
      #   resp.table_description.local_secondary_indexes[0].index_arn #=> String
      #   resp.table_description.global_secondary_indexes #=> Array
      #   resp.table_description.global_secondary_indexes[0].index_name #=> String
      #   resp.table_description.global_secondary_indexes[0].key_schema #=> Array
      #   resp.table_description.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
      #   resp.table_description.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
      #   resp.table_description.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
      #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes #=> Array
      #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
      #   resp.table_description.global_secondary_indexes[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
      #   resp.table_description.global_secondary_indexes[0].backfilling #=> Boolean
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_increase_date_time #=> Time
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_decrease_date_time #=> Time
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.number_of_decreases_today #=> Integer
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
      #   resp.table_description.global_secondary_indexes[0].index_size_bytes #=> Integer
      #   resp.table_description.global_secondary_indexes[0].item_count #=> Integer
      #   resp.table_description.global_secondary_indexes[0].index_arn #=> String
      #   resp.table_description.stream_specification.stream_enabled #=> Boolean
      #   resp.table_description.stream_specification.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
      #   resp.table_description.latest_stream_label #=> String
      #   resp.table_description.latest_stream_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_table(params = {}, options = {})
        req = build_request(:delete_table, params)
        req.send_request(options)
      end

      # Returns the current provisioned-capacity limits for your AWS account
      # in a region, both for the region as a whole and for any one DynamoDB
      # table that you create there.
      #
      # When you establish an AWS account, the account has initial limits on
      # the maximum read capacity units and write capacity units that you can
      # provision across all of your DynamoDB tables in a given region. Also,
      # there are per-table limits that apply when you create a table there.
      # For more information, see [Limits][1] page in the *Amazon DynamoDB
      # Developer Guide*.
      #
      # Although you can increase these limits by filing a case at [AWS
      # Support Center][2], obtaining the increase is not instantaneous. The
      # *DescribeLimits* API lets you write code to compare the capacity you
      # are currently using to those limits imposed by your account so that
      # you have enough time to apply for an increase before you hit a limit.
      #
      # For example, you could use one of the AWS SDKs to do the following:
      #
      # 1.  Call *DescribeLimits* for a particular region to obtain your
      #     current account limits on provisioned capacity there.
      #
      # 2.  Create a variable to hold the aggregate read capacity units
      #     provisioned for all your tables in that region, and one to hold
      #     the aggregate write capacity units. Zero them both.
      #
      # 3.  Call *ListTables* to obtain a list of all your DynamoDB tables.
      #
      # 4.  For each table name listed by *ListTables*, do the following:
      # 
      #     * Call *DescribeTable* with the table name.
      # 
      #     * Use the data returned by *DescribeTable* to add the read
      #       capacity units and write capacity units provisioned for the
      #       table itself to your variables.
      # 
      #     * If the table has one or more global secondary indexes (GSIs),
      #       loop over these GSIs and add their provisioned capacity values
      #       to your variables as well.
      #
      # 5.  Report the account limits for that region returned by
      #     *DescribeLimits*, along with the total current provisioned
      #     capacity levels you have calculated.
      #
      # This will let you see whether you are getting close to your
      # account-level limits.
      #
      # The per-table limits apply only when you are creating a new table.
      # They restrict the sum of the provisioned capacity of the new table
      # itself and all its global secondary indexes.
      #
      # For existing tables and their GSIs, DynamoDB will not let you increase
      # provisioned capacity extremely rapidly, but the only upper limit that
      # applies is that the aggregate provisioned capacity over all your
      # tables and GSIs cannot exceed either of the per-account limits.
      #
      # <note markdown="1"> *DescribeLimits* should only be called periodically. You can expect
      # throttling errors if you call it more than once in a minute.
      #
      #  </note>
      #
      # The *DescribeLimits* Request element has no content.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
      # [2]: https://console.aws.amazon.com/support/home#/
      # @return [Types::DescribeLimitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeLimitsOutput#account_max_read_capacity_units #AccountMaxReadCapacityUnits} => Integer
      #   * {Types::DescribeLimitsOutput#account_max_write_capacity_units #AccountMaxWriteCapacityUnits} => Integer
      #   * {Types::DescribeLimitsOutput#table_max_read_capacity_units #TableMaxReadCapacityUnits} => Integer
      #   * {Types::DescribeLimitsOutput#table_max_write_capacity_units #TableMaxWriteCapacityUnits} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_limits()
      #
      # @example Response structure
      #   resp.account_max_read_capacity_units #=> Integer
      #   resp.account_max_write_capacity_units #=> Integer
      #   resp.table_max_read_capacity_units #=> Integer
      #   resp.table_max_write_capacity_units #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_limits(params = {}, options = {})
        req = build_request(:describe_limits, params)
        req.send_request(options)
      end

      # Returns information about the table, including the current status of
      # the table, when it was created, the primary key schema, and any
      # indexes on the table.
      #
      # <note markdown="1"> If you issue a *DescribeTable* request immediately after a
      # *CreateTable* request, DynamoDB might return a
      # *ResourceNotFoundException*. This is because *DescribeTable* uses an
      # eventually consistent query, and the metadata for your table might not
      # be available at that moment. Wait for a few seconds, and then try the
      # *DescribeTable* request again.
      #
      #  </note>
      # @option params [required, String] :table_name
      #   The name of the table to describe.
      # @return [Types::DescribeTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeTableOutput#table #Table} => Types::TableDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_table({
      #     table_name: "TableName", # required
      #   })
      #
      # @example Response structure
      #   resp.table.attribute_definitions #=> Array
      #   resp.table.attribute_definitions[0].attribute_name #=> String
      #   resp.table.attribute_definitions[0].attribute_type #=> String, one of "S", "N", "B"
      #   resp.table.table_name #=> String
      #   resp.table.key_schema #=> Array
      #   resp.table.key_schema[0].attribute_name #=> String
      #   resp.table.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
      #   resp.table.table_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
      #   resp.table.creation_date_time #=> Time
      #   resp.table.provisioned_throughput.last_increase_date_time #=> Time
      #   resp.table.provisioned_throughput.last_decrease_date_time #=> Time
      #   resp.table.provisioned_throughput.number_of_decreases_today #=> Integer
      #   resp.table.provisioned_throughput.read_capacity_units #=> Integer
      #   resp.table.provisioned_throughput.write_capacity_units #=> Integer
      #   resp.table.table_size_bytes #=> Integer
      #   resp.table.item_count #=> Integer
      #   resp.table.table_arn #=> String
      #   resp.table.local_secondary_indexes #=> Array
      #   resp.table.local_secondary_indexes[0].index_name #=> String
      #   resp.table.local_secondary_indexes[0].key_schema #=> Array
      #   resp.table.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
      #   resp.table.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
      #   resp.table.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
      #   resp.table.local_secondary_indexes[0].projection.non_key_attributes #=> Array
      #   resp.table.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
      #   resp.table.local_secondary_indexes[0].index_size_bytes #=> Integer
      #   resp.table.local_secondary_indexes[0].item_count #=> Integer
      #   resp.table.local_secondary_indexes[0].index_arn #=> String
      #   resp.table.global_secondary_indexes #=> Array
      #   resp.table.global_secondary_indexes[0].index_name #=> String
      #   resp.table.global_secondary_indexes[0].key_schema #=> Array
      #   resp.table.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
      #   resp.table.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
      #   resp.table.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
      #   resp.table.global_secondary_indexes[0].projection.non_key_attributes #=> Array
      #   resp.table.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
      #   resp.table.global_secondary_indexes[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
      #   resp.table.global_secondary_indexes[0].backfilling #=> Boolean
      #   resp.table.global_secondary_indexes[0].provisioned_throughput.last_increase_date_time #=> Time
      #   resp.table.global_secondary_indexes[0].provisioned_throughput.last_decrease_date_time #=> Time
      #   resp.table.global_secondary_indexes[0].provisioned_throughput.number_of_decreases_today #=> Integer
      #   resp.table.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
      #   resp.table.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
      #   resp.table.global_secondary_indexes[0].index_size_bytes #=> Integer
      #   resp.table.global_secondary_indexes[0].item_count #=> Integer
      #   resp.table.global_secondary_indexes[0].index_arn #=> String
      #   resp.table.stream_specification.stream_enabled #=> Boolean
      #   resp.table.stream_specification.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
      #   resp.table.latest_stream_label #=> String
      #   resp.table.latest_stream_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_table(params = {}, options = {})
        req = build_request(:describe_table, params)
        req.send_request(options)
      end

      # The *GetItem* operation returns a set of attributes for the item with
      # the given primary key. If there is no matching item, *GetItem* does
      # not return any data.
      #
      # *GetItem* provides an eventually consistent read by default. If your
      # application requires a strongly consistent read, set *ConsistentRead*
      # to `true`. Although a strongly consistent read might take more time
      # than an eventually consistent read, it always returns the last updated
      # value.
      # @option params [required, String] :table_name
      #   The name of the table containing the requested item.
      # @option params [required, Hash<String,Types::AttributeValue>] :key
      #   A map of attribute names to *AttributeValue* objects, representing the
      #   primary key of the item to retrieve.
      #
      #   For the primary key, you must provide all of the attributes. For
      #   example, with a simple primary key, you only need to provide a value
      #   for the partition key. For a composite primary key, you must provide
      #   values for both the partition key and the sort key.
      # @option params [Array<String>] :attributes_to_get
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *ProjectionExpression* instead. Do not combine
      #   legacy parameters and expression parameters in a single API call;
      #   otherwise, DynamoDB will return a *ValidationException* exception.
      #
      #    This parameter allows you to retrieve attributes of type List or Map;
      #   however, it cannot retrieve individual elements within a List or a
      #   Map.
      #
      #    </important>
      #
      #   The names of one or more attributes to retrieve. If no attribute names
      #   are provided, then all attributes will be returned. If any of the
      #   requested attributes are not found, they will not appear in the
      #   result.
      #
      #   Note that *AttributesToGet* has no effect on provisioned throughput
      #   consumption. DynamoDB determines capacity units consumed based on item
      #   size, not on the amount of data that is returned to an application.
      # @option params [Boolean] :consistent_read
      #   Determines the read consistency model: If set to `true`, then the
      #   operation uses strongly consistent reads; otherwise, the operation
      #   uses eventually consistent reads.
      # @option params [String] :return_consumed_capacity
      #   Determines the level of detail about provisioned throughput
      #   consumption that is returned in the response:
      #
      #   * *INDEXES* - The response includes the aggregate *ConsumedCapacity*
      #     for the operation, together with *ConsumedCapacity* for each table
      #     and secondary index that was accessed.
      #
      #     Note that some operations, such as *GetItem* and *BatchGetItem*, do
      #     not access any indexes at all. In these cases, specifying *INDEXES*
      #     will only return *ConsumedCapacity* information for table(s).
      #
      #   * *TOTAL* - The response includes only the aggregate
      #     *ConsumedCapacity* for the operation.
      #
      #   * *NONE* - No *ConsumedCapacity* details are included in the response.
      # @option params [String] :projection_expression
      #   A string that identifies one or more attributes to retrieve from the
      #   table. These attributes can include scalars, sets, or elements of a
      #   JSON document. The attributes in the expression must be separated by
      #   commas.
      #
      #   If no attribute names are specified, then all attributes will be
      #   returned. If any of the requested attributes are not found, they will
      #   not appear in the result.
      #
      #   For more information, see [Accessing Item Attributes][1] in the
      #   *Amazon DynamoDB Developer Guide*.
      #
      #   <note markdown="1"> *ProjectionExpression* replaces the legacy *AttributesToGet*
      #   parameter.
      #
      #    </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
      # @option params [Hash<String,String>] :expression_attribute_names
      #   One or more substitution tokens for attribute names in an expression.
      #   The following are some use cases for using
      #   *ExpressionAttributeNames*\:
      #
      #   * To access an attribute whose name conflicts with a DynamoDB reserved
      #     word.
      #
      #   * To create a placeholder for repeating occurrences of an attribute
      #     name in an expression.
      #
      #   * To prevent special characters in an attribute name from being
      #     misinterpreted in an expression.
      #
      #   Use the **#** character in an expression to dereference an attribute
      #   name. For example, consider the following attribute name:
      #
      #   * `Percentile`
      #
      #   ^
      #
      #   The name of this attribute conflicts with a reserved word, so it
      #   cannot be used directly in an expression. (For the complete list of
      #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
      #   Developer Guide*). To work around this, you could specify the
      #   following for *ExpressionAttributeNames*\:
      #
      #   * `\{"#P":"Percentile"\}`
      #
      #   ^
      #
      #   You could then use this substitution in an expression, as in this
      #   example:
      #
      #   * `#P = :val`
      #
      #   ^
      #
      #   <note markdown="1"> Tokens that begin with the **\:** character are *expression attribute
      #   values*, which are placeholders for the actual value at runtime.
      #
      #    </note>
      #
      #   For more information on expression attribute names, see [Accessing
      #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
      # @return [Types::GetItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetItemOutput#item #Item} => Hash&lt;String,Types::AttributeValue&gt;
      #   * {Types::GetItemOutput#consumed_capacity #ConsumedCapacity} => Types::ConsumedCapacity
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_item({
      #     table_name: "TableName", # required
      #     key: { # required
      #       "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #     },
      #     attributes_to_get: ["AttributeName"],
      #     consistent_read: false,
      #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
      #     projection_expression: "ProjectionExpression",
      #     expression_attribute_names: {
      #       "ExpressionAttributeNameVariable" => "AttributeName",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.item #=> Hash
      #   resp.item["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.consumed_capacity.table_name #=> String
      #   resp.consumed_capacity.capacity_units #=> Float
      #   resp.consumed_capacity.table.capacity_units #=> Float
      #   resp.consumed_capacity.local_secondary_indexes #=> Hash
      #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
      #   resp.consumed_capacity.global_secondary_indexes #=> Hash
      #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_item(params = {}, options = {})
        req = build_request(:get_item, params)
        req.send_request(options)
      end

      # Returns an array of table names associated with the current account
      # and endpoint. The output from *ListTables* is paginated, with each
      # page returning a maximum of 100 table names.
      # @option params [String] :exclusive_start_table_name
      #   The first table name that this operation will evaluate. Use the value
      #   that was returned for *LastEvaluatedTableName* in a previous
      #   operation, so that you can obtain the next page of results.
      # @option params [Integer] :limit
      #   A maximum number of table names to return. If this parameter is not
      #   specified, the limit is 100.
      # @return [Types::ListTablesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTablesOutput#table_names #TableNames} => Array&lt;String&gt;
      #   * {Types::ListTablesOutput#last_evaluated_table_name #LastEvaluatedTableName} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tables({
      #     exclusive_start_table_name: "TableName",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.table_names #=> Array
      #   resp.table_names[0] #=> String
      #   resp.last_evaluated_table_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_tables(params = {}, options = {})
        req = build_request(:list_tables, params)
        req.send_request(options)
      end

      # Creates a new item, or replaces an old item with a new item. If an
      # item that has the same primary key as the new item already exists in
      # the specified table, the new item completely replaces the existing
      # item. You can perform a conditional put operation (add a new item if
      # one with the specified primary key doesn\'t exist), or replace an
      # existing item if it has certain attribute values.
      #
      # In addition to putting an item, you can also return the item\'s
      # attribute values in the same operation, using the *ReturnValues*
      # parameter.
      #
      # When you add an item, the primary key attribute(s) are the only
      # required attributes. Attribute values cannot be null. String and
      # Binary type attributes must have lengths greater than zero. Set type
      # attributes cannot be empty. Requests with empty values will be
      # rejected with a *ValidationException* exception.
      #
      # You can request that *PutItem* return either a copy of the original
      # item (before the update) or a copy of the updated item (after the
      # update). For more information, see the *ReturnValues* description
      # below.
      #
      # <note markdown="1"> To prevent a new item from replacing an existing item, use a
      # conditional expression that contains the `attribute_not_exists`
      # function with the name of the attribute being used as the partition
      # key for the table. Since every record must contain that attribute, the
      # `attribute_not_exists` function will only succeed if no matching item
      # exists.
      #
      #  </note>
      #
      # For more information about using this API, see [Working with Items][1]
      # in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html
      # @option params [required, String] :table_name
      #   The name of the table to contain the item.
      # @option params [required, Hash<String,Types::AttributeValue>] :item
      #   A map of attribute name/value pairs, one for each attribute. Only the
      #   primary key attributes are required; you can optionally provide other
      #   attribute name-value pairs for the item.
      #
      #   You must provide all of the attributes for the primary key. For
      #   example, with a simple primary key, you only need to provide a value
      #   for the partition key. For a composite primary key, you must provide
      #   both values for both the partition key and the sort key.
      #
      #   If you specify any attributes that are part of an index key, then the
      #   data types for those attributes must match those of the schema in the
      #   table\'s attribute definition.
      #
      #   For more information about primary keys, see [Primary Key][1] in the
      #   *Amazon DynamoDB Developer Guide*.
      #
      #   Each element in the *Item* map is an *AttributeValue* object.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey
      # @option params [Hash<String,Types::ExpectedAttributeValue>] :expected
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *ConditionExpression* instead. Do not combine
      #   legacy parameters and expression parameters in a single API call;
      #   otherwise, DynamoDB will return a *ValidationException* exception.
      #
      #    </important>
      #
      #   A map of attribute/condition pairs. *Expected* provides a conditional
      #   block for the *PutItem* operation.
      #
      #   <note markdown="1"> This parameter does not support attributes of type List or Map.
      #
      #    </note>
      #
      #   Each element of *Expected* consists of an attribute name, a comparison
      #   operator, and one or more values. DynamoDB compares the attribute with
      #   the value(s) you supplied, using the comparison operator. For each
      #   *Expected* element, the result of the evaluation is either true or
      #   false.
      #
      #   If you specify more than one element in the *Expected* map, then by
      #   default all of the conditions must evaluate to true. In other words,
      #   the conditions are ANDed together. (You can use the
      #   *ConditionalOperator* parameter to OR the conditions instead. If you
      #   do this, then at least one of the conditions must evaluate to true,
      #   rather than all of them.)
      #
      #   If the *Expected* map evaluates to true, then the conditional
      #   operation succeeds; otherwise, it fails.
      #
      #   *Expected* contains the following:
      #
      #   * *AttributeValueList* - One or more values to evaluate against the
      #     supplied attribute. The number of values in the list depends on the
      #     *ComparisonOperator* being used.
      #
      #     For type Number, value comparisons are numeric.
      #
      #     String value comparisons for greater than, equals, or less than are
      #     based on ASCII character code values. For example, `a` is greater
      #     than `A`, and `a` is greater than `B`. For a list of code values,
      #     see
      #     [http://en.wikipedia.org/wiki/ASCII#ASCII\_printable\_characters][1].
      #
      #     For type Binary, DynamoDB treats each byte of the binary data as
      #     unsigned when it compares binary values.
      #
      #   * *ComparisonOperator* - A comparator for evaluating attributes in the
      #     *AttributeValueList*. When performing the comparison, DynamoDB uses
      #     strongly consistent reads.
      #
      #     The following comparison operators are available:
      #
      #     `EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS |
      #     NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN`
      #
      #     The following are descriptions of each comparison operator.
      #
      #     * `EQ`\: Equal. `EQ` is supported for all datatypes, including lists
      #       and maps.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, Binary, String Set, Number Set, or Binary
      #       Set. If an item contains an *AttributeValue* element of a
      #       different type than the one provided in the request, the value
      #       does not match. For example, `\{"S":"6"\}` does not equal
      #       `\{"N":"6"\}`. Also, `\{"N":"6"\}` does not equal `\{"NS":["6",
      #       "2", "1"]\}`.
      #
      #
      #
      #     * `NE`\: Not equal. `NE` is supported for all datatypes, including
      #       lists and maps.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* of type
      #       String, Number, Binary, String Set, Number Set, or Binary Set. If
      #       an item contains an *AttributeValue* of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not equal `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `LE`\: Less than or equal.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If an item
      #       contains an *AttributeValue* element of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `LT`\: Less than.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* of type
      #       String, Number, or Binary (not a set type). If an item contains an
      #       *AttributeValue* element of a different type than the one provided
      #       in the request, the value does not match. For example,
      #       `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also, `\{"N":"6"\}`
      #       does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `GE`\: Greater than or equal.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If an item
      #       contains an *AttributeValue* element of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `GT`\: Greater than.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If an item
      #       contains an *AttributeValue* element of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `NOT_NULL`\: The attribute exists. `NOT_NULL` is supported for all
      #       datatypes, including lists and maps.
      #
      #       <note markdown="1"> This operator tests for the existence of an attribute, not its
      #       data type. If the data type of attribute \"`a`\" is null, and you
      #       evaluate it using `NOT_NULL`, the result is a Boolean *true*. This
      #       result is because the attribute \"`a`\" exists; its data type is
      #       not relevant to the `NOT_NULL` comparison operator.
      #
      #        </note>
      #
      #     * `NULL`\: The attribute does not exist. `NULL` is supported for all
      #       datatypes, including lists and maps.
      #
      #       <note markdown="1"> This operator tests for the nonexistence of an attribute, not its
      #       data type. If the data type of attribute \"`a`\" is null, and you
      #       evaluate it using `NULL`, the result is a Boolean *false*. This is
      #       because the attribute \"`a`\" exists; its data type is not
      #       relevant to the `NULL` comparison operator.
      #
      #        </note>
      #
      #     * `CONTAINS`\: Checks for a subsequence, or value in a set.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If the target
      #       attribute of the comparison is of type String, then the operator
      #       checks for a substring match. If the target attribute of the
      #       comparison is of type Binary, then the operator looks for a
      #       subsequence of the target that matches the input. If the target
      #       attribute of the comparison is a set (\"`SS`\", \"`NS`\", or
      #       \"`BS`\"), then the operator evaluates to true if it finds an
      #       exact match with any member of the set.
      #
      #       CONTAINS is supported for lists: When evaluating \"`a CONTAINS
      #       b`\", \"`a`\" can be a list; however, \"`b`\" cannot be a set, a
      #       map, or a list.
      #
      #     * `NOT_CONTAINS`\: Checks for absence of a subsequence, or absence
      #       of a value in a set.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If the target
      #       attribute of the comparison is a String, then the operator checks
      #       for the absence of a substring match. If the target attribute of
      #       the comparison is Binary, then the operator checks for the absence
      #       of a subsequence of the target that matches the input. If the
      #       target attribute of the comparison is a set (\"`SS`\", \"`NS`\",
      #       or \"`BS`\"), then the operator evaluates to true if it *does not*
      #       find an exact match with any member of the set.
      #
      #       NOT\_CONTAINS is supported for lists: When evaluating \"`a NOT
      #       CONTAINS b`\", \"`a`\" can be a list; however, \"`b`\" cannot be a
      #       set, a map, or a list.
      #
      #     * `BEGINS_WITH`\: Checks for a prefix.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* of type
      #       String or Binary (not a Number or a set type). The target
      #       attribute of the comparison must be of type String or Binary (not
      #       a Number or a set type).
      #
      #
      #
      #     * `IN`\: Checks for matching elements within two sets.
      #
      #       *AttributeValueList* can contain one or more *AttributeValue*
      #       elements of type String, Number, or Binary (not a set type). These
      #       attributes are compared against an existing set type attribute of
      #       an item. If any elements of the input set are present in the item
      #       attribute, the expression evaluates to true.
      #
      #     * `BETWEEN`\: Greater than or equal to the first value, and less
      #       than or equal to the second value.
      #
      #       *AttributeValueList* must contain two *AttributeValue* elements of
      #       the same type, either String, Number, or Binary (not a set type).
      #       A target attribute matches if the target value is greater than, or
      #       equal to, the first element and less than, or equal to, the second
      #       element. If an item contains an *AttributeValue* element of a
      #       different type than the one provided in the request, the value
      #       does not match. For example, `\{"S":"6"\}` does not compare to
      #       `\{"N":"6"\}`. Also, `\{"N":"6"\}` does not compare to
      #       `\{"NS":["6", "2", "1"]\}`
      #
      #   For usage examples of *AttributeValueList* and *ComparisonOperator*,
      #   see [Legacy Conditional Parameters][2] in the *Amazon DynamoDB
      #   Developer Guide*.
      #
      #   For backward compatibility with previous DynamoDB releases, the
      #   following parameters can be used instead of *AttributeValueList* and
      #   *ComparisonOperator*\:
      #
      #   * *Value* - A value for DynamoDB to compare with an attribute.
      #
      #   * *Exists* - A Boolean value that causes DynamoDB to evaluate the
      #     value before attempting the conditional operation:
      #
      #     * If *Exists* is `true`, DynamoDB will check to see if that
      #       attribute value already exists in the table. If it is found, then
      #       the condition evaluates to true; otherwise the condition evaluate
      #       to false.
      #
      #     * If *Exists* is `false`, DynamoDB assumes that the attribute value
      #       does *not* exist in the table. If in fact the value does not
      #       exist, then the assumption is valid and the condition evaluates to
      #       true. If the value is found, despite the assumption that it does
      #       not exist, the condition evaluates to false.
      #
      #     Note that the default value for *Exists* is `true`.
      #
      #   The *Value* and *Exists* parameters are incompatible with
      #   *AttributeValueList* and *ComparisonOperator*. Note that if you use
      #   both sets of parameters at once, DynamoDB will return a
      #   *ValidationException* exception.
      #
      #
      #
      #   [1]: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html
      # @option params [String] :return_values
      #   Use *ReturnValues* if you want to get the item attributes as they
      #   appeared before they were updated with the *PutItem* request. For
      #   *PutItem*, the valid values are:
      #
      #   * `NONE` - If *ReturnValues* is not specified, or if its value is
      #     `NONE`, then nothing is returned. (This setting is the default for
      #     *ReturnValues*.)
      #
      #   * `ALL_OLD` - If *PutItem* overwrote an attribute name-value pair,
      #     then the content of the old item is returned.
      #
      #   <note markdown="1"> The *ReturnValues* parameter is used by several DynamoDB operations;
      #   however, *PutItem* does not recognize any values other than `NONE` or
      #   `ALL_OLD`.
      #
      #    </note>
      # @option params [String] :return_consumed_capacity
      #   Determines the level of detail about provisioned throughput
      #   consumption that is returned in the response:
      #
      #   * *INDEXES* - The response includes the aggregate *ConsumedCapacity*
      #     for the operation, together with *ConsumedCapacity* for each table
      #     and secondary index that was accessed.
      #
      #     Note that some operations, such as *GetItem* and *BatchGetItem*, do
      #     not access any indexes at all. In these cases, specifying *INDEXES*
      #     will only return *ConsumedCapacity* information for table(s).
      #
      #   * *TOTAL* - The response includes only the aggregate
      #     *ConsumedCapacity* for the operation.
      #
      #   * *NONE* - No *ConsumedCapacity* details are included in the response.
      # @option params [String] :return_item_collection_metrics
      #   Determines whether item collection metrics are returned. If set to
      #   `SIZE`, the response includes statistics about item collections, if
      #   any, that were modified during the operation are returned in the
      #   response. If set to `NONE` (the default), no statistics are returned.
      # @option params [String] :conditional_operator
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *ConditionExpression* instead. Do not combine
      #   legacy parameters and expression parameters in a single API call;
      #   otherwise, DynamoDB will return a *ValidationException* exception.
      #
      #    </important>
      #
      #   A logical operator to apply to the conditions in the *Expected* map:
      #
      #   * `AND` - If all of the conditions evaluate to true, then the entire
      #     map evaluates to true.
      #
      #   * `OR` - If at least one of the conditions evaluate to true, then the
      #     entire map evaluates to true.
      #
      #   If you omit *ConditionalOperator*, then `AND` is the default.
      #
      #   The operation will succeed only if the entire map evaluates to true.
      #
      #   <note markdown="1"> This parameter does not support attributes of type List or Map.
      #
      #    </note>
      # @option params [String] :condition_expression
      #   A condition that must be satisfied in order for a conditional
      #   *PutItem* operation to succeed.
      #
      #   An expression can contain any of the following:
      #
      #   * Functions: `attribute_exists | attribute_not_exists | attribute_type
      #     | contains | begins_with | size`
      #
      #     These function names are case-sensitive.
      #
      #   * Comparison operators: ` = | &#x3C;&#x3E; | &#x3C; | &#x3E; | &#x3C;=
      #     | &#x3E;= | BETWEEN | IN`
      #
      #   * Logical operators: `AND | OR | NOT`
      #
      #   For more information on condition expressions, see [Specifying
      #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
      #
      #   <note markdown="1"> *ConditionExpression* replaces the legacy *ConditionalOperator* and
      #   *Expected* parameters.
      #
      #    </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
      # @option params [Hash<String,String>] :expression_attribute_names
      #   One or more substitution tokens for attribute names in an expression.
      #   The following are some use cases for using
      #   *ExpressionAttributeNames*\:
      #
      #   * To access an attribute whose name conflicts with a DynamoDB reserved
      #     word.
      #
      #   * To create a placeholder for repeating occurrences of an attribute
      #     name in an expression.
      #
      #   * To prevent special characters in an attribute name from being
      #     misinterpreted in an expression.
      #
      #   Use the **#** character in an expression to dereference an attribute
      #   name. For example, consider the following attribute name:
      #
      #   * `Percentile`
      #
      #   ^
      #
      #   The name of this attribute conflicts with a reserved word, so it
      #   cannot be used directly in an expression. (For the complete list of
      #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
      #   Developer Guide*). To work around this, you could specify the
      #   following for *ExpressionAttributeNames*\:
      #
      #   * `\{"#P":"Percentile"\}`
      #
      #   ^
      #
      #   You could then use this substitution in an expression, as in this
      #   example:
      #
      #   * `#P = :val`
      #
      #   ^
      #
      #   <note markdown="1"> Tokens that begin with the **\:** character are *expression attribute
      #   values*, which are placeholders for the actual value at runtime.
      #
      #    </note>
      #
      #   For more information on expression attribute names, see [Accessing
      #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
      # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
      #   One or more values that can be substituted in an expression.
      #
      #   Use the **\:** (colon) character in an expression to dereference an
      #   attribute value. For example, suppose that you wanted to check whether
      #   the value of the *ProductStatus* attribute was one of the following:
      #
      #   `Available | Backordered | Discontinued`
      #
      #   You would first need to specify *ExpressionAttributeValues* as
      #   follows:
      #
      #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
      #   ":disc":\{"S":"Discontinued"\} \}`
      #
      #   You could then use these values in an expression, such as this:
      #
      #   `ProductStatus IN (:avail, :back, :disc)`
      #
      #   For more information on expression attribute values, see [Specifying
      #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
      # @return [Types::PutItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PutItemOutput#attributes #Attributes} => Hash&lt;String,Types::AttributeValue&gt;
      #   * {Types::PutItemOutput#consumed_capacity #ConsumedCapacity} => Types::ConsumedCapacity
      #   * {Types::PutItemOutput#item_collection_metrics #ItemCollectionMetrics} => Types::ItemCollectionMetrics
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_item({
      #     table_name: "TableName", # required
      #     item: { # required
      #       "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #     },
      #     expected: {
      #       "AttributeName" => {
      #         value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #         exists: false,
      #         comparison_operator: "EQ", # accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
      #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #       },
      #     },
      #     return_values: "NONE", # accepts NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW
      #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
      #     return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
      #     conditional_operator: "AND", # accepts AND, OR
      #     condition_expression: "ConditionExpression",
      #     expression_attribute_names: {
      #       "ExpressionAttributeNameVariable" => "AttributeName",
      #     },
      #     expression_attribute_values: {
      #       "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #     },
      #   })
      #
      # @example Response structure
      #   resp.attributes #=> Hash
      #   resp.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.consumed_capacity.table_name #=> String
      #   resp.consumed_capacity.capacity_units #=> Float
      #   resp.consumed_capacity.table.capacity_units #=> Float
      #   resp.consumed_capacity.local_secondary_indexes #=> Hash
      #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
      #   resp.consumed_capacity.global_secondary_indexes #=> Hash
      #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
      #   resp.item_collection_metrics.item_collection_key #=> Hash
      #   resp.item_collection_metrics.item_collection_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.item_collection_metrics.size_estimate_range_gb #=> Array
      #   resp.item_collection_metrics.size_estimate_range_gb[0] #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def put_item(params = {}, options = {})
        req = build_request(:put_item, params)
        req.send_request(options)
      end

      # A *Query* operation uses the primary key of a table or a secondary
      # index to directly access items from that table or index.
      #
      # Use the *KeyConditionExpression* parameter to provide a specific value
      # for the partition key. The *Query* operation will return all of the
      # items from the table or index with that partition key value. You can
      # optionally narrow the scope of the *Query* operation by specifying a
      # sort key value and a comparison operator in *KeyConditionExpression*.
      # You can use the *ScanIndexForward* parameter to get results in forward
      # or reverse order, by sort key.
      #
      # Queries that do not return results consume the minimum number of read
      # capacity units for that type of read operation.
      #
      # If the total number of items meeting the query criteria exceeds the
      # result set size limit of 1 MB, the query stops and results are
      # returned to the user with the *LastEvaluatedKey* element to continue
      # the query in a subsequent operation. Unlike a *Scan* operation, a
      # *Query* operation never returns both an empty result set and a
      # *LastEvaluatedKey* value. *LastEvaluatedKey* is only provided if you
      # have used the *Limit* parameter, or if the result set exceeds 1 MB
      # (prior to applying a filter).
      #
      # You can query a table, a local secondary index, or a global secondary
      # index. For a query on a table or on a local secondary index, you can
      # set the *ConsistentRead* parameter to `true` and obtain a strongly
      # consistent result. Global secondary indexes support eventually
      # consistent reads only, so do not specify *ConsistentRead* when
      # querying a global secondary index.
      # @option params [required, String] :table_name
      #   The name of the table containing the requested items.
      # @option params [String] :index_name
      #   The name of an index to query. This index can be any local secondary
      #   index or global secondary index on the table. Note that if you use the
      #   *IndexName* parameter, you must also provide *TableName.*
      # @option params [String] :select
      #   The attributes to be returned in the result. You can retrieve all item
      #   attributes, specific item attributes, the count of matching items, or
      #   in the case of an index, some or all of the attributes projected into
      #   the index.
      #
      #   * `ALL_ATTRIBUTES` - Returns all of the item attributes from the
      #     specified table or index. If you query a local secondary index, then
      #     for each matching item in the index DynamoDB will fetch the entire
      #     item from the parent table. If the index is configured to project
      #     all item attributes, then all of the data can be obtained from the
      #     local secondary index, and no fetching is required.
      #
      #   * `ALL_PROJECTED_ATTRIBUTES` - Allowed only when querying an index.
      #     Retrieves all attributes that have been projected into the index. If
      #     the index is configured to project all attributes, this return value
      #     is equivalent to specifying `ALL_ATTRIBUTES`.
      #
      #   * `COUNT` - Returns the number of matching items, rather than the
      #     matching items themselves.
      #
      #   * `SPECIFIC_ATTRIBUTES` - Returns only the attributes listed in
      #     *AttributesToGet*. This return value is equivalent to specifying
      #     *AttributesToGet* without specifying any value for *Select*.
      #
      #     If you query a local secondary index and request only attributes
      #     that are projected into that index, the operation will read only the
      #     index and not the table. If any of the requested attributes are not
      #     projected into the local secondary index, DynamoDB will fetch each
      #     of these attributes from the parent table. This extra fetching
      #     incurs additional throughput cost and latency.
      #
      #     If you query a global secondary index, you can only request
      #     attributes that are projected into the index. Global secondary index
      #     queries cannot fetch attributes from the parent table.
      #
      #   If neither *Select* nor *AttributesToGet* are specified, DynamoDB
      #   defaults to `ALL_ATTRIBUTES` when accessing a table, and
      #   `ALL_PROJECTED_ATTRIBUTES` when accessing an index. You cannot use
      #   both *Select* and *AttributesToGet* together in a single request,
      #   unless the value for *Select* is `SPECIFIC_ATTRIBUTES`. (This usage is
      #   equivalent to specifying *AttributesToGet* without any value for
      #   *Select*.)
      #
      #   <note markdown="1"> If you use the *ProjectionExpression* parameter, then the value for
      #   *Select* can only be `SPECIFIC_ATTRIBUTES`. Any other value for
      #   *Select* will return an error.
      #
      #    </note>
      # @option params [Array<String>] :attributes_to_get
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *ProjectionExpression* instead. Do not combine
      #   legacy parameters and expression parameters in a single API call;
      #   otherwise, DynamoDB will return a *ValidationException* exception.
      #
      #    This parameter allows you to retrieve attributes of type List or Map;
      #   however, it cannot retrieve individual elements within a List or a
      #   Map.
      #
      #    </important>
      #
      #   The names of one or more attributes to retrieve. If no attribute names
      #   are provided, then all attributes will be returned. If any of the
      #   requested attributes are not found, they will not appear in the
      #   result.
      #
      #   Note that *AttributesToGet* has no effect on provisioned throughput
      #   consumption. DynamoDB determines capacity units consumed based on item
      #   size, not on the amount of data that is returned to an application.
      #
      #   You cannot use both *AttributesToGet* and *Select* together in a
      #   *Query* request, *unless* the value for *Select* is
      #   `SPECIFIC_ATTRIBUTES`. (This usage is equivalent to specifying
      #   *AttributesToGet* without any value for *Select*.)
      #
      #   If you query a local secondary index and request only attributes that
      #   are projected into that index, the operation will read only the index
      #   and not the table. If any of the requested attributes are not
      #   projected into the local secondary index, DynamoDB will fetch each of
      #   these attributes from the parent table. This extra fetching incurs
      #   additional throughput cost and latency.
      #
      #   If you query a global secondary index, you can only request attributes
      #   that are projected into the index. Global secondary index queries
      #   cannot fetch attributes from the parent table.
      # @option params [Integer] :limit
      #   The maximum number of items to evaluate (not necessarily the number of
      #   matching items). If DynamoDB processes the number of items up to the
      #   limit while processing the results, it stops the operation and returns
      #   the matching values up to that point, and a key in *LastEvaluatedKey*
      #   to apply in a subsequent operation, so that you can pick up where you
      #   left off. Also, if the processed data set size exceeds 1 MB before
      #   DynamoDB reaches this limit, it stops the operation and returns the
      #   matching values up to the limit, and a key in *LastEvaluatedKey* to
      #   apply in a subsequent operation to continue the operation. For more
      #   information, see [Query and Scan][1] in the *Amazon DynamoDB Developer
      #   Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html
      # @option params [Boolean] :consistent_read
      #   Determines the read consistency model: If set to `true`, then the
      #   operation uses strongly consistent reads; otherwise, the operation
      #   uses eventually consistent reads.
      #
      #   Strongly consistent reads are not supported on global secondary
      #   indexes. If you query a global secondary index with *ConsistentRead*
      #   set to `true`, you will receive a *ValidationException*.
      # @option params [Hash<String,Types::Condition>] :key_conditions
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *KeyConditionExpression* instead. Do not
      #   combine legacy parameters and expression parameters in a single API
      #   call; otherwise, DynamoDB will return a *ValidationException*
      #   exception.
      #
      #    </important>
      #
      #   The selection criteria for the query. For a query on a table, you can
      #   have conditions only on the table primary key attributes. You must
      #   provide the partition key name and value as an `EQ` condition. You can
      #   optionally provide a second condition, referring to the sort key.
      #
      #   <note markdown="1"> If you don\'t provide a sort key condition, all of the items that
      #   match the partition key will be retrieved. If a *FilterExpression* or
      #   *QueryFilter* is present, it will be applied after the items are
      #   retrieved.
      #
      #    </note>
      #
      #   For a query on an index, you can have conditions only on the index key
      #   attributes. You must provide the index partition key name and value as
      #   an `EQ` condition. You can optionally provide a second condition,
      #   referring to the index sort key.
      #
      #   Each *KeyConditions* element consists of an attribute name to compare,
      #   along with the following:
      #
      #   * *AttributeValueList* - One or more values to evaluate against the
      #     supplied attribute. The number of values in the list depends on the
      #     *ComparisonOperator* being used.
      #
      #     For type Number, value comparisons are numeric.
      #
      #     String value comparisons for greater than, equals, or less than are
      #     based on ASCII character code values. For example, `a` is greater
      #     than `A`, and `a` is greater than `B`. For a list of code values,
      #     see
      #     [http://en.wikipedia.org/wiki/ASCII#ASCII\_printable\_characters][1].
      #
      #     For Binary, DynamoDB treats each byte of the binary data as unsigned
      #     when it compares binary values.
      #
      #   * *ComparisonOperator* - A comparator for evaluating attributes, for
      #     example, equals, greater than, less than, and so on.
      #
      #     For *KeyConditions*, only the following comparison operators are
      #     supported:
      #
      #     `EQ | LE | LT | GE | GT | BEGINS_WITH | BETWEEN`
      #
      #     The following are descriptions of these comparison operators.
      #
      #     * `EQ`\: Equal.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* of type
      #       String, Number, or Binary (not a set type). If an item contains an
      #       *AttributeValue* element of a different type than the one
      #       specified in the request, the value does not match. For example,
      #       `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also, `\{"N":"6"\}`
      #       does not equal `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `LE`\: Less than or equal.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If an item
      #       contains an *AttributeValue* element of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `LT`\: Less than.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* of type
      #       String, Number, or Binary (not a set type). If an item contains an
      #       *AttributeValue* element of a different type than the one provided
      #       in the request, the value does not match. For example,
      #       `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also, `\{"N":"6"\}`
      #       does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `GE`\: Greater than or equal.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If an item
      #       contains an *AttributeValue* element of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `GT`\: Greater than.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If an item
      #       contains an *AttributeValue* element of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `BEGINS_WITH`\: Checks for a prefix.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* of type
      #       String or Binary (not a Number or a set type). The target
      #       attribute of the comparison must be of type String or Binary (not
      #       a Number or a set type).
      #
      #
      #
      #     * `BETWEEN`\: Greater than or equal to the first value, and less
      #       than or equal to the second value.
      #
      #       *AttributeValueList* must contain two *AttributeValue* elements of
      #       the same type, either String, Number, or Binary (not a set type).
      #       A target attribute matches if the target value is greater than, or
      #       equal to, the first element and less than, or equal to, the second
      #       element. If an item contains an *AttributeValue* element of a
      #       different type than the one provided in the request, the value
      #       does not match. For example, `\{"S":"6"\}` does not compare to
      #       `\{"N":"6"\}`. Also, `\{"N":"6"\}` does not compare to
      #       `\{"NS":["6", "2", "1"]\}`
      #
      #   For usage examples of *AttributeValueList* and *ComparisonOperator*,
      #   see [Legacy Conditional Parameters][2] in the *Amazon DynamoDB
      #   Developer Guide*.
      #
      #
      #
      #   [1]: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html
      # @option params [Hash<String,Types::Condition>] :query_filter
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *FilterExpression* instead. Do not combine
      #   legacy parameters and expression parameters in a single API call;
      #   otherwise, DynamoDB will return a *ValidationException* exception.
      #
      #    </important>
      #
      #   A condition that evaluates the query results after the items are read
      #   and returns only the desired values.
      #
      #   This parameter does not support attributes of type List or Map.
      #
      #   <note markdown="1"> A *QueryFilter* is applied after the items have already been read; the
      #   process of filtering does not consume any additional read capacity
      #   units.
      #
      #    </note>
      #
      #   If you provide more than one condition in the *QueryFilter* map, then
      #   by default all of the conditions must evaluate to true. In other
      #   words, the conditions are ANDed together. (You can use the
      #   *ConditionalOperator* parameter to OR the conditions instead. If you
      #   do this, then at least one of the conditions must evaluate to true,
      #   rather than all of them.)
      #
      #   Note that *QueryFilter* does not allow key attributes. You cannot
      #   define a filter condition on a partition key or a sort key.
      #
      #   Each *QueryFilter* element consists of an attribute name to compare,
      #   along with the following:
      #
      #   * *AttributeValueList* - One or more values to evaluate against the
      #     supplied attribute. The number of values in the list depends on the
      #     operator specified in *ComparisonOperator*.
      #
      #     For type Number, value comparisons are numeric.
      #
      #     String value comparisons for greater than, equals, or less than are
      #     based on ASCII character code values. For example, `a` is greater
      #     than `A`, and `a` is greater than `B`. For a list of code values,
      #     see
      #     [http://en.wikipedia.org/wiki/ASCII#ASCII\_printable\_characters][1].
      #
      #     For type Binary, DynamoDB treats each byte of the binary data as
      #     unsigned when it compares binary values.
      #
      #     For information on specifying data types in JSON, see [JSON Data
      #     Format][2] in the *Amazon DynamoDB Developer Guide*.
      #
      #   * *ComparisonOperator* - A comparator for evaluating attributes. For
      #     example, equals, greater than, less than, etc.
      #
      #     The following comparison operators are available:
      #
      #     `EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS |
      #     NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN`
      #
      #     For complete descriptions of all comparison operators, see the
      #     [Condition][3] data type.
      #
      #
      #
      #   [1]: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataFormat.html
      #   [3]: http://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_Condition.html
      # @option params [String] :conditional_operator
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *FilterExpression* instead. Do not combine
      #   legacy parameters and expression parameters in a single API call;
      #   otherwise, DynamoDB will return a *ValidationException* exception.
      #
      #    </important>
      #
      #   A logical operator to apply to the conditions in a *QueryFilter* map:
      #
      #   * `AND` - If all of the conditions evaluate to true, then the entire
      #     map evaluates to true.
      #
      #   * `OR` - If at least one of the conditions evaluate to true, then the
      #     entire map evaluates to true.
      #
      #   If you omit *ConditionalOperator*, then `AND` is the default.
      #
      #   The operation will succeed only if the entire map evaluates to true.
      #
      #   <note markdown="1"> This parameter does not support attributes of type List or Map.
      #
      #    </note>
      # @option params [Boolean] :scan_index_forward
      #   Specifies the order for index traversal: If `true` (default), the
      #   traversal is performed in ascending order; if `false`, the traversal
      #   is performed in descending order.
      #
      #   Items with the same partition key value are stored in sorted order by
      #   sort key. If the sort key data type is Number, the results are stored
      #   in numeric order. For type String, the results are stored in order of
      #   ASCII character code values. For type Binary, DynamoDB treats each
      #   byte of the binary data as unsigned.
      #
      #   If *ScanIndexForward* is `true`, DynamoDB returns the results in the
      #   order in which they are stored (by sort key value). This is the
      #   default behavior. If *ScanIndexForward* is `false`, DynamoDB reads the
      #   results in reverse order by sort key value, and then returns the
      #   results to the client.
      # @option params [Hash<String,Types::AttributeValue>] :exclusive_start_key
      #   The primary key of the first item that this operation will evaluate.
      #   Use the value that was returned for *LastEvaluatedKey* in the previous
      #   operation.
      #
      #   The data type for *ExclusiveStartKey* must be String, Number or
      #   Binary. No set data types are allowed.
      # @option params [String] :return_consumed_capacity
      #   Determines the level of detail about provisioned throughput
      #   consumption that is returned in the response:
      #
      #   * *INDEXES* - The response includes the aggregate *ConsumedCapacity*
      #     for the operation, together with *ConsumedCapacity* for each table
      #     and secondary index that was accessed.
      #
      #     Note that some operations, such as *GetItem* and *BatchGetItem*, do
      #     not access any indexes at all. In these cases, specifying *INDEXES*
      #     will only return *ConsumedCapacity* information for table(s).
      #
      #   * *TOTAL* - The response includes only the aggregate
      #     *ConsumedCapacity* for the operation.
      #
      #   * *NONE* - No *ConsumedCapacity* details are included in the response.
      # @option params [String] :projection_expression
      #   A string that identifies one or more attributes to retrieve from the
      #   table. These attributes can include scalars, sets, or elements of a
      #   JSON document. The attributes in the expression must be separated by
      #   commas.
      #
      #   If no attribute names are specified, then all attributes will be
      #   returned. If any of the requested attributes are not found, they will
      #   not appear in the result.
      #
      #   For more information, see [Accessing Item Attributes][1] in the
      #   *Amazon DynamoDB Developer Guide*.
      #
      #   <note markdown="1"> *ProjectionExpression* replaces the legacy *AttributesToGet*
      #   parameter.
      #
      #    </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
      # @option params [String] :filter_expression
      #   A string that contains conditions that DynamoDB applies after the
      #   *Query* operation, but before the data is returned to you. Items that
      #   do not satisfy the *FilterExpression* criteria are not returned.
      #
      #   <note markdown="1"> A *FilterExpression* is applied after the items have already been
      #   read; the process of filtering does not consume any additional read
      #   capacity units.
      #
      #    </note>
      #
      #   For more information, see [Filter Expressions][1] in the *Amazon
      #   DynamoDB Developer Guide*.
      #
      #   <note markdown="1"> *FilterExpression* replaces the legacy *QueryFilter* and
      #   *ConditionalOperator* parameters.
      #
      #    </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults
      # @option params [String] :key_condition_expression
      #   The condition that specifies the key value(s) for items to be
      #   retrieved by the *Query* action.
      #
      #   The condition must perform an equality test on a single partition key
      #   value. The condition can also perform one of several comparison tests
      #   on a single sort key value. *Query* can use *KeyConditionExpression*
      #   to retrieve one item with a given partition key value and sort key
      #   value, or several items that have the same partition key value but
      #   different sort key values.
      #
      #   The partition key equality test is required, and must be specified in
      #   the following format:
      #
      #   `partitionKeyName` *=* `:partitionkeyval`
      #
      #   If you also want to provide a condition for the sort key, it must be
      #   combined using *AND* with the condition for the sort key. Following is
      #   an example, using the **=** comparison operator for the sort key:
      #
      #   `partitionKeyName` *=* `:partitionkeyval` *AND* `sortKeyName` *=*
      #   `:sortkeyval`
      #
      #   Valid comparisons for the sort key condition are as follows:
      #
      #   * `sortKeyName` *=* `:sortkeyval` - true if the sort key value is
      #     equal to `:sortkeyval`.
      #
      #   * `sortKeyName` *&lt;* `:sortkeyval` - true if the sort key value is
      #     less than `:sortkeyval`.
      #
      #   * `sortKeyName` *&lt;=* `:sortkeyval` - true if the sort key value is
      #     less than or equal to `:sortkeyval`.
      #
      #   * `sortKeyName` *&gt;* `:sortkeyval` - true if the sort key value is
      #     greater than `:sortkeyval`.
      #
      #   * `sortKeyName` <i>&gt;= </i> `:sortkeyval` - true if the sort key
      #     value is greater than or equal to `:sortkeyval`.
      #
      #   * `sortKeyName` *BETWEEN* `:sortkeyval1` *AND* `:sortkeyval2` - true
      #     if the sort key value is greater than or equal to `:sortkeyval1`,
      #     and less than or equal to `:sortkeyval2`.
      #
      #   * *begins\_with (* `sortKeyName`, `:sortkeyval` *)* - true if the sort
      #     key value begins with a particular operand. (You cannot use this
      #     function with a sort key that is of type Number.) Note that the
      #     function name `begins_with` is case-sensitive.
      #
      #   Use the *ExpressionAttributeValues* parameter to replace tokens such
      #   as `:partitionval` and `:sortval` with actual values at runtime.
      #
      #   You can optionally use the *ExpressionAttributeNames* parameter to
      #   replace the names of the partition key and sort key with placeholder
      #   tokens. This option might be necessary if an attribute name conflicts
      #   with a DynamoDB reserved word. For example, the following
      #   *KeyConditionExpression* parameter causes an error because *Size* is a
      #   reserved word:
      #
      #   * `Size = :myval`
      #
      #   ^
      #
      #   To work around this, define a placeholder (such a `#S`) to represent
      #   the attribute name *Size*. *KeyConditionExpression* then is as
      #   follows:
      #
      #   * `#S = :myval`
      #
      #   ^
      #
      #   For a list of reserved words, see [Reserved Words][1] in the *Amazon
      #   DynamoDB Developer Guide*.
      #
      #   For more information on *ExpressionAttributeNames* and
      #   *ExpressionAttributeValues*, see [Using Placeholders for Attribute
      #   Names and Values][2] in the *Amazon DynamoDB Developer Guide*.
      #
      #   <note markdown="1"> *KeyConditionExpression* replaces the legacy *KeyConditions*
      #   parameter.
      #
      #    </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html
      # @option params [Hash<String,String>] :expression_attribute_names
      #   One or more substitution tokens for attribute names in an expression.
      #   The following are some use cases for using
      #   *ExpressionAttributeNames*\:
      #
      #   * To access an attribute whose name conflicts with a DynamoDB reserved
      #     word.
      #
      #   * To create a placeholder for repeating occurrences of an attribute
      #     name in an expression.
      #
      #   * To prevent special characters in an attribute name from being
      #     misinterpreted in an expression.
      #
      #   Use the **#** character in an expression to dereference an attribute
      #   name. For example, consider the following attribute name:
      #
      #   * `Percentile`
      #
      #   ^
      #
      #   The name of this attribute conflicts with a reserved word, so it
      #   cannot be used directly in an expression. (For the complete list of
      #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
      #   Developer Guide*). To work around this, you could specify the
      #   following for *ExpressionAttributeNames*\:
      #
      #   * `\{"#P":"Percentile"\}`
      #
      #   ^
      #
      #   You could then use this substitution in an expression, as in this
      #   example:
      #
      #   * `#P = :val`
      #
      #   ^
      #
      #   <note markdown="1"> Tokens that begin with the **\:** character are *expression attribute
      #   values*, which are placeholders for the actual value at runtime.
      #
      #    </note>
      #
      #   For more information on expression attribute names, see [Accessing
      #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
      # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
      #   One or more values that can be substituted in an expression.
      #
      #   Use the **\:** (colon) character in an expression to dereference an
      #   attribute value. For example, suppose that you wanted to check whether
      #   the value of the *ProductStatus* attribute was one of the following:
      #
      #   `Available | Backordered | Discontinued`
      #
      #   You would first need to specify *ExpressionAttributeValues* as
      #   follows:
      #
      #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
      #   ":disc":\{"S":"Discontinued"\} \}`
      #
      #   You could then use these values in an expression, such as this:
      #
      #   `ProductStatus IN (:avail, :back, :disc)`
      #
      #   For more information on expression attribute values, see [Specifying
      #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
      # @return [Types::QueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::QueryOutput#items #Items} => Array&lt;Hash&lt;String,Types::AttributeValue&gt;&gt;
      #   * {Types::QueryOutput#count #Count} => Integer
      #   * {Types::QueryOutput#scanned_count #ScannedCount} => Integer
      #   * {Types::QueryOutput#last_evaluated_key #LastEvaluatedKey} => Hash&lt;String,Types::AttributeValue&gt;
      #   * {Types::QueryOutput#consumed_capacity #ConsumedCapacity} => Types::ConsumedCapacity
      #
      # @example Request syntax with placeholder values
      #   resp = client.query({
      #     table_name: "TableName", # required
      #     index_name: "IndexName",
      #     select: "ALL_ATTRIBUTES", # accepts ALL_ATTRIBUTES, ALL_PROJECTED_ATTRIBUTES, SPECIFIC_ATTRIBUTES, COUNT
      #     attributes_to_get: ["AttributeName"],
      #     limit: 1,
      #     consistent_read: false,
      #     key_conditions: {
      #       "AttributeName" => {
      #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #         comparison_operator: "EQ", # required, accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
      #       },
      #     },
      #     query_filter: {
      #       "AttributeName" => {
      #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #         comparison_operator: "EQ", # required, accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
      #       },
      #     },
      #     conditional_operator: "AND", # accepts AND, OR
      #     scan_index_forward: false,
      #     exclusive_start_key: {
      #       "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #     },
      #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
      #     projection_expression: "ProjectionExpression",
      #     filter_expression: "ConditionExpression",
      #     key_condition_expression: "KeyExpression",
      #     expression_attribute_names: {
      #       "ExpressionAttributeNameVariable" => "AttributeName",
      #     },
      #     expression_attribute_values: {
      #       "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #     },
      #   })
      #
      # @example Response structure
      #   resp.items #=> Array
      #   resp.items[0] #=> Hash
      #   resp.items[0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.count #=> Integer
      #   resp.scanned_count #=> Integer
      #   resp.last_evaluated_key #=> Hash
      #   resp.last_evaluated_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.consumed_capacity.table_name #=> String
      #   resp.consumed_capacity.capacity_units #=> Float
      #   resp.consumed_capacity.table.capacity_units #=> Float
      #   resp.consumed_capacity.local_secondary_indexes #=> Hash
      #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
      #   resp.consumed_capacity.global_secondary_indexes #=> Hash
      #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def query(params = {}, options = {})
        req = build_request(:query, params)
        req.send_request(options)
      end

      # The *Scan* operation returns one or more items and item attributes by
      # accessing every item in a table or a secondary index. To have DynamoDB
      # return fewer items, you can provide a *ScanFilter* operation.
      #
      # If the total number of scanned items exceeds the maximum data set size
      # limit of 1 MB, the scan stops and results are returned to the user as
      # a *LastEvaluatedKey* value to continue the scan in a subsequent
      # operation. The results also include the number of items exceeding the
      # limit. A scan can result in no table data meeting the filter criteria.
      #
      # By default, *Scan* operations proceed sequentially; however, for
      # faster performance on a large table or secondary index, applications
      # can request a parallel *Scan* operation by providing the *Segment* and
      # *TotalSegments* parameters. For more information, see [Parallel
      # Scan][1] in the *Amazon DynamoDB Developer Guide*.
      #
      # By default, *Scan* uses eventually consistent reads when accessing the
      # data in a table; therefore, the result set might not include the
      # changes to data in the table immediately before the operation began.
      # If you need a consistent copy of the data, as of the time that the
      # Scan begins, you can set the *ConsistentRead* parameter to *true*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#QueryAndScanParallelScan
      # @option params [required, String] :table_name
      #   The name of the table containing the requested items; or, if you
      #   provide `IndexName`, the name of the table to which that index
      #   belongs.
      # @option params [String] :index_name
      #   The name of a secondary index to scan. This index can be any local
      #   secondary index or global secondary index. Note that if you use the
      #   `IndexName` parameter, you must also provide `TableName`.
      # @option params [Array<String>] :attributes_to_get
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *ProjectionExpression* instead. Do not combine
      #   legacy parameters and expression parameters in a single API call;
      #   otherwise, DynamoDB will return a *ValidationException* exception.
      #
      #    This parameter allows you to retrieve attributes of type List or Map;
      #   however, it cannot retrieve individual elements within a List or a
      #   Map.
      #
      #    </important>
      #
      #   The names of one or more attributes to retrieve. If no attribute names
      #   are provided, then all attributes will be returned. If any of the
      #   requested attributes are not found, they will not appear in the
      #   result.
      #
      #   Note that *AttributesToGet* has no effect on provisioned throughput
      #   consumption. DynamoDB determines capacity units consumed based on item
      #   size, not on the amount of data that is returned to an application.
      # @option params [Integer] :limit
      #   The maximum number of items to evaluate (not necessarily the number of
      #   matching items). If DynamoDB processes the number of items up to the
      #   limit while processing the results, it stops the operation and returns
      #   the matching values up to that point, and a key in *LastEvaluatedKey*
      #   to apply in a subsequent operation, so that you can pick up where you
      #   left off. Also, if the processed data set size exceeds 1 MB before
      #   DynamoDB reaches this limit, it stops the operation and returns the
      #   matching values up to the limit, and a key in *LastEvaluatedKey* to
      #   apply in a subsequent operation to continue the operation. For more
      #   information, see [Query and Scan][1] in the *Amazon DynamoDB Developer
      #   Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html
      # @option params [String] :select
      #   The attributes to be returned in the result. You can retrieve all item
      #   attributes, specific item attributes, or the count of matching items.
      #
      #   * `ALL_ATTRIBUTES` - Returns all of the item attributes.
      #
      #   * `ALL_PROJECTED_ATTRIBUTES` - Allowed only when querying an index.
      #     Retrieves all attributes that have been projected into the index. If
      #     the index is configured to project all attributes, this return value
      #     is equivalent to specifying `ALL_ATTRIBUTES`.
      #
      #   * `COUNT` - Returns the number of matching items, rather than the
      #     matching items themselves.
      #
      #   * `SPECIFIC_ATTRIBUTES` - Returns only the attributes listed in
      #     *AttributesToGet*. This return value is equivalent to specifying
      #     *AttributesToGet* without specifying any value for *Select*.
      #
      #   If neither *Select* nor *AttributesToGet* are specified, DynamoDB
      #   defaults to `ALL_ATTRIBUTES`. You cannot use both *AttributesToGet*
      #   and *Select* together in a single request, unless the value for
      #   *Select* is `SPECIFIC_ATTRIBUTES`. (This usage is equivalent to
      #   specifying *AttributesToGet* without any value for *Select*.)
      # @option params [Hash<String,Types::Condition>] :scan_filter
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *FilterExpression* instead. Do not combine
      #   legacy parameters and expression parameters in a single API call;
      #   otherwise, DynamoDB will return a *ValidationException* exception.
      #
      #    </important>
      #
      #   A condition that evaluates the scan results and returns only the
      #   desired values.
      #
      #   <note markdown="1"> This parameter does not support attributes of type List or Map.
      #
      #    </note>
      #
      #   If you specify more than one condition in the *ScanFilter* map, then
      #   by default all of the conditions must evaluate to true. In other
      #   words, the conditions are ANDed together. (You can use the
      #   *ConditionalOperator* parameter to OR the conditions instead. If you
      #   do this, then at least one of the conditions must evaluate to true,
      #   rather than all of them.)
      #
      #   Each *ScanFilter* element consists of an attribute name to compare,
      #   along with the following:
      #
      #   * *AttributeValueList* - One or more values to evaluate against the
      #     supplied attribute. The number of values in the list depends on the
      #     operator specified in *ComparisonOperator* .
      #
      #     For type Number, value comparisons are numeric.
      #
      #     String value comparisons for greater than, equals, or less than are
      #     based on ASCII character code values. For example, `a` is greater
      #     than `A`, and `a` is greater than `B`. For a list of code values,
      #     see
      #     [http://en.wikipedia.org/wiki/ASCII#ASCII\_printable\_characters][1].
      #
      #     For Binary, DynamoDB treats each byte of the binary data as unsigned
      #     when it compares binary values.
      #
      #     For information on specifying data types in JSON, see [JSON Data
      #     Format][2] in the *Amazon DynamoDB Developer Guide*.
      #
      #   * *ComparisonOperator* - A comparator for evaluating attributes. For
      #     example, equals, greater than, less than, etc.
      #
      #     The following comparison operators are available:
      #
      #     `EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS |
      #     NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN`
      #
      #     For complete descriptions of all comparison operators, see
      #     [Condition][3].
      #
      #
      #
      #   [1]: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataFormat.html
      #   [3]: http://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_Condition.html
      # @option params [String] :conditional_operator
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *FilterExpression* instead. Do not combine
      #   legacy parameters and expression parameters in a single API call;
      #   otherwise, DynamoDB will return a *ValidationException* exception.
      #
      #    </important>
      #
      #   A logical operator to apply to the conditions in a *ScanFilter* map:
      #
      #   * `AND` - If all of the conditions evaluate to true, then the entire
      #     map evaluates to true.
      #
      #   * `OR` - If at least one of the conditions evaluate to true, then the
      #     entire map evaluates to true.
      #
      #   If you omit *ConditionalOperator*, then `AND` is the default.
      #
      #   The operation will succeed only if the entire map evaluates to true.
      #
      #   <note markdown="1"> This parameter does not support attributes of type List or Map.
      #
      #    </note>
      # @option params [Hash<String,Types::AttributeValue>] :exclusive_start_key
      #   The primary key of the first item that this operation will evaluate.
      #   Use the value that was returned for *LastEvaluatedKey* in the previous
      #   operation.
      #
      #   The data type for *ExclusiveStartKey* must be String, Number or
      #   Binary. No set data types are allowed.
      #
      #   In a parallel scan, a *Scan* request that includes *ExclusiveStartKey*
      #   must specify the same segment whose previous *Scan* returned the
      #   corresponding value of *LastEvaluatedKey*.
      # @option params [String] :return_consumed_capacity
      #   Determines the level of detail about provisioned throughput
      #   consumption that is returned in the response:
      #
      #   * *INDEXES* - The response includes the aggregate *ConsumedCapacity*
      #     for the operation, together with *ConsumedCapacity* for each table
      #     and secondary index that was accessed.
      #
      #     Note that some operations, such as *GetItem* and *BatchGetItem*, do
      #     not access any indexes at all. In these cases, specifying *INDEXES*
      #     will only return *ConsumedCapacity* information for table(s).
      #
      #   * *TOTAL* - The response includes only the aggregate
      #     *ConsumedCapacity* for the operation.
      #
      #   * *NONE* - No *ConsumedCapacity* details are included in the response.
      # @option params [Integer] :total_segments
      #   For a parallel *Scan* request, *TotalSegments* represents the total
      #   number of segments into which the *Scan* operation will be divided.
      #   The value of *TotalSegments* corresponds to the number of application
      #   workers that will perform the parallel scan. For example, if you want
      #   to use four application threads to scan a table or an index, specify a
      #   *TotalSegments* value of 4.
      #
      #   The value for *TotalSegments* must be greater than or equal to 1, and
      #   less than or equal to 1000000. If you specify a *TotalSegments* value
      #   of 1, the *Scan* operation will be sequential rather than parallel.
      #
      #   If you specify *TotalSegments*, you must also specify *Segment*.
      # @option params [Integer] :segment
      #   For a parallel *Scan* request, *Segment* identifies an individual
      #   segment to be scanned by an application worker.
      #
      #   Segment IDs are zero-based, so the first segment is always 0. For
      #   example, if you want to use four application threads to scan a table
      #   or an index, then the first thread specifies a *Segment* value of 0,
      #   the second thread specifies 1, and so on.
      #
      #   The value of *LastEvaluatedKey* returned from a parallel *Scan*
      #   request must be used as *ExclusiveStartKey* with the same segment ID
      #   in a subsequent *Scan* operation.
      #
      #   The value for *Segment* must be greater than or equal to 0, and less
      #   than the value provided for *TotalSegments*.
      #
      #   If you provide *Segment*, you must also provide *TotalSegments*.
      # @option params [String] :projection_expression
      #   A string that identifies one or more attributes to retrieve from the
      #   specified table or index. These attributes can include scalars, sets,
      #   or elements of a JSON document. The attributes in the expression must
      #   be separated by commas.
      #
      #   If no attribute names are specified, then all attributes will be
      #   returned. If any of the requested attributes are not found, they will
      #   not appear in the result.
      #
      #   For more information, see [Accessing Item Attributes][1] in the
      #   *Amazon DynamoDB Developer Guide*.
      #
      #   <note markdown="1"> *ProjectionExpression* replaces the legacy *AttributesToGet*
      #   parameter.
      #
      #    </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
      # @option params [String] :filter_expression
      #   A string that contains conditions that DynamoDB applies after the
      #   *Scan* operation, but before the data is returned to you. Items that
      #   do not satisfy the *FilterExpression* criteria are not returned.
      #
      #   <note markdown="1"> A *FilterExpression* is applied after the items have already been
      #   read; the process of filtering does not consume any additional read
      #   capacity units.
      #
      #    </note>
      #
      #   For more information, see [Filter Expressions][1] in the *Amazon
      #   DynamoDB Developer Guide*.
      #
      #   <note markdown="1"> *FilterExpression* replaces the legacy *ScanFilter* and
      #   *ConditionalOperator* parameters.
      #
      #    </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults
      # @option params [Hash<String,String>] :expression_attribute_names
      #   One or more substitution tokens for attribute names in an expression.
      #   The following are some use cases for using
      #   *ExpressionAttributeNames*\:
      #
      #   * To access an attribute whose name conflicts with a DynamoDB reserved
      #     word.
      #
      #   * To create a placeholder for repeating occurrences of an attribute
      #     name in an expression.
      #
      #   * To prevent special characters in an attribute name from being
      #     misinterpreted in an expression.
      #
      #   Use the **#** character in an expression to dereference an attribute
      #   name. For example, consider the following attribute name:
      #
      #   * `Percentile`
      #
      #   ^
      #
      #   The name of this attribute conflicts with a reserved word, so it
      #   cannot be used directly in an expression. (For the complete list of
      #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
      #   Developer Guide*). To work around this, you could specify the
      #   following for *ExpressionAttributeNames*\:
      #
      #   * `\{"#P":"Percentile"\}`
      #
      #   ^
      #
      #   You could then use this substitution in an expression, as in this
      #   example:
      #
      #   * `#P = :val`
      #
      #   ^
      #
      #   <note markdown="1"> Tokens that begin with the **\:** character are *expression attribute
      #   values*, which are placeholders for the actual value at runtime.
      #
      #    </note>
      #
      #   For more information on expression attribute names, see [Accessing
      #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
      # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
      #   One or more values that can be substituted in an expression.
      #
      #   Use the **\:** (colon) character in an expression to dereference an
      #   attribute value. For example, suppose that you wanted to check whether
      #   the value of the *ProductStatus* attribute was one of the following:
      #
      #   `Available | Backordered | Discontinued`
      #
      #   You would first need to specify *ExpressionAttributeValues* as
      #   follows:
      #
      #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
      #   ":disc":\{"S":"Discontinued"\} \}`
      #
      #   You could then use these values in an expression, such as this:
      #
      #   `ProductStatus IN (:avail, :back, :disc)`
      #
      #   For more information on expression attribute values, see [Specifying
      #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
      # @option params [Boolean] :consistent_read
      #   A Boolean value that determines the read consistency model during the
      #   scan:
      #
      #   * If *ConsistentRead* is `false`, then the data returned from *Scan*
      #     might not contain the results from other recently completed write
      #     operations (PutItem, UpdateItem or DeleteItem).
      #
      #   * If *ConsistentRead* is `true`, then all of the write operations that
      #     completed before the *Scan* began are guaranteed to be contained in
      #     the *Scan* response.
      #
      #   The default setting for *ConsistentRead* is `false`.
      #
      #   The *ConsistentRead* parameter is not supported on global secondary
      #   indexes. If you scan a global secondary index with *ConsistentRead*
      #   set to true, you will receive a *ValidationException*.
      # @return [Types::ScanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ScanOutput#items #Items} => Array&lt;Hash&lt;String,Types::AttributeValue&gt;&gt;
      #   * {Types::ScanOutput#count #Count} => Integer
      #   * {Types::ScanOutput#scanned_count #ScannedCount} => Integer
      #   * {Types::ScanOutput#last_evaluated_key #LastEvaluatedKey} => Hash&lt;String,Types::AttributeValue&gt;
      #   * {Types::ScanOutput#consumed_capacity #ConsumedCapacity} => Types::ConsumedCapacity
      #
      # @example Request syntax with placeholder values
      #   resp = client.scan({
      #     table_name: "TableName", # required
      #     index_name: "IndexName",
      #     attributes_to_get: ["AttributeName"],
      #     limit: 1,
      #     select: "ALL_ATTRIBUTES", # accepts ALL_ATTRIBUTES, ALL_PROJECTED_ATTRIBUTES, SPECIFIC_ATTRIBUTES, COUNT
      #     scan_filter: {
      #       "AttributeName" => {
      #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #         comparison_operator: "EQ", # required, accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
      #       },
      #     },
      #     conditional_operator: "AND", # accepts AND, OR
      #     exclusive_start_key: {
      #       "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #     },
      #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
      #     total_segments: 1,
      #     segment: 1,
      #     projection_expression: "ProjectionExpression",
      #     filter_expression: "ConditionExpression",
      #     expression_attribute_names: {
      #       "ExpressionAttributeNameVariable" => "AttributeName",
      #     },
      #     expression_attribute_values: {
      #       "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #     },
      #     consistent_read: false,
      #   })
      #
      # @example Response structure
      #   resp.items #=> Array
      #   resp.items[0] #=> Hash
      #   resp.items[0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.count #=> Integer
      #   resp.scanned_count #=> Integer
      #   resp.last_evaluated_key #=> Hash
      #   resp.last_evaluated_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.consumed_capacity.table_name #=> String
      #   resp.consumed_capacity.capacity_units #=> Float
      #   resp.consumed_capacity.table.capacity_units #=> Float
      #   resp.consumed_capacity.local_secondary_indexes #=> Hash
      #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
      #   resp.consumed_capacity.global_secondary_indexes #=> Hash
      #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def scan(params = {}, options = {})
        req = build_request(:scan, params)
        req.send_request(options)
      end

      # Edits an existing item\'s attributes, or adds a new item to the table
      # if it does not already exist. You can put, delete, or add attribute
      # values. You can also perform a conditional update on an existing item
      # (insert a new attribute name-value pair if it doesn\'t exist, or
      # replace an existing name-value pair if it has certain expected
      # attribute values).
      #
      # You can also return the item\'s attribute values in the same
      # *UpdateItem* operation using the *ReturnValues* parameter.
      # @option params [required, String] :table_name
      #   The name of the table containing the item to update.
      # @option params [required, Hash<String,Types::AttributeValue>] :key
      #   The primary key of the item to be updated. Each element consists of an
      #   attribute name and a value for that attribute.
      #
      #   For the primary key, you must provide all of the attributes. For
      #   example, with a simple primary key, you only need to provide a value
      #   for the partition key. For a composite primary key, you must provide
      #   values for both the partition key and the sort key.
      # @option params [Hash<String,Types::AttributeValueUpdate>] :attribute_updates
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *UpdateExpression* instead. Do not combine
      #   legacy parameters and expression parameters in a single API call;
      #   otherwise, DynamoDB will return a *ValidationException* exception.
      #
      #    This parameter can be used for modifying top-level attributes;
      #   however, it does not support individual list or map elements.
      #
      #    </important>
      #
      #   The names of attributes to be modified, the action to perform on each,
      #   and the new value for each. If you are updating an attribute that is
      #   an index key attribute for any indexes on that table, the attribute
      #   type must match the index key type defined in the
      #   *AttributesDefinition* of the table description. You can use
      #   *UpdateItem* to update any non-key attributes.
      #
      #   Attribute values cannot be null. String and Binary type attributes
      #   must have lengths greater than zero. Set type attributes must not be
      #   empty. Requests with empty values will be rejected with a
      #   *ValidationException* exception.
      #
      #   Each *AttributeUpdates* element consists of an attribute name to
      #   modify, along with the following:
      #
      #   * *Value* - The new value, if applicable, for this attribute.
      #
      #   * *Action* - A value that specifies how to perform the update. This
      #     action is only valid for an existing attribute whose data type is
      #     Number or is a set; do not use `ADD` for other data types.
      #
      #     If an item with the specified primary key is found in the table, the
      #     following values perform the following actions:
      #
      #     * `PUT` - Adds the specified attribute to the item. If the attribute
      #       already exists, it is replaced by the new value.
      #
      #     * `DELETE` - Removes the attribute and its value, if no value is
      #       specified for `DELETE`. The data type of the specified value must
      #       match the existing value\'s data type.
      #
      #       If a set of values is specified, then those values are subtracted
      #       from the old set. For example, if the attribute value was the set
      #       `[a,b,c]` and the `DELETE` action specifies `[a,c]`, then the
      #       final attribute value is `[b]`. Specifying an empty set is an
      #       error.
      #
      #     * `ADD` - Adds the specified value to the item, if the attribute
      #       does not already exist. If the attribute does exist, then the
      #       behavior of `ADD` depends on the data type of the attribute:
      #
      #       * If the existing attribute is a number, and if *Value* is also a
      #         number, then *Value* is mathematically added to the existing
      #         attribute. If *Value* is a negative number, then it is
      #         subtracted from the existing attribute.
      #
      #         <note markdown="1"> If you use `ADD` to increment or decrement a number value for an
      #         item that doesn\'t exist before the update, DynamoDB uses 0 as
      #         the initial value.
      #
      #          Similarly, if you use `ADD` for an existing item to increment or
      #         decrement an attribute value that doesn\'t exist before the
      #         update, DynamoDB uses `0` as the initial value. For example,
      #         suppose that the item you want to update doesn\'t have an
      #         attribute named *itemcount*, but you decide to `ADD` the number
      #         `3` to this attribute anyway. DynamoDB will create the
      #         *itemcount* attribute, set its initial value to `0`, and finally
      #         add `3` to it. The result will be a new *itemcount* attribute,
      #         with a value of `3`.
      #
      #          </note>
      #
      #       * If the existing data type is a set, and if *Value* is also a
      #         set, then *Value* is appended to the existing set. For example,
      #         if the attribute value is the set `[1,2]`, and the `ADD` action
      #         specified `[3]`, then the final attribute value is `[1,2,3]`. An
      #         error occurs if an `ADD` action is specified for a set attribute
      #         and the attribute type specified does not match the existing set
      #         type.
      #
      #         Both sets must have the same primitive data type. For example,
      #         if the existing data type is a set of strings, *Value* must also
      #         be a set of strings.
      #
      #     If no item with the specified key is found in the table, the
      #     following values perform the following actions:
      #
      #     * `PUT` - Causes DynamoDB to create a new item with the specified
      #       primary key, and then adds the attribute.
      #
      #     * `DELETE` - Nothing happens, because attributes cannot be deleted
      #       from a nonexistent item. The operation succeeds, but DynamoDB does
      #       not create a new item.
      #
      #     * `ADD` - Causes DynamoDB to create an item with the supplied
      #       primary key and number (or set of numbers) for the attribute
      #       value. The only data types allowed are Number and Number Set.
      #
      #   If you provide any attributes that are part of an index key, then the
      #   data types for those attributes must match those of the schema in the
      #   table\'s attribute definition.
      # @option params [Hash<String,Types::ExpectedAttributeValue>] :expected
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use <i> ConditionExpression </i> instead. Do not
      #   combine legacy parameters and expression parameters in a single API
      #   call; otherwise, DynamoDB will return a *ValidationException*
      #   exception.
      #
      #    </important>
      #
      #   A map of attribute/condition pairs. *Expected* provides a conditional
      #   block for the *UpdateItem* operation.
      #
      #   Each element of *Expected* consists of an attribute name, a comparison
      #   operator, and one or more values. DynamoDB compares the attribute with
      #   the value(s) you supplied, using the comparison operator. For each
      #   *Expected* element, the result of the evaluation is either true or
      #   false.
      #
      #   If you specify more than one element in the *Expected* map, then by
      #   default all of the conditions must evaluate to true. In other words,
      #   the conditions are ANDed together. (You can use the
      #   *ConditionalOperator* parameter to OR the conditions instead. If you
      #   do this, then at least one of the conditions must evaluate to true,
      #   rather than all of them.)
      #
      #   If the *Expected* map evaluates to true, then the conditional
      #   operation succeeds; otherwise, it fails.
      #
      #   *Expected* contains the following:
      #
      #   * *AttributeValueList* - One or more values to evaluate against the
      #     supplied attribute. The number of values in the list depends on the
      #     *ComparisonOperator* being used.
      #
      #     For type Number, value comparisons are numeric.
      #
      #     String value comparisons for greater than, equals, or less than are
      #     based on ASCII character code values. For example, `a` is greater
      #     than `A`, and `a` is greater than `B`. For a list of code values,
      #     see
      #     [http://en.wikipedia.org/wiki/ASCII#ASCII\_printable\_characters][1].
      #
      #     For type Binary, DynamoDB treats each byte of the binary data as
      #     unsigned when it compares binary values.
      #
      #   * *ComparisonOperator* - A comparator for evaluating attributes in the
      #     *AttributeValueList*. When performing the comparison, DynamoDB uses
      #     strongly consistent reads.
      #
      #     The following comparison operators are available:
      #
      #     `EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS |
      #     NOT_CONTAINS | BEGINS_WITH | IN | BETWEEN`
      #
      #     The following are descriptions of each comparison operator.
      #
      #     * `EQ`\: Equal. `EQ` is supported for all datatypes, including lists
      #       and maps.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, Binary, String Set, Number Set, or Binary
      #       Set. If an item contains an *AttributeValue* element of a
      #       different type than the one provided in the request, the value
      #       does not match. For example, `\{"S":"6"\}` does not equal
      #       `\{"N":"6"\}`. Also, `\{"N":"6"\}` does not equal `\{"NS":["6",
      #       "2", "1"]\}`.
      #
      #
      #
      #     * `NE`\: Not equal. `NE` is supported for all datatypes, including
      #       lists and maps.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* of type
      #       String, Number, Binary, String Set, Number Set, or Binary Set. If
      #       an item contains an *AttributeValue* of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not equal `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `LE`\: Less than or equal.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If an item
      #       contains an *AttributeValue* element of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `LT`\: Less than.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* of type
      #       String, Number, or Binary (not a set type). If an item contains an
      #       *AttributeValue* element of a different type than the one provided
      #       in the request, the value does not match. For example,
      #       `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also, `\{"N":"6"\}`
      #       does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `GE`\: Greater than or equal.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If an item
      #       contains an *AttributeValue* element of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `GT`\: Greater than.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If an item
      #       contains an *AttributeValue* element of a different type than the
      #       one provided in the request, the value does not match. For
      #       example, `\{"S":"6"\}` does not equal `\{"N":"6"\}`. Also,
      #       `\{"N":"6"\}` does not compare to `\{"NS":["6", "2", "1"]\}`.
      #
      #
      #
      #     * `NOT_NULL`\: The attribute exists. `NOT_NULL` is supported for all
      #       datatypes, including lists and maps.
      #
      #       <note markdown="1"> This operator tests for the existence of an attribute, not its
      #       data type. If the data type of attribute \"`a`\" is null, and you
      #       evaluate it using `NOT_NULL`, the result is a Boolean *true*. This
      #       result is because the attribute \"`a`\" exists; its data type is
      #       not relevant to the `NOT_NULL` comparison operator.
      #
      #        </note>
      #
      #     * `NULL`\: The attribute does not exist. `NULL` is supported for all
      #       datatypes, including lists and maps.
      #
      #       <note markdown="1"> This operator tests for the nonexistence of an attribute, not its
      #       data type. If the data type of attribute \"`a`\" is null, and you
      #       evaluate it using `NULL`, the result is a Boolean *false*. This is
      #       because the attribute \"`a`\" exists; its data type is not
      #       relevant to the `NULL` comparison operator.
      #
      #        </note>
      #
      #     * `CONTAINS`\: Checks for a subsequence, or value in a set.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If the target
      #       attribute of the comparison is of type String, then the operator
      #       checks for a substring match. If the target attribute of the
      #       comparison is of type Binary, then the operator looks for a
      #       subsequence of the target that matches the input. If the target
      #       attribute of the comparison is a set (\"`SS`\", \"`NS`\", or
      #       \"`BS`\"), then the operator evaluates to true if it finds an
      #       exact match with any member of the set.
      #
      #       CONTAINS is supported for lists: When evaluating \"`a CONTAINS
      #       b`\", \"`a`\" can be a list; however, \"`b`\" cannot be a set, a
      #       map, or a list.
      #
      #     * `NOT_CONTAINS`\: Checks for absence of a subsequence, or absence
      #       of a value in a set.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* element
      #       of type String, Number, or Binary (not a set type). If the target
      #       attribute of the comparison is a String, then the operator checks
      #       for the absence of a substring match. If the target attribute of
      #       the comparison is Binary, then the operator checks for the absence
      #       of a subsequence of the target that matches the input. If the
      #       target attribute of the comparison is a set (\"`SS`\", \"`NS`\",
      #       or \"`BS`\"), then the operator evaluates to true if it *does not*
      #       find an exact match with any member of the set.
      #
      #       NOT\_CONTAINS is supported for lists: When evaluating \"`a NOT
      #       CONTAINS b`\", \"`a`\" can be a list; however, \"`b`\" cannot be a
      #       set, a map, or a list.
      #
      #     * `BEGINS_WITH`\: Checks for a prefix.
      #
      #       *AttributeValueList* can contain only one *AttributeValue* of type
      #       String or Binary (not a Number or a set type). The target
      #       attribute of the comparison must be of type String or Binary (not
      #       a Number or a set type).
      #
      #
      #
      #     * `IN`\: Checks for matching elements within two sets.
      #
      #       *AttributeValueList* can contain one or more *AttributeValue*
      #       elements of type String, Number, or Binary (not a set type). These
      #       attributes are compared against an existing set type attribute of
      #       an item. If any elements of the input set are present in the item
      #       attribute, the expression evaluates to true.
      #
      #     * `BETWEEN`\: Greater than or equal to the first value, and less
      #       than or equal to the second value.
      #
      #       *AttributeValueList* must contain two *AttributeValue* elements of
      #       the same type, either String, Number, or Binary (not a set type).
      #       A target attribute matches if the target value is greater than, or
      #       equal to, the first element and less than, or equal to, the second
      #       element. If an item contains an *AttributeValue* element of a
      #       different type than the one provided in the request, the value
      #       does not match. For example, `\{"S":"6"\}` does not compare to
      #       `\{"N":"6"\}`. Also, `\{"N":"6"\}` does not compare to
      #       `\{"NS":["6", "2", "1"]\}`
      #
      #   For usage examples of *AttributeValueList* and *ComparisonOperator*,
      #   see [Legacy Conditional Parameters][2] in the *Amazon DynamoDB
      #   Developer Guide*.
      #
      #   For backward compatibility with previous DynamoDB releases, the
      #   following parameters can be used instead of *AttributeValueList* and
      #   *ComparisonOperator*\:
      #
      #   * *Value* - A value for DynamoDB to compare with an attribute.
      #
      #   * *Exists* - A Boolean value that causes DynamoDB to evaluate the
      #     value before attempting the conditional operation:
      #
      #     * If *Exists* is `true`, DynamoDB will check to see if that
      #       attribute value already exists in the table. If it is found, then
      #       the condition evaluates to true; otherwise the condition evaluate
      #       to false.
      #
      #     * If *Exists* is `false`, DynamoDB assumes that the attribute value
      #       does *not* exist in the table. If in fact the value does not
      #       exist, then the assumption is valid and the condition evaluates to
      #       true. If the value is found, despite the assumption that it does
      #       not exist, the condition evaluates to false.
      #
      #     Note that the default value for *Exists* is `true`.
      #
      #   The *Value* and *Exists* parameters are incompatible with
      #   *AttributeValueList* and *ComparisonOperator*. Note that if you use
      #   both sets of parameters at once, DynamoDB will return a
      #   *ValidationException* exception.
      #
      #   <note markdown="1"> This parameter does not support attributes of type List or Map.
      #
      #    </note>
      #
      #
      #
      #   [1]: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html
      # @option params [String] :conditional_operator
      #   <important markdown="1"> This is a legacy parameter, for backward compatibility. New
      #   applications should use *ConditionExpression* instead. Do not combine
      #   legacy parameters and expression parameters in a single API call;
      #   otherwise, DynamoDB will return a *ValidationException* exception.
      #
      #    </important>
      #
      #   A logical operator to apply to the conditions in the *Expected* map:
      #
      #   * `AND` - If all of the conditions evaluate to true, then the entire
      #     map evaluates to true.
      #
      #   * `OR` - If at least one of the conditions evaluate to true, then the
      #     entire map evaluates to true.
      #
      #   If you omit *ConditionalOperator*, then `AND` is the default.
      #
      #   The operation will succeed only if the entire map evaluates to true.
      #
      #   <note markdown="1"> This parameter does not support attributes of type List or Map.
      #
      #    </note>
      # @option params [String] :return_values
      #   Use *ReturnValues* if you want to get the item attributes as they
      #   appeared either before or after they were updated. For *UpdateItem*,
      #   the valid values are:
      #
      #   * `NONE` - If *ReturnValues* is not specified, or if its value is
      #     `NONE`, then nothing is returned. (This setting is the default for
      #     *ReturnValues*.)
      #
      #   * `ALL_OLD` - If *UpdateItem* overwrote an attribute name-value pair,
      #     then the content of the old item is returned.
      #
      #   * `UPDATED_OLD` - The old versions of only the updated attributes are
      #     returned.
      #
      #   * `ALL_NEW` - All of the attributes of the new version of the item are
      #     returned.
      #
      #   * `UPDATED_NEW` - The new versions of only the updated attributes are
      #     returned.
      #
      #   There is no additional cost associated with requesting a return value
      #   aside from the small network and processing overhead of receiving a
      #   larger response. No Read Capacity Units are consumed.
      #
      #   Values returned are strongly consistent
      # @option params [String] :return_consumed_capacity
      #   Determines the level of detail about provisioned throughput
      #   consumption that is returned in the response:
      #
      #   * *INDEXES* - The response includes the aggregate *ConsumedCapacity*
      #     for the operation, together with *ConsumedCapacity* for each table
      #     and secondary index that was accessed.
      #
      #     Note that some operations, such as *GetItem* and *BatchGetItem*, do
      #     not access any indexes at all. In these cases, specifying *INDEXES*
      #     will only return *ConsumedCapacity* information for table(s).
      #
      #   * *TOTAL* - The response includes only the aggregate
      #     *ConsumedCapacity* for the operation.
      #
      #   * *NONE* - No *ConsumedCapacity* details are included in the response.
      # @option params [String] :return_item_collection_metrics
      #   Determines whether item collection metrics are returned. If set to
      #   `SIZE`, the response includes statistics about item collections, if
      #   any, that were modified during the operation are returned in the
      #   response. If set to `NONE` (the default), no statistics are returned.
      # @option params [String] :update_expression
      #   An expression that defines one or more attributes to be updated, the
      #   action to be performed on them, and new value(s) for them.
      #
      #   The following action values are available for *UpdateExpression*.
      #
      #   * `SET` - Adds one or more attributes and values to an item. If any of
      #     these attribute already exist, they are replaced by the new values.
      #     You can also use `SET` to add or subtract from an attribute that is
      #     of type Number. For example: `SET myNum = myNum + :val`
      #
      #     `SET` supports the following functions:
      #
      #     * `if_not_exists (path, operand)` - if the item does not contain an
      #       attribute at the specified path, then `if_not_exists` evaluates to
      #       operand; otherwise, it evaluates to path. You can use this
      #       function to avoid overwriting an attribute that may already be
      #       present in the item.
      #
      #     * `list_append (operand, operand)` - evaluates to a list with a new
      #       element added to it. You can append the new element to the start
      #       or the end of the list by reversing the order of the operands.
      #
      #     These function names are case-sensitive.
      #
      #   * `REMOVE` - Removes one or more attributes from an item.
      #
      #   * `ADD` - Adds the specified value to the item, if the attribute does
      #     not already exist. If the attribute does exist, then the behavior of
      #     `ADD` depends on the data type of the attribute:
      #
      #     * If the existing attribute is a number, and if *Value* is also a
      #       number, then *Value* is mathematically added to the existing
      #       attribute. If *Value* is a negative number, then it is subtracted
      #       from the existing attribute.
      #
      #       <note markdown="1"> If you use `ADD` to increment or decrement a number value for an
      #       item that doesn\'t exist before the update, DynamoDB uses `0` as
      #       the initial value.
      #
      #        Similarly, if you use `ADD` for an existing item to increment or
      #       decrement an attribute value that doesn\'t exist before the
      #       update, DynamoDB uses `0` as the initial value. For example,
      #       suppose that the item you want to update doesn\'t have an
      #       attribute named *itemcount*, but you decide to `ADD` the number
      #       `3` to this attribute anyway. DynamoDB will create the *itemcount*
      #       attribute, set its initial value to `0`, and finally add `3` to
      #       it. The result will be a new *itemcount* attribute in the item,
      #       with a value of `3`.
      #
      #        </note>
      #
      #     * If the existing data type is a set and if *Value* is also a set,
      #       then *Value* is added to the existing set. For example, if the
      #       attribute value is the set `[1,2]`, and the `ADD` action specified
      #       `[3]`, then the final attribute value is `[1,2,3]`. An error
      #       occurs if an `ADD` action is specified for a set attribute and the
      #       attribute type specified does not match the existing set type.
      #
      #       Both sets must have the same primitive data type. For example, if
      #       the existing data type is a set of strings, the *Value* must also
      #       be a set of strings.
      #
      #     <important markdown="1"> The `ADD` action only supports Number and set data types. In
      #     addition, `ADD` can only be used on top-level attributes, not nested
      #     attributes.
      #
      #      </important>
      #
      #   * `DELETE` - Deletes an element from a set.
      #
      #     If a set of values is specified, then those values are subtracted
      #     from the old set. For example, if the attribute value was the set
      #     `[a,b,c]` and the `DELETE` action specifies `[a,c]`, then the final
      #     attribute value is `[b]`. Specifying an empty set is an error.
      #
      #     <important markdown="1"> The `DELETE` action only supports set data types. In addition,
      #     `DELETE` can only be used on top-level attributes, not nested
      #     attributes.
      #
      #      </important>
      #
      #   You can have many actions in a single expression, such as the
      #   following: `SET a=:value1, b=:value2 DELETE :value3, :value4, :value5`
      #
      #   For more information on update expressions, see [Modifying Items and
      #   Attributes][1] in the *Amazon DynamoDB Developer Guide*.
      #
      #   <note markdown="1"> *UpdateExpression* replaces the legacy *AttributeUpdates* parameter.
      #
      #    </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html
      # @option params [String] :condition_expression
      #   A condition that must be satisfied in order for a conditional update
      #   to succeed.
      #
      #   An expression can contain any of the following:
      #
      #   * Functions: `attribute_exists | attribute_not_exists | attribute_type
      #     | contains | begins_with | size`
      #
      #     These function names are case-sensitive.
      #
      #   * Comparison operators: ` = | &#x3C;&#x3E; | &#x3C; | &#x3E; | &#x3C;=
      #     | &#x3E;= | BETWEEN | IN`
      #
      #   * Logical operators: `AND | OR | NOT`
      #
      #   For more information on condition expressions, see [Specifying
      #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
      #
      #   <note markdown="1"> *ConditionExpression* replaces the legacy *ConditionalOperator* and
      #   *Expected* parameters.
      #
      #    </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
      # @option params [Hash<String,String>] :expression_attribute_names
      #   One or more substitution tokens for attribute names in an expression.
      #   The following are some use cases for using
      #   *ExpressionAttributeNames*\:
      #
      #   * To access an attribute whose name conflicts with a DynamoDB reserved
      #     word.
      #
      #   * To create a placeholder for repeating occurrences of an attribute
      #     name in an expression.
      #
      #   * To prevent special characters in an attribute name from being
      #     misinterpreted in an expression.
      #
      #   Use the **#** character in an expression to dereference an attribute
      #   name. For example, consider the following attribute name:
      #
      #   * `Percentile`
      #
      #   ^
      #
      #   The name of this attribute conflicts with a reserved word, so it
      #   cannot be used directly in an expression. (For the complete list of
      #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
      #   Developer Guide*). To work around this, you could specify the
      #   following for *ExpressionAttributeNames*\:
      #
      #   * `\{"#P":"Percentile"\}`
      #
      #   ^
      #
      #   You could then use this substitution in an expression, as in this
      #   example:
      #
      #   * `#P = :val`
      #
      #   ^
      #
      #   <note markdown="1"> Tokens that begin with the **\:** character are *expression attribute
      #   values*, which are placeholders for the actual value at runtime.
      #
      #    </note>
      #
      #   For more information on expression attribute names, see [Accessing
      #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
      #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
      # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
      #   One or more values that can be substituted in an expression.
      #
      #   Use the **\:** (colon) character in an expression to dereference an
      #   attribute value. For example, suppose that you wanted to check whether
      #   the value of the *ProductStatus* attribute was one of the following:
      #
      #   `Available | Backordered | Discontinued`
      #
      #   You would first need to specify *ExpressionAttributeValues* as
      #   follows:
      #
      #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
      #   ":disc":\{"S":"Discontinued"\} \}`
      #
      #   You could then use these values in an expression, such as this:
      #
      #   `ProductStatus IN (:avail, :back, :disc)`
      #
      #   For more information on expression attribute values, see [Specifying
      #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
      # @return [Types::UpdateItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateItemOutput#attributes #Attributes} => Hash&lt;String,Types::AttributeValue&gt;
      #   * {Types::UpdateItemOutput#consumed_capacity #ConsumedCapacity} => Types::ConsumedCapacity
      #   * {Types::UpdateItemOutput#item_collection_metrics #ItemCollectionMetrics} => Types::ItemCollectionMetrics
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_item({
      #     table_name: "TableName", # required
      #     key: { # required
      #       "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #     },
      #     attribute_updates: {
      #       "AttributeName" => {
      #         value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #         action: "ADD", # accepts ADD, PUT, DELETE
      #       },
      #     },
      #     expected: {
      #       "AttributeName" => {
      #         value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #         exists: false,
      #         comparison_operator: "EQ", # accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
      #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #       },
      #     },
      #     conditional_operator: "AND", # accepts AND, OR
      #     return_values: "NONE", # accepts NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW
      #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
      #     return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
      #     update_expression: "UpdateExpression",
      #     condition_expression: "ConditionExpression",
      #     expression_attribute_names: {
      #       "ExpressionAttributeNameVariable" => "AttributeName",
      #     },
      #     expression_attribute_values: {
      #       "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #     },
      #   })
      #
      # @example Response structure
      #   resp.attributes #=> Hash
      #   resp.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.consumed_capacity.table_name #=> String
      #   resp.consumed_capacity.capacity_units #=> Float
      #   resp.consumed_capacity.table.capacity_units #=> Float
      #   resp.consumed_capacity.local_secondary_indexes #=> Hash
      #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
      #   resp.consumed_capacity.global_secondary_indexes #=> Hash
      #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
      #   resp.item_collection_metrics.item_collection_key #=> Hash
      #   resp.item_collection_metrics.item_collection_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.item_collection_metrics.size_estimate_range_gb #=> Array
      #   resp.item_collection_metrics.size_estimate_range_gb[0] #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_item(params = {}, options = {})
        req = build_request(:update_item, params)
        req.send_request(options)
      end

      # Modifies the provisioned throughput settings, global secondary
      # indexes, or DynamoDB Streams settings for a given table.
      #
      # You can only perform one of the following operations at once:
      #
      # * Modify the provisioned throughput settings of the table.
      #
      # * Enable or disable Streams on the table.
      #
      # * Remove a global secondary index from the table.
      #
      # * Create a new global secondary index on the table. Once the index
      #   begins backfilling, you can use *UpdateTable* to perform other
      #   operations.
      #
      # *UpdateTable* is an asynchronous operation; while it is executing, the
      # table status changes from `ACTIVE` to `UPDATING`. While it is
      # `UPDATING`, you cannot issue another *UpdateTable* request. When the
      # table returns to the `ACTIVE` state, the *UpdateTable* operation is
      # complete.
      # @option params [Array<Types::AttributeDefinition>] :attribute_definitions
      #   An array of attributes that describe the key schema for the table and
      #   indexes. If you are adding a new global secondary index to the table,
      #   *AttributeDefinitions* must include the key element(s) of the new
      #   index.
      # @option params [required, String] :table_name
      #   The name of the table to be updated.
      # @option params [Types::ProvisionedThroughput] :provisioned_throughput
      #   Represents the provisioned throughput settings for a specified table
      #   or index. The settings can be modified using the *UpdateTable*
      #   operation.
      #
      #   For current minimum and maximum provisioned throughput values, see
      #   [Limits][1] in the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
      # @option params [Array<Types::GlobalSecondaryIndexUpdate>] :global_secondary_index_updates
      #   An array of one or more global secondary indexes for the table. For
      #   each index in the array, you can request one action:
      #
      #   * *Create* - add a new global secondary index to the table.
      #
      #   * *Update* - modify the provisioned throughput settings of an existing
      #     global secondary index.
      #
      #   * *Delete* - remove a global secondary index from the table.
      #
      #   For more information, see [Managing Global Secondary Indexes][1] in
      #   the *Amazon DynamoDB Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html
      # @option params [Types::StreamSpecification] :stream_specification
      #   Represents the DynamoDB Streams configuration for the table.
      #
      #   <note markdown="1"> You will receive a *ResourceInUseException* if you attempt to enable a
      #   stream on a table that already has a stream, or if you attempt to
      #   disable a stream on a table which does not have a stream.
      #
      #    </note>
      # @return [Types::UpdateTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateTableOutput#table_description #TableDescription} => Types::TableDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_table({
      #     attribute_definitions: [
      #       {
      #         attribute_name: "KeySchemaAttributeName", # required
      #         attribute_type: "S", # required, accepts S, N, B
      #       },
      #     ],
      #     table_name: "TableName", # required
      #     provisioned_throughput: {
      #       read_capacity_units: 1, # required
      #       write_capacity_units: 1, # required
      #     },
      #     global_secondary_index_updates: [
      #       {
      #         update: {
      #           index_name: "IndexName", # required
      #           provisioned_throughput: { # required
      #             read_capacity_units: 1, # required
      #             write_capacity_units: 1, # required
      #           },
      #         },
      #         create: {
      #           index_name: "IndexName", # required
      #           key_schema: [ # required
      #             {
      #               attribute_name: "KeySchemaAttributeName", # required
      #               key_type: "HASH", # required, accepts HASH, RANGE
      #             },
      #           ],
      #           projection: { # required
      #             projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
      #             non_key_attributes: ["NonKeyAttributeName"],
      #           },
      #           provisioned_throughput: { # required
      #             read_capacity_units: 1, # required
      #             write_capacity_units: 1, # required
      #           },
      #         },
      #         delete: {
      #           index_name: "IndexName", # required
      #         },
      #       },
      #     ],
      #     stream_specification: {
      #       stream_enabled: false,
      #       stream_view_type: "NEW_IMAGE", # accepts NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES, KEYS_ONLY
      #     },
      #   })
      #
      # @example Response structure
      #   resp.table_description.attribute_definitions #=> Array
      #   resp.table_description.attribute_definitions[0].attribute_name #=> String
      #   resp.table_description.attribute_definitions[0].attribute_type #=> String, one of "S", "N", "B"
      #   resp.table_description.table_name #=> String
      #   resp.table_description.key_schema #=> Array
      #   resp.table_description.key_schema[0].attribute_name #=> String
      #   resp.table_description.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
      #   resp.table_description.table_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
      #   resp.table_description.creation_date_time #=> Time
      #   resp.table_description.provisioned_throughput.last_increase_date_time #=> Time
      #   resp.table_description.provisioned_throughput.last_decrease_date_time #=> Time
      #   resp.table_description.provisioned_throughput.number_of_decreases_today #=> Integer
      #   resp.table_description.provisioned_throughput.read_capacity_units #=> Integer
      #   resp.table_description.provisioned_throughput.write_capacity_units #=> Integer
      #   resp.table_description.table_size_bytes #=> Integer
      #   resp.table_description.item_count #=> Integer
      #   resp.table_description.table_arn #=> String
      #   resp.table_description.local_secondary_indexes #=> Array
      #   resp.table_description.local_secondary_indexes[0].index_name #=> String
      #   resp.table_description.local_secondary_indexes[0].key_schema #=> Array
      #   resp.table_description.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
      #   resp.table_description.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
      #   resp.table_description.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
      #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes #=> Array
      #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
      #   resp.table_description.local_secondary_indexes[0].index_size_bytes #=> Integer
      #   resp.table_description.local_secondary_indexes[0].item_count #=> Integer
      #   resp.table_description.local_secondary_indexes[0].index_arn #=> String
      #   resp.table_description.global_secondary_indexes #=> Array
      #   resp.table_description.global_secondary_indexes[0].index_name #=> String
      #   resp.table_description.global_secondary_indexes[0].key_schema #=> Array
      #   resp.table_description.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
      #   resp.table_description.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
      #   resp.table_description.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
      #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes #=> Array
      #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
      #   resp.table_description.global_secondary_indexes[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
      #   resp.table_description.global_secondary_indexes[0].backfilling #=> Boolean
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_increase_date_time #=> Time
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_decrease_date_time #=> Time
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.number_of_decreases_today #=> Integer
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
      #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
      #   resp.table_description.global_secondary_indexes[0].index_size_bytes #=> Integer
      #   resp.table_description.global_secondary_indexes[0].item_count #=> Integer
      #   resp.table_description.global_secondary_indexes[0].index_arn #=> String
      #   resp.table_description.stream_specification.stream_enabled #=> Boolean
      #   resp.table_description.stream_specification.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
      #   resp.table_description.latest_stream_label #=> String
      #   resp.table_description.latest_stream_arn #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_table(params = {}, options = {})
        req = build_request(:update_table, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {
          table_exists: Waiters::TableExists,
          table_not_exists: Waiters::TableNotExists
        }
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
