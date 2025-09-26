# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::Keyspaces
  # An API client for Aws::Keyspaces.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::KeyspacesService

    add_plugin(::Aws::Keyspaces::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::Keyspaces::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>The <code>CreateKeyspace</code> operation adds a new keyspace to your account. In an Amazon Web Services account, keyspace names must be unique within each Region.</p> <p> <code>CreateKeyspace</code> is an asynchronous operation. You can monitor the creation status of the new keyspace by using the <code>GetKeyspace</code> operation.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/getting-started.keyspaces.html">Create a keyspace</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @param [Hash, Types::CreateKeyspaceInput] params
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace to be created.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pair tags to be attached to the keyspace.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Types::ReplicationSpecification] :replication_specification
    #   <p> The replication specification of the keyspace includes:</p> <ul> <li> <p> <code>replicationStrategy</code> - the required value is <code>SINGLE_REGION</code> or <code>MULTI_REGION</code>.</p> </li> <li> <p> <code>regionList</code> - if the <code>replicationStrategy</code> is <code>MULTI_REGION</code>, the <code>regionList</code> requires the current Region and at least one additional Amazon Web Services Region where the keyspace is going to be replicated in.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     keyspace_name: "KeyspaceName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     replication_specification: {
    #       replication_strategy: "rs", # required
    #       region_list: ["region"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_keyspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ARN", # required
    #   }
    # @return [Types::CreateKeyspaceOutput]
    def create_keyspace(params = {}, options = {})
      request = build_request(:create_keyspace, params)
      request.send_request(options)
    end

    # <p>The <code>CreateTable</code> operation adds a new table to the specified keyspace. Within a keyspace, table names must be unique.</p> <p> <code>CreateTable</code> is an asynchronous operation. When the request is received, the status of the table is set to <code>CREATING</code>. You can monitor the creation status of the new table by using the <code>GetTable</code> operation, which returns the current <code>status</code> of the table. You can start using a table when the status is <code>ACTIVE</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/getting-started.tables.html">Create a table</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @param [Hash, Types::CreateTableInput] params
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace that the table is going to be created in.</p>
    # @option params [String] :table_name
    #   <p>The name of the table.</p>
    # @option params [Types::SchemaDefinition] :schema_definition
    #   <p>The <code>schemaDefinition</code> consists of the following parameters.</p> <p>For each column to be created:</p> <ul> <li> <p> <code>name</code> - The name of the column.</p> </li> <li> <p> <code>type</code> - An Amazon Keyspaces data type. For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types">Data types</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> </li> </ul> <p>The primary key of the table consists of the following columns:</p> <ul> <li> <p> <code>partitionKeys</code> - The partition key can be a single column, or it can be a compound value composed of two or more columns. The partition key portion of the primary key is required and determines how Amazon Keyspaces stores your data.</p> </li> <li> <p> <code>name</code> - The name of each partition key column.</p> </li> <li> <p> <code>clusteringKeys</code> - The optional clustering column portion of your primary key determines how the data is clustered and sorted within each partition.</p> </li> <li> <p> <code>name</code> - The name of the clustering column. </p> </li> <li> <p> <code>orderBy</code> - Sets the ascendant (<code>ASC</code>) or descendant (<code>DESC</code>) order modifier.</p> <p>To define a column as static use <code>staticColumns</code> - Static columns store values that are shared by all rows in the same partition:</p> </li> <li> <p> <code>name</code> - The name of the column.</p> </li> <li> <p> <code>type</code> - An Amazon Keyspaces data type.</p> </li> </ul>
    # @option params [Types::Comment] :comment
    #   <p>This parameter allows to enter a description of the table.</p>
    # @option params [Types::CapacitySpecification] :capacity_specification
    #   <p>Specifies the read/write throughput capacity mode for the table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> and </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p> </li> </ul> <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Types::EncryptionSpecification] :encryption_specification
    #   <p>Specifies how the encryption key for encryption at rest is managed for the table. You can choose one of the following KMS key (KMS key):</p> <ul> <li> <p> <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p> </li> <li> <p> <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. This option requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input.</p> </li> </ul> <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Types::PointInTimeRecovery] :point_in_time_recovery
    #   <p>Specifies if <code>pointInTimeRecovery</code> is enabled or disabled for the table. The options are:</p> <ul> <li> <p> <code>status=ENABLED</code> </p> </li> <li> <p> <code>status=DISABLED</code> </p> </li> </ul> <p>If it's not specified, the default is <code>status=DISABLED</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Types::TimeToLive] :ttl
    #   <p>Enables Time to Live custom settings for the table. The options are:</p> <ul> <li> <p> <code>status:enabled</code> </p> </li> <li> <p> <code>status:disabled</code> </p> </li> </ul> <p>The default is <code>status:disabled</code>. After <code>ttl</code> is enabled, you can't disable it for the table.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html">Expiring data by using Amazon Keyspaces Time to Live (TTL)</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Integer] :default_time_to_live
    #   <p>The default Time to Live setting in seconds for the table.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl">Setting the default TTL value for a table</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pair tags to be attached to the resource. </p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Types::ClientSideTimestamps] :client_side_timestamps
    #   <p> Enables client-side timestamps for the table. By default, the setting is disabled. You can enable client-side timestamps with the following option:</p> <ul> <li> <p> <code>status: "enabled"</code> </p> </li> </ul> <p>Once client-side timestamps are enabled for a table, this setting cannot be disabled.</p>
    # @option params [Types::AutoScalingSpecification] :auto_scaling_specification
    #   <p>The optional auto scaling settings for a table in provisioned capacity mode. Specifies if the service can manage throughput capacity automatically on your behalf.</p> <p>Auto scaling helps you provision throughput capacity for variable workloads efficiently by increasing and decreasing your table's read and write capacity automatically in response to application traffic. For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html">Managing throughput capacity automatically with Amazon Keyspaces auto scaling</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <p>By default, auto scaling is disabled for a table. </p>
    # @option params [Array<Types::ReplicaSpecification>] :replica_specifications
    #   <p>The optional Amazon Web Services Region specific settings of a multi-Region table. These settings overwrite the general settings of the table for the specified Region. </p> <p>For a multi-Region table in provisioned capacity mode, you can configure the table's read capacity differently for each Region's replica. The write capacity, however, remains synchronized between all replicas to ensure that there's enough capacity to replicate writes across all Regions. To define the read capacity for a table replica in a specific Region, you can do so by configuring the following parameters.</p> <ul> <li> <p> <code>region</code>: The Region where these settings are applied. (Required)</p> </li> <li> <p> <code>readCapacityUnits</code>: The provisioned read capacity units. (Optional)</p> </li> <li> <p> <code>readCapacityAutoScaling</code>: The read capacity auto scaling settings for the table. (Optional) </p> </li> </ul>
    # @option params [Types::CdcSpecification] :cdc_specification
    #   <p>The CDC stream settings of the table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #     schema_definition: { # required
    #       all_columns: [ # required
    #         {
    #           name: "GenericString", # required
    #           type: "GenericString", # required
    #         }
    #       ],
    #       partition_keys: [ # required
    #         {
    #           name: "GenericString", # required
    #         }
    #       ],
    #       clustering_keys: [
    #         {
    #           name: "GenericString", # required
    #           order_by: "SortOrder", # required
    #         }
    #       ],
    #       static_columns: [
    #         {
    #           name: "GenericString", # required
    #         }
    #       ]
    #     },
    #     comment: {
    #       message: "String", # required
    #     },
    #     capacity_specification: {
    #       throughput_mode: "ThroughputMode", # required
    #       read_capacity_units: 1,
    #       write_capacity_units: 1
    #     },
    #     encryption_specification: {
    #       type: "EncryptionType", # required
    #       kms_key_identifier: "kmsKeyARN"
    #     },
    #     point_in_time_recovery: {
    #       status: "PointInTimeRecoveryStatus", # required
    #     },
    #     ttl: {
    #       status: "TimeToLiveStatus", # required
    #     },
    #     default_time_to_live: 1,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_side_timestamps: {
    #       status: "ClientSideTimestampsStatus", # required
    #     },
    #     auto_scaling_specification: {
    #       write_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           }
    #         }
    #       },
    #       read_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           }
    #         }
    #       }
    #     },
    #     replica_specifications: [
    #       {
    #         region: "region", # required
    #         read_capacity_units: 1,
    #         read_capacity_auto_scaling: {
    #           auto_scaling_disabled: false,
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           scaling_policy: {
    #             target_tracking_scaling_policy_configuration: {
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     cdc_specification: {
    #       status: "CdcStatus", # required
    #       view_type: "ViewType",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       propagate_tags: "CdcPropagateTags"
    #     }
    #   }
    #   options = {}
    #   response = client.create_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ARN", # required
    #   }
    # @return [Types::CreateTableOutput]
    def create_table(params = {}, options = {})
      request = build_request(:create_table, params)
      request.send_request(options)
    end

    # <p> The <code>CreateType</code> operation creates a new user-defined type in the specified keyspace. </p> <p>To configure the required permissions, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-create">Permissions to create a UDT</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/udts.html">User-defined types (UDTs)</a> in the <i>Amazon Keyspaces Developer Guide</i>. </p>
    # @param [Hash, Types::CreateTypeRequest] params
    # @option params [String] :keyspace_name
    #   <p> The name of the keyspace. </p>
    # @option params [String] :type_name
    #   <p> The name of the user-defined type. </p> <p>UDT names must contain 48 characters or less, must begin with an alphabetic character, and can only contain alpha-numeric characters and underscores. Amazon Keyspaces converts upper case characters automatically into lower case characters. </p> <p>Alternatively, you can declare a UDT name in double quotes. When declaring a UDT name inside double quotes, Amazon Keyspaces preserves upper casing and allows special characters.</p> <p>You can also use double quotes as part of the name when you create the UDT, but you must escape each double quote character with an additional double quote character.</p>
    # @option params [Array<Types::FieldDefinition>] :field_definitions
    #   <p> The field definitions, consisting of names and types, that define this type. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     keyspace_name: "KeyspaceName", # required
    #     type_name: "TypeName", # required
    #     field_definitions: [ # required
    #       {
    #         name: "GenericString", # required
    #         type: "GenericString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     keyspace_arn: "ARN", # required
    #     type_name: "TypeName", # required
    #   }
    # @return [Types::CreateTypeResponse]
    def create_type(params = {}, options = {})
      request = build_request(:create_type, params)
      request.send_request(options)
    end

    # <p>The <code>DeleteKeyspace</code> operation deletes a keyspace and all of its tables. </p>
    # @param [Hash, Types::DeleteKeyspaceInput] params
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     keyspace_name: "KeyspaceName", # required
    #   }
    #   options = {}
    #   response = client.delete_keyspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteKeyspaceOutput]
    def delete_keyspace(params = {}, options = {})
      request = build_request(:delete_keyspace, params)
      request.send_request(options)
    end

    # <p>The <code>DeleteTable</code> operation deletes a table and all of its data. After a <code>DeleteTable</code> request is received, the specified table is in the <code>DELETING</code> state until Amazon Keyspaces completes the deletion. If the table is in the <code>ACTIVE</code> state, you can delete it. If a table is either in the <code>CREATING</code> or <code>UPDATING</code> states, then Amazon Keyspaces returns a <code>ResourceInUseException</code>. If the specified table does not exist, Amazon Keyspaces returns a <code>ResourceNotFoundException</code>. If the table is already in the <code>DELETING</code> state, no error is returned.</p>
    # @param [Hash, Types::DeleteTableInput] params
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace of the to be deleted table.</p>
    # @option params [String] :table_name
    #   <p>The name of the table to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #   }
    #   options = {}
    #   response = client.delete_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTableOutput]
    def delete_table(params = {}, options = {})
      request = build_request(:delete_table, params)
      request.send_request(options)
    end

    # <p> The <code>DeleteType</code> operation deletes a user-defined type (UDT). You can only delete a type that is not used in a table or another UDT. </p> <p>To configure the required permissions, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-drop">Permissions to delete a UDT</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteTypeRequest] params
    # @option params [String] :keyspace_name
    #   <p> The name of the keyspace of the to be deleted type. </p>
    # @option params [String] :type_name
    #   <p> The name of the type to be deleted. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     keyspace_name: "KeyspaceName", # required
    #     type_name: "TypeName", # required
    #   }
    #   options = {}
    #   response = client.delete_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     keyspace_arn: "ARN", # required
    #     type_name: "TypeName", # required
    #   }
    # @return [Types::DeleteTypeResponse]
    def delete_type(params = {}, options = {})
      request = build_request(:delete_type, params)
      request.send_request(options)
    end

    # <p>Returns the name of the specified keyspace, the Amazon Resource Name (ARN), the replication strategy, the Amazon Web Services Regions of a multi-Region keyspace, and the status of newly added Regions after an <code>UpdateKeyspace</code> operation.</p>
    # @param [Hash, Types::GetKeyspaceInput] params
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     keyspace_name: "KeyspaceName", # required
    #   }
    #   options = {}
    #   response = client.get_keyspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     keyspace_name: "KeyspaceName", # required
    #     resource_arn: "ARN", # required
    #     replication_strategy: "rs", # required
    #     replication_regions: ["region"],
    #     replication_group_statuses: [
    #       {
    #         region: "region", # required
    #         keyspace_status: "KeyspaceStatus", # required
    #         tables_replication_progress: "TablesReplicationProgress"
    #       }
    #     ]
    #   }
    # @return [Types::GetKeyspaceOutput]
    def get_keyspace(params = {}, options = {})
      request = build_request(:get_keyspace, params)
      request.send_request(options)
    end

    # <p>Returns information about the table, including the table's name and current status, the keyspace name, configuration settings, and metadata.</p> <p>To read table metadata using <code>GetTable</code>, the IAM principal needs <code>Select</code> action permissions for the table and the system keyspace.</p>
    # @param [Hash, Types::GetTableInput] params
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace that the table is stored in.</p>
    # @option params [String] :table_name
    #   <p>The name of the table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #   }
    #   options = {}
    #   response = client.get_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #     resource_arn: "ARN", # required
    #     creation_timestamp: Time.now,
    #     status: "TableStatus",
    #     schema_definition: {
    #       all_columns: [ # required
    #         {
    #           name: "GenericString", # required
    #           type: "GenericString", # required
    #         }
    #       ],
    #       partition_keys: [ # required
    #         {
    #           name: "GenericString", # required
    #         }
    #       ],
    #       clustering_keys: [
    #         {
    #           name: "GenericString", # required
    #           order_by: "SortOrder", # required
    #         }
    #       ],
    #       static_columns: [
    #         {
    #           name: "GenericString", # required
    #         }
    #       ]
    #     },
    #     capacity_specification: {
    #       throughput_mode: "ThroughputMode", # required
    #       read_capacity_units: 1,
    #       write_capacity_units: 1,
    #       last_update_to_pay_per_request_timestamp: Time.now
    #     },
    #     encryption_specification: {
    #       type: "EncryptionType", # required
    #       kms_key_identifier: "kmsKeyARN"
    #     },
    #     point_in_time_recovery: {
    #       status: "PointInTimeRecoveryStatus", # required
    #       earliest_restorable_timestamp: Time.now
    #     },
    #     ttl: {
    #       status: "TimeToLiveStatus", # required
    #     },
    #     default_time_to_live: 1,
    #     comment: {
    #       message: "String", # required
    #     },
    #     client_side_timestamps: {
    #       status: "ClientSideTimestampsStatus", # required
    #     },
    #     replica_specifications: [
    #       {
    #         region: "region",
    #         status: "TableStatus",
    #         capacity_specification: {
    #           throughput_mode: "ThroughputMode", # required
    #           read_capacity_units: 1,
    #           write_capacity_units: 1,
    #           last_update_to_pay_per_request_timestamp: Time.now
    #         }
    #       }
    #     ],
    #     latest_stream_arn: "StreamArn",
    #     cdc_specification: {
    #       status: "CdcStatus", # required
    #       view_type: "ViewType"
    #     }
    #   }
    # @return [Types::GetTableOutput]
    def get_table(params = {}, options = {})
      request = build_request(:get_table, params)
      request.send_request(options)
    end

    # <p>Returns auto scaling related settings of the specified table in JSON format. If the table is a multi-Region table, the Amazon Web Services Region specific auto scaling settings of the table are included.</p> <p>Amazon Keyspaces auto scaling helps you provision throughput capacity for variable workloads efficiently by increasing and decreasing your table's read and write capacity automatically in response to application traffic. For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html">Managing throughput capacity automatically with Amazon Keyspaces auto scaling</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <important> <p> <code>GetTableAutoScalingSettings</code> can't be used as an action in an IAM policy.</p> </important> <p>To define permissions for <code>GetTableAutoScalingSettings</code>, you must allow the following two actions in the IAM policy statement's <code>Action</code> element:</p> <ul> <li> <p> <code>application-autoscaling:DescribeScalableTargets</code> </p> </li> <li> <p> <code>application-autoscaling:DescribeScalingPolicies</code> </p> </li> </ul>
    # @param [Hash, Types::GetTableAutoScalingSettingsRequest] params
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace.</p>
    # @option params [String] :table_name
    #   <p>The name of the table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #   }
    #   options = {}
    #   response = client.get_table_auto_scaling_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #     resource_arn: "ARN", # required
    #     auto_scaling_specification: {
    #       write_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           }
    #         }
    #       },
    #       read_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           }
    #         }
    #       }
    #     },
    #     replica_specifications: [
    #       {
    #         region: "region",
    #         auto_scaling_specification: {
    #           write_capacity_auto_scaling: {
    #             auto_scaling_disabled: false,
    #             minimum_units: 1,
    #             maximum_units: 1,
    #             scaling_policy: {
    #               target_tracking_scaling_policy_configuration: {
    #                 disable_scale_in: false,
    #                 scale_in_cooldown: 1,
    #                 scale_out_cooldown: 1,
    #                 target_value: 1.0, # required
    #               }
    #             }
    #           },
    #           read_capacity_auto_scaling: {
    #             auto_scaling_disabled: false,
    #             minimum_units: 1,
    #             maximum_units: 1,
    #             scaling_policy: {
    #               target_tracking_scaling_policy_configuration: {
    #                 disable_scale_in: false,
    #                 scale_in_cooldown: 1,
    #                 scale_out_cooldown: 1,
    #                 target_value: 1.0, # required
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetTableAutoScalingSettingsResponse]
    def get_table_auto_scaling_settings(params = {}, options = {})
      request = build_request(:get_table_auto_scaling_settings, params)
      request.send_request(options)
    end

    # <p> The <code>GetType</code> operation returns information about the type, for example the field definitions, the timestamp when the type was last modified, the level of nesting, the status, and details about if the type is used in other types and tables. </p> <p>To read keyspace metadata using <code>GetType</code>, the IAM principal needs <code>Select</code> action permissions for the system keyspace. To configure the required permissions, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-view">Permissions to view a UDT</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @param [Hash, Types::GetTypeRequest] params
    # @option params [String] :keyspace_name
    #   <p> The name of the keyspace that contains this type. </p>
    # @option params [String] :type_name
    #   <p>The formatted name of the type. For example, if the name of the type was created without double quotes, Amazon Keyspaces saved the name in lower-case characters. If the name was created in double quotes, you must use double quotes to specify the type name. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     keyspace_name: "KeyspaceName", # required
    #     type_name: "TypeName", # required
    #   }
    #   options = {}
    #   response = client.get_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     keyspace_name: "KeyspaceName", # required
    #     type_name: "TypeName", # required
    #     field_definitions: [
    #       {
    #         name: "GenericString", # required
    #         type: "GenericString", # required
    #       }
    #     ],
    #     last_modified_timestamp: Time.now,
    #     status: "TypeStatus",
    #     direct_referring_tables: ["TableName"],
    #     direct_parent_types: ["TypeName"],
    #     max_nesting_depth: 1,
    #     keyspace_arn: "ARN", # required
    #   }
    # @return [Types::GetTypeResponse]
    def get_type(params = {}, options = {})
      request = build_request(:get_type, params)
      request.send_request(options)
    end

    # <p>The <code>ListKeyspaces</code> operation returns a list of keyspaces.</p>
    # @param [Hash, Types::ListKeyspacesInput] params
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as argument of a subsequent API invocation.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of keyspaces to return in the output. If the total number of keyspaces available is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_keyspaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     keyspaces: [ # required
    #       {
    #         keyspace_name: "KeyspaceName", # required
    #         resource_arn: "ARN", # required
    #         replication_strategy: "rs", # required
    #         replication_regions: ["region"]
    #       }
    #     ]
    #   }
    # @return [Types::ListKeyspacesOutput]
    def list_keyspaces(params = {}, options = {})
      request = build_request(:list_keyspaces, params)
      request.send_request(options)
    end

    # <p>The <code>ListTables</code> operation returns a list of tables for a specified keyspace.</p> <p>To read keyspace metadata using <code>ListTables</code>, the IAM principal needs <code>Select</code> action permissions for the system keyspace.</p>
    # @param [Hash, Types::ListTablesInput] params
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of tables to return in the output. If the total number of tables available is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     keyspace_name: "KeyspaceName", # required
    #   }
    #   options = {}
    #   response = client.list_tables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     tables: [
    #       {
    #         keyspace_name: "KeyspaceName", # required
    #         table_name: "TableName", # required
    #         resource_arn: "ARN", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTablesOutput]
    def list_tables(params = {}, options = {})
      request = build_request(:list_tables, params)
      request.send_request(options)
    end

    # <p>Returns a list of all tags associated with the specified Amazon Keyspaces resource.</p> <p>To read keyspace metadata using <code>ListTagsForResource</code>, the IAM principal needs <code>Select</code> action permissions for the specified resource and the system keyspace.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Keyspaces resource.</p>
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as argument of a subsequent API invocation.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of tags to return in the output. If the total number of tags available is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p> The <code>ListTypes</code> operation returns a list of types for a specified keyspace. </p> <p>To read keyspace metadata using <code>ListTypes</code>, the IAM principal needs <code>Select</code> action permissions for the system keyspace. To configure the required permissions, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-view">Permissions to view a UDT</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @param [Hash, Types::ListTypesRequest] params
    # @option params [String] :next_token
    #   <p> The pagination token. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation. </p>
    # @option params [Integer] :max_results
    #   <p> The total number of types to return in the output. If the total number of types available is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation. </p>
    # @option params [String] :keyspace_name
    #   <p> The name of the keyspace that contains the listed types. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     keyspace_name: "KeyspaceName", # required
    #   }
    #   options = {}
    #   response = client.list_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     types: ["TypeName"], # required
    #   }
    # @return [Types::ListTypesResponse]
    def list_types(params = {}, options = {})
      request = build_request(:list_types, params)
      request.send_request(options)
    end

    # <p>Restores the table to the specified point in time within the <code>earliest_restorable_timestamp</code> and the current time. For more information about restore points, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_window"> Time window for PITR continuous backups</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <p>Any number of users can execute up to 4 concurrent restores (any type of restore) in a given account.</p> <p>When you restore using point in time recovery, Amazon Keyspaces restores your source table's schema and data to the state based on the selected timestamp <code>(day:hour:minute:second)</code> to a new table. The Time to Live (TTL) settings are also restored to the state based on the selected timestamp.</p> <p>In addition to the table's schema, data, and TTL settings, <code>RestoreTable</code> restores the capacity mode, auto scaling settings, encryption settings, and point-in-time recovery settings from the source table. Unlike the table's schema data and TTL settings, which are restored based on the selected timestamp, these settings are always restored based on the table's settings as of the current time or when the table was deleted.</p> <p>You can also overwrite these settings during restore:</p> <ul> <li> <p>Read/write capacity mode</p> </li> <li> <p>Provisioned throughput capacity units</p> </li> <li> <p>Auto scaling settings</p> </li> <li> <p>Point-in-time (PITR) settings</p> </li> <li> <p>Tags</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_settings">PITR restore settings</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <p>Note that the following settings are not restored, and you must configure them manually for the new table:</p> <ul> <li> <p>Identity and Access Management (IAM) policies</p> </li> <li> <p>Amazon CloudWatch metrics and alarms</p> </li> </ul>
    # @param [Hash, Types::RestoreTableInput] params
    # @option params [String] :source_keyspace_name
    #   <p>The keyspace name of the source table.</p>
    # @option params [String] :source_table_name
    #   <p>The name of the source table.</p>
    # @option params [String] :target_keyspace_name
    #   <p>The name of the target keyspace.</p>
    # @option params [String] :target_table_name
    #   <p>The name of the target table.</p>
    # @option params [Time] :restore_timestamp
    #   <p>The restore timestamp in ISO 8601 format.</p>
    # @option params [Types::CapacitySpecification] :capacity_specification_override
    #   <p>Specifies the read/write throughput capacity mode for the target table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p> </li> </ul> <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Types::EncryptionSpecification] :encryption_specification_override
    #   <p>Specifies the encryption settings for the target table. You can choose one of the following KMS key (KMS key):</p> <ul> <li> <p> <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p> </li> <li> <p> <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. This option requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p> </li> </ul> <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Types::PointInTimeRecovery] :point_in_time_recovery_override
    #   <p>Specifies the <code>pointInTimeRecovery</code> settings for the target table. The options are:</p> <ul> <li> <p> <code>status=ENABLED</code> </p> </li> <li> <p> <code>status=DISABLED</code> </p> </li> </ul> <p>If it's not specified, the default is <code>status=DISABLED</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags_override
    #   <p>A list of key-value pair tags to be attached to the restored table. </p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Types::AutoScalingSpecification] :auto_scaling_specification
    #   <p>The optional auto scaling settings for the restored table in provisioned capacity mode. Specifies if the service can manage throughput capacity of a provisioned table automatically on your behalf. Amazon Keyspaces auto scaling helps you provision throughput capacity for variable workloads efficiently by increasing and decreasing your table's read and write capacity automatically in response to application traffic.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html">Managing throughput capacity automatically with Amazon Keyspaces auto scaling</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Array<Types::ReplicaSpecification>] :replica_specifications
    #   <p>The optional Region specific settings of a multi-Regional table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_keyspace_name: "KeyspaceName", # required
    #     source_table_name: "TableName", # required
    #     target_keyspace_name: "KeyspaceName", # required
    #     target_table_name: "TableName", # required
    #     restore_timestamp: Time.now,
    #     capacity_specification_override: {
    #       throughput_mode: "ThroughputMode", # required
    #       read_capacity_units: 1,
    #       write_capacity_units: 1
    #     },
    #     encryption_specification_override: {
    #       type: "EncryptionType", # required
    #       kms_key_identifier: "kmsKeyARN"
    #     },
    #     point_in_time_recovery_override: {
    #       status: "PointInTimeRecoveryStatus", # required
    #     },
    #     tags_override: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     auto_scaling_specification: {
    #       write_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           }
    #         }
    #       },
    #       read_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           }
    #         }
    #       }
    #     },
    #     replica_specifications: [
    #       {
    #         region: "region", # required
    #         read_capacity_units: 1,
    #         read_capacity_auto_scaling: {
    #           auto_scaling_disabled: false,
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           scaling_policy: {
    #             target_tracking_scaling_policy_configuration: {
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.restore_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     restored_table_arn: "ARN", # required
    #   }
    # @return [Types::RestoreTableOutput]
    def restore_table(params = {}, options = {})
      request = build_request(:restore_table, params)
      request.send_request(options)
    end

    # <p>Associates a set of tags with a Amazon Keyspaces resource. You can then activate these user-defined tags so that they appear on the Cost Management Console for cost allocation tracking. For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <p>For IAM policy examples that show how to control access to Amazon Keyspaces resources based on tags, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-tags">Amazon Keyspaces resource access based on tags</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Keyspaces resource to which to add tags.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the Amazon Keyspaces resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the association of tags from a Amazon Keyspaces resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Keyspaces resource that the tags will be removed from. This value is an Amazon Resource Name (ARN).</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of existing tags to be removed from the Amazon Keyspaces resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p> Adds a new Amazon Web Services Region to the keyspace. You can add a new Region to a keyspace that is either a single or a multi-Region keyspace. Amazon Keyspaces is going to replicate all tables in the keyspace to the new Region. To successfully replicate all tables to the new Region, they must use client-side timestamps for conflict resolution. To enable client-side timestamps, specify <code>clientSideTimestamps.status = enabled</code> when invoking the API. For more information about client-side timestamps, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/client-side-timestamps.html">Client-side timestamps in Amazon Keyspaces</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <p>To add a Region to a keyspace using the <code>UpdateKeyspace</code> API, the IAM principal needs permissions for the following IAM actions:</p> <ul> <li> <p> <code>cassandra:Alter</code> </p> </li> <li> <p> <code>cassandra:AlterMultiRegionResource</code> </p> </li> <li> <p> <code>cassandra:Create</code> </p> </li> <li> <p> <code>cassandra:CreateMultiRegionResource</code> </p> </li> <li> <p> <code>cassandra:Select</code> </p> </li> <li> <p> <code>cassandra:SelectMultiRegionResource</code> </p> </li> <li> <p> <code>cassandra:Modify</code> </p> </li> <li> <p> <code>cassandra:ModifyMultiRegionResource</code> </p> </li> </ul> <p>If the keyspace contains a table that is configured in provisioned mode with auto scaling enabled, the following additional IAM actions need to be allowed.</p> <ul> <li> <p> <code>application-autoscaling:RegisterScalableTarget</code> </p> </li> <li> <p> <code>application-autoscaling:DeregisterScalableTarget</code> </p> </li> <li> <p> <code>application-autoscaling:DescribeScalableTargets</code> </p> </li> <li> <p> <code>application-autoscaling:PutScalingPolicy</code> </p> </li> <li> <p> <code>application-autoscaling:DescribeScalingPolicies</code> </p> </li> </ul> <p>To use the <code>UpdateKeyspace</code> API, the IAM principal also needs permissions to create a service-linked role with the following elements:</p> <ul> <li> <p> <code>iam:CreateServiceLinkedRole</code> - The <b>action</b> the principal can perform.</p> </li> <li> <p> <code>arn:aws:iam::*:role/aws-service-role/replication.cassandra.amazonaws.com/AWSServiceRoleForKeyspacesReplication</code> - The <b>resource</b> that the action can be performed on. </p> </li> <li> <p> <code>iam:AWSServiceName: replication.cassandra.amazonaws.com</code> - The only Amazon Web Services service that this role can be attached to is Amazon Keyspaces.</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/howitworks_replication_permissions_addReplica.html">Configure the IAM permissions required to add an Amazon Web Services Region to a keyspace</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @param [Hash, Types::UpdateKeyspaceRequest] params
    # @option params [String] :keyspace_name
    #   <p> The name of the keyspace. </p>
    # @option params [Types::ReplicationSpecification] :replication_specification
    #   <p> The replication specification of the keyspace includes:</p> <ul> <li> <p> <code>regionList</code> - the Amazon Web Services Regions where the keyspace is replicated in.</p> </li> <li> <p> <code>replicationStrategy</code> - the required value is <code>SINGLE_REGION</code> or <code>MULTI_REGION</code>.</p> </li> </ul>
    # @option params [Types::ClientSideTimestamps] :client_side_timestamps
    #   <p>The client-side timestamp setting of the table.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/client-side-timestamps-how-it-works.html">How it works: Amazon Keyspaces client-side timestamps</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     keyspace_name: "KeyspaceName", # required
    #     replication_specification: { # required
    #       replication_strategy: "rs", # required
    #       region_list: ["region"]
    #     },
    #     client_side_timestamps: {
    #       status: "ClientSideTimestampsStatus", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_keyspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ARN", # required
    #   }
    # @return [Types::UpdateKeyspaceResponse]
    def update_keyspace(params = {}, options = {})
      request = build_request(:update_keyspace, params)
      request.send_request(options)
    end

    # <p>Adds new columns to the table or updates one of the table's settings, for example capacity mode, auto scaling, encryption, point-in-time recovery, or ttl settings. Note that you can only update one specific table setting per update operation.</p>
    # @param [Hash, Types::UpdateTableInput] params
    # @option params [String] :keyspace_name
    #   <p>The name of the keyspace the specified table is stored in.</p>
    # @option params [String] :table_name
    #   <p>The name of the table.</p>
    # @option params [Array<Types::ColumnDefinition>] :add_columns
    #   <p>For each column to be added to the specified table:</p> <ul> <li> <p> <code>name</code> - The name of the column.</p> </li> <li> <p> <code>type</code> - An Amazon Keyspaces data type. For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types">Data types</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> </li> </ul>
    # @option params [Types::CapacitySpecification] :capacity_specification
    #   <p>Modifies the read/write throughput capacity mode for the table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> and </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p> </li> </ul> <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Types::EncryptionSpecification] :encryption_specification
    #   <p>Modifies the encryption settings of the table. You can choose one of the following KMS key (KMS key):</p> <ul> <li> <p> <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p> </li> <li> <p> <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. This option requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p> </li> </ul> <p>The default is <code>AWS_OWNED_KMS_KEY</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Types::PointInTimeRecovery] :point_in_time_recovery
    #   <p>Modifies the <code>pointInTimeRecovery</code> settings of the table. The options are:</p> <ul> <li> <p> <code>status=ENABLED</code> </p> </li> <li> <p> <code>status=DISABLED</code> </p> </li> </ul> <p>If it's not specified, the default is <code>status=DISABLED</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Types::TimeToLive] :ttl
    #   <p>Modifies Time to Live custom settings for the table. The options are:</p> <ul> <li> <p> <code>status:enabled</code> </p> </li> <li> <p> <code>status:disabled</code> </p> </li> </ul> <p>The default is <code>status:disabled</code>. After <code>ttl</code> is enabled, you can't disable it for the table.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html">Expiring data by using Amazon Keyspaces Time to Live (TTL)</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Integer] :default_time_to_live
    #   <p>The default Time to Live setting in seconds for the table.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl">Setting the default TTL value for a table</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Types::ClientSideTimestamps] :client_side_timestamps
    #   <p>Enables client-side timestamps for the table. By default, the setting is disabled. You can enable client-side timestamps with the following option:</p> <ul> <li> <p> <code>status: "enabled"</code> </p> </li> </ul> <p>Once client-side timestamps are enabled for a table, this setting cannot be disabled.</p>
    # @option params [Types::AutoScalingSpecification] :auto_scaling_specification
    #   <p>The optional auto scaling settings to update for a table in provisioned capacity mode. Specifies if the service can manage throughput capacity of a provisioned table automatically on your behalf. Amazon Keyspaces auto scaling helps you provision throughput capacity for variable workloads efficiently by increasing and decreasing your table's read and write capacity automatically in response to application traffic.</p> <p>If auto scaling is already enabled for the table, you can use <code>UpdateTable</code> to update the minimum and maximum values or the auto scaling policy settings independently.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html">Managing throughput capacity automatically with Amazon Keyspaces auto scaling</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @option params [Array<Types::ReplicaSpecification>] :replica_specifications
    #   <p>The Region specific settings of a multi-Regional table.</p>
    # @option params [Types::CdcSpecification] :cdc_specification
    #   <p>The CDC stream settings of the table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #     add_columns: [
    #       {
    #         name: "GenericString", # required
    #         type: "GenericString", # required
    #       }
    #     ],
    #     capacity_specification: {
    #       throughput_mode: "ThroughputMode", # required
    #       read_capacity_units: 1,
    #       write_capacity_units: 1
    #     },
    #     encryption_specification: {
    #       type: "EncryptionType", # required
    #       kms_key_identifier: "kmsKeyARN"
    #     },
    #     point_in_time_recovery: {
    #       status: "PointInTimeRecoveryStatus", # required
    #     },
    #     ttl: {
    #       status: "TimeToLiveStatus", # required
    #     },
    #     default_time_to_live: 1,
    #     client_side_timestamps: {
    #       status: "ClientSideTimestampsStatus", # required
    #     },
    #     auto_scaling_specification: {
    #       write_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           }
    #         }
    #       },
    #       read_capacity_auto_scaling: {
    #         auto_scaling_disabled: false,
    #         minimum_units: 1,
    #         maximum_units: 1,
    #         scaling_policy: {
    #           target_tracking_scaling_policy_configuration: {
    #             disable_scale_in: false,
    #             scale_in_cooldown: 1,
    #             scale_out_cooldown: 1,
    #             target_value: 1.0, # required
    #           }
    #         }
    #       }
    #     },
    #     replica_specifications: [
    #       {
    #         region: "region", # required
    #         read_capacity_units: 1,
    #         read_capacity_auto_scaling: {
    #           auto_scaling_disabled: false,
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           scaling_policy: {
    #             target_tracking_scaling_policy_configuration: {
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     cdc_specification: {
    #       status: "CdcStatus", # required
    #       view_type: "ViewType",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       propagate_tags: "CdcPropagateTags"
    #     }
    #   }
    #   options = {}
    #   response = client.update_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ARN", # required
    #   }
    # @return [Types::UpdateTableOutput]
    def update_table(params = {}, options = {})
      request = build_request(:update_table, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-keyspaces'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
