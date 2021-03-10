# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DynamoDB

  class Table

    extend Aws::Deprecations

    # @overload def initialize(name, options = {})
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def name
      @name
    end
    alias :table_name :name

    # An array of `AttributeDefinition` objects. Each of these objects
    # describes one attribute in the table and index key schema.
    #
    # Each `AttributeDefinition` object in this array is composed of:
    #
    # * `AttributeName` - The name of the attribute.
    #
    # * `AttributeType` - The data type for the attribute.
    # @return [Array<Types::AttributeDefinition>]
    def attribute_definitions
      data[:attribute_definitions]
    end

    # The primary key structure for the table. Each `KeySchemaElement`
    # consists of:
    #
    # * `AttributeName` - The name of the attribute.
    #
    # * `KeyType` - The role of the attribute:
    #
    #   * `HASH` - partition key
    #
    #   * `RANGE` - sort key
    #
    #   <note markdown="1"> The partition key of an item is also known as its *hash attribute*.
    #   The term "hash attribute" derives from DynamoDB's usage of an
    #   internal hash function to evenly distribute data items across
    #   partitions, based on their partition key values.
    #
    #    The sort key of an item is also known as its *range attribute*. The
    #   term "range attribute" derives from the way DynamoDB stores items
    #   with the same partition key physically close together, in sorted
    #   order by the sort key value.
    #
    #    </note>
    #
    # For more information about primary keys, see [Primary Key][1] in the
    # *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey
    # @return [Array<Types::KeySchemaElement>]
    def key_schema
      data[:key_schema]
    end

    # The current state of the table:
    #
    # * `CREATING` - The table is being created.
    #
    # * `UPDATING` - The table is being updated.
    #
    # * `DELETING` - The table is being deleted.
    #
    # * `ACTIVE` - The table is ready for use.
    #
    # * `INACCESSIBLE_ENCRYPTION_CREDENTIALS` - The AWS KMS key used to
    #   encrypt the table in inaccessible. Table operations may fail due to
    #   failure to use the AWS KMS key. DynamoDB will initiate the table
    #   archival process when a table's AWS KMS key remains inaccessible
    #   for more than seven days.
    #
    # * `ARCHIVING` - The table is being archived. Operations are not
    #   allowed until archival is complete.
    #
    # * `ARCHIVED` - The table has been archived. See the ArchivalReason for
    #   more information.
    # @return [String]
    def table_status
      data[:table_status]
    end

    # The date and time when the table was created, in [UNIX epoch time][1]
    # format.
    #
    #
    #
    # [1]: http://www.epochconverter.com/
    # @return [Time]
    def creation_date_time
      data[:creation_date_time]
    end

    # The provisioned throughput settings for the table, consisting of read
    # and write capacity units, along with data about increases and
    # decreases.
    # @return [Types::ProvisionedThroughputDescription]
    def provisioned_throughput
      data[:provisioned_throughput]
    end

    # The total size of the specified table, in bytes. DynamoDB updates this
    # value approximately every six hours. Recent changes might not be
    # reflected in this value.
    # @return [Integer]
    def table_size_bytes
      data[:table_size_bytes]
    end

    # The number of items in the specified table. DynamoDB updates this
    # value approximately every six hours. Recent changes might not be
    # reflected in this value.
    # @return [Integer]
    def item_count
      data[:item_count]
    end

    # The Amazon Resource Name (ARN) that uniquely identifies the table.
    # @return [String]
    def table_arn
      data[:table_arn]
    end

    # Unique identifier for the table for which the backup was created.
    # @return [String]
    def table_id
      data[:table_id]
    end

    # Contains the details for the read/write capacity mode.
    # @return [Types::BillingModeSummary]
    def billing_mode_summary
      data[:billing_mode_summary]
    end

    # Represents one or more local secondary indexes on the table. Each
    # index is scoped to a given partition key value. Tables with one or
    # more local secondary indexes are subject to an item collection size
    # limit, where the amount of data within a given item collection cannot
    # exceed 10 GB. Each element is composed of:
    #
    # * `IndexName` - The name of the local secondary index.
    #
    # * `KeySchema` - Specifies the complete index key schema. The attribute
    #   names in the key schema must be between 1 and 255 characters
    #   (inclusive). The key schema must begin with the same partition key
    #   as the table.
    #
    # * `Projection` - Specifies attributes that are copied (projected) from
    #   the table into the index. These are in addition to the primary key
    #   attributes and index key attributes, which are automatically
    #   projected. Each attribute specification is composed of:
    #
    #   * `ProjectionType` - One of the following:
    #
    #     * `KEYS_ONLY` - Only the index and primary keys are projected into
    #       the index.
    #
    #     * `INCLUDE` - Only the specified table attributes are projected
    #       into the index. The list of projected attributes is in
    #       `NonKeyAttributes`.
    #
    #     * `ALL` - All of the table attributes are projected into the
    #       index.
    #
    #   * `NonKeyAttributes` - A list of one or more non-key attribute names
    #     that are projected into the secondary index. The total count of
    #     attributes provided in `NonKeyAttributes`, summed across all of
    #     the secondary indexes, must not exceed 20. If you project the same
    #     attribute into two different indexes, this counts as two distinct
    #     attributes when determining the total.
    #
    # * `IndexSizeBytes` - Represents the total size of the index, in bytes.
    #   DynamoDB updates this value approximately every six hours. Recent
    #   changes might not be reflected in this value.
    #
    # * `ItemCount` - Represents the number of items in the index. DynamoDB
    #   updates this value approximately every six hours. Recent changes
    #   might not be reflected in this value.
    #
    # If the table is in the `DELETING` state, no information about indexes
    # will be returned.
    # @return [Array<Types::LocalSecondaryIndexDescription>]
    def local_secondary_indexes
      data[:local_secondary_indexes]
    end

    # The global secondary indexes, if any, on the table. Each index is
    # scoped to a given partition key value. Each element is composed of:
    #
    # * `Backfilling` - If true, then the index is currently in the
    #   backfilling phase. Backfilling occurs only when a new global
    #   secondary index is added to the table. It is the process by which
    #   DynamoDB populates the new index with data from the table. (This
    #   attribute does not appear for indexes that were created during a
    #   `CreateTable` operation.)
    #
    #   You can delete an index that is being created during the
    #   `Backfilling` phase when `IndexStatus` is set to CREATING and
    #   `Backfilling` is true. You can't delete the index that is being
    #   created when `IndexStatus` is set to CREATING and `Backfilling` is
    #   false. (This attribute does not appear for indexes that were created
    #   during a `CreateTable` operation.)
    #
    # * `IndexName` - The name of the global secondary index.
    #
    # * `IndexSizeBytes` - The total size of the global secondary index, in
    #   bytes. DynamoDB updates this value approximately every six hours.
    #   Recent changes might not be reflected in this value.
    #
    # * `IndexStatus` - The current status of the global secondary index:
    #
    #   * `CREATING` - The index is being created.
    #
    #   * `UPDATING` - The index is being updated.
    #
    #   * `DELETING` - The index is being deleted.
    #
    #   * `ACTIVE` - The index is ready for use.
    #
    # * `ItemCount` - The number of items in the global secondary index.
    #   DynamoDB updates this value approximately every six hours. Recent
    #   changes might not be reflected in this value.
    #
    # * `KeySchema` - Specifies the complete index key schema. The attribute
    #   names in the key schema must be between 1 and 255 characters
    #   (inclusive). The key schema must begin with the same partition key
    #   as the table.
    #
    # * `Projection` - Specifies attributes that are copied (projected) from
    #   the table into the index. These are in addition to the primary key
    #   attributes and index key attributes, which are automatically
    #   projected. Each attribute specification is composed of:
    #
    #   * `ProjectionType` - One of the following:
    #
    #     * `KEYS_ONLY` - Only the index and primary keys are projected into
    #       the index.
    #
    #     * `INCLUDE` - In addition to the attributes described in
    #       `KEYS_ONLY`, the secondary index will include other non-key
    #       attributes that you specify.
    #
    #     * `ALL` - All of the table attributes are projected into the
    #       index.
    #
    #   * `NonKeyAttributes` - A list of one or more non-key attribute names
    #     that are projected into the secondary index. The total count of
    #     attributes provided in `NonKeyAttributes`, summed across all of
    #     the secondary indexes, must not exceed 20. If you project the same
    #     attribute into two different indexes, this counts as two distinct
    #     attributes when determining the total.
    #
    # * `ProvisionedThroughput` - The provisioned throughput settings for
    #   the global secondary index, consisting of read and write capacity
    #   units, along with data about increases and decreases.
    #
    # If the table is in the `DELETING` state, no information about indexes
    # will be returned.
    # @return [Array<Types::GlobalSecondaryIndexDescription>]
    def global_secondary_indexes
      data[:global_secondary_indexes]
    end

    # The current DynamoDB Streams configuration for the table.
    # @return [Types::StreamSpecification]
    def stream_specification
      data[:stream_specification]
    end

    # A timestamp, in ISO 8601 format, for this stream.
    #
    # Note that `LatestStreamLabel` is not a unique identifier for the
    # stream, because it is possible that a stream from another table might
    # have the same timestamp. However, the combination of the following
    # three elements is guaranteed to be unique:
    #
    # * AWS customer ID
    #
    # * Table name
    #
    # * `StreamLabel`
    # @return [String]
    def latest_stream_label
      data[:latest_stream_label]
    end

    # The Amazon Resource Name (ARN) that uniquely identifies the latest
    # stream for this table.
    # @return [String]
    def latest_stream_arn
      data[:latest_stream_arn]
    end

    # Represents the version of [global tables][1] in use, if the table is
    # replicated across AWS Regions.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
    # @return [String]
    def global_table_version
      data[:global_table_version]
    end

    # Represents replicas of the table.
    # @return [Array<Types::ReplicaDescription>]
    def replicas
      data[:replicas]
    end

    # Contains details for the restore.
    # @return [Types::RestoreSummary]
    def restore_summary
      data[:restore_summary]
    end

    # The description of the server-side encryption status on the specified
    # table.
    # @return [Types::SSEDescription]
    def sse_description
      data[:sse_description]
    end

    # Contains information about the table archive.
    # @return [Types::ArchivalSummary]
    def archival_summary
      data[:archival_summary]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Table}.
    # Returns `self` making it possible to chain methods.
    #
    #     table.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_table(table_name: @name)
      @data = resp.table
      self
    end
    alias :reload :load

    # @return [Types::TableDescription]
    #   Returns the data for this {Table}. Calls
    #   {Client#describe_table} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @deprecated Use [Aws::DynamoDB::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource
    #   remains unchanged.
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) do |instance|
    #       instance.state.name == 'running'
    #     end
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is
    # set by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @yieldparam [Resource] resource to be used in the waiting condition.
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter
    #   terminates because the waiter has entered a state that it will not
    #   transition out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is
    #   encountered while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Waiters::Waiter.new(options).wait({})
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   table.delete()
    # @param [Hash] options ({})
    # @return [Types::DeleteTableOutput]
    def delete(options = {})
      options = options.merge(table_name: @name)
      resp = @client.delete_table(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   table.delete_item({
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
    # @param [Hash] options ({})
    # @option options [required, Hash<String,Types::AttributeValue>] :key
    #   A map of attribute names to `AttributeValue` objects, representing the
    #   primary key of the item to delete.
    #
    #   For the primary key, you must provide all of the attributes. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   values for both the partition key and the sort key.
    # @option options [Hash<String,Types::ExpectedAttributeValue>] :expected
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [Expected][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html
    # @option options [String] :conditional_operator
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    # @option options [String] :return_values
    #   Use `ReturnValues` if you want to get the item attributes as they
    #   appeared before they were deleted. For `DeleteItem`, the valid values
    #   are:
    #
    #   * `NONE` - If `ReturnValues` is not specified, or if its value is
    #     `NONE`, then nothing is returned. (This setting is the default for
    #     `ReturnValues`.)
    #
    #   * `ALL_OLD` - The content of the old item is returned.
    #
    #   <note markdown="1"> The `ReturnValues` parameter is used by several DynamoDB operations;
    #   however, `DeleteItem` does not recognize any values other than `NONE`
    #   or `ALL_OLD`.
    #
    #    </note>
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
    # @option options [String] :condition_expression
    #   A condition that must be satisfied in order for a conditional
    #   `DeleteItem` to succeed.
    #
    #   An expression can contain any of the following:
    #
    #   * Functions: `attribute_exists | attribute_not_exists | attribute_type
    #     | contains | begins_with | size`
    #
    #     These function names are case-sensitive.
    #
    #   * Comparison operators: `= | <> | < | > | <= | >= | BETWEEN | IN `
    #
    #   * Logical operators: `AND | OR | NOT`
    #
    #   For more information about condition expressions, see [Condition
    #   Expressions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    # @option options [Hash<String,String>] :expression_attribute_names
    #   One or more substitution tokens for attribute names in an expression.
    #   The following are some use cases for using
    #   `ExpressionAttributeNames`\:
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
    #   following for `ExpressionAttributeNames`\:
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
    #   For more information on expression attribute names, see [Specifying
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    # @option options [Hash<String,Types::AttributeValue>] :expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check whether
    #   the value of the *ProductStatus* attribute was one of the following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
    #   ":disc":\{"S":"Discontinued"\} \}`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Condition
    #   Expressions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    # @return [Types::DeleteItemOutput]
    def delete_item(options = {})
      options = options.merge(table_name: @name)
      resp = @client.delete_item(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   table.get_item({
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
    # @param [Hash] options ({})
    # @option options [required, Hash<String,Types::AttributeValue>] :key
    #   A map of attribute names to `AttributeValue` objects, representing the
    #   primary key of the item to retrieve.
    #
    #   For the primary key, you must provide all of the attributes. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   values for both the partition key and the sort key.
    # @option options [Array<String>] :attributes_to_get
    #   This is a legacy parameter. Use `ProjectionExpression` instead. For
    #   more information, see [AttributesToGet][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    # @option options [Boolean] :consistent_read
    #   Determines the read consistency model: If set to `true`, then the
    #   operation uses strongly consistent reads; otherwise, the operation
    #   uses eventually consistent reads.
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
    # @option options [String] :projection_expression
    #   A string that identifies one or more attributes to retrieve from the
    #   table. These attributes can include scalars, sets, or elements of a
    #   JSON document. The attributes in the expression must be separated by
    #   commas.
    #
    #   If no attribute names are specified, then all attributes are returned.
    #   If any of the requested attributes are not found, they do not appear
    #   in the result.
    #
    #   For more information, see [Specifying Item Attributes][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    # @option options [Hash<String,String>] :expression_attribute_names
    #   One or more substitution tokens for attribute names in an expression.
    #   The following are some use cases for using
    #   `ExpressionAttributeNames`\:
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
    #   following for `ExpressionAttributeNames`\:
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
    #   For more information on expression attribute names, see [Specifying
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    # @return [Types::GetItemOutput]
    def get_item(options = {})
      options = options.merge(table_name: @name)
      resp = @client.get_item(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   table.put_item({
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
    # @param [Hash] options ({})
    # @option options [required, Hash<String,Types::AttributeValue>] :item
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
    #   table's attribute definition.
    #
    #   Empty String and Binary attribute values are allowed. Attribute values
    #   of type String and Binary must have a length greater than zero if the
    #   attribute is used as a key attribute for a table or index.
    #
    #   For more information about primary keys, see [Primary Key][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #   Each element in the `Item` map is an `AttributeValue` object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.PrimaryKey
    # @option options [Hash<String,Types::ExpectedAttributeValue>] :expected
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [Expected][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html
    # @option options [String] :return_values
    #   Use `ReturnValues` if you want to get the item attributes as they
    #   appeared before they were updated with the `PutItem` request. For
    #   `PutItem`, the valid values are:
    #
    #   * `NONE` - If `ReturnValues` is not specified, or if its value is
    #     `NONE`, then nothing is returned. (This setting is the default for
    #     `ReturnValues`.)
    #
    #   * `ALL_OLD` - If `PutItem` overwrote an attribute name-value pair,
    #     then the content of the old item is returned.
    #
    #   <note markdown="1"> The `ReturnValues` parameter is used by several DynamoDB operations;
    #   however, `PutItem` does not recognize any values other than `NONE` or
    #   `ALL_OLD`.
    #
    #    </note>
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
    # @option options [String] :conditional_operator
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    # @option options [String] :condition_expression
    #   A condition that must be satisfied in order for a conditional
    #   `PutItem` operation to succeed.
    #
    #   An expression can contain any of the following:
    #
    #   * Functions: `attribute_exists | attribute_not_exists | attribute_type
    #     | contains | begins_with | size`
    #
    #     These function names are case-sensitive.
    #
    #   * Comparison operators: `= | <> | < | > | <= | >= | BETWEEN | IN `
    #
    #   * Logical operators: `AND | OR | NOT`
    #
    #   For more information on condition expressions, see [Condition
    #   Expressions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    # @option options [Hash<String,String>] :expression_attribute_names
    #   One or more substitution tokens for attribute names in an expression.
    #   The following are some use cases for using
    #   `ExpressionAttributeNames`\:
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
    #   following for `ExpressionAttributeNames`\:
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
    #   For more information on expression attribute names, see [Specifying
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    # @option options [Hash<String,Types::AttributeValue>] :expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check whether
    #   the value of the *ProductStatus* attribute was one of the following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
    #   ":disc":\{"S":"Discontinued"\} \}`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Condition
    #   Expressions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    # @return [Types::PutItemOutput]
    def put_item(options = {})
      options = options.merge(table_name: @name)
      resp = @client.put_item(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   table.query({
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
    # @param [Hash] options ({})
    # @option options [String] :index_name
    #   The name of an index to query. This index can be any local secondary
    #   index or global secondary index on the table. Note that if you use the
    #   `IndexName` parameter, you must also provide `TableName.`
    # @option options [String] :select
    #   The attributes to be returned in the result. You can retrieve all item
    #   attributes, specific item attributes, the count of matching items, or
    #   in the case of an index, some or all of the attributes projected into
    #   the index.
    #
    #   * `ALL_ATTRIBUTES` - Returns all of the item attributes from the
    #     specified table or index. If you query a local secondary index, then
    #     for each matching item in the index, DynamoDB fetches the entire
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
    #     `AttributesToGet`. This return value is equivalent to specifying
    #     `AttributesToGet` without specifying any value for `Select`.
    #
    #     If you query or scan a local secondary index and request only
    #     attributes that are projected into that index, the operation will
    #     read only the index and not the table. If any of the requested
    #     attributes are not projected into the local secondary index,
    #     DynamoDB fetches each of these attributes from the parent table.
    #     This extra fetching incurs additional throughput cost and latency.
    #
    #     If you query or scan a global secondary index, you can only request
    #     attributes that are projected into the index. Global secondary index
    #     queries cannot fetch attributes from the parent table.
    #
    #   If neither `Select` nor `AttributesToGet` are specified, DynamoDB
    #   defaults to `ALL_ATTRIBUTES` when accessing a table, and
    #   `ALL_PROJECTED_ATTRIBUTES` when accessing an index. You cannot use
    #   both `Select` and `AttributesToGet` together in a single request,
    #   unless the value for `Select` is `SPECIFIC_ATTRIBUTES`. (This usage is
    #   equivalent to specifying `AttributesToGet` without any value for
    #   `Select`.)
    #
    #   <note markdown="1"> If you use the `ProjectionExpression` parameter, then the value for
    #   `Select` can only be `SPECIFIC_ATTRIBUTES`. Any other value for
    #   `Select` will return an error.
    #
    #    </note>
    # @option options [Array<String>] :attributes_to_get
    #   This is a legacy parameter. Use `ProjectionExpression` instead. For
    #   more information, see [AttributesToGet][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    # @option options [Integer] :limit
    #   The maximum number of items to evaluate (not necessarily the number of
    #   matching items). If DynamoDB processes the number of items up to the
    #   limit while processing the results, it stops the operation and returns
    #   the matching values up to that point, and a key in `LastEvaluatedKey`
    #   to apply in a subsequent operation, so that you can pick up where you
    #   left off. Also, if the processed dataset size exceeds 1 MB before
    #   DynamoDB reaches this limit, it stops the operation and returns the
    #   matching values up to the limit, and a key in `LastEvaluatedKey` to
    #   apply in a subsequent operation to continue the operation. For more
    #   information, see [Query and Scan][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html
    # @option options [Boolean] :consistent_read
    #   Determines the read consistency model: If set to `true`, then the
    #   operation uses strongly consistent reads; otherwise, the operation
    #   uses eventually consistent reads.
    #
    #   Strongly consistent reads are not supported on global secondary
    #   indexes. If you query a global secondary index with `ConsistentRead`
    #   set to `true`, you will receive a `ValidationException`.
    # @option options [Hash<String,Types::Condition>] :key_conditions
    #   This is a legacy parameter. Use `KeyConditionExpression` instead. For
    #   more information, see [KeyConditions][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html
    # @option options [Hash<String,Types::Condition>] :query_filter
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [QueryFilter][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html
    # @option options [String] :conditional_operator
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    # @option options [Boolean] :scan_index_forward
    #   Specifies the order for index traversal: If `true` (default), the
    #   traversal is performed in ascending order; if `false`, the traversal
    #   is performed in descending order.
    #
    #   Items with the same partition key value are stored in sorted order by
    #   sort key. If the sort key data type is Number, the results are stored
    #   in numeric order. For type String, the results are stored in order of
    #   UTF-8 bytes. For type Binary, DynamoDB treats each byte of the binary
    #   data as unsigned.
    #
    #   If `ScanIndexForward` is `true`, DynamoDB returns the results in the
    #   order in which they are stored (by sort key value). This is the
    #   default behavior. If `ScanIndexForward` is `false`, DynamoDB reads the
    #   results in reverse order by sort key value, and then returns the
    #   results to the client.
    # @option options [Hash<String,Types::AttributeValue>] :exclusive_start_key
    #   The primary key of the first item that this operation will evaluate.
    #   Use the value that was returned for `LastEvaluatedKey` in the previous
    #   operation.
    #
    #   The data type for `ExclusiveStartKey` must be String, Number, or
    #   Binary. No set data types are allowed.
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
    # @option options [String] :projection_expression
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
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    # @option options [String] :filter_expression
    #   A string that contains conditions that DynamoDB applies after the
    #   `Query` operation, but before the data is returned to you. Items that
    #   do not satisfy the `FilterExpression` criteria are not returned.
    #
    #   A `FilterExpression` does not allow key attributes. You cannot define
    #   a filter expression based on a partition key or a sort key.
    #
    #   <note markdown="1"> A `FilterExpression` is applied after the items have already been
    #   read; the process of filtering does not consume any additional read
    #   capacity units.
    #
    #    </note>
    #
    #   For more information, see [Filter Expressions][1] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults
    # @option options [String] :key_condition_expression
    #   The condition that specifies the key values for items to be retrieved
    #   by the `Query` action.
    #
    #   The condition must perform an equality test on a single partition key
    #   value.
    #
    #   The condition can optionally perform one of several comparison tests
    #   on a single sort key value. This allows `Query` to retrieve one item
    #   with a given partition key value and sort key value, or several items
    #   that have the same partition key value but different sort key values.
    #
    #   The partition key equality test is required, and must be specified in
    #   the following format:
    #
    #   `partitionKeyName` *=* `:partitionkeyval`
    #
    #   If you also want to provide a condition for the sort key, it must be
    #   combined using `AND` with the condition for the sort key. Following is
    #   an example, using the **=** comparison operator for the sort key:
    #
    #   `partitionKeyName` `=` `:partitionkeyval` `AND` `sortKeyName` `=`
    #   `:sortkeyval`
    #
    #   Valid comparisons for the sort key condition are as follows:
    #
    #   * `sortKeyName` `=` `:sortkeyval` - true if the sort key value is
    #     equal to `:sortkeyval`.
    #
    #   * `sortKeyName` `<` `:sortkeyval` - true if the sort key value is less
    #     than `:sortkeyval`.
    #
    #   * `sortKeyName` `<=` `:sortkeyval` - true if the sort key value is
    #     less than or equal to `:sortkeyval`.
    #
    #   * `sortKeyName` `>` `:sortkeyval` - true if the sort key value is
    #     greater than `:sortkeyval`.
    #
    #   * `sortKeyName` `>= ` `:sortkeyval` - true if the sort key value is
    #     greater than or equal to `:sortkeyval`.
    #
    #   * `sortKeyName` `BETWEEN` `:sortkeyval1` `AND` `:sortkeyval2` - true
    #     if the sort key value is greater than or equal to `:sortkeyval1`,
    #     and less than or equal to `:sortkeyval2`.
    #
    #   * `begins_with (` `sortKeyName`, `:sortkeyval` `)` - true if the sort
    #     key value begins with a particular operand. (You cannot use this
    #     function with a sort key that is of type Number.) Note that the
    #     function name `begins_with` is case-sensitive.
    #
    #   Use the `ExpressionAttributeValues` parameter to replace tokens such
    #   as `:partitionval` and `:sortval` with actual values at runtime.
    #
    #   You can optionally use the `ExpressionAttributeNames` parameter to
    #   replace the names of the partition key and sort key with placeholder
    #   tokens. This option might be necessary if an attribute name conflicts
    #   with a DynamoDB reserved word. For example, the following
    #   `KeyConditionExpression` parameter causes an error because *Size* is a
    #   reserved word:
    #
    #   * `Size = :myval`
    #
    #   ^
    #
    #   To work around this, define a placeholder (such a `#S`) to represent
    #   the attribute name *Size*. `KeyConditionExpression` then is as
    #   follows:
    #
    #   * `#S = :myval`
    #
    #   ^
    #
    #   For a list of reserved words, see [Reserved Words][1] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #   For more information on `ExpressionAttributeNames` and
    #   `ExpressionAttributeValues`, see [Using Placeholders for Attribute
    #   Names and Values][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html
    # @option options [Hash<String,String>] :expression_attribute_names
    #   One or more substitution tokens for attribute names in an expression.
    #   The following are some use cases for using
    #   `ExpressionAttributeNames`\:
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
    #   following for `ExpressionAttributeNames`\:
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
    #   For more information on expression attribute names, see [Specifying
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    # @option options [Hash<String,Types::AttributeValue>] :expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check whether
    #   the value of the *ProductStatus* attribute was one of the following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
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
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    # @return [Types::QueryOutput]
    def query(options = {})
      options = options.merge(table_name: @name)
      resp = @client.query(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   table.scan({
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
    # @param [Hash] options ({})
    # @option options [String] :index_name
    #   The name of a secondary index to scan. This index can be any local
    #   secondary index or global secondary index. Note that if you use the
    #   `IndexName` parameter, you must also provide `TableName`.
    # @option options [Array<String>] :attributes_to_get
    #   This is a legacy parameter. Use `ProjectionExpression` instead. For
    #   more information, see [AttributesToGet][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    # @option options [Integer] :limit
    #   The maximum number of items to evaluate (not necessarily the number of
    #   matching items). If DynamoDB processes the number of items up to the
    #   limit while processing the results, it stops the operation and returns
    #   the matching values up to that point, and a key in `LastEvaluatedKey`
    #   to apply in a subsequent operation, so that you can pick up where you
    #   left off. Also, if the processed dataset size exceeds 1 MB before
    #   DynamoDB reaches this limit, it stops the operation and returns the
    #   matching values up to the limit, and a key in `LastEvaluatedKey` to
    #   apply in a subsequent operation to continue the operation. For more
    #   information, see [Working with Queries][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html
    # @option options [String] :select
    #   The attributes to be returned in the result. You can retrieve all item
    #   attributes, specific item attributes, the count of matching items, or
    #   in the case of an index, some or all of the attributes projected into
    #   the index.
    #
    #   * `ALL_ATTRIBUTES` - Returns all of the item attributes from the
    #     specified table or index. If you query a local secondary index, then
    #     for each matching item in the index, DynamoDB fetches the entire
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
    #     `AttributesToGet`. This return value is equivalent to specifying
    #     `AttributesToGet` without specifying any value for `Select`.
    #
    #     If you query or scan a local secondary index and request only
    #     attributes that are projected into that index, the operation reads
    #     only the index and not the table. If any of the requested attributes
    #     are not projected into the local secondary index, DynamoDB fetches
    #     each of these attributes from the parent table. This extra fetching
    #     incurs additional throughput cost and latency.
    #
    #     If you query or scan a global secondary index, you can only request
    #     attributes that are projected into the index. Global secondary index
    #     queries cannot fetch attributes from the parent table.
    #
    #   If neither `Select` nor `AttributesToGet` are specified, DynamoDB
    #   defaults to `ALL_ATTRIBUTES` when accessing a table, and
    #   `ALL_PROJECTED_ATTRIBUTES` when accessing an index. You cannot use
    #   both `Select` and `AttributesToGet` together in a single request,
    #   unless the value for `Select` is `SPECIFIC_ATTRIBUTES`. (This usage is
    #   equivalent to specifying `AttributesToGet` without any value for
    #   `Select`.)
    #
    #   <note markdown="1"> If you use the `ProjectionExpression` parameter, then the value for
    #   `Select` can only be `SPECIFIC_ATTRIBUTES`. Any other value for
    #   `Select` will return an error.
    #
    #    </note>
    # @option options [Hash<String,Types::Condition>] :scan_filter
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [ScanFilter][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html
    # @option options [String] :conditional_operator
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    # @option options [Hash<String,Types::AttributeValue>] :exclusive_start_key
    #   The primary key of the first item that this operation will evaluate.
    #   Use the value that was returned for `LastEvaluatedKey` in the previous
    #   operation.
    #
    #   The data type for `ExclusiveStartKey` must be String, Number or
    #   Binary. No set data types are allowed.
    #
    #   In a parallel scan, a `Scan` request that includes `ExclusiveStartKey`
    #   must specify the same segment whose previous `Scan` returned the
    #   corresponding value of `LastEvaluatedKey`.
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
    # @option options [Integer] :total_segments
    #   For a parallel `Scan` request, `TotalSegments` represents the total
    #   number of segments into which the `Scan` operation will be divided.
    #   The value of `TotalSegments` corresponds to the number of application
    #   workers that will perform the parallel scan. For example, if you want
    #   to use four application threads to scan a table or an index, specify a
    #   `TotalSegments` value of 4.
    #
    #   The value for `TotalSegments` must be greater than or equal to 1, and
    #   less than or equal to 1000000. If you specify a `TotalSegments` value
    #   of 1, the `Scan` operation will be sequential rather than parallel.
    #
    #   If you specify `TotalSegments`, you must also specify `Segment`.
    # @option options [Integer] :segment
    #   For a parallel `Scan` request, `Segment` identifies an individual
    #   segment to be scanned by an application worker.
    #
    #   Segment IDs are zero-based, so the first segment is always 0. For
    #   example, if you want to use four application threads to scan a table
    #   or an index, then the first thread specifies a `Segment` value of 0,
    #   the second thread specifies 1, and so on.
    #
    #   The value of `LastEvaluatedKey` returned from a parallel `Scan`
    #   request must be used as `ExclusiveStartKey` with the same segment ID
    #   in a subsequent `Scan` operation.
    #
    #   The value for `Segment` must be greater than or equal to 0, and less
    #   than the value provided for `TotalSegments`.
    #
    #   If you provide `Segment`, you must also provide `TotalSegments`.
    # @option options [String] :projection_expression
    #   A string that identifies one or more attributes to retrieve from the
    #   specified table or index. These attributes can include scalars, sets,
    #   or elements of a JSON document. The attributes in the expression must
    #   be separated by commas.
    #
    #   If no attribute names are specified, then all attributes will be
    #   returned. If any of the requested attributes are not found, they will
    #   not appear in the result.
    #
    #   For more information, see [Specifying Item Attributes][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    # @option options [String] :filter_expression
    #   A string that contains conditions that DynamoDB applies after the
    #   `Scan` operation, but before the data is returned to you. Items that
    #   do not satisfy the `FilterExpression` criteria are not returned.
    #
    #   <note markdown="1"> A `FilterExpression` is applied after the items have already been
    #   read; the process of filtering does not consume any additional read
    #   capacity units.
    #
    #    </note>
    #
    #   For more information, see [Filter Expressions][1] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults
    # @option options [Hash<String,String>] :expression_attribute_names
    #   One or more substitution tokens for attribute names in an expression.
    #   The following are some use cases for using
    #   `ExpressionAttributeNames`\:
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
    #   following for `ExpressionAttributeNames`\:
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
    #   For more information on expression attribute names, see [Specifying
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    # @option options [Hash<String,Types::AttributeValue>] :expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check whether
    #   the value of the `ProductStatus` attribute was one of the following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
    #   ":disc":\{"S":"Discontinued"\} \}`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Condition
    #   Expressions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    # @option options [Boolean] :consistent_read
    #   A Boolean value that determines the read consistency model during the
    #   scan:
    #
    #   * If `ConsistentRead` is `false`, then the data returned from `Scan`
    #     might not contain the results from other recently completed write
    #     operations (`PutItem`, `UpdateItem`, or `DeleteItem`).
    #
    #   * If `ConsistentRead` is `true`, then all of the write operations that
    #     completed before the `Scan` began are guaranteed to be contained in
    #     the `Scan` response.
    #
    #   The default setting for `ConsistentRead` is `false`.
    #
    #   The `ConsistentRead` parameter is not supported on global secondary
    #   indexes. If you scan a global secondary index with `ConsistentRead`
    #   set to true, you will receive a `ValidationException`.
    # @return [Types::ScanOutput]
    def scan(options = {})
      options = options.merge(table_name: @name)
      resp = @client.scan(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   table = table.update({
    #     attribute_definitions: [
    #       {
    #         attribute_name: "KeySchemaAttributeName", # required
    #         attribute_type: "S", # required, accepts S, N, B
    #       },
    #     ],
    #     billing_mode: "PROVISIONED", # accepts PROVISIONED, PAY_PER_REQUEST
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
    #           provisioned_throughput: {
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
    #       stream_enabled: false, # required
    #       stream_view_type: "NEW_IMAGE", # accepts NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES, KEYS_ONLY
    #     },
    #     sse_specification: {
    #       enabled: false,
    #       sse_type: "AES256", # accepts AES256, KMS
    #       kms_master_key_id: "KMSMasterKeyId",
    #     },
    #     replica_updates: [
    #       {
    #         create: {
    #           region_name: "RegionName", # required
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1,
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName", # required
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1,
    #               },
    #             },
    #           ],
    #         },
    #         update: {
    #           region_name: "RegionName", # required
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1,
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName", # required
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1,
    #               },
    #             },
    #           ],
    #         },
    #         delete: {
    #           region_name: "RegionName", # required
    #         },
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::AttributeDefinition>] :attribute_definitions
    #   An array of attributes that describe the key schema for the table and
    #   indexes. If you are adding a new global secondary index to the table,
    #   `AttributeDefinitions` must include the key element(s) of the new
    #   index.
    # @option options [String] :billing_mode
    #   Controls how you are charged for read and write throughput and how you
    #   manage capacity. When switching from pay-per-request to provisioned
    #   capacity, initial provisioned capacity values must be set. The initial
    #   provisioned capacity values are estimated based on the consumed read
    #   and write capacity of your table and global secondary indexes over the
    #   past 30 minutes.
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
    #   The new provisioned throughput settings for the specified table or
    #   index.
    # @option options [Array<Types::GlobalSecondaryIndexUpdate>] :global_secondary_index_updates
    #   An array of one or more global secondary indexes for the table. For
    #   each index in the array, you can request one action:
    #
    #   * `Create` - add a new global secondary index to the table.
    #
    #   * `Update` - modify the provisioned throughput settings of an existing
    #     global secondary index.
    #
    #   * `Delete` - remove a global secondary index from the table.
    #
    #   You can create or delete only one global secondary index per
    #   `UpdateTable` operation.
    #
    #   For more information, see [Managing Global Secondary Indexes][1] in
    #   the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html
    # @option options [Types::StreamSpecification] :stream_specification
    #   Represents the DynamoDB Streams configuration for the table.
    #
    #   <note markdown="1"> You receive a `ResourceInUseException` if you try to enable a stream
    #   on a table that already has a stream, or if you try to disable a
    #   stream on a table that doesn't have a stream.
    #
    #    </note>
    # @option options [Types::SSESpecification] :sse_specification
    #   The new server-side encryption settings for the specified table.
    # @option options [Array<Types::ReplicationGroupUpdate>] :replica_updates
    #   A list of replica update actions (create, delete, or update) for the
    #   table.
    #
    #   <note markdown="1"> This property only applies to [Version 2019.11.21][1] of global
    #   tables.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html
    # @return [Table]
    def update(options = {})
      options = options.merge(table_name: @name)
      resp = @client.update_table(options)
      Table.new(
        name: @name,
        data: resp.data.table_description,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   table.update_item({
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
    # @param [Hash] options ({})
    # @option options [required, Hash<String,Types::AttributeValue>] :key
    #   The primary key of the item to be updated. Each element consists of an
    #   attribute name and a value for that attribute.
    #
    #   For the primary key, you must provide all of the attributes. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   values for both the partition key and the sort key.
    # @option options [Hash<String,Types::AttributeValueUpdate>] :attribute_updates
    #   This is a legacy parameter. Use `UpdateExpression` instead. For more
    #   information, see [AttributeUpdates][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html
    # @option options [Hash<String,Types::ExpectedAttributeValue>] :expected
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [Expected][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html
    # @option options [String] :conditional_operator
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    # @option options [String] :return_values
    #   Use `ReturnValues` if you want to get the item attributes as they
    #   appear before or after they are updated. For `UpdateItem`, the valid
    #   values are:
    #
    #   * `NONE` - If `ReturnValues` is not specified, or if its value is
    #     `NONE`, then nothing is returned. (This setting is the default for
    #     `ReturnValues`.)
    #
    #   * `ALL_OLD` - Returns all of the attributes of the item, as they
    #     appeared before the UpdateItem operation.
    #
    #   * `UPDATED_OLD` - Returns only the updated attributes, as they
    #     appeared before the UpdateItem operation.
    #
    #   * `ALL_NEW` - Returns all of the attributes of the item, as they
    #     appear after the UpdateItem operation.
    #
    #   * `UPDATED_NEW` - Returns only the updated attributes, as they appear
    #     after the UpdateItem operation.
    #
    #   There is no additional cost associated with requesting a return value
    #   aside from the small network and processing overhead of receiving a
    #   larger response. No read capacity units are consumed.
    #
    #   The values returned are strongly consistent.
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
    # @option options [String] :update_expression
    #   An expression that defines one or more attributes to be updated, the
    #   action to be performed on them, and new values for them.
    #
    #   The following action values are available for `UpdateExpression`.
    #
    #   * `SET` - Adds one or more attributes and values to an item. If any of
    #     these attributes already exist, they are replaced by the new values.
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
    #     * If the existing attribute is a number, and if `Value` is also a
    #       number, then `Value` is mathematically added to the existing
    #       attribute. If `Value` is a negative number, then it is subtracted
    #       from the existing attribute.
    #
    #       <note markdown="1"> If you use `ADD` to increment or decrement a number value for an
    #       item that doesn't exist before the update, DynamoDB uses `0` as
    #       the initial value.
    #
    #        Similarly, if you use `ADD` for an existing item to increment or
    #       decrement an attribute value that doesn't exist before the
    #       update, DynamoDB uses `0` as the initial value. For example,
    #       suppose that the item you want to update doesn't have an
    #       attribute named `itemcount`, but you decide to `ADD` the number
    #       `3` to this attribute anyway. DynamoDB will create the `itemcount`
    #       attribute, set its initial value to `0`, and finally add `3` to
    #       it. The result will be a new `itemcount` attribute in the item,
    #       with a value of `3`.
    #
    #        </note>
    #
    #     * If the existing data type is a set and if `Value` is also a set,
    #       then `Value` is added to the existing set. For example, if the
    #       attribute value is the set `[1,2]`, and the `ADD` action specified
    #       `[3]`, then the final attribute value is `[1,2,3]`. An error
    #       occurs if an `ADD` action is specified for a set attribute and the
    #       attribute type specified does not match the existing set type.
    #
    #       Both sets must have the same primitive data type. For example, if
    #       the existing data type is a set of strings, the `Value` must also
    #       be a set of strings.
    #
    #     The `ADD` action only supports Number and set data types. In
    #     addition, `ADD` can only be used on top-level attributes, not nested
    #     attributes.
    #
    #   * `DELETE` - Deletes an element from a set.
    #
    #     If a set of values is specified, then those values are subtracted
    #     from the old set. For example, if the attribute value was the set
    #     `[a,b,c]` and the `DELETE` action specifies `[a,c]`, then the final
    #     attribute value is `[b]`. Specifying an empty set is an error.
    #
    #     The `DELETE` action only supports set data types. In addition,
    #     `DELETE` can only be used on top-level attributes, not nested
    #     attributes.
    #
    #   You can have many actions in a single expression, such as the
    #   following: `SET a=:value1, b=:value2 DELETE :value3, :value4, :value5`
    #
    #   For more information on update expressions, see [Modifying Items and
    #   Attributes][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html
    # @option options [String] :condition_expression
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
    #   * Comparison operators: `= | <> | < | > | <= | >= | BETWEEN | IN `
    #
    #   * Logical operators: `AND | OR | NOT`
    #
    #   For more information about condition expressions, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    # @option options [Hash<String,String>] :expression_attribute_names
    #   One or more substitution tokens for attribute names in an expression.
    #   The following are some use cases for using
    #   `ExpressionAttributeNames`\:
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
    #   Developer Guide*.) To work around this, you could specify the
    #   following for `ExpressionAttributeNames`\:
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
    #   For more information about expression attribute names, see [Specifying
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    # @option options [Hash<String,Types::AttributeValue>] :expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check whether
    #   the value of the `ProductStatus` attribute was one of the following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `\{ ":avail":\{"S":"Available"\}, ":back":\{"S":"Backordered"\},
    #   ":disc":\{"S":"Discontinued"\} \}`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Condition
    #   Expressions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    # @return [Types::UpdateItemOutput]
    def update_item(options = {})
      options = options.merge(table_name: @name)
      resp = @client.update_item(options)
      resp.data
    end

    # @deprecated
    # @api private
    def identifiers
      { name: @name }
    end
    deprecated(:identifiers)

    private

    def extract_name(args, options)
      value = args[0] || options.delete(:name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :name"
      else
        msg = "expected :name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
