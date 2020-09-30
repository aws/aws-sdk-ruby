# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:timestreamwrite)

module Aws::TimestreamWrite
  # An API client for TimestreamWrite.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::TimestreamWrite::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :timestreamwrite

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (true)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a new Timestream database. If the KMS key is not specified,
    # the database will be encrypted with a Timestream managed KMS key
    # located in your account. Refer to [AWS managed KMS keys][1] for more
    # info. Service quotas apply. For more information, see [Access
    # Management][2] in the Timestream Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk
    # [2]: https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html
    #
    # @option params [required, String] :database_name
    #   The name of the Timestream database.
    #
    # @option params [String] :kms_key_id
    #   The KMS key for the database. If the KMS key is not specified, the
    #   database will be encrypted with a Timestream managed KMS key located
    #   in your account. Refer to [AWS managed KMS keys][1] for more info.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs to label the table.
    #
    # @return [Types::CreateDatabaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatabaseResponse#database #database} => Types::Database
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_database({
    #     database_name: "ResourceName", # required
    #     kms_key_id: "StringValue2048",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.database.arn #=> String
    #   resp.database.database_name #=> String
    #   resp.database.table_count #=> Integer
    #   resp.database.kms_key_id #=> String
    #   resp.database.creation_time #=> Time
    #   resp.database.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/CreateDatabase AWS API Documentation
    #
    # @overload create_database(params = {})
    # @param [Hash] params ({})
    def create_database(params = {}, options = {})
      req = build_request(:create_database, params)
      req.send_request(options)
    end

    # The CreateTable operation adds a new table to an existing database in
    # your account. In an AWS account, table names must be at least unique
    # within each Region if they are in the same database. You may have
    # identical table names in the same Region if the tables are in seperate
    # databases. While creating the table, you must specify the table name,
    # database name, and the retention properties. Service quotas apply. For
    # more information, see [Access Management][1] in the Timestream
    # Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html
    #
    # @option params [required, String] :database_name
    #   The name of the Timestream database.
    #
    # @option params [required, String] :table_name
    #   The name of the Timestream table.
    #
    # @option params [Types::RetentionProperties] :retention_properties
    #   The duration for which your time series data must be stored in the
    #   memory store and the magnetic store.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs to label the table.
    #
    # @return [Types::CreateTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTableResponse#table #table} => Types::Table
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_table({
    #     database_name: "ResourceName", # required
    #     table_name: "ResourceName", # required
    #     retention_properties: {
    #       memory_store_retention_period_in_hours: 1, # required
    #       magnetic_store_retention_period_in_days: 1, # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.table.arn #=> String
    #   resp.table.table_name #=> String
    #   resp.table.database_name #=> String
    #   resp.table.table_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.table.retention_properties.memory_store_retention_period_in_hours #=> Integer
    #   resp.table.retention_properties.magnetic_store_retention_period_in_days #=> Integer
    #   resp.table.creation_time #=> Time
    #   resp.table.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/CreateTable AWS API Documentation
    #
    # @overload create_table(params = {})
    # @param [Hash] params ({})
    def create_table(params = {}, options = {})
      req = build_request(:create_table, params)
      req.send_request(options)
    end

    # Deletes a given Timestream database. *This is an irreversible
    # operation. After a database is deleted, the time series data from its
    # tables cannot be recovered.*
    #
    # All tables in the database must be deleted first, or a
    # ValidationException error will be thrown.
    #
    # @option params [required, String] :database_name
    #   The name of the Timestream database to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_database({
    #     database_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DeleteDatabase AWS API Documentation
    #
    # @overload delete_database(params = {})
    # @param [Hash] params ({})
    def delete_database(params = {}, options = {})
      req = build_request(:delete_database, params)
      req.send_request(options)
    end

    # Deletes a given Timestream table. This is an irreversible operation.
    # After a Timestream database table is deleted, the time series data
    # stored in the table cannot be recovered.
    #
    # @option params [required, String] :database_name
    #   The name of the database where the Timestream database is to be
    #   deleted.
    #
    # @option params [required, String] :table_name
    #   The name of the Timestream table to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table({
    #     database_name: "ResourceName", # required
    #     table_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DeleteTable AWS API Documentation
    #
    # @overload delete_table(params = {})
    # @param [Hash] params ({})
    def delete_table(params = {}, options = {})
      req = build_request(:delete_table, params)
      req.send_request(options)
    end

    # Returns information about the database, including the database name,
    # time that the database was created, and the total number of tables
    # found within the database. Service quotas apply. For more information,
    # see [Access Management][1] in the Timestream Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html
    #
    # @option params [required, String] :database_name
    #   The name of the Timestream database.
    #
    # @return [Types::DescribeDatabaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatabaseResponse#database #database} => Types::Database
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_database({
    #     database_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.database.arn #=> String
    #   resp.database.database_name #=> String
    #   resp.database.table_count #=> Integer
    #   resp.database.kms_key_id #=> String
    #   resp.database.creation_time #=> Time
    #   resp.database.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DescribeDatabase AWS API Documentation
    #
    # @overload describe_database(params = {})
    # @param [Hash] params ({})
    def describe_database(params = {}, options = {})
      req = build_request(:describe_database, params)
      req.send_request(options)
    end

    # DescribeEndpoints returns a list of available endpoints to make
    # Timestream API calls against. This API is available through both Write
    # and Query.
    #
    # Because Timestream’s SDKs are designed to transparently work with the
    # service’s architecture, including the management and mapping of the
    # service endpoints, *it is not recommended that you use this API
    # unless*\:
    #
    # * Your application uses a programming language that does not yet have
    #   SDK support
    #
    # * You require better control over the client-side implementation
    #
    # For detailed information on how to use DescribeEndpoints, see [The
    # Endpoint Discovery Pattern and REST APIs][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/Using-API.endpoint-discovery.html
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DescribeEndpoints AWS API Documentation
    #
    # @overload describe_endpoints(params = {})
    # @param [Hash] params ({})
    def describe_endpoints(params = {}, options = {})
      req = build_request(:describe_endpoints, params)
      req.send_request(options)
    end

    # Returns information about the table, including the table name,
    # database name, retention duration of the memory store and the magnetic
    # store. Service quotas apply. For more information, see [Access
    # Management][1] in the Timestream Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html
    #
    # @option params [required, String] :database_name
    #   The name of the Timestream database.
    #
    # @option params [required, String] :table_name
    #   The name of the Timestream table.
    #
    # @return [Types::DescribeTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTableResponse#table #table} => Types::Table
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table({
    #     database_name: "ResourceName", # required
    #     table_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table.arn #=> String
    #   resp.table.table_name #=> String
    #   resp.table.database_name #=> String
    #   resp.table.table_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.table.retention_properties.memory_store_retention_period_in_hours #=> Integer
    #   resp.table.retention_properties.magnetic_store_retention_period_in_days #=> Integer
    #   resp.table.creation_time #=> Time
    #   resp.table.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/DescribeTable AWS API Documentation
    #
    # @overload describe_table(params = {})
    # @param [Hash] params ({})
    def describe_table(params = {}, options = {})
      req = build_request(:describe_table, params)
      req.send_request(options)
    end

    # Returns a list of your Timestream databases. Service quotas apply. For
    # more information, see [Access Management][1] in the Timestream
    # Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html
    #
    # @option params [String] :next_token
    #   The pagination token. To resume pagination, provide the NextToken
    #   value as argument of a subsequent API invocation.
    #
    # @option params [Integer] :max_results
    #   The total number of items to return in the output. If the total number
    #   of items available is more than the value specified, a NextToken is
    #   provided in the output. To resume pagination, provide the NextToken
    #   value as argument of a subsequent API invocation.
    #
    # @return [Types::ListDatabasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatabasesResponse#databases #databases} => Array&lt;Types::Database&gt;
    #   * {Types::ListDatabasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_databases({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.databases #=> Array
    #   resp.databases[0].arn #=> String
    #   resp.databases[0].database_name #=> String
    #   resp.databases[0].table_count #=> Integer
    #   resp.databases[0].kms_key_id #=> String
    #   resp.databases[0].creation_time #=> Time
    #   resp.databases[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ListDatabases AWS API Documentation
    #
    # @overload list_databases(params = {})
    # @param [Hash] params ({})
    def list_databases(params = {}, options = {})
      req = build_request(:list_databases, params)
      req.send_request(options)
    end

    # A list of tables, along with the name, status and retention properties
    # of each table.
    #
    # @option params [String] :database_name
    #   The name of the Timestream database.
    #
    # @option params [String] :next_token
    #   The pagination token. To resume pagination, provide the NextToken
    #   value as argument of a subsequent API invocation.
    #
    # @option params [Integer] :max_results
    #   The total number of items to return in the output. If the total number
    #   of items available is more than the value specified, a NextToken is
    #   provided in the output. To resume pagination, provide the NextToken
    #   value as argument of a subsequent API invocation.
    #
    # @return [Types::ListTablesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTablesResponse#tables #tables} => Array&lt;Types::Table&gt;
    #   * {Types::ListTablesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables({
    #     database_name: "ResourceName",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tables #=> Array
    #   resp.tables[0].arn #=> String
    #   resp.tables[0].table_name #=> String
    #   resp.tables[0].database_name #=> String
    #   resp.tables[0].table_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.tables[0].retention_properties.memory_store_retention_period_in_hours #=> Integer
    #   resp.tables[0].retention_properties.magnetic_store_retention_period_in_days #=> Integer
    #   resp.tables[0].creation_time #=> Time
    #   resp.tables[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ListTables AWS API Documentation
    #
    # @overload list_tables(params = {})
    # @param [Hash] params ({})
    def list_tables(params = {}, options = {})
      req = build_request(:list_tables, params)
      req.send_request(options)
    end

    # List all tags on a Timestream resource.
    #
    # @option params [required, String] :resource_arn
    #   The Timestream resource with tags to be listed. This value is an
    #   Amazon Resource Name (ARN).
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Associate a set of tags with a Timestream resource. You can then
    # activate these user-defined tags so that they appear on the Billing
    # and Cost Management console for cost allocation tracking.
    #
    # @option params [required, String] :resource_arn
    #   Identifies the Timestream resource to which tags should be added. This
    #   value is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to be assigned to the Timestream resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the association of tags from a Timestream resource.
    #
    # @option params [required, String] :resource_arn
    #   The Timestream resource that the tags will be removed from. This value
    #   is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tags keys. Existing tags of the resource whose keys are
    #   members of this list will be removed from the Timestream resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies the KMS key for an existing database. While updating the
    # database, you must specify the database name and the identifier of the
    # new KMS key to be used (`KmsKeyId`). If there are any concurrent
    # `UpdateDatabase` requests, first writer wins.
    #
    # @option params [required, String] :database_name
    #   The name of the database.
    #
    # @option params [required, String] :kms_key_id
    #   The identifier of the new KMS key (`KmsKeyId`) to be used to encrypt
    #   the data stored in the database. If the `KmsKeyId` currently
    #   registered with the database is the same as the `KmsKeyId` in the
    #   request, there will not be any update.
    #
    #   You can specify the `KmsKeyId` using any of the following:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-1:111122223333:alias/ExampleAlias`
    #
    # @return [Types::UpdateDatabaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDatabaseResponse#database #database} => Types::Database
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_database({
    #     database_name: "ResourceName", # required
    #     kms_key_id: "StringValue2048", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.database.arn #=> String
    #   resp.database.database_name #=> String
    #   resp.database.table_count #=> Integer
    #   resp.database.kms_key_id #=> String
    #   resp.database.creation_time #=> Time
    #   resp.database.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/UpdateDatabase AWS API Documentation
    #
    # @overload update_database(params = {})
    # @param [Hash] params ({})
    def update_database(params = {}, options = {})
      req = build_request(:update_database, params)
      req.send_request(options)
    end

    # Modifies the retention duration of the memory store and magnetic store
    # for your Timestream table. Note that the change in retention duration
    # takes effect immediately. For example, if the retention period of the
    # memory store was initially set to 2 hours and then changed to 24
    # hours, the memory store will be capable of holding 24 hours of data,
    # but will be populated with 24 hours of data 22 hours after this change
    # was made. Timestream does not retrieve data from the magnetic store to
    # populate the memory store.
    #
    # Service quotas apply. For more information, see [Access Management][1]
    # in the Timestream Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html
    #
    # @option params [required, String] :database_name
    #   The name of the Timestream database.
    #
    # @option params [required, String] :table_name
    #   The name of the Timesream table.
    #
    # @option params [required, Types::RetentionProperties] :retention_properties
    #   The retention duration of the memory store and the magnetic store.
    #
    # @return [Types::UpdateTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTableResponse#table #table} => Types::Table
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table({
    #     database_name: "ResourceName", # required
    #     table_name: "ResourceName", # required
    #     retention_properties: { # required
    #       memory_store_retention_period_in_hours: 1, # required
    #       magnetic_store_retention_period_in_days: 1, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.table.arn #=> String
    #   resp.table.table_name #=> String
    #   resp.table.database_name #=> String
    #   resp.table.table_status #=> String, one of "ACTIVE", "DELETING"
    #   resp.table.retention_properties.memory_store_retention_period_in_hours #=> Integer
    #   resp.table.retention_properties.magnetic_store_retention_period_in_days #=> Integer
    #   resp.table.creation_time #=> Time
    #   resp.table.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/UpdateTable AWS API Documentation
    #
    # @overload update_table(params = {})
    # @param [Hash] params ({})
    def update_table(params = {}, options = {})
      req = build_request(:update_table, params)
      req.send_request(options)
    end

    # The WriteRecords operation enables you to write your time series data
    # into Timestream. You can specify a single data point or a batch of
    # data points to be inserted into the system. Timestream offers you with
    # a flexible schema that auto detects the column names and data types
    # for your Timestream tables based on the dimension names and data types
    # of the data points you specify when invoking writes into the database.
    # Timestream support eventual consistency read semantics. This means
    # that when you query data immediately after writing a batch of data
    # into Timestream, the query results might not reflect the results of a
    # recently completed write operation. The results may also include some
    # stale data. If you repeat the query request after a short time, the
    # results should return the latest data. Service quotas apply. For more
    # information, see [Access Management][1] in the Timestream Developer
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html
    #
    # @option params [required, String] :database_name
    #   The name of the Timestream database.
    #
    # @option params [required, String] :table_name
    #   The name of the Timesream table.
    #
    # @option params [Types::Record] :common_attributes
    #   A record containing the common measure and dimension attributes shared
    #   across all the records in the request. The measure and dimension
    #   attributes specified in here will be merged with the measure and
    #   dimension attributes in the records object when the data is written
    #   into Timestream.
    #
    # @option params [required, Array<Types::Record>] :records
    #   An array of records containing the unique dimension and measure
    #   attributes for each time series data point.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.write_records({
    #     database_name: "ResourceName", # required
    #     table_name: "ResourceName", # required
    #     common_attributes: {
    #       dimensions: [
    #         {
    #           name: "StringValue256", # required
    #           value: "StringValue2048", # required
    #           dimension_value_type: "VARCHAR", # accepts VARCHAR
    #         },
    #       ],
    #       measure_name: "StringValue256",
    #       measure_value: "StringValue2048",
    #       measure_value_type: "DOUBLE", # accepts DOUBLE, BIGINT, VARCHAR, BOOLEAN
    #       time: "StringValue256",
    #       time_unit: "MILLISECONDS", # accepts MILLISECONDS, SECONDS, MICROSECONDS, NANOSECONDS
    #     },
    #     records: [ # required
    #       {
    #         dimensions: [
    #           {
    #             name: "StringValue256", # required
    #             value: "StringValue2048", # required
    #             dimension_value_type: "VARCHAR", # accepts VARCHAR
    #           },
    #         ],
    #         measure_name: "StringValue256",
    #         measure_value: "StringValue2048",
    #         measure_value_type: "DOUBLE", # accepts DOUBLE, BIGINT, VARCHAR, BOOLEAN
    #         time: "StringValue256",
    #         time_unit: "MILLISECONDS", # accepts MILLISECONDS, SECONDS, MICROSECONDS, NANOSECONDS
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-write-2018-11-01/WriteRecords AWS API Documentation
    #
    # @overload write_records(params = {})
    # @param [Hash] params ({})
    def write_records(params = {}, options = {})
      req = build_request(:write_records, params)
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
      context[:gem_name] = 'aws-sdk-timestreamwrite'
      context[:gem_version] = '1.1.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
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
