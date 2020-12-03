# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DynamoDB

  # This class provides a resource oriented interface for DynamoDB.
  # To create a resource object:
  #
  #     resource = Aws::DynamoDB::Resource.new(region: 'us-west-2')
  #
  # You can supply a client object with custom configuration that will be used for all resource operations.
  # If you do not pass `:client`, a default client will be constructed.
  #
  #     client = Aws::DynamoDB::Client.new(region: 'us-west-2')
  #     resource = Aws::DynamoDB::Resource.new(client: client)
  #
  class Resource

    # @param options ({})
    # @option options [Client] :client
    def initialize(options = {})
      @client = options[:client] || Client.new(options)
    end

    # @return [Client]
    def client
      @client
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   dynamo_db.batch_get_item({
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
    # @param [Hash] options ({})
    # @option options [required, Hash<String,Types::KeysAndAttributes>] :request_items
    #   A map of one or more table names and, for each table, a map that
    #   describes one or more items to retrieve from that table. Each table
    #   name can be used only once per `BatchGetItem` request.
    #
    #   Each element in the map of items to retrieve consists of the
    #   following:
    #
    #   * `ConsistentRead` - If `true`, a strongly consistent read is used; if
    #     `false` (the default), an eventually consistent read is used.
    #
    #   * `ExpressionAttributeNames` - One or more substitution tokens for
    #     attribute names in the `ProjectionExpression` parameter. The
    #     following are some use cases for using `ExpressionAttributeNames`\:
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
    #     following for `ExpressionAttributeNames`\:
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
    #     For more information about expression attribute names, see
    #     [Accessing Item Attributes][2] in the *Amazon DynamoDB Developer
    #     Guide*.
    #
    #   * `Keys` - An array of primary key attribute values that define
    #     specific items in the table. For each primary key, you must provide
    #     *all* of the key attributes. For example, with a simple primary key,
    #     you only need to provide the partition key value. For a composite
    #     key, you must provide *both* the partition key value and the sort
    #     key value.
    #
    #   * `ProjectionExpression` - A string that identifies one or more
    #     attributes to retrieve from the table. These attributes can include
    #     scalars, sets, or elements of a JSON document. The attributes in the
    #     expression must be separated by commas.
    #
    #     If no attribute names are specified, then all attributes are
    #     returned. If any of the requested attributes are not found, they do
    #     not appear in the result.
    #
    #     For more information, see [Accessing Item Attributes][2] in the
    #     *Amazon DynamoDB Developer Guide*.
    #
    #   * `AttributesToGet` - This is a legacy parameter. Use
    #     `ProjectionExpression` instead. For more information, see
    #     [AttributesToGet][3] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   [3]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    # @option options [String] :return_consumed_capacity
    #   Determines the level of detail about provisioned throughput
    #   consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`, do
    #     not access any indexes at all. In these cases, specifying `INDEXES`
    #     will only return `ConsumedCapacity` information for table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the response.
    # @return [Types::BatchGetItemOutput]
    def batch_get_item(options = {})
      resp = @client.batch_get_item(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   dynamo_db.batch_write_item({
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
    # @param [Hash] options ({})
    # @option options [required, Hash<String,Array>] :request_items
    #   A map of one or more table names and, for each table, a list of
    #   operations to be performed (`DeleteRequest` or `PutRequest`). Each
    #   element in the map consists of the following:
    #
    #   * `DeleteRequest` - Perform a `DeleteItem` operation on the specified
    #     item. The item to be deleted is identified by a `Key` subelement:
    #
    #     * `Key` - A map of primary key attribute values that uniquely
    #       identify the item. Each entry in this map consists of an attribute
    #       name and an attribute value. For each primary key, you must
    #       provide *all* of the key attributes. For example, with a simple
    #       primary key, you only need to provide a value for the partition
    #       key. For a composite primary key, you must provide values for
    #       *both* the partition key and the sort key.
    #
    #     ^
    #
    #   * `PutRequest` - Perform a `PutItem` operation on the specified item.
    #     The item to be put is identified by an `Item` subelement:
    #
    #     * `Item` - A map of attributes and their values. Each entry in this
    #       map consists of an attribute name and an attribute value.
    #       Attribute values must not be null; string and binary type
    #       attributes must have lengths greater than zero; and set type
    #       attributes must not be empty. Requests that contain empty values
    #       are rejected with a `ValidationException` exception.
    #
    #       If you specify any attributes that are part of an index key, then
    #       the data types for those attributes must match those of the schema
    #       in the table's attribute definition.
    # @option options [String] :return_consumed_capacity
    #   Determines the level of detail about provisioned throughput
    #   consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`, do
    #     not access any indexes at all. In these cases, specifying `INDEXES`
    #     will only return `ConsumedCapacity` information for table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the response.
    # @option options [String] :return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections, if
    #   any, that were modified during the operation are returned in the
    #   response. If set to `NONE` (the default), no statistics are returned.
    # @return [Types::BatchWriteItemOutput]
    def batch_write_item(options = {})
      resp = @client.batch_write_item(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   table = dynamo_db.create_table({
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
    #         provisioned_throughput: {
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #       },
    #     ],
    #     billing_mode: "PROVISIONED", # accepts PROVISIONED, PAY_PER_REQUEST
    #     provisioned_throughput: {
    #       read_capacity_units: 1, # required
    #       write_capacity_units: 1, # required
    #     },
    #     stream_specification: {
    #       stream_enabled: false, # required
    #       stream_view_type: "NEW_IMAGE", # accepts NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES, KEYS_ONLY
    #     },
    #     sse_specification: {
    #       enabled: false,
    #       sse_type: "AES256", # accepts AES256, KMS
    #       kms_master_key_id: "KMSMasterKeyId",
    #     },
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, Array<Types::AttributeDefinition>] :attribute_definitions
    #   An array of attributes that describe the key schema for the table and
    #   indexes.
    # @option options [required, String] :table_name
    #   The name of the table to create.
    # @option options [required, Array<Types::KeySchemaElement>] :key_schema
    #   Specifies the attributes that make up the primary key for a table or
    #   an index. The attributes in `KeySchema` must also be defined in the
    #   `AttributeDefinitions` array. For more information, see [Data
    #   Model][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #   Each `KeySchemaElement` in the array is composed of:
    #
    #   * `AttributeName` - The name of this key attribute.
    #
    #   * `KeyType` - The role that the key attribute will assume:
    #
    #     * `HASH` - partition key
    #
    #     * `RANGE` - sort key
    #
    #   <note markdown="1"> The partition key of an item is also known as its *hash attribute*.
    #   The term "hash attribute" derives from the DynamoDB usage of an
    #   internal hash function to evenly distribute data items across
    #   partitions, based on their partition key values.
    #
    #    The sort key of an item is also known as its *range attribute*. The
    #   term "range attribute" derives from the way DynamoDB stores items
    #   with the same partition key physically close together, in sorted order
    #   by the sort key value.
    #
    #    </note>
    #
    #   For a simple primary key (partition key), you must provide exactly one
    #   element with a `KeyType` of `HASH`.
    #
    #   For a composite primary key (partition key and sort key), you must
    #   provide exactly two elements, in this order: The first element must
    #   have a `KeyType` of `HASH`, and the second element must have a
    #   `KeyType` of `RANGE`.
    #
    #   For more information, see [Working with Tables][2] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key
    # @option options [Array<Types::LocalSecondaryIndex>] :local_secondary_indexes
    #   One or more local secondary indexes (the maximum is 5) to be created
    #   on the table. Each index is scoped to a given partition key value.
    #   There is a 10 GB size limit per partition key value; otherwise, the
    #   size of a local secondary index is unconstrained.
    #
    #   Each local secondary index in the array includes the following:
    #
    #   * `IndexName` - The name of the local secondary index. Must be unique
    #     only for this table.
    #
    #
    #
    #   * `KeySchema` - Specifies the key schema for the local secondary
    #     index. The key schema must begin with the same partition key as the
    #     table.
    #
    #   * `Projection` - Specifies attributes that are copied (projected) from
    #     the table into the index. These are in addition to the primary key
    #     attributes and index key attributes, which are automatically
    #     projected. Each attribute specification is composed of:
    #
    #     * `ProjectionType` - One of the following:
    #
    #       * `KEYS_ONLY` - Only the index and primary keys are projected into
    #         the index.
    #
    #       * `INCLUDE` - Only the specified table attributes are projected
    #         into the index. The list of projected attributes is in
    #         `NonKeyAttributes`.
    #
    #       * `ALL` - All of the table attributes are projected into the
    #         index.
    #
    #     * `NonKeyAttributes` - A list of one or more non-key attribute names
    #       that are projected into the secondary index. The total count of
    #       attributes provided in `NonKeyAttributes`, summed across all of
    #       the secondary indexes, must not exceed 100. If you project the
    #       same attribute into two different indexes, this counts as two
    #       distinct attributes when determining the total.
    # @option options [Array<Types::GlobalSecondaryIndex>] :global_secondary_indexes
    #   One or more global secondary indexes (the maximum is 20) to be created
    #   on the table. Each global secondary index in the array includes the
    #   following:
    #
    #   * `IndexName` - The name of the global secondary index. Must be unique
    #     only for this table.
    #
    #
    #
    #   * `KeySchema` - Specifies the key schema for the global secondary
    #     index.
    #
    #   * `Projection` - Specifies attributes that are copied (projected) from
    #     the table into the index. These are in addition to the primary key
    #     attributes and index key attributes, which are automatically
    #     projected. Each attribute specification is composed of:
    #
    #     * `ProjectionType` - One of the following:
    #
    #       * `KEYS_ONLY` - Only the index and primary keys are projected into
    #         the index.
    #
    #       * `INCLUDE` - Only the specified table attributes are projected
    #         into the index. The list of projected attributes is in
    #         `NonKeyAttributes`.
    #
    #       * `ALL` - All of the table attributes are projected into the
    #         index.
    #
    #     * `NonKeyAttributes` - A list of one or more non-key attribute names
    #       that are projected into the secondary index. The total count of
    #       attributes provided in `NonKeyAttributes`, summed across all of
    #       the secondary indexes, must not exceed 100. If you project the
    #       same attribute into two different indexes, this counts as two
    #       distinct attributes when determining the total.
    #
    #   * `ProvisionedThroughput` - The provisioned throughput settings for
    #     the global secondary index, consisting of read and write capacity
    #     units.
    # @option options [String] :billing_mode
    #   Controls how you are charged for read and write throughput and how you
    #   manage capacity. This setting can be changed later.
    #
    #   * `PROVISIONED` - We recommend using `PROVISIONED` for predictable
    #     workloads. `PROVISIONED` sets the billing mode to [Provisioned
    #     Mode][1].
    #
    #   * `PAY_PER_REQUEST` - We recommend using `PAY_PER_REQUEST` for
    #     unpredictable workloads. `PAY_PER_REQUEST` sets the billing mode to
    #     [On-Demand Mode][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand
    # @option options [Types::ProvisionedThroughput] :provisioned_throughput
    #   Represents the provisioned throughput settings for a specified table
    #   or index. The settings can be modified using the `UpdateTable`
    #   operation.
    #
    #   If you set BillingMode as `PROVISIONED`, you must specify this
    #   property. If you set BillingMode as `PAY_PER_REQUEST`, you cannot
    #   specify this property.
    #
    #   For current minimum and maximum provisioned throughput values, see
    #   [Service, Account, and Table Quotas][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
    # @option options [Types::StreamSpecification] :stream_specification
    #   The settings for DynamoDB Streams on the table. These settings consist
    #   of:
    #
    #   * `StreamEnabled` - Indicates whether DynamoDB Streams is to be
    #     enabled (true) or disabled (false).
    #
    #   * `StreamViewType` - When an item in the table is modified,
    #     `StreamViewType` determines what information is written to the
    #     table's stream. Valid values for `StreamViewType` are:
    #
    #     * `KEYS_ONLY` - Only the key attributes of the modified item are
    #       written to the stream.
    #
    #     * `NEW_IMAGE` - The entire item, as it appears after it was
    #       modified, is written to the stream.
    #
    #     * `OLD_IMAGE` - The entire item, as it appeared before it was
    #       modified, is written to the stream.
    #
    #     * `NEW_AND_OLD_IMAGES` - Both the new and the old item images of the
    #       item are written to the stream.
    # @option options [Types::SSESpecification] :sse_specification
    #   Represents the settings used to enable server-side encryption.
    # @option options [Array<Types::Tag>] :tags
    #   A list of key-value pairs to label the table. For more information,
    #   see [Tagging for DynamoDB][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html
    # @return [Table]
    def create_table(options = {})
      resp = @client.create_table(options)
      Table.new(
        name: resp.data.table_description.table_name,
        data: resp.data.table_description,
        client: @client
      )
    end

    # @!group Associations

    # @param [String] name
    # @return [Table]
    def table(name)
      Table.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dynamo_db.tables()
    # @param [Hash] options ({})
    # @return [Table::Collection]
    def tables(options = {})
      batches = Enumerator.new do |y|
        resp = @client.list_tables(options)
        resp.each_page do |page|
          batch = []
          page.data.table_names.each do |t|
            batch << Table.new(
              name: t,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Table::Collection.new(batches)
    end

  end
end
