# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'
require 'aws-sdk-dynamodb/plugins/extended_retries.rb'
require 'aws-sdk-dynamodb/plugins/simple_attributes.rb'
require 'aws-sdk-dynamodb/plugins/crc32_validation.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:dynamodb)

module Aws::DynamoDB
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :dynamodb

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::DynamoDB::Plugins::ExtendedRetries)
    add_plugin(Aws::DynamoDB::Plugins::SimpleAttributes)
    add_plugin(Aws::DynamoDB::Plugins::CRC32Validation)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :compute_checksums (true)
    #   When `true`, a CRC32 checksum is computed of every HTTP
    #   response body and compared against the `X-Amz-Crc32` header.
    #   If the checksums do not match, the request is re-sent.
    #   Failures can be retried up to `:retry_limit` times.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_limit (10)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_attributes (true)
    #   Enables working with DynamoDB attribute values using
    #   hashes, arrays, sets, integers, floats, booleans, and nil.
    #
    #   Disabling this option requires that all attribute values have
    #   their types specified, e.g. `{ s: 'abc' }` instead of simply
    #   `'abc'`.
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # The `BatchGetItem` operation returns the attributes of one or more
    # items from one or more tables. You identify requested items by primary
    # key.
    #
    # A single operation can retrieve up to 16 MB of data, which can contain
    # as many as 100 items. `BatchGetItem` will return a partial result if
    # the response size limit is exceeded, the table's provisioned
    # throughput is exceeded, or an internal processing failure occurs. If a
    # partial result is returned, the operation returns a value for
    # `UnprocessedKeys`. You can use this value to retry the operation
    # starting with the next item to get.
    #
    # If you request more than 100 items `BatchGetItem` will return a
    # `ValidationException` with the message "Too many items requested for
    # the BatchGetItem call".
    #
    # For example, if you ask to retrieve 100 items, but each individual
    # item is 300 KB in size, the system returns 52 items (so as not to
    # exceed the 16 MB limit). It also returns an appropriate
    # `UnprocessedKeys` value so you can get the next page of results. If
    # desired, your application can include its own logic to assemble the
    # pages of results into one data set.
    #
    # If *none* of the items can be processed due to insufficient
    # provisioned throughput on all of the tables in the request, then
    # `BatchGetItem` will return a `ProvisionedThroughputExceededException`.
    # If *at least one* of the items is successfully processed, then
    # `BatchGetItem` completes successfully, while returning the keys of the
    # unread items in `UnprocessedKeys`.
    #
    # If DynamoDB returns any unprocessed items, you should retry the batch
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
    # By default, `BatchGetItem` performs eventually consistent reads on
    # every table in the request. If you want strongly consistent reads
    # instead, you can set `ConsistentRead` to `true` for any or all tables.
    #
    # In order to minimize response latency, `BatchGetItem` retrieves items
    # in parallel.
    #
    # When designing your application, keep in mind that DynamoDB does not
    # return items in any particular order. To help parse the response by
    # item, include the primary key values for the items in your request in
    # the `ProjectionExpression` parameter.
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
    #
    # @option params [required, Hash<String,Types::KeysAndAttributes>] :request_items
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
    #     For more information on expression attribute names, see [Accessing
    #     Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
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
    #     If no attribute names are specified, then all attributes will be
    #     returned. If any of the requested attributes are not found, they
    #     will not appear in the result.
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
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   [3]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    #
    # @option params [String] :return_consumed_capacity
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
    #
    # @return [Types::BatchGetItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetItemOutput#responses #responses} => Hash&lt;String,Array&lt;Hash&lt;String,Types::AttributeValue&gt;&gt;&gt;
    #   * {Types::BatchGetItemOutput#unprocessed_keys #unprocessed_keys} => Hash&lt;String,Types::KeysAndAttributes&gt;
    #   * {Types::BatchGetItemOutput#consumed_capacity #consumed_capacity} => Array&lt;Types::ConsumedCapacity&gt;
    #
    #
    # @example Example: To retrieve multiple items from a table
    #
    #   # This example reads multiple items from the Music table using a batch of three GetItem requests.  Only the AlbumTitle
    #   # attribute is returned.
    #
    #   resp = client.batch_get_item({
    #     request_items: {
    #       "Music" => {
    #         keys: [
    #           {
    #             "Artist" => {
    #               s: "No One You Know", 
    #             }, 
    #             "SongTitle" => {
    #               s: "Call Me Today", 
    #             }, 
    #           }, 
    #           {
    #             "Artist" => {
    #               s: "Acme Band", 
    #             }, 
    #             "SongTitle" => {
    #               s: "Happy Day", 
    #             }, 
    #           }, 
    #           {
    #             "Artist" => {
    #               s: "No One You Know", 
    #             }, 
    #             "SongTitle" => {
    #               s: "Scared of My Shadow", 
    #             }, 
    #           }, 
    #         ], 
    #         projection_expression: "AlbumTitle", 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     responses: {
    #       "Music" => [
    #         {
    #           "AlbumTitle" => {
    #             s: "Somewhat Famous", 
    #           }, 
    #         }, 
    #         {
    #           "AlbumTitle" => {
    #             s: "Blue Sky Blues", 
    #           }, 
    #         }, 
    #         {
    #           "AlbumTitle" => {
    #             s: "Louder Than Ever", 
    #           }, 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BatchGetItem AWS API Documentation
    #
    # @overload batch_get_item(params = {})
    # @param [Hash] params ({})
    def batch_get_item(params = {}, options = {})
      req = build_request(:batch_get_item, params)
      req.send_request(options)
    end

    # The `BatchWriteItem` operation puts or deletes multiple items in one
    # or more tables. A single call to `BatchWriteItem` can write up to 16
    # MB of data, which can comprise as many as 25 put or delete requests.
    # Individual items to be written can be as large as 400 KB.
    #
    # <note markdown="1"> `BatchWriteItem` cannot update items. To update items, use the
    # `UpdateItem` action.
    #
    #  </note>
    #
    # The individual `PutItem` and `DeleteItem` operations specified in
    # `BatchWriteItem` are atomic; however `BatchWriteItem` as a whole is
    # not. If any requested operations fail because the table's provisioned
    # throughput is exceeded or an internal processing failure occurs, the
    # failed operations are returned in the `UnprocessedItems` response
    # parameter. You can investigate and optionally resend the requests.
    # Typically, you would call `BatchWriteItem` in a loop. Each iteration
    # would check for unprocessed items and submit a new `BatchWriteItem`
    # request with those unprocessed items until all items have been
    # processed.
    #
    # Note that if *none* of the items can be processed due to insufficient
    # provisioned throughput on all of the tables in the request, then
    # `BatchWriteItem` will return a
    # `ProvisionedThroughputExceededException`.
    #
    # If DynamoDB returns any unprocessed items, you should retry the batch
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
    # With `BatchWriteItem`, you can efficiently write or delete large
    # amounts of data, such as from Amazon Elastic MapReduce (EMR), or copy
    # data from another database into DynamoDB. In order to improve
    # performance with these large-scale operations, `BatchWriteItem` does
    # not behave in the same way as individual `PutItem` and `DeleteItem`
    # calls would. For example, you cannot specify conditions on individual
    # put and delete requests, and `BatchWriteItem` does not return deleted
    # items in the response.
    #
    # If you use a programming language that supports concurrency, you can
    # use threads to write items in parallel. Your application must include
    # the necessary logic to manage the threads. With languages that don't
    # support threading, you must update or delete the specified items one
    # at a time. In both situations, `BatchWriteItem` performs the specified
    # put and delete operations in parallel, giving you the power of the
    # thread pool approach without having to introduce complexity into your
    # application.
    #
    # Parallel processing reduces latency, but each specified put and delete
    # request consumes the same number of write capacity units whether it is
    # processed in parallel or not. Delete operations on nonexistent items
    # consume one write capacity unit.
    #
    # If one or more of the following is true, DynamoDB rejects the entire
    # batch write operation:
    #
    # * One or more tables specified in the `BatchWriteItem` request does
    #   not exist.
    #
    # * Primary key attributes specified on an item in the request do not
    #   match those in the corresponding table's primary key schema.
    #
    # * You try to perform multiple operations on the same item in the same
    #   `BatchWriteItem` request. For example, you cannot put and delete the
    #   same item in the same `BatchWriteItem` request.
    #
    # * Your request contains at least two items with identical hash and
    #   range keys (which essentially is two put operations).
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
    #
    # @option params [required, Hash<String,Array>] :request_items
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
    #       will be rejected with a `ValidationException` exception.
    #
    #       If you specify any attributes that are part of an index key, then
    #       the data types for those attributes must match those of the schema
    #       in the table's attribute definition.
    #
    # @option params [String] :return_consumed_capacity
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
    #
    # @option params [String] :return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections, if
    #   any, that were modified during the operation are returned in the
    #   response. If set to `NONE` (the default), no statistics are returned.
    #
    # @return [Types::BatchWriteItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchWriteItemOutput#unprocessed_items #unprocessed_items} => Hash&lt;String,Array&lt;Types::WriteRequest&gt;&gt;
    #   * {Types::BatchWriteItemOutput#item_collection_metrics #item_collection_metrics} => Hash&lt;String,Array&lt;Types::ItemCollectionMetrics&gt;&gt;
    #   * {Types::BatchWriteItemOutput#consumed_capacity #consumed_capacity} => Array&lt;Types::ConsumedCapacity&gt;
    #
    #
    # @example Example: To add multiple items to a table
    #
    #   # This example adds three new items to the Music table using a batch of three PutItem requests.
    #
    #   resp = client.batch_write_item({
    #     request_items: {
    #       "Music" => [
    #         {
    #           put_request: {
    #             item: {
    #               "AlbumTitle" => {
    #                 s: "Somewhat Famous", 
    #               }, 
    #               "Artist" => {
    #                 s: "No One You Know", 
    #               }, 
    #               "SongTitle" => {
    #                 s: "Call Me Today", 
    #               }, 
    #             }, 
    #           }, 
    #         }, 
    #         {
    #           put_request: {
    #             item: {
    #               "AlbumTitle" => {
    #                 s: "Songs About Life", 
    #               }, 
    #               "Artist" => {
    #                 s: "Acme Band", 
    #               }, 
    #               "SongTitle" => {
    #                 s: "Happy Day", 
    #               }, 
    #             }, 
    #           }, 
    #         }, 
    #         {
    #           put_request: {
    #             item: {
    #               "AlbumTitle" => {
    #                 s: "Blue Sky Blues", 
    #               }, 
    #               "Artist" => {
    #                 s: "No One You Know", 
    #               }, 
    #               "SongTitle" => {
    #                 s: "Scared of My Shadow", 
    #               }, 
    #             }, 
    #           }, 
    #         }, 
    #       ], 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BatchWriteItem AWS API Documentation
    #
    # @overload batch_write_item(params = {})
    # @param [Hash] params ({})
    def batch_write_item(params = {}, options = {})
      req = build_request(:batch_write_item, params)
      req.send_request(options)
    end

    # Creates a backup for an existing table.
    #
    # Each time you create an On-Demand Backup, the entire table data is
    # backed up. There is no limit to the number of on-demand backups that
    # can be taken.
    #
    # When you create an On-Demand Backup, a time marker of the request is
    # cataloged, and the backup is created asynchronously, by applying all
    # changes until the time of the request to the last full table snapshot.
    # Backup requests are processed instantaneously and become available for
    # restore within minutes.
    #
    # You can call `CreateBackup` at a maximum rate of 50 times per second.
    #
    # All backups in DynamoDB work without consuming any provisioned
    # throughput on the table.
    #
    # If you submit a backup request on 2018-12-14 at 14:25:00, the backup
    # is guaranteed to contain all data committed to the table up to
    # 14:24:00, and data committed after 14:26:00 will not be. The backup
    # may or may not contain data modifications made between 14:24:00 and
    # 14:26:00. On-Demand Backup does not support causal consistency.
    #
    # Along with data, the following are also included on the backups:
    #
    # * Global secondary indexes (GSIs)
    #
    # * Local secondary indexes (LSIs)
    #
    # * Streams
    #
    # * Provisioned read and write capacity
    #
    # @option params [required, String] :table_name
    #   The name of the table.
    #
    # @option params [required, String] :backup_name
    #   Specified name for the backup.
    #
    # @return [Types::CreateBackupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackupOutput#backup_details #backup_details} => Types::BackupDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup({
    #     table_name: "TableName", # required
    #     backup_name: "BackupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_details.backup_arn #=> String
    #   resp.backup_details.backup_name #=> String
    #   resp.backup_details.backup_size_bytes #=> Integer
    #   resp.backup_details.backup_status #=> String, one of "CREATING", "DELETED", "AVAILABLE"
    #   resp.backup_details.backup_type #=> String, one of "USER", "SYSTEM"
    #   resp.backup_details.backup_creation_date_time #=> Time
    #   resp.backup_details.backup_expiry_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateBackup AWS API Documentation
    #
    # @overload create_backup(params = {})
    # @param [Hash] params ({})
    def create_backup(params = {}, options = {})
      req = build_request(:create_backup, params)
      req.send_request(options)
    end

    # Creates a global table from an existing table. A global table creates
    # a replication relationship between two or more DynamoDB tables with
    # the same table name in the provided regions.
    #
    # If you want to add a new replica table to a global table, each of the
    # following conditions must be true:
    #
    # * The table must have the same primary key as all of the other
    #   replicas.
    #
    # * The table must have the same name as all of the other replicas.
    #
    # * The table must have DynamoDB Streams enabled, with the stream
    #   containing both the new and the old images of the item.
    #
    # * None of the replica tables in the global table can contain any data.
    #
    # If global secondary indexes are specified, then the following
    # conditions must also be met:
    #
    # * The global secondary indexes must have the same name.
    #
    # * The global secondary indexes must have the same hash key and sort
    #   key (if present).
    #
    # Write capacity settings should be set consistently across your replica
    # tables and secondary indexes. DynamoDB strongly recommends enabling
    # auto scaling to manage the write capacity settings for all of your
    # global tables replicas and indexes.
    #
    #  If you prefer to manage write capacity settings manually, you should
    # provision equal replicated write capacity units to your replica
    # tables. You should also provision equal replicated write capacity
    # units to matching secondary indexes across your global table.
    #
    # @option params [required, String] :global_table_name
    #   The global table name.
    #
    # @option params [required, Array<Types::Replica>] :replication_group
    #   The regions where the global table needs to be created.
    #
    # @return [Types::CreateGlobalTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGlobalTableOutput#global_table_description #global_table_description} => Types::GlobalTableDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_global_table({
    #     global_table_name: "TableName", # required
    #     replication_group: [ # required
    #       {
    #         region_name: "RegionName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.global_table_description.replication_group #=> Array
    #   resp.global_table_description.replication_group[0].region_name #=> String
    #   resp.global_table_description.global_table_arn #=> String
    #   resp.global_table_description.creation_date_time #=> Time
    #   resp.global_table_description.global_table_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING"
    #   resp.global_table_description.global_table_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateGlobalTable AWS API Documentation
    #
    # @overload create_global_table(params = {})
    # @param [Hash] params ({})
    def create_global_table(params = {}, options = {})
      req = build_request(:create_global_table, params)
      req.send_request(options)
    end

    # The `CreateTable` operation adds a new table to your account. In an
    # AWS account, table names must be unique within each region. That is,
    # you can have two tables with same name if you create the tables in
    # different regions.
    #
    # `CreateTable` is an asynchronous operation. Upon receiving a
    # `CreateTable` request, DynamoDB immediately returns a response with a
    # `TableStatus` of `CREATING`. After the table is created, DynamoDB sets
    # the `TableStatus` to `ACTIVE`. You can perform read and write
    # operations only on an `ACTIVE` table.
    #
    # You can optionally define secondary indexes on the new table, as part
    # of the `CreateTable` operation. If you want to create multiple tables
    # with secondary indexes on them, you must create the tables
    # sequentially. Only one table with secondary indexes can be in the
    # `CREATING` state at any given time.
    #
    # You can use the `DescribeTable` action to check the table status.
    #
    # @option params [required, Array<Types::AttributeDefinition>] :attribute_definitions
    #   An array of attributes that describe the key schema for the table and
    #   indexes.
    #
    # @option params [required, String] :table_name
    #   The name of the table to create.
    #
    # @option params [required, Array<Types::KeySchemaElement>] :key_schema
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
    #   The term "hash attribute" derives from DynamoDB' usage of an
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
    #   For more information, see [Specifying the Primary Key][2] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key
    #
    # @option params [Array<Types::LocalSecondaryIndex>] :local_secondary_indexes
    #   One or more local secondary indexes (the maximum is five) to be
    #   created on the table. Each index is scoped to a given partition key
    #   value. There is a 10 GB size limit per partition key value; otherwise,
    #   the size of a local secondary index is unconstrained.
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
    #         into the index. The list of projected attributes are in
    #         `NonKeyAttributes`.
    #
    #       * `ALL` - All of the table attributes are projected into the
    #         index.
    #
    #     * `NonKeyAttributes` - A list of one or more non-key attribute names
    #       that are projected into the secondary index. The total count of
    #       attributes provided in `NonKeyAttributes`, summed across all of
    #       the secondary indexes, must not exceed 20. If you project the same
    #       attribute into two different indexes, this counts as two distinct
    #       attributes when determining the total.
    #
    # @option params [Array<Types::GlobalSecondaryIndex>] :global_secondary_indexes
    #   One or more global secondary indexes (the maximum is five) to be
    #   created on the table. Each global secondary index in the array
    #   includes the following:
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
    #         into the index. The list of projected attributes are in
    #         `NonKeyAttributes`.
    #
    #       * `ALL` - All of the table attributes are projected into the
    #         index.
    #
    #     * `NonKeyAttributes` - A list of one or more non-key attribute names
    #       that are projected into the secondary index. The total count of
    #       attributes provided in `NonKeyAttributes`, summed across all of
    #       the secondary indexes, must not exceed 20. If you project the same
    #       attribute into two different indexes, this counts as two distinct
    #       attributes when determining the total.
    #
    #   * `ProvisionedThroughput` - The provisioned throughput settings for
    #     the global secondary index, consisting of read and write capacity
    #     units.
    #
    # @option params [required, Types::ProvisionedThroughput] :provisioned_throughput
    #   Represents the provisioned throughput settings for a specified table
    #   or index. The settings can be modified using the `UpdateTable`
    #   operation.
    #
    #   For current minimum and maximum provisioned throughput values, see
    #   [Limits][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
    #
    # @option params [Types::StreamSpecification] :stream_specification
    #   The settings for DynamoDB Streams on the table. These settings consist
    #   of:
    #
    #   * `StreamEnabled` - Indicates whether Streams is to be enabled (true)
    #     or disabled (false).
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
    #
    # @option params [Types::SSESpecification] :sse_specification
    #   Represents the settings used to enable server-side encryption.
    #
    # @return [Types::CreateTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTableOutput#table_description #table_description} => Types::TableDescription
    #
    #
    # @example Example: To create a table
    #
    #   # This example creates a table named Music.
    #
    #   resp = client.create_table({
    #     attribute_definitions: [
    #       {
    #         attribute_name: "Artist", 
    #         attribute_type: "S", 
    #       }, 
    #       {
    #         attribute_name: "SongTitle", 
    #         attribute_type: "S", 
    #       }, 
    #     ], 
    #     key_schema: [
    #       {
    #         attribute_name: "Artist", 
    #         key_type: "HASH", 
    #       }, 
    #       {
    #         attribute_name: "SongTitle", 
    #         key_type: "RANGE", 
    #       }, 
    #     ], 
    #     provisioned_throughput: {
    #       read_capacity_units: 5, 
    #       write_capacity_units: 5, 
    #     }, 
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     table_description: {
    #       attribute_definitions: [
    #         {
    #           attribute_name: "Artist", 
    #           attribute_type: "S", 
    #         }, 
    #         {
    #           attribute_name: "SongTitle", 
    #           attribute_type: "S", 
    #         }, 
    #       ], 
    #       creation_date_time: Time.parse("1421866952.062"), 
    #       item_count: 0, 
    #       key_schema: [
    #         {
    #           attribute_name: "Artist", 
    #           key_type: "HASH", 
    #         }, 
    #         {
    #           attribute_name: "SongTitle", 
    #           key_type: "RANGE", 
    #         }, 
    #       ], 
    #       provisioned_throughput: {
    #         read_capacity_units: 5, 
    #         write_capacity_units: 5, 
    #       }, 
    #       table_name: "Music", 
    #       table_size_bytes: 0, 
    #       table_status: "CREATING", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
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
    #     sse_specification: {
    #       enabled: false,
    #       sse_type: "AES256", # accepts AES256, KMS
    #       kms_master_key_id: "KMSMasterKeyId",
    #     },
    #   })
    #
    # @example Response structure
    #
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
    #   resp.table_description.table_id #=> String
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
    #   resp.table_description.restore_summary.source_backup_arn #=> String
    #   resp.table_description.restore_summary.source_table_arn #=> String
    #   resp.table_description.restore_summary.restore_date_time #=> Time
    #   resp.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.table_description.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.table_description.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.table_description.sse_description.kms_master_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateTable AWS API Documentation
    #
    # @overload create_table(params = {})
    # @param [Hash] params ({})
    def create_table(params = {}, options = {})
      req = build_request(:create_table, params)
      req.send_request(options)
    end

    # Deletes an existing backup of a table.
    #
    # You can call `DeleteBackup` at a maximum rate of 10 times per second.
    #
    # @option params [required, String] :backup_arn
    #   The ARN associated with the backup.
    #
    # @return [Types::DeleteBackupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBackupOutput#backup_description #backup_description} => Types::BackupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup({
    #     backup_arn: "BackupArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_description.backup_details.backup_arn #=> String
    #   resp.backup_description.backup_details.backup_name #=> String
    #   resp.backup_description.backup_details.backup_size_bytes #=> Integer
    #   resp.backup_description.backup_details.backup_status #=> String, one of "CREATING", "DELETED", "AVAILABLE"
    #   resp.backup_description.backup_details.backup_type #=> String, one of "USER", "SYSTEM"
    #   resp.backup_description.backup_details.backup_creation_date_time #=> Time
    #   resp.backup_description.backup_details.backup_expiry_date_time #=> Time
    #   resp.backup_description.source_table_details.table_name #=> String
    #   resp.backup_description.source_table_details.table_id #=> String
    #   resp.backup_description.source_table_details.table_arn #=> String
    #   resp.backup_description.source_table_details.table_size_bytes #=> Integer
    #   resp.backup_description.source_table_details.key_schema #=> Array
    #   resp.backup_description.source_table_details.key_schema[0].attribute_name #=> String
    #   resp.backup_description.source_table_details.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.backup_description.source_table_details.table_creation_date_time #=> Time
    #   resp.backup_description.source_table_details.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.backup_description.source_table_details.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.backup_description.source_table_details.item_count #=> Integer
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes #=> Array
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].index_name #=> String
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema #=> Array
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes #=> Array
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].index_name #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema #=> Array
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.backup_description.source_table_feature_details.stream_description.stream_enabled #=> Boolean
    #   resp.backup_description.source_table_feature_details.stream_description.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
    #   resp.backup_description.source_table_feature_details.time_to_live_description.time_to_live_status #=> String, one of "ENABLING", "DISABLING", "ENABLED", "DISABLED"
    #   resp.backup_description.source_table_feature_details.time_to_live_description.attribute_name #=> String
    #   resp.backup_description.source_table_feature_details.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.backup_description.source_table_feature_details.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.backup_description.source_table_feature_details.sse_description.kms_master_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteBackup AWS API Documentation
    #
    # @overload delete_backup(params = {})
    # @param [Hash] params ({})
    def delete_backup(params = {}, options = {})
      req = build_request(:delete_backup, params)
      req.send_request(options)
    end

    # Deletes a single item in a table by primary key. You can perform a
    # conditional delete operation that deletes the item if it exists, or if
    # it has an expected attribute value.
    #
    # In addition to deleting an item, you can also return the item's
    # attribute values in the same operation, using the `ReturnValues`
    # parameter.
    #
    # Unless you specify conditions, the `DeleteItem` is an idempotent
    # operation; running it multiple times on the same item or attribute
    # does *not* result in an error response.
    #
    # Conditional deletes are useful for deleting items only if specific
    # conditions are met. If those conditions are met, DynamoDB performs the
    # delete. Otherwise, the item is not deleted.
    #
    # @option params [required, String] :table_name
    #   The name of the table from which to delete the item.
    #
    # @option params [required, Hash<String,Types::AttributeValue>] :key
    #   A map of attribute names to `AttributeValue` objects, representing the
    #   primary key of the item to delete.
    #
    #   For the primary key, you must provide all of the attributes. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   values for both the partition key and the sort key.
    #
    # @option params [Hash<String,Types::ExpectedAttributeValue>] :expected
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [Expected][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html
    #
    # @option params [String] :conditional_operator
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #
    # @option params [String] :return_values
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
    #
    # @option params [String] :return_consumed_capacity
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
    #
    # @option params [String] :return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections, if
    #   any, that were modified during the operation are returned in the
    #   response. If set to `NONE` (the default), no statistics are returned.
    #
    # @option params [String] :condition_expression
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
    #   For more information on condition expressions, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @option params [Hash<String,String>] :expression_attribute_names
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
    #   For more information on expression attribute names, see [Accessing
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
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
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @return [Types::DeleteItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteItemOutput#attributes #attributes} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::DeleteItemOutput#consumed_capacity #consumed_capacity} => Types::ConsumedCapacity
    #   * {Types::DeleteItemOutput#item_collection_metrics #item_collection_metrics} => Types::ItemCollectionMetrics
    #
    #
    # @example Example: To delete an item
    #
    #   # This example deletes an item from the Music table.
    #
    #   resp = client.delete_item({
    #     key: {
    #       "Artist" => {
    #         s: "No One You Know", 
    #       }, 
    #       "SongTitle" => {
    #         s: "Scared of My Shadow", 
    #       }, 
    #     }, 
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     consumed_capacity: {
    #       capacity_units: 1, 
    #       table_name: "Music", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteItem AWS API Documentation
    #
    # @overload delete_item(params = {})
    # @param [Hash] params ({})
    def delete_item(params = {}, options = {})
      req = build_request(:delete_item, params)
      req.send_request(options)
    end

    # The `DeleteTable` operation deletes a table and all of its items.
    # After a `DeleteTable` request, the specified table is in the
    # `DELETING` state until DynamoDB completes the deletion. If the table
    # is in the `ACTIVE` state, you can delete it. If a table is in
    # `CREATING` or `UPDATING` states, then DynamoDB returns a
    # `ResourceInUseException`. If the specified table does not exist,
    # DynamoDB returns a `ResourceNotFoundException`. If table is already in
    # the `DELETING` state, no error is returned.
    #
    # <note markdown="1"> DynamoDB might continue to accept data read and write operations, such
    # as `GetItem` and `PutItem`, on a table in the `DELETING` state until
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
    # Use the `DescribeTable` action to check the status of the table.
    #
    # @option params [required, String] :table_name
    #   The name of the table to delete.
    #
    # @return [Types::DeleteTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTableOutput#table_description #table_description} => Types::TableDescription
    #
    #
    # @example Example: To delete a table
    #
    #   # This example deletes the Music table.
    #
    #   resp = client.delete_table({
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     table_description: {
    #       item_count: 0, 
    #       provisioned_throughput: {
    #         number_of_decreases_today: 1, 
    #         read_capacity_units: 5, 
    #         write_capacity_units: 5, 
    #       }, 
    #       table_name: "Music", 
    #       table_size_bytes: 0, 
    #       table_status: "DELETING", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table({
    #     table_name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
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
    #   resp.table_description.table_id #=> String
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
    #   resp.table_description.restore_summary.source_backup_arn #=> String
    #   resp.table_description.restore_summary.source_table_arn #=> String
    #   resp.table_description.restore_summary.restore_date_time #=> Time
    #   resp.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.table_description.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.table_description.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.table_description.sse_description.kms_master_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteTable AWS API Documentation
    #
    # @overload delete_table(params = {})
    # @param [Hash] params ({})
    def delete_table(params = {}, options = {})
      req = build_request(:delete_table, params)
      req.send_request(options)
    end

    # Describes an existing backup of a table.
    #
    # You can call `DescribeBackup` at a maximum rate of 10 times per
    # second.
    #
    # @option params [required, String] :backup_arn
    #   The ARN associated with the backup.
    #
    # @return [Types::DescribeBackupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBackupOutput#backup_description #backup_description} => Types::BackupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backup({
    #     backup_arn: "BackupArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_description.backup_details.backup_arn #=> String
    #   resp.backup_description.backup_details.backup_name #=> String
    #   resp.backup_description.backup_details.backup_size_bytes #=> Integer
    #   resp.backup_description.backup_details.backup_status #=> String, one of "CREATING", "DELETED", "AVAILABLE"
    #   resp.backup_description.backup_details.backup_type #=> String, one of "USER", "SYSTEM"
    #   resp.backup_description.backup_details.backup_creation_date_time #=> Time
    #   resp.backup_description.backup_details.backup_expiry_date_time #=> Time
    #   resp.backup_description.source_table_details.table_name #=> String
    #   resp.backup_description.source_table_details.table_id #=> String
    #   resp.backup_description.source_table_details.table_arn #=> String
    #   resp.backup_description.source_table_details.table_size_bytes #=> Integer
    #   resp.backup_description.source_table_details.key_schema #=> Array
    #   resp.backup_description.source_table_details.key_schema[0].attribute_name #=> String
    #   resp.backup_description.source_table_details.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.backup_description.source_table_details.table_creation_date_time #=> Time
    #   resp.backup_description.source_table_details.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.backup_description.source_table_details.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.backup_description.source_table_details.item_count #=> Integer
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes #=> Array
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].index_name #=> String
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema #=> Array
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes #=> Array
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].index_name #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema #=> Array
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.backup_description.source_table_feature_details.stream_description.stream_enabled #=> Boolean
    #   resp.backup_description.source_table_feature_details.stream_description.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
    #   resp.backup_description.source_table_feature_details.time_to_live_description.time_to_live_status #=> String, one of "ENABLING", "DISABLING", "ENABLED", "DISABLED"
    #   resp.backup_description.source_table_feature_details.time_to_live_description.attribute_name #=> String
    #   resp.backup_description.source_table_feature_details.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.backup_description.source_table_feature_details.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.backup_description.source_table_feature_details.sse_description.kms_master_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeBackup AWS API Documentation
    #
    # @overload describe_backup(params = {})
    # @param [Hash] params ({})
    def describe_backup(params = {}, options = {})
      req = build_request(:describe_backup, params)
      req.send_request(options)
    end

    # Checks the status of continuous backups and point in time recovery on
    # the specified table. Continuous backups are `ENABLED` on all tables at
    # table creation. If point in time recovery is enabled,
    # `PointInTimeRecoveryStatus` will be set to ENABLED.
    #
    # Once continuous backups and point in time recovery are enabled, you
    # can restore to any point in time within `EarliestRestorableDateTime`
    # and `LatestRestorableDateTime`.
    #
    # `LatestRestorableDateTime` is typically 5 minutes before the current
    # time. You can restore your table to any point in time during the last
    # 35 days.
    #
    # You can call `DescribeContinuousBackups` at a maximum rate of 10 times
    # per second.
    #
    # @option params [required, String] :table_name
    #   Name of the table for which the customer wants to check the continuous
    #   backups and point in time recovery settings.
    #
    # @return [Types::DescribeContinuousBackupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContinuousBackupsOutput#continuous_backups_description #continuous_backups_description} => Types::ContinuousBackupsDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_continuous_backups({
    #     table_name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.continuous_backups_description.continuous_backups_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.continuous_backups_description.point_in_time_recovery_description.point_in_time_recovery_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.continuous_backups_description.point_in_time_recovery_description.earliest_restorable_date_time #=> Time
    #   resp.continuous_backups_description.point_in_time_recovery_description.latest_restorable_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeContinuousBackups AWS API Documentation
    #
    # @overload describe_continuous_backups(params = {})
    # @param [Hash] params ({})
    def describe_continuous_backups(params = {}, options = {})
      req = build_request(:describe_continuous_backups, params)
      req.send_request(options)
    end

    # @return [Types::DescribeEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointsResponse#endpoints #endpoints} => Array&lt;Types::Endpoint&gt;
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].address #=> String
    #   resp.endpoints[0].cache_period_in_minutes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeEndpoints AWS API Documentation
    #
    # @overload describe_endpoints(params = {})
    # @param [Hash] params ({})
    def describe_endpoints(params = {}, options = {})
      req = build_request(:describe_endpoints, params)
      req.send_request(options)
    end

    # Returns information about the specified global table.
    #
    # @option params [required, String] :global_table_name
    #   The name of the global table.
    #
    # @return [Types::DescribeGlobalTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGlobalTableOutput#global_table_description #global_table_description} => Types::GlobalTableDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_global_table({
    #     global_table_name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.global_table_description.replication_group #=> Array
    #   resp.global_table_description.replication_group[0].region_name #=> String
    #   resp.global_table_description.global_table_arn #=> String
    #   resp.global_table_description.creation_date_time #=> Time
    #   resp.global_table_description.global_table_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING"
    #   resp.global_table_description.global_table_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeGlobalTable AWS API Documentation
    #
    # @overload describe_global_table(params = {})
    # @param [Hash] params ({})
    def describe_global_table(params = {}, options = {})
      req = build_request(:describe_global_table, params)
      req.send_request(options)
    end

    # Describes region specific settings for a global table.
    #
    # @option params [required, String] :global_table_name
    #   The name of the global table to describe.
    #
    # @return [Types::DescribeGlobalTableSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGlobalTableSettingsOutput#global_table_name #global_table_name} => String
    #   * {Types::DescribeGlobalTableSettingsOutput#replica_settings #replica_settings} => Array&lt;Types::ReplicaSettingsDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_global_table_settings({
    #     global_table_name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.global_table_name #=> String
    #   resp.replica_settings #=> Array
    #   resp.replica_settings[0].region_name #=> String
    #   resp.replica_settings[0].replica_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.replica_settings[0].replica_provisioned_read_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_provisioned_write_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_global_secondary_index_settings #=> Array
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].index_name #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeGlobalTableSettings AWS API Documentation
    #
    # @overload describe_global_table_settings(params = {})
    # @param [Hash] params ({})
    def describe_global_table_settings(params = {}, options = {})
      req = build_request(:describe_global_table_settings, params)
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
    # `DescribeLimits` action lets you write code to compare the capacity
    # you are currently using to those limits imposed by your account so
    # that you have enough time to apply for an increase before you hit a
    # limit.
    #
    # For example, you could use one of the AWS SDKs to do the following:
    #
    # 1.  Call `DescribeLimits` for a particular region to obtain your
    #     current account limits on provisioned capacity there.
    #
    # 2.  Create a variable to hold the aggregate read capacity units
    #     provisioned for all your tables in that region, and one to hold
    #     the aggregate write capacity units. Zero them both.
    #
    # 3.  Call `ListTables` to obtain a list of all your DynamoDB tables.
    #
    # 4.  For each table name listed by `ListTables`, do the following:
    #
    #     * Call `DescribeTable` with the table name.
    #
    #     * Use the data returned by `DescribeTable` to add the read
    #       capacity units and write capacity units provisioned for the
    #       table itself to your variables.
    #
    #     * If the table has one or more global secondary indexes (GSIs),
    #       loop over these GSIs and add their provisioned capacity values
    #       to your variables as well.
    #
    # 5.  Report the account limits for that region returned by
    #     `DescribeLimits`, along with the total current provisioned
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
    # <note markdown="1"> `DescribeLimits` should only be called periodically. You can expect
    # throttling errors if you call it more than once in a minute.
    #
    #  </note>
    #
    # The `DescribeLimits` Request element has no content.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
    # [2]: https://console.aws.amazon.com/support/home#/
    #
    # @return [Types::DescribeLimitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLimitsOutput#account_max_read_capacity_units #account_max_read_capacity_units} => Integer
    #   * {Types::DescribeLimitsOutput#account_max_write_capacity_units #account_max_write_capacity_units} => Integer
    #   * {Types::DescribeLimitsOutput#table_max_read_capacity_units #table_max_read_capacity_units} => Integer
    #   * {Types::DescribeLimitsOutput#table_max_write_capacity_units #table_max_write_capacity_units} => Integer
    #
    #
    # @example Example: To determine capacity limits per table and account, in the current AWS region
    #
    #   # The following example returns the maximum read and write capacity units per table, and for the AWS account, in the
    #   # current AWS region.
    #
    #   resp = client.describe_limits({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_max_read_capacity_units: 20000, 
    #     account_max_write_capacity_units: 20000, 
    #     table_max_read_capacity_units: 10000, 
    #     table_max_write_capacity_units: 10000, 
    #   }
    #
    # @example Response structure
    #
    #   resp.account_max_read_capacity_units #=> Integer
    #   resp.account_max_write_capacity_units #=> Integer
    #   resp.table_max_read_capacity_units #=> Integer
    #   resp.table_max_write_capacity_units #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeLimits AWS API Documentation
    #
    # @overload describe_limits(params = {})
    # @param [Hash] params ({})
    def describe_limits(params = {}, options = {})
      req = build_request(:describe_limits, params)
      req.send_request(options)
    end

    # Returns information about the table, including the current status of
    # the table, when it was created, the primary key schema, and any
    # indexes on the table.
    #
    # <note markdown="1"> If you issue a `DescribeTable` request immediately after a
    # `CreateTable` request, DynamoDB might return a
    # `ResourceNotFoundException`. This is because `DescribeTable` uses an
    # eventually consistent query, and the metadata for your table might not
    # be available at that moment. Wait for a few seconds, and then try the
    # `DescribeTable` request again.
    #
    #  </note>
    #
    # @option params [required, String] :table_name
    #   The name of the table to describe.
    #
    # @return [Types::DescribeTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTableOutput#table #table} => Types::TableDescription
    #
    #
    # @example Example: To describe a table
    #
    #   # This example describes the Music table.
    #
    #   resp = client.describe_table({
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     table: {
    #       attribute_definitions: [
    #         {
    #           attribute_name: "Artist", 
    #           attribute_type: "S", 
    #         }, 
    #         {
    #           attribute_name: "SongTitle", 
    #           attribute_type: "S", 
    #         }, 
    #       ], 
    #       creation_date_time: Time.parse("1421866952.062"), 
    #       item_count: 0, 
    #       key_schema: [
    #         {
    #           attribute_name: "Artist", 
    #           key_type: "HASH", 
    #         }, 
    #         {
    #           attribute_name: "SongTitle", 
    #           key_type: "RANGE", 
    #         }, 
    #       ], 
    #       provisioned_throughput: {
    #         number_of_decreases_today: 1, 
    #         read_capacity_units: 5, 
    #         write_capacity_units: 5, 
    #       }, 
    #       table_name: "Music", 
    #       table_size_bytes: 0, 
    #       table_status: "ACTIVE", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table({
    #     table_name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
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
    #   resp.table.table_id #=> String
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
    #   resp.table.restore_summary.source_backup_arn #=> String
    #   resp.table.restore_summary.source_table_arn #=> String
    #   resp.table.restore_summary.restore_date_time #=> Time
    #   resp.table.restore_summary.restore_in_progress #=> Boolean
    #   resp.table.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.table.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.table.sse_description.kms_master_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeTable AWS API Documentation
    #
    # @overload describe_table(params = {})
    # @param [Hash] params ({})
    def describe_table(params = {}, options = {})
      req = build_request(:describe_table, params)
      req.send_request(options)
    end

    # Gives a description of the Time to Live (TTL) status on the specified
    # table.
    #
    # @option params [required, String] :table_name
    #   The name of the table to be described.
    #
    # @return [Types::DescribeTimeToLiveOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTimeToLiveOutput#time_to_live_description #time_to_live_description} => Types::TimeToLiveDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_time_to_live({
    #     table_name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.time_to_live_description.time_to_live_status #=> String, one of "ENABLING", "DISABLING", "ENABLED", "DISABLED"
    #   resp.time_to_live_description.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeTimeToLive AWS API Documentation
    #
    # @overload describe_time_to_live(params = {})
    # @param [Hash] params ({})
    def describe_time_to_live(params = {}, options = {})
      req = build_request(:describe_time_to_live, params)
      req.send_request(options)
    end

    # The `GetItem` operation returns a set of attributes for the item with
    # the given primary key. If there is no matching item, `GetItem` does
    # not return any data and there will be no `Item` element in the
    # response.
    #
    # `GetItem` provides an eventually consistent read by default. If your
    # application requires a strongly consistent read, set `ConsistentRead`
    # to `true`. Although a strongly consistent read might take more time
    # than an eventually consistent read, it always returns the last updated
    # value.
    #
    # @option params [required, String] :table_name
    #   The name of the table containing the requested item.
    #
    # @option params [required, Hash<String,Types::AttributeValue>] :key
    #   A map of attribute names to `AttributeValue` objects, representing the
    #   primary key of the item to retrieve.
    #
    #   For the primary key, you must provide all of the attributes. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   values for both the partition key and the sort key.
    #
    # @option params [Array<String>] :attributes_to_get
    #   This is a legacy parameter. Use `ProjectionExpression` instead. For
    #   more information, see [AttributesToGet][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    #
    # @option params [Boolean] :consistent_read
    #   Determines the read consistency model: If set to `true`, then the
    #   operation uses strongly consistent reads; otherwise, the operation
    #   uses eventually consistent reads.
    #
    # @option params [String] :return_consumed_capacity
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
    #
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
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [Hash<String,String>] :expression_attribute_names
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
    #   For more information on expression attribute names, see [Accessing
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @return [Types::GetItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetItemOutput#item #item} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::GetItemOutput#consumed_capacity #consumed_capacity} => Types::ConsumedCapacity
    #
    #
    # @example Example: To read an item from a table
    #
    #   # This example retrieves an item from the Music table. The table has a partition key and a sort key (Artist and
    #   # SongTitle), so you must specify both of these attributes.
    #
    #   resp = client.get_item({
    #     key: {
    #       "Artist" => {
    #         s: "Acme Band", 
    #       }, 
    #       "SongTitle" => {
    #         s: "Happy Day", 
    #       }, 
    #     }, 
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     item: {
    #       "AlbumTitle" => {
    #         s: "Songs About Life", 
    #       }, 
    #       "Artist" => {
    #         s: "Acme Band", 
    #       }, 
    #       "SongTitle" => {
    #         s: "Happy Day", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
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
    #
    #   resp.item #=> Hash
    #   resp.item["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.consumed_capacity.table_name #=> String
    #   resp.consumed_capacity.capacity_units #=> Float
    #   resp.consumed_capacity.table.capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes #=> Hash
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes #=> Hash
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/GetItem AWS API Documentation
    #
    # @overload get_item(params = {})
    # @param [Hash] params ({})
    def get_item(params = {}, options = {})
      req = build_request(:get_item, params)
      req.send_request(options)
    end

    # List backups associated with an AWS account. To list backups for a
    # given table, specify `TableName`. `ListBackups` returns a paginated
    # list of results with at most 1MB worth of items in a page. You can
    # also specify a limit for the maximum number of entries to be returned
    # in a page.
    #
    # In the request, start time is inclusive but end time is exclusive.
    # Note that these limits are for the time at which the original backup
    # was requested.
    #
    # You can call `ListBackups` a maximum of 5 times per second.
    #
    # @option params [String] :table_name
    #   The backups from the table specified by `TableName` are listed.
    #
    # @option params [Integer] :limit
    #   Maximum number of backups to return at once.
    #
    # @option params [Time,DateTime,Date,Integer,String] :time_range_lower_bound
    #   Only backups created after this time are listed. `TimeRangeLowerBound`
    #   is inclusive.
    #
    # @option params [Time,DateTime,Date,Integer,String] :time_range_upper_bound
    #   Only backups created before this time are listed.
    #   `TimeRangeUpperBound` is exclusive.
    #
    # @option params [String] :exclusive_start_backup_arn
    #   `LastEvaluatedBackupArn` is the ARN of the backup last evaluated when
    #   the current page of results was returned, inclusive of the current
    #   page of results. This value may be specified as the
    #   `ExclusiveStartBackupArn` of a new `ListBackups` operation in order to
    #   fetch the next page of results.
    #
    # @option params [String] :backup_type
    #   The backups from the table specified by `BackupType` are listed.
    #
    #   Where `BackupType` can be:
    #
    #   * `USER` - On-demand backup created by you.
    #
    #   * `SYSTEM` - On-demand backup automatically created by DynamoDB.
    #
    #   * `ALL` - All types of on-demand backups (USER and SYSTEM).
    #
    # @return [Types::ListBackupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBackupsOutput#backup_summaries #backup_summaries} => Array&lt;Types::BackupSummary&gt;
    #   * {Types::ListBackupsOutput#last_evaluated_backup_arn #last_evaluated_backup_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backups({
    #     table_name: "TableName",
    #     limit: 1,
    #     time_range_lower_bound: Time.now,
    #     time_range_upper_bound: Time.now,
    #     exclusive_start_backup_arn: "BackupArn",
    #     backup_type: "USER", # accepts USER, SYSTEM, ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_summaries #=> Array
    #   resp.backup_summaries[0].table_name #=> String
    #   resp.backup_summaries[0].table_id #=> String
    #   resp.backup_summaries[0].table_arn #=> String
    #   resp.backup_summaries[0].backup_arn #=> String
    #   resp.backup_summaries[0].backup_name #=> String
    #   resp.backup_summaries[0].backup_creation_date_time #=> Time
    #   resp.backup_summaries[0].backup_expiry_date_time #=> Time
    #   resp.backup_summaries[0].backup_status #=> String, one of "CREATING", "DELETED", "AVAILABLE"
    #   resp.backup_summaries[0].backup_type #=> String, one of "USER", "SYSTEM"
    #   resp.backup_summaries[0].backup_size_bytes #=> Integer
    #   resp.last_evaluated_backup_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListBackups AWS API Documentation
    #
    # @overload list_backups(params = {})
    # @param [Hash] params ({})
    def list_backups(params = {}, options = {})
      req = build_request(:list_backups, params)
      req.send_request(options)
    end

    # Lists all global tables that have a replica in the specified region.
    #
    # @option params [String] :exclusive_start_global_table_name
    #   The first global table name that this operation will evaluate.
    #
    # @option params [Integer] :limit
    #   The maximum number of table names to return.
    #
    # @option params [String] :region_name
    #   Lists the global tables in a specific region.
    #
    # @return [Types::ListGlobalTablesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGlobalTablesOutput#global_tables #global_tables} => Array&lt;Types::GlobalTable&gt;
    #   * {Types::ListGlobalTablesOutput#last_evaluated_global_table_name #last_evaluated_global_table_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_global_tables({
    #     exclusive_start_global_table_name: "TableName",
    #     limit: 1,
    #     region_name: "RegionName",
    #   })
    #
    # @example Response structure
    #
    #   resp.global_tables #=> Array
    #   resp.global_tables[0].global_table_name #=> String
    #   resp.global_tables[0].replication_group #=> Array
    #   resp.global_tables[0].replication_group[0].region_name #=> String
    #   resp.last_evaluated_global_table_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListGlobalTables AWS API Documentation
    #
    # @overload list_global_tables(params = {})
    # @param [Hash] params ({})
    def list_global_tables(params = {}, options = {})
      req = build_request(:list_global_tables, params)
      req.send_request(options)
    end

    # Returns an array of table names associated with the current account
    # and endpoint. The output from `ListTables` is paginated, with each
    # page returning a maximum of 100 table names.
    #
    # @option params [String] :exclusive_start_table_name
    #   The first table name that this operation will evaluate. Use the value
    #   that was returned for `LastEvaluatedTableName` in a previous
    #   operation, so that you can obtain the next page of results.
    #
    # @option params [Integer] :limit
    #   A maximum number of table names to return. If this parameter is not
    #   specified, the limit is 100.
    #
    # @return [Types::ListTablesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTablesOutput#table_names #table_names} => Array&lt;String&gt;
    #   * {Types::ListTablesOutput#last_evaluated_table_name #last_evaluated_table_name} => String
    #
    #
    # @example Example: To list tables
    #
    #   # This example lists all of the tables associated with the current AWS account and endpoint.
    #
    #   resp = client.list_tables({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     table_names: [
    #       "Forum", 
    #       "ProductCatalog", 
    #       "Reply", 
    #       "Thread", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables({
    #     exclusive_start_table_name: "TableName",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.table_names #=> Array
    #   resp.table_names[0] #=> String
    #   resp.last_evaluated_table_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListTables AWS API Documentation
    #
    # @overload list_tables(params = {})
    # @param [Hash] params ({})
    def list_tables(params = {}, options = {})
      req = build_request(:list_tables, params)
      req.send_request(options)
    end

    # List all tags on an Amazon DynamoDB resource. You can call
    # ListTagsOfResource up to 10 times per second, per account.
    #
    # For an overview on tagging DynamoDB resources, see [Tagging for
    # DynamoDB][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon DynamoDB resource with tags to be listed. This value is an
    #   Amazon Resource Name (ARN).
    #
    # @option params [String] :next_token
    #   An optional string that, if supplied, must be copied from the output
    #   of a previous call to ListTagOfResource. When provided in this manner,
    #   this API fetches the next page of results.
    #
    # @return [Types::ListTagsOfResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsOfResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsOfResourceOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_of_resource({
    #     resource_arn: "ResourceArnString", # required
    #     next_token: "NextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListTagsOfResource AWS API Documentation
    #
    # @overload list_tags_of_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_of_resource(params = {}, options = {})
      req = build_request(:list_tags_of_resource, params)
      req.send_request(options)
    end

    # Creates a new item, or replaces an old item with a new item. If an
    # item that has the same primary key as the new item already exists in
    # the specified table, the new item completely replaces the existing
    # item. You can perform a conditional put operation (add a new item if
    # one with the specified primary key doesn't exist), or replace an
    # existing item if it has certain attribute values. You can return the
    # item's attribute values in the same operation, using the
    # `ReturnValues` parameter.
    #
    # This topic provides general information about the `PutItem` API.
    #
    #  For information on how to call the `PutItem` API using the AWS SDK in
    # specific languages, see the following:
    #
    #  * [ PutItem in the AWS Command Line Interface ][1]
    #
    # * [ PutItem in the AWS SDK for .NET ][2]
    #
    # * [ PutItem in the AWS SDK for C++ ][3]
    #
    # * [ PutItem in the AWS SDK for Go ][4]
    #
    # * [ PutItem in the AWS SDK for Java ][5]
    #
    # * [ PutItem in the AWS SDK for JavaScript ][6]
    #
    # * [ PutItem in the AWS SDK for PHP V3 ][7]
    #
    # * [ PutItem in the AWS SDK for Python ][8]
    #
    # * [ PutItem in the AWS SDK for Ruby V2 ][9]
    #
    # When you add an item, the primary key attribute(s) are the only
    # required attributes. Attribute values cannot be null. String and
    # Binary type attributes must have lengths greater than zero. Set type
    # attributes cannot be empty. Requests with empty values will be
    # rejected with a `ValidationException` exception.
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
    # For more information about `PutItem`, see [Working with Items][10] in
    # the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/goto/aws-cli/dynamodb-2012-08-10/PutItem
    # [2]: http://docs.aws.amazon.com/goto/DotNetSDKV3/dynamodb-2012-08-10/PutItem
    # [3]: http://docs.aws.amazon.com/goto/SdkForCpp/dynamodb-2012-08-10/PutItem
    # [4]: http://docs.aws.amazon.com/goto/SdkForGoV1/dynamodb-2012-08-10/PutItem
    # [5]: http://docs.aws.amazon.com/goto/SdkForJava/dynamodb-2012-08-10/PutItem
    # [6]: http://docs.aws.amazon.com/goto/AWSJavaScriptSDK/dynamodb-2012-08-10/PutItem
    # [7]: http://docs.aws.amazon.com/goto/SdkForPHPV3/dynamodb-2012-08-10/PutItem
    # [8]: http://docs.aws.amazon.com/goto/boto3/dynamodb-2012-08-10/PutItem
    # [9]: http://docs.aws.amazon.com/goto/SdkForRubyV2/dynamodb-2012-08-10/PutItem
    # [10]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html
    #
    # @option params [required, String] :table_name
    #   The name of the table to contain the item.
    #
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
    #   table's attribute definition.
    #
    #   For more information about primary keys, see [Primary Key][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #   Each element in the `Item` map is an `AttributeValue` object.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey
    #
    # @option params [Hash<String,Types::ExpectedAttributeValue>] :expected
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [Expected][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html
    #
    # @option params [String] :return_values
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
    #
    # @option params [String] :return_consumed_capacity
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
    #
    # @option params [String] :return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections, if
    #   any, that were modified during the operation are returned in the
    #   response. If set to `NONE` (the default), no statistics are returned.
    #
    # @option params [String] :conditional_operator
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #
    # @option params [String] :condition_expression
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
    #   For more information on condition expressions, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @option params [Hash<String,String>] :expression_attribute_names
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
    #   For more information on expression attribute names, see [Accessing
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
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
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @return [Types::PutItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutItemOutput#attributes #attributes} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::PutItemOutput#consumed_capacity #consumed_capacity} => Types::ConsumedCapacity
    #   * {Types::PutItemOutput#item_collection_metrics #item_collection_metrics} => Types::ItemCollectionMetrics
    #
    #
    # @example Example: To add an item to a table
    #
    #   # This example adds a new item to the Music table.
    #
    #   resp = client.put_item({
    #     item: {
    #       "AlbumTitle" => {
    #         s: "Somewhat Famous", 
    #       }, 
    #       "Artist" => {
    #         s: "No One You Know", 
    #       }, 
    #       "SongTitle" => {
    #         s: "Call Me Today", 
    #       }, 
    #     }, 
    #     return_consumed_capacity: "TOTAL", 
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     consumed_capacity: {
    #       capacity_units: 1, 
    #       table_name: "Music", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/PutItem AWS API Documentation
    #
    # @overload put_item(params = {})
    # @param [Hash] params ({})
    def put_item(params = {}, options = {})
      req = build_request(:put_item, params)
      req.send_request(options)
    end

    # The `Query` operation finds items based on primary key values. You can
    # query any table or secondary index that has a composite primary key (a
    # partition key and a sort key).
    #
    # Use the `KeyConditionExpression` parameter to provide a specific value
    # for the partition key. The `Query` operation will return all of the
    # items from the table or index with that partition key value. You can
    # optionally narrow the scope of the `Query` operation by specifying a
    # sort key value and a comparison operator in `KeyConditionExpression`.
    # To further refine the `Query` results, you can optionally provide a
    # `FilterExpression`. A `FilterExpression` determines which items within
    # the results should be returned to you. All of the other results are
    # discarded.
    #
    # A `Query` operation always returns a result set. If no matching items
    # are found, the result set will be empty. Queries that do not return
    # results consume the minimum number of read capacity units for that
    # type of read operation.
    #
    # <note markdown="1"> DynamoDB calculates the number of read capacity units consumed based
    # on item size, not on the amount of data that is returned to an
    # application. The number of capacity units consumed will be the same
    # whether you request all of the attributes (the default behavior) or
    # just some of them (using a projection expression). The number will
    # also be the same whether or not you use a `FilterExpression`.
    #
    #  </note>
    #
    # `Query` results are always sorted by the sort key value. If the data
    # type of the sort key is Number, the results are returned in numeric
    # order; otherwise, the results are returned in order of UTF-8 bytes. By
    # default, the sort order is ascending. To reverse the order, set the
    # `ScanIndexForward` parameter to false.
    #
    # A single `Query` operation will read up to the maximum number of items
    # set (if using the `Limit` parameter) or a maximum of 1 MB of data and
    # then apply any filtering to the results using `FilterExpression`. If
    # `LastEvaluatedKey` is present in the response, you will need to
    # paginate the result set. For more information, see [Paginating the
    # Results][1] in the *Amazon DynamoDB Developer Guide*.
    #
    # `FilterExpression` is applied after a `Query` finishes, but before the
    # results are returned. A `FilterExpression` cannot contain partition
    # key or sort key attributes. You need to specify those attributes in
    # the `KeyConditionExpression`.
    #
    # <note markdown="1"> A `Query` operation can return an empty result set and a
    # `LastEvaluatedKey` if all the items read for the page of results are
    # filtered out.
    #
    #  </note>
    #
    # You can query a table, a local secondary index, or a global secondary
    # index. For a query on a table or on a local secondary index, you can
    # set the `ConsistentRead` parameter to `true` and obtain a strongly
    # consistent result. Global secondary indexes support eventually
    # consistent reads only, so do not specify `ConsistentRead` when
    # querying a global secondary index.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination
    #
    # @option params [required, String] :table_name
    #   The name of the table containing the requested items.
    #
    # @option params [String] :index_name
    #   The name of an index to query. This index can be any local secondary
    #   index or global secondary index on the table. Note that if you use the
    #   `IndexName` parameter, you must also provide `TableName.`
    #
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
    #     `AttributesToGet`. This return value is equivalent to specifying
    #     `AttributesToGet` without specifying any value for `Select`.
    #
    #     If you query or scan a local secondary index and request only
    #     attributes that are projected into that index, the operation will
    #     read only the index and not the table. If any of the requested
    #     attributes are not projected into the local secondary index,
    #     DynamoDB will fetch each of these attributes from the parent table.
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
    #
    # @option params [Array<String>] :attributes_to_get
    #   This is a legacy parameter. Use `ProjectionExpression` instead. For
    #   more information, see [AttributesToGet][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    #
    # @option params [Integer] :limit
    #   The maximum number of items to evaluate (not necessarily the number of
    #   matching items). If DynamoDB processes the number of items up to the
    #   limit while processing the results, it stops the operation and returns
    #   the matching values up to that point, and a key in `LastEvaluatedKey`
    #   to apply in a subsequent operation, so that you can pick up where you
    #   left off. Also, if the processed data set size exceeds 1 MB before
    #   DynamoDB reaches this limit, it stops the operation and returns the
    #   matching values up to the limit, and a key in `LastEvaluatedKey` to
    #   apply in a subsequent operation to continue the operation. For more
    #   information, see [Query and Scan][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html
    #
    # @option params [Boolean] :consistent_read
    #   Determines the read consistency model: If set to `true`, then the
    #   operation uses strongly consistent reads; otherwise, the operation
    #   uses eventually consistent reads.
    #
    #   Strongly consistent reads are not supported on global secondary
    #   indexes. If you query a global secondary index with `ConsistentRead`
    #   set to `true`, you will receive a `ValidationException`.
    #
    # @option params [Hash<String,Types::Condition>] :key_conditions
    #   This is a legacy parameter. Use `KeyConditionExpression` instead. For
    #   more information, see [KeyConditions][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html
    #
    # @option params [Hash<String,Types::Condition>] :query_filter
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [QueryFilter][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html
    #
    # @option params [String] :conditional_operator
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #
    # @option params [Boolean] :scan_index_forward
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
    #
    # @option params [Hash<String,Types::AttributeValue>] :exclusive_start_key
    #   The primary key of the first item that this operation will evaluate.
    #   Use the value that was returned for `LastEvaluatedKey` in the previous
    #   operation.
    #
    #   The data type for `ExclusiveStartKey` must be String, Number or
    #   Binary. No set data types are allowed.
    #
    # @option params [String] :return_consumed_capacity
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
    #
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
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [String] :filter_expression
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
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults
    #
    # @option params [String] :key_condition_expression
    #   The condition that specifies the key value(s) for items to be
    #   retrieved by the `Query` action.
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
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html
    #
    # @option params [Hash<String,String>] :expression_attribute_names
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
    #   For more information on expression attribute names, see [Accessing
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
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
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @return [Types::QueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::QueryOutput#items #items} => Array&lt;Hash&lt;String,Types::AttributeValue&gt;&gt;
    #   * {Types::QueryOutput#count #count} => Integer
    #   * {Types::QueryOutput#scanned_count #scanned_count} => Integer
    #   * {Types::QueryOutput#last_evaluated_key #last_evaluated_key} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::QueryOutput#consumed_capacity #consumed_capacity} => Types::ConsumedCapacity
    #
    #
    # @example Example: To query an item
    #
    #   # This example queries items in the Music table. The table has a partition key and sort key (Artist and SongTitle), but
    #   # this query only specifies the partition key value. It returns song titles by the artist named "No One You Know".
    #
    #   resp = client.query({
    #     expression_attribute_values: {
    #       ":v1" => {
    #         s: "No One You Know", 
    #       }, 
    #     }, 
    #     key_condition_expression: "Artist = :v1", 
    #     projection_expression: "SongTitle", 
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     consumed_capacity: {
    #     }, 
    #     count: 2, 
    #     items: [
    #       {
    #         "SongTitle" => {
    #           s: "Call Me Today", 
    #         }, 
    #       }, 
    #     ], 
    #     scanned_count: 2, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/Query AWS API Documentation
    #
    # @overload query(params = {})
    # @param [Hash] params ({})
    def query(params = {}, options = {})
      req = build_request(:query, params)
      req.send_request(options)
    end

    # Creates a new table from an existing backup. Any number of users can
    # execute up to 4 concurrent restores (any type of restore) in a given
    # account.
    #
    # You can call `RestoreTableFromBackup` at a maximum rate of 10 times
    # per second.
    #
    # You must manually set up the following on the restored table:
    #
    # * Auto scaling policies
    #
    # * IAM policies
    #
    # * Cloudwatch metrics and alarms
    #
    # * Tags
    #
    # * Stream settings
    #
    # * Time to Live (TTL) settings
    #
    # @option params [required, String] :target_table_name
    #   The name of the new table to which the backup must be restored.
    #
    # @option params [required, String] :backup_arn
    #   The ARN associated with the backup.
    #
    # @return [Types::RestoreTableFromBackupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreTableFromBackupOutput#table_description #table_description} => Types::TableDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_table_from_backup({
    #     target_table_name: "TableName", # required
    #     backup_arn: "BackupArn", # required
    #   })
    #
    # @example Response structure
    #
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
    #   resp.table_description.table_id #=> String
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
    #   resp.table_description.restore_summary.source_backup_arn #=> String
    #   resp.table_description.restore_summary.source_table_arn #=> String
    #   resp.table_description.restore_summary.restore_date_time #=> Time
    #   resp.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.table_description.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.table_description.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.table_description.sse_description.kms_master_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/RestoreTableFromBackup AWS API Documentation
    #
    # @overload restore_table_from_backup(params = {})
    # @param [Hash] params ({})
    def restore_table_from_backup(params = {}, options = {})
      req = build_request(:restore_table_from_backup, params)
      req.send_request(options)
    end

    # Restores the specified table to the specified point in time within
    # `EarliestRestorableDateTime` and `LatestRestorableDateTime`. You can
    # restore your table to any point in time during the last 35 days. Any
    # number of users can execute up to 4 concurrent restores (any type of
    # restore) in a given account.
    #
    # When you restore using point in time recovery, DynamoDB restores your
    # table data to the state based on the selected date and time
    # (day:hour:minute:second) to a new table.
    #
    # Along with data, the following are also included on the new restored
    # table using point in time recovery:
    #
    # * Global secondary indexes (GSIs)
    #
    # * Local secondary indexes (LSIs)
    #
    # * Provisioned read and write capacity
    #
    # * Encryption settings
    #
    #   All these settings come from the current settings of the source
    #   table at the time of restore.
    #
    # You must manually set up the following on the restored table:
    #
    # * Auto scaling policies
    #
    # * IAM policies
    #
    # * Cloudwatch metrics and alarms
    #
    # * Tags
    #
    # * Stream settings
    #
    # * Time to Live (TTL) settings
    #
    # * Point in time recovery settings
    #
    # @option params [required, String] :source_table_name
    #   Name of the source table that is being restored.
    #
    # @option params [required, String] :target_table_name
    #   The name of the new table to which it must be restored to.
    #
    # @option params [Boolean] :use_latest_restorable_time
    #   Restore the table to the latest possible time.
    #   `LatestRestorableDateTime` is typically 5 minutes before the current
    #   time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :restore_date_time
    #   Time in the past to restore the table to.
    #
    # @return [Types::RestoreTableToPointInTimeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreTableToPointInTimeOutput#table_description #table_description} => Types::TableDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_table_to_point_in_time({
    #     source_table_name: "TableName", # required
    #     target_table_name: "TableName", # required
    #     use_latest_restorable_time: false,
    #     restore_date_time: Time.now,
    #   })
    #
    # @example Response structure
    #
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
    #   resp.table_description.table_id #=> String
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
    #   resp.table_description.restore_summary.source_backup_arn #=> String
    #   resp.table_description.restore_summary.source_table_arn #=> String
    #   resp.table_description.restore_summary.restore_date_time #=> Time
    #   resp.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.table_description.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.table_description.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.table_description.sse_description.kms_master_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/RestoreTableToPointInTime AWS API Documentation
    #
    # @overload restore_table_to_point_in_time(params = {})
    # @param [Hash] params ({})
    def restore_table_to_point_in_time(params = {}, options = {})
      req = build_request(:restore_table_to_point_in_time, params)
      req.send_request(options)
    end

    # The `Scan` operation returns one or more items and item attributes by
    # accessing every item in a table or a secondary index. To have DynamoDB
    # return fewer items, you can provide a `FilterExpression` operation.
    #
    # If the total number of scanned items exceeds the maximum data set size
    # limit of 1 MB, the scan stops and results are returned to the user as
    # a `LastEvaluatedKey` value to continue the scan in a subsequent
    # operation. The results also include the number of items exceeding the
    # limit. A scan can result in no table data meeting the filter criteria.
    #
    # A single `Scan` operation will read up to the maximum number of items
    # set (if using the `Limit` parameter) or a maximum of 1 MB of data and
    # then apply any filtering to the results using `FilterExpression`. If
    # `LastEvaluatedKey` is present in the response, you will need to
    # paginate the result set. For more information, see [Paginating the
    # Results][1] in the *Amazon DynamoDB Developer Guide*.
    #
    # `Scan` operations proceed sequentially; however, for faster
    # performance on a large table or secondary index, applications can
    # request a parallel `Scan` operation by providing the `Segment` and
    # `TotalSegments` parameters. For more information, see [Parallel
    # Scan][2] in the *Amazon DynamoDB Developer Guide*.
    #
    # `Scan` uses eventually consistent reads when accessing the data in a
    # table; therefore, the result set might not include the changes to data
    # in the table immediately before the operation began. If you need a
    # consistent copy of the data, as of the time that the `Scan` begins,
    # you can set the `ConsistentRead` parameter to `true`.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination
    # [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan
    #
    # @option params [required, String] :table_name
    #   The name of the table containing the requested items; or, if you
    #   provide `IndexName`, the name of the table to which that index
    #   belongs.
    #
    # @option params [String] :index_name
    #   The name of a secondary index to scan. This index can be any local
    #   secondary index or global secondary index. Note that if you use the
    #   `IndexName` parameter, you must also provide `TableName`.
    #
    # @option params [Array<String>] :attributes_to_get
    #   This is a legacy parameter. Use `ProjectionExpression` instead. For
    #   more information, see [AttributesToGet][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    #
    # @option params [Integer] :limit
    #   The maximum number of items to evaluate (not necessarily the number of
    #   matching items). If DynamoDB processes the number of items up to the
    #   limit while processing the results, it stops the operation and returns
    #   the matching values up to that point, and a key in `LastEvaluatedKey`
    #   to apply in a subsequent operation, so that you can pick up where you
    #   left off. Also, if the processed data set size exceeds 1 MB before
    #   DynamoDB reaches this limit, it stops the operation and returns the
    #   matching values up to the limit, and a key in `LastEvaluatedKey` to
    #   apply in a subsequent operation to continue the operation. For more
    #   information, see [Query and Scan][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html
    #
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
    #     `AttributesToGet`. This return value is equivalent to specifying
    #     `AttributesToGet` without specifying any value for `Select`.
    #
    #     If you query or scan a local secondary index and request only
    #     attributes that are projected into that index, the operation will
    #     read only the index and not the table. If any of the requested
    #     attributes are not projected into the local secondary index,
    #     DynamoDB will fetch each of these attributes from the parent table.
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
    #
    # @option params [Hash<String,Types::Condition>] :scan_filter
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [ScanFilter][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html
    #
    # @option params [String] :conditional_operator
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #
    # @option params [Hash<String,Types::AttributeValue>] :exclusive_start_key
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
    #
    # @option params [String] :return_consumed_capacity
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
    #
    # @option params [Integer] :total_segments
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
    #
    # @option params [Integer] :segment
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
    #
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
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [String] :filter_expression
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
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults
    #
    # @option params [Hash<String,String>] :expression_attribute_names
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
    #   For more information on expression attribute names, see [Accessing
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
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
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @option params [Boolean] :consistent_read
    #   A Boolean value that determines the read consistency model during the
    #   scan:
    #
    #   * If `ConsistentRead` is `false`, then the data returned from `Scan`
    #     might not contain the results from other recently completed write
    #     operations (PutItem, UpdateItem or DeleteItem).
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
    #
    # @return [Types::ScanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ScanOutput#items #items} => Array&lt;Hash&lt;String,Types::AttributeValue&gt;&gt;
    #   * {Types::ScanOutput#count #count} => Integer
    #   * {Types::ScanOutput#scanned_count #scanned_count} => Integer
    #   * {Types::ScanOutput#last_evaluated_key #last_evaluated_key} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::ScanOutput#consumed_capacity #consumed_capacity} => Types::ConsumedCapacity
    #
    #
    # @example Example: To scan a table
    #
    #   # This example scans the entire Music table, and then narrows the results to songs by the artist "No One You Know". For
    #   # each item, only the album title and song title are returned.
    #
    #   resp = client.scan({
    #     expression_attribute_names: {
    #       "AT" => "AlbumTitle", 
    #       "ST" => "SongTitle", 
    #     }, 
    #     expression_attribute_values: {
    #       ":a" => {
    #         s: "No One You Know", 
    #       }, 
    #     }, 
    #     filter_expression: "Artist = :a", 
    #     projection_expression: "#ST, #AT", 
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     consumed_capacity: {
    #     }, 
    #     count: 2, 
    #     items: [
    #       {
    #         "AlbumTitle" => {
    #           s: "Somewhat Famous", 
    #         }, 
    #         "SongTitle" => {
    #           s: "Call Me Today", 
    #         }, 
    #       }, 
    #       {
    #         "AlbumTitle" => {
    #           s: "Blue Sky Blues", 
    #         }, 
    #         "SongTitle" => {
    #           s: "Scared of My Shadow", 
    #         }, 
    #       }, 
    #     ], 
    #     scanned_count: 3, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/Scan AWS API Documentation
    #
    # @overload scan(params = {})
    # @param [Hash] params ({})
    def scan(params = {}, options = {})
      req = build_request(:scan, params)
      req.send_request(options)
    end

    # Associate a set of tags with an Amazon DynamoDB resource. You can then
    # activate these user-defined tags so that they appear on the Billing
    # and Cost Management console for cost allocation tracking. You can call
    # TagResource up to 5 times per second, per account.
    #
    # For an overview on tagging DynamoDB resources, see [Tagging for
    # DynamoDB][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html
    #
    # @option params [required, String] :resource_arn
    #   Identifies the Amazon DynamoDB resource to which tags should be added.
    #   This value is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to be assigned to the Amazon DynamoDB resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArnString", # required
    #     tags: [ # required
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the association of tags from an Amazon DynamoDB resource. You
    # can call UntagResource up to 5 times per second, per account.
    #
    # For an overview on tagging DynamoDB resources, see [Tagging for
    # DynamoDB][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon DyanamoDB resource the tags will be removed from. This
    #   value is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys. Existing tags of the resource whose keys are
    #   members of this list will be removed from the Amazon DynamoDB
    #   resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArnString", # required
    #     tag_keys: ["TagKeyString"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # `UpdateContinuousBackups` enables or disables point in time recovery
    # for the specified table. A successful `UpdateContinuousBackups` call
    # returns the current `ContinuousBackupsDescription`. Continuous backups
    # are `ENABLED` on all tables at table creation. If point in time
    # recovery is enabled, `PointInTimeRecoveryStatus` will be set to
    # ENABLED.
    #
    # Once continuous backups and point in time recovery are enabled, you
    # can restore to any point in time within `EarliestRestorableDateTime`
    # and `LatestRestorableDateTime`.
    #
    # `LatestRestorableDateTime` is typically 5 minutes before the current
    # time. You can restore your table to any point in time during the last
    # 35 days..
    #
    # @option params [required, String] :table_name
    #   The name of the table.
    #
    # @option params [required, Types::PointInTimeRecoverySpecification] :point_in_time_recovery_specification
    #   Represents the settings used to enable point in time recovery.
    #
    # @return [Types::UpdateContinuousBackupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContinuousBackupsOutput#continuous_backups_description #continuous_backups_description} => Types::ContinuousBackupsDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_continuous_backups({
    #     table_name: "TableName", # required
    #     point_in_time_recovery_specification: { # required
    #       point_in_time_recovery_enabled: false, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.continuous_backups_description.continuous_backups_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.continuous_backups_description.point_in_time_recovery_description.point_in_time_recovery_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.continuous_backups_description.point_in_time_recovery_description.earliest_restorable_date_time #=> Time
    #   resp.continuous_backups_description.point_in_time_recovery_description.latest_restorable_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateContinuousBackups AWS API Documentation
    #
    # @overload update_continuous_backups(params = {})
    # @param [Hash] params ({})
    def update_continuous_backups(params = {}, options = {})
      req = build_request(:update_continuous_backups, params)
      req.send_request(options)
    end

    # Adds or removes replicas in the specified global table. The global
    # table must already exist to be able to use this operation. Any replica
    # to be added must be empty, must have the same name as the global
    # table, must have the same key schema, and must have DynamoDB Streams
    # enabled and must have same provisioned and maximum write capacity
    # units.
    #
    # <note markdown="1"> Although you can use `UpdateGlobalTable` to add replicas and remove
    # replicas in a single request, for simplicity we recommend that you
    # issue separate requests for adding or removing replicas.
    #
    #  </note>
    #
    # If global secondary indexes are specified, then the following
    # conditions must also be met:
    #
    # * The global secondary indexes must have the same name.
    #
    # * The global secondary indexes must have the same hash key and sort
    #   key (if present).
    #
    # * The global secondary indexes must have the same provisioned and
    #   maximum write capacity units.
    #
    # @option params [required, String] :global_table_name
    #   The global table name.
    #
    # @option params [required, Array<Types::ReplicaUpdate>] :replica_updates
    #   A list of regions that should be added or removed from the global
    #   table.
    #
    # @return [Types::UpdateGlobalTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGlobalTableOutput#global_table_description #global_table_description} => Types::GlobalTableDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_table({
    #     global_table_name: "TableName", # required
    #     replica_updates: [ # required
    #       {
    #         create: {
    #           region_name: "RegionName", # required
    #         },
    #         delete: {
    #           region_name: "RegionName", # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.global_table_description.replication_group #=> Array
    #   resp.global_table_description.replication_group[0].region_name #=> String
    #   resp.global_table_description.global_table_arn #=> String
    #   resp.global_table_description.creation_date_time #=> Time
    #   resp.global_table_description.global_table_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING"
    #   resp.global_table_description.global_table_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateGlobalTable AWS API Documentation
    #
    # @overload update_global_table(params = {})
    # @param [Hash] params ({})
    def update_global_table(params = {}, options = {})
      req = build_request(:update_global_table, params)
      req.send_request(options)
    end

    # Updates settings for a global table.
    #
    # @option params [required, String] :global_table_name
    #   The name of the global table
    #
    # @option params [Integer] :global_table_provisioned_write_capacity_units
    #   The maximum number of writes consumed per second before DynamoDB
    #   returns a `ThrottlingException.`
    #
    # @option params [Types::AutoScalingSettingsUpdate] :global_table_provisioned_write_capacity_auto_scaling_settings_update
    #   AutoScaling settings for managing provisioned write capacity for the
    #   global table.
    #
    # @option params [Array<Types::GlobalTableGlobalSecondaryIndexSettingsUpdate>] :global_table_global_secondary_index_settings_update
    #   Represents the settings of a global secondary index for a global table
    #   that will be modified.
    #
    # @option params [Array<Types::ReplicaSettingsUpdate>] :replica_settings_update
    #   Represents the settings for a global table in a region that will be
    #   modified.
    #
    # @return [Types::UpdateGlobalTableSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGlobalTableSettingsOutput#global_table_name #global_table_name} => String
    #   * {Types::UpdateGlobalTableSettingsOutput#replica_settings #replica_settings} => Array&lt;Types::ReplicaSettingsDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_table_settings({
    #     global_table_name: "TableName", # required
    #     global_table_provisioned_write_capacity_units: 1,
    #     global_table_provisioned_write_capacity_auto_scaling_settings_update: {
    #       minimum_units: 1,
    #       maximum_units: 1,
    #       auto_scaling_disabled: false,
    #       auto_scaling_role_arn: "AutoScalingRoleArn",
    #       scaling_policy_update: {
    #         policy_name: "AutoScalingPolicyName",
    #         target_tracking_scaling_policy_configuration: { # required
    #           disable_scale_in: false,
    #           scale_in_cooldown: 1,
    #           scale_out_cooldown: 1,
    #           target_value: 1.0, # required
    #         },
    #       },
    #     },
    #     global_table_global_secondary_index_settings_update: [
    #       {
    #         index_name: "IndexName", # required
    #         provisioned_write_capacity_units: 1,
    #         provisioned_write_capacity_auto_scaling_settings_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     replica_settings_update: [
    #       {
    #         region_name: "RegionName", # required
    #         replica_provisioned_read_capacity_units: 1,
    #         replica_provisioned_read_capacity_auto_scaling_settings_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             },
    #           },
    #         },
    #         replica_global_secondary_index_settings_update: [
    #           {
    #             index_name: "IndexName", # required
    #             provisioned_read_capacity_units: 1,
    #             provisioned_read_capacity_auto_scaling_settings_update: {
    #               minimum_units: 1,
    #               maximum_units: 1,
    #               auto_scaling_disabled: false,
    #               auto_scaling_role_arn: "AutoScalingRoleArn",
    #               scaling_policy_update: {
    #                 policy_name: "AutoScalingPolicyName",
    #                 target_tracking_scaling_policy_configuration: { # required
    #                   disable_scale_in: false,
    #                   scale_in_cooldown: 1,
    #                   scale_out_cooldown: 1,
    #                   target_value: 1.0, # required
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.global_table_name #=> String
    #   resp.replica_settings #=> Array
    #   resp.replica_settings[0].region_name #=> String
    #   resp.replica_settings[0].replica_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.replica_settings[0].replica_provisioned_read_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_provisioned_write_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_global_secondary_index_settings #=> Array
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].index_name #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateGlobalTableSettings AWS API Documentation
    #
    # @overload update_global_table_settings(params = {})
    # @param [Hash] params ({})
    def update_global_table_settings(params = {}, options = {})
      req = build_request(:update_global_table_settings, params)
      req.send_request(options)
    end

    # Edits an existing item's attributes, or adds a new item to the table
    # if it does not already exist. You can put, delete, or add attribute
    # values. You can also perform a conditional update on an existing item
    # (insert a new attribute name-value pair if it doesn't exist, or
    # replace an existing name-value pair if it has certain expected
    # attribute values).
    #
    # You can also return the item's attribute values in the same
    # `UpdateItem` operation using the `ReturnValues` parameter.
    #
    # @option params [required, String] :table_name
    #   The name of the table containing the item to update.
    #
    # @option params [required, Hash<String,Types::AttributeValue>] :key
    #   The primary key of the item to be updated. Each element consists of an
    #   attribute name and a value for that attribute.
    #
    #   For the primary key, you must provide all of the attributes. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   values for both the partition key and the sort key.
    #
    # @option params [Hash<String,Types::AttributeValueUpdate>] :attribute_updates
    #   This is a legacy parameter. Use `UpdateExpression` instead. For more
    #   information, see [AttributeUpdates][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html
    #
    # @option params [Hash<String,Types::ExpectedAttributeValue>] :expected
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [Expected][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html
    #
    # @option params [String] :conditional_operator
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #
    # @option params [String] :return_values
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
    #
    # @option params [String] :return_consumed_capacity
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
    #
    # @option params [String] :return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections, if
    #   any, that were modified during the operation are returned in the
    #   response. If set to `NONE` (the default), no statistics are returned.
    #
    # @option params [String] :update_expression
    #   An expression that defines one or more attributes to be updated, the
    #   action to be performed on them, and new value(s) for them.
    #
    #   The following action values are available for `UpdateExpression`.
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
    #       attribute named *itemcount*, but you decide to `ADD` the number
    #       `3` to this attribute anyway. DynamoDB will create the *itemcount*
    #       attribute, set its initial value to `0`, and finally add `3` to
    #       it. The result will be a new *itemcount* attribute in the item,
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
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html
    #
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
    #   * Comparison operators: `= | <> | < | > | <= | >= | BETWEEN | IN `
    #
    #   * Logical operators: `AND | OR | NOT`
    #
    #   For more information on condition expressions, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @option params [Hash<String,String>] :expression_attribute_names
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
    #   For more information on expression attribute names, see [Accessing
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
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
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @return [Types::UpdateItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateItemOutput#attributes #attributes} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::UpdateItemOutput#consumed_capacity #consumed_capacity} => Types::ConsumedCapacity
    #   * {Types::UpdateItemOutput#item_collection_metrics #item_collection_metrics} => Types::ItemCollectionMetrics
    #
    #
    # @example Example: To update an item in a table
    #
    #   # This example updates an item in the Music table. It adds a new attribute (Year) and modifies the AlbumTitle attribute. 
    #   # All of the attributes in the item, as they appear after the update, are returned in the response.
    #
    #   resp = client.update_item({
    #     expression_attribute_names: {
    #       "#AT" => "AlbumTitle", 
    #       "#Y" => "Year", 
    #     }, 
    #     expression_attribute_values: {
    #       ":t" => {
    #         s: "Louder Than Ever", 
    #       }, 
    #       ":y" => {
    #         n: "2015", 
    #       }, 
    #     }, 
    #     key: {
    #       "Artist" => {
    #         s: "Acme Band", 
    #       }, 
    #       "SongTitle" => {
    #         s: "Happy Day", 
    #       }, 
    #     }, 
    #     return_values: "ALL_NEW", 
    #     table_name: "Music", 
    #     update_expression: "SET #Y = :y, #AT = :t", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: {
    #       "AlbumTitle" => {
    #         s: "Louder Than Ever", 
    #       }, 
    #       "Artist" => {
    #         s: "Acme Band", 
    #       }, 
    #       "SongTitle" => {
    #         s: "Happy Day", 
    #       }, 
    #       "Year" => {
    #         n: "2015", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateItem AWS API Documentation
    #
    # @overload update_item(params = {})
    # @param [Hash] params ({})
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
    #   begins backfilling, you can use `UpdateTable` to perform other
    #   operations.
    #
    # `UpdateTable` is an asynchronous operation; while it is executing, the
    # table status changes from `ACTIVE` to `UPDATING`. While it is
    # `UPDATING`, you cannot issue another `UpdateTable` request. When the
    # table returns to the `ACTIVE` state, the `UpdateTable` operation is
    # complete.
    #
    # @option params [Array<Types::AttributeDefinition>] :attribute_definitions
    #   An array of attributes that describe the key schema for the table and
    #   indexes. If you are adding a new global secondary index to the table,
    #   `AttributeDefinitions` must include the key element(s) of the new
    #   index.
    #
    # @option params [required, String] :table_name
    #   The name of the table to be updated.
    #
    # @option params [Types::ProvisionedThroughput] :provisioned_throughput
    #   The new provisioned throughput settings for the specified table or
    #   index.
    #
    # @option params [Array<Types::GlobalSecondaryIndexUpdate>] :global_secondary_index_updates
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
    #   For more information, see [Managing Global Secondary Indexes][1] in
    #   the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html
    #
    # @option params [Types::StreamSpecification] :stream_specification
    #   Represents the DynamoDB Streams configuration for the table.
    #
    #   <note markdown="1"> You will receive a `ResourceInUseException` if you attempt to enable a
    #   stream on a table that already has a stream, or if you attempt to
    #   disable a stream on a table which does not have a stream.
    #
    #    </note>
    #
    # @option params [Types::SSESpecification] :sse_specification
    #   The new server-side encryption settings for the specified table.
    #
    # @return [Types::UpdateTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTableOutput#table_description #table_description} => Types::TableDescription
    #
    #
    # @example Example: To modify a table's provisioned throughput
    #
    #   # This example increases the provisioned read and write capacity on the Music table.
    #
    #   resp = client.update_table({
    #     provisioned_throughput: {
    #       read_capacity_units: 10, 
    #       write_capacity_units: 10, 
    #     }, 
    #     table_name: "MusicCollection", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     table_description: {
    #       attribute_definitions: [
    #         {
    #           attribute_name: "Artist", 
    #           attribute_type: "S", 
    #         }, 
    #         {
    #           attribute_name: "SongTitle", 
    #           attribute_type: "S", 
    #         }, 
    #       ], 
    #       creation_date_time: Time.parse("1421866952.062"), 
    #       item_count: 0, 
    #       key_schema: [
    #         {
    #           attribute_name: "Artist", 
    #           key_type: "HASH", 
    #         }, 
    #         {
    #           attribute_name: "SongTitle", 
    #           key_type: "RANGE", 
    #         }, 
    #       ], 
    #       provisioned_throughput: {
    #         last_increase_date_time: Time.parse("1421874759.194"), 
    #         number_of_decreases_today: 1, 
    #         read_capacity_units: 1, 
    #         write_capacity_units: 1, 
    #       }, 
    #       table_name: "MusicCollection", 
    #       table_size_bytes: 0, 
    #       table_status: "UPDATING", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
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
    #     sse_specification: {
    #       enabled: false,
    #       sse_type: "AES256", # accepts AES256, KMS
    #       kms_master_key_id: "KMSMasterKeyId",
    #     },
    #   })
    #
    # @example Response structure
    #
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
    #   resp.table_description.table_id #=> String
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
    #   resp.table_description.restore_summary.source_backup_arn #=> String
    #   resp.table_description.restore_summary.source_table_arn #=> String
    #   resp.table_description.restore_summary.restore_date_time #=> Time
    #   resp.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.table_description.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.table_description.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.table_description.sse_description.kms_master_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateTable AWS API Documentation
    #
    # @overload update_table(params = {})
    # @param [Hash] params ({})
    def update_table(params = {}, options = {})
      req = build_request(:update_table, params)
      req.send_request(options)
    end

    # The UpdateTimeToLive method will enable or disable TTL for the
    # specified table. A successful `UpdateTimeToLive` call returns the
    # current `TimeToLiveSpecification`; it may take up to one hour for the
    # change to fully process. Any additional `UpdateTimeToLive` calls for
    # the same table during this one hour duration result in a
    # `ValidationException`.
    #
    # TTL compares the current time in epoch time format to the time stored
    # in the TTL attribute of an item. If the epoch time value stored in the
    # attribute is less than the current time, the item is marked as expired
    # and subsequently deleted.
    #
    # <note markdown="1"> The epoch time format is the number of seconds elapsed since 12:00:00
    # AM January 1st, 1970 UTC.
    #
    #  </note>
    #
    # DynamoDB deletes expired items on a best-effort basis to ensure
    # availability of throughput for other data operations.
    #
    # DynamoDB typically deletes expired items within two days of
    # expiration. The exact duration within which an item gets deleted after
    # expiration is specific to the nature of the workload. Items that have
    # expired and not been deleted will still show up in reads, queries, and
    # scans.
    #
    # As items are deleted, they are removed from any Local Secondary Index
    # and Global Secondary Index immediately in the same eventually
    # consistent way as a standard delete operation.
    #
    # For more information, see [Time To Live][1] in the Amazon DynamoDB
    # Developer Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html
    #
    # @option params [required, String] :table_name
    #   The name of the table to be configured.
    #
    # @option params [required, Types::TimeToLiveSpecification] :time_to_live_specification
    #   Represents the settings used to enable or disable Time to Live for the
    #   specified table.
    #
    # @return [Types::UpdateTimeToLiveOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTimeToLiveOutput#time_to_live_specification #time_to_live_specification} => Types::TimeToLiveSpecification
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_time_to_live({
    #     table_name: "TableName", # required
    #     time_to_live_specification: { # required
    #       enabled: false, # required
    #       attribute_name: "TimeToLiveAttributeName", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.time_to_live_specification.enabled #=> Boolean
    #   resp.time_to_live_specification.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateTimeToLive AWS API Documentation
    #
    # @overload update_time_to_live(params = {})
    # @param [Hash] params ({})
    def update_time_to_live(params = {}, options = {})
      req = build_request(:update_time_to_live, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-dynamodb'
      context[:gem_version] = '1.13.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.waiter_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name      | params            | :delay   | :max_attempts |
    # | ---------------- | ----------------- | -------- | ------------- |
    # | table_exists     | {#describe_table} | 20       | 25            |
    # | table_not_exists | {#describe_table} | 20       | 25            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
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

    # @api private
    # @deprecated
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

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
