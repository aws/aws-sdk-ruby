# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:keyspaces)

module Aws::Keyspaces
  # An API client for Keyspaces.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Keyspaces::Client.new(
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

    @identifier = :keyspaces

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
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::Keyspaces::Plugins::Endpoints)

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
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
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
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
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
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
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
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::Keyspaces::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Keyspaces::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
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
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
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

    # The `CreateKeyspace` operation adds a new keyspace to your account. In
    # an Amazon Web Services account, keyspace names must be unique within
    # each Region.
    #
    # `CreateKeyspace` is an asynchronous operation. You can monitor the
    # creation status of the new keyspace by using the `GetKeyspace`
    # operation.
    #
    # For more information, see [Creating keyspaces][1] in the *Amazon
    # Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/working-with-keyspaces.html#keyspaces-create
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace to be created.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pair tags to be attached to the keyspace.
    #
    #   For more information, see [Adding tags and labels to Amazon Keyspaces
    #   resources][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
    #
    # @option params [Types::ReplicationSpecification] :replication_specification
    #   The replication specification of the keyspace includes:
    #
    #   * `replicationStrategy` - the required value is `SINGLE_REGION` or
    #     `MULTI_REGION`.
    #
    #   * `regionList` - if the `replicationStrategy` is `MULTI_REGION`, the
    #     `regionList` requires the current Region and at least one additional
    #     Amazon Web Services Region where the keyspace is going to be
    #     replicated in. The maximum number of supported replication Regions
    #     including the current Region is six.
    #
    # @return [Types::CreateKeyspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKeyspaceResponse#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_keyspace({
    #     keyspace_name: "KeyspaceName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     replication_specification: {
    #       replication_strategy: "SINGLE_REGION", # required, accepts SINGLE_REGION, MULTI_REGION
    #       region_list: ["region"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/CreateKeyspace AWS API Documentation
    #
    # @overload create_keyspace(params = {})
    # @param [Hash] params ({})
    def create_keyspace(params = {}, options = {})
      req = build_request(:create_keyspace, params)
      req.send_request(options)
    end

    # The `CreateTable` operation adds a new table to the specified
    # keyspace. Within a keyspace, table names must be unique.
    #
    # `CreateTable` is an asynchronous operation. When the request is
    # received, the status of the table is set to `CREATING`. You can
    # monitor the creation status of the new table by using the `GetTable`
    # operation, which returns the current `status` of the table. You can
    # start using a table when the status is `ACTIVE`.
    #
    # For more information, see [Creating tables][1] in the *Amazon
    # Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/working-with-tables.html#tables-create
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace that the table is going to be created in.
    #
    # @option params [required, String] :table_name
    #   The name of the table.
    #
    # @option params [required, Types::SchemaDefinition] :schema_definition
    #   The `schemaDefinition` consists of the following parameters.
    #
    #   For each column to be created:
    #
    #   * `name` - The name of the column.
    #
    #   * `type` - An Amazon Keyspaces data type. For more information, see
    #     [Data types][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #   The primary key of the table consists of the following columns:
    #
    #   * `partitionKeys` - The partition key can be a single column, or it
    #     can be a compound value composed of two or more columns. The
    #     partition key portion of the primary key is required and determines
    #     how Amazon Keyspaces stores your data.
    #
    #   * `name` - The name of each partition key column.
    #
    #   * `clusteringKeys` - The optional clustering column portion of your
    #     primary key determines how the data is clustered and sorted within
    #     each partition.
    #
    #   * `name` - The name of the clustering column.
    #
    #   * `orderBy` - Sets the ascendant (`ASC`) or descendant (`DESC`) order
    #     modifier.
    #
    #     To define a column as static use `staticColumns` - Static columns
    #     store values that are shared by all rows in the same partition:
    #
    #   * `name` - The name of the column.
    #
    #   * `type` - An Amazon Keyspaces data type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types
    #
    # @option params [Types::Comment] :comment
    #   This parameter allows to enter a description of the table.
    #
    # @option params [Types::CapacitySpecification] :capacity_specification
    #   Specifies the read/write throughput capacity mode for the table. The
    #   options are:
    #
    #   * `throughputMode:PAY_PER_REQUEST` and
    #
    #   * `throughputMode:PROVISIONED` - Provisioned capacity mode requires
    #     `readCapacityUnits` and `writeCapacityUnits` as input.
    #
    #   The default is `throughput_mode:PAY_PER_REQUEST`.
    #
    #   For more information, see [Read/write capacity modes][1] in the
    #   *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html
    #
    # @option params [Types::EncryptionSpecification] :encryption_specification
    #   Specifies how the encryption key for encryption at rest is managed for
    #   the table. You can choose one of the following KMS key (KMS key):
    #
    #   * `type:AWS_OWNED_KMS_KEY` - This key is owned by Amazon Keyspaces.
    #
    #   * `type:CUSTOMER_MANAGED_KMS_KEY` - This key is stored in your account
    #     and is created, owned, and managed by you. This option requires the
    #     `kms_key_identifier` of the KMS key in Amazon Resource Name (ARN)
    #     format as input.
    #
    #   The default is `type:AWS_OWNED_KMS_KEY`.
    #
    #   For more information, see [Encryption at rest][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html
    #
    # @option params [Types::PointInTimeRecovery] :point_in_time_recovery
    #   Specifies if `pointInTimeRecovery` is enabled or disabled for the
    #   table. The options are:
    #
    #   * `status=ENABLED`
    #
    #   * `status=DISABLED`
    #
    #   If it's not specified, the default is `status=DISABLED`.
    #
    #   For more information, see [Point-in-time recovery][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html
    #
    # @option params [Types::TimeToLive] :ttl
    #   Enables Time to Live custom settings for the table. The options are:
    #
    #   * `status:enabled`
    #
    #   * `status:disabled`
    #
    #   The default is `status:disabled`. After `ttl` is enabled, you can't
    #   disable it for the table.
    #
    #   For more information, see [Expiring data by using Amazon Keyspaces
    #   Time to Live (TTL)][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html
    #
    # @option params [Integer] :default_time_to_live
    #   The default Time to Live setting in seconds for the table.
    #
    #   For more information, see [Setting the default TTL value for a
    #   table][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pair tags to be attached to the resource.
    #
    #   For more information, see [Adding tags and labels to Amazon Keyspaces
    #   resources][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
    #
    # @option params [Types::ClientSideTimestamps] :client_side_timestamps
    #   Enables client-side timestamps for the table. By default, the setting
    #   is disabled. You can enable client-side timestamps with the following
    #   option:
    #
    #   * `status: "enabled"`
    #
    #   ^
    #
    #   Once client-side timestamps are enabled for a table, this setting
    #   cannot be disabled.
    #
    # @return [Types::CreateTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTableResponse#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_table({
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #     schema_definition: { # required
    #       all_columns: [ # required
    #         {
    #           name: "GenericString", # required
    #           type: "GenericString", # required
    #         },
    #       ],
    #       partition_keys: [ # required
    #         {
    #           name: "GenericString", # required
    #         },
    #       ],
    #       clustering_keys: [
    #         {
    #           name: "GenericString", # required
    #           order_by: "ASC", # required, accepts ASC, DESC
    #         },
    #       ],
    #       static_columns: [
    #         {
    #           name: "GenericString", # required
    #         },
    #       ],
    #     },
    #     comment: {
    #       message: "String", # required
    #     },
    #     capacity_specification: {
    #       throughput_mode: "PAY_PER_REQUEST", # required, accepts PAY_PER_REQUEST, PROVISIONED
    #       read_capacity_units: 1,
    #       write_capacity_units: 1,
    #     },
    #     encryption_specification: {
    #       type: "CUSTOMER_MANAGED_KMS_KEY", # required, accepts CUSTOMER_MANAGED_KMS_KEY, AWS_OWNED_KMS_KEY
    #       kms_key_identifier: "kmsKeyARN",
    #     },
    #     point_in_time_recovery: {
    #       status: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     ttl: {
    #       status: "ENABLED", # required, accepts ENABLED
    #     },
    #     default_time_to_live: 1,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_side_timestamps: {
    #       status: "ENABLED", # required, accepts ENABLED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/CreateTable AWS API Documentation
    #
    # @overload create_table(params = {})
    # @param [Hash] params ({})
    def create_table(params = {}, options = {})
      req = build_request(:create_table, params)
      req.send_request(options)
    end

    # The `DeleteKeyspace` operation deletes a keyspace and all of its
    # tables.
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_keyspace({
    #     keyspace_name: "KeyspaceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/DeleteKeyspace AWS API Documentation
    #
    # @overload delete_keyspace(params = {})
    # @param [Hash] params ({})
    def delete_keyspace(params = {}, options = {})
      req = build_request(:delete_keyspace, params)
      req.send_request(options)
    end

    # The `DeleteTable` operation deletes a table and all of its data. After
    # a `DeleteTable` request is received, the specified table is in the
    # `DELETING` state until Amazon Keyspaces completes the deletion. If the
    # table is in the `ACTIVE` state, you can delete it. If a table is
    # either in the `CREATING` or `UPDATING` states, then Amazon Keyspaces
    # returns a `ResourceInUseException`. If the specified table does not
    # exist, Amazon Keyspaces returns a `ResourceNotFoundException`. If the
    # table is already in the `DELETING` state, no error is returned.
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace of the to be deleted table.
    #
    # @option params [required, String] :table_name
    #   The name of the table to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table({
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/DeleteTable AWS API Documentation
    #
    # @overload delete_table(params = {})
    # @param [Hash] params ({})
    def delete_table(params = {}, options = {})
      req = build_request(:delete_table, params)
      req.send_request(options)
    end

    # Returns the name and the Amazon Resource Name (ARN) of the specified
    # table.
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace.
    #
    # @return [Types::GetKeyspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyspaceResponse#keyspace_name #keyspace_name} => String
    #   * {Types::GetKeyspaceResponse#resource_arn #resource_arn} => String
    #   * {Types::GetKeyspaceResponse#replication_strategy #replication_strategy} => String
    #   * {Types::GetKeyspaceResponse#replication_regions #replication_regions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_keyspace({
    #     keyspace_name: "KeyspaceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.keyspace_name #=> String
    #   resp.resource_arn #=> String
    #   resp.replication_strategy #=> String, one of "SINGLE_REGION", "MULTI_REGION"
    #   resp.replication_regions #=> Array
    #   resp.replication_regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/GetKeyspace AWS API Documentation
    #
    # @overload get_keyspace(params = {})
    # @param [Hash] params ({})
    def get_keyspace(params = {}, options = {})
      req = build_request(:get_keyspace, params)
      req.send_request(options)
    end

    # Returns information about the table, including the table's name and
    # current status, the keyspace name, configuration settings, and
    # metadata.
    #
    # To read table metadata using `GetTable`, `Select` action permissions
    # for the table and system tables are required to complete the
    # operation.
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace that the table is stored in.
    #
    # @option params [required, String] :table_name
    #   The name of the table.
    #
    # @return [Types::GetTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableResponse#keyspace_name #keyspace_name} => String
    #   * {Types::GetTableResponse#table_name #table_name} => String
    #   * {Types::GetTableResponse#resource_arn #resource_arn} => String
    #   * {Types::GetTableResponse#creation_timestamp #creation_timestamp} => Time
    #   * {Types::GetTableResponse#status #status} => String
    #   * {Types::GetTableResponse#schema_definition #schema_definition} => Types::SchemaDefinition
    #   * {Types::GetTableResponse#capacity_specification #capacity_specification} => Types::CapacitySpecificationSummary
    #   * {Types::GetTableResponse#encryption_specification #encryption_specification} => Types::EncryptionSpecification
    #   * {Types::GetTableResponse#point_in_time_recovery #point_in_time_recovery} => Types::PointInTimeRecoverySummary
    #   * {Types::GetTableResponse#ttl #ttl} => Types::TimeToLive
    #   * {Types::GetTableResponse#default_time_to_live #default_time_to_live} => Integer
    #   * {Types::GetTableResponse#comment #comment} => Types::Comment
    #   * {Types::GetTableResponse#client_side_timestamps #client_side_timestamps} => Types::ClientSideTimestamps
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table({
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.keyspace_name #=> String
    #   resp.table_name #=> String
    #   resp.resource_arn #=> String
    #   resp.creation_timestamp #=> Time
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "DELETED", "RESTORING", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"
    #   resp.schema_definition.all_columns #=> Array
    #   resp.schema_definition.all_columns[0].name #=> String
    #   resp.schema_definition.all_columns[0].type #=> String
    #   resp.schema_definition.partition_keys #=> Array
    #   resp.schema_definition.partition_keys[0].name #=> String
    #   resp.schema_definition.clustering_keys #=> Array
    #   resp.schema_definition.clustering_keys[0].name #=> String
    #   resp.schema_definition.clustering_keys[0].order_by #=> String, one of "ASC", "DESC"
    #   resp.schema_definition.static_columns #=> Array
    #   resp.schema_definition.static_columns[0].name #=> String
    #   resp.capacity_specification.throughput_mode #=> String, one of "PAY_PER_REQUEST", "PROVISIONED"
    #   resp.capacity_specification.read_capacity_units #=> Integer
    #   resp.capacity_specification.write_capacity_units #=> Integer
    #   resp.capacity_specification.last_update_to_pay_per_request_timestamp #=> Time
    #   resp.encryption_specification.type #=> String, one of "CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"
    #   resp.encryption_specification.kms_key_identifier #=> String
    #   resp.point_in_time_recovery.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.point_in_time_recovery.earliest_restorable_timestamp #=> Time
    #   resp.ttl.status #=> String, one of "ENABLED"
    #   resp.default_time_to_live #=> Integer
    #   resp.comment.message #=> String
    #   resp.client_side_timestamps.status #=> String, one of "ENABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/GetTable AWS API Documentation
    #
    # @overload get_table(params = {})
    # @param [Hash] params ({})
    def get_table(params = {}, options = {})
      req = build_request(:get_table, params)
      req.send_request(options)
    end

    # Returns a list of keyspaces.
    #
    # @option params [String] :next_token
    #   The pagination token. To resume pagination, provide the `NextToken`
    #   value as argument of a subsequent API invocation.
    #
    # @option params [Integer] :max_results
    #   The total number of keyspaces to return in the output. If the total
    #   number of keyspaces available is more than the value specified, a
    #   `NextToken` is provided in the output. To resume pagination, provide
    #   the `NextToken` value as an argument of a subsequent API invocation.
    #
    # @return [Types::ListKeyspacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKeyspacesResponse#next_token #next_token} => String
    #   * {Types::ListKeyspacesResponse#keyspaces #keyspaces} => Array&lt;Types::KeyspaceSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_keyspaces({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.keyspaces #=> Array
    #   resp.keyspaces[0].keyspace_name #=> String
    #   resp.keyspaces[0].resource_arn #=> String
    #   resp.keyspaces[0].replication_strategy #=> String, one of "SINGLE_REGION", "MULTI_REGION"
    #   resp.keyspaces[0].replication_regions #=> Array
    #   resp.keyspaces[0].replication_regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ListKeyspaces AWS API Documentation
    #
    # @overload list_keyspaces(params = {})
    # @param [Hash] params ({})
    def list_keyspaces(params = {}, options = {})
      req = build_request(:list_keyspaces, params)
      req.send_request(options)
    end

    # Returns a list of tables for a specified keyspace.
    #
    # @option params [String] :next_token
    #   The pagination token. To resume pagination, provide the `NextToken`
    #   value as an argument of a subsequent API invocation.
    #
    # @option params [Integer] :max_results
    #   The total number of tables to return in the output. If the total
    #   number of tables available is more than the value specified, a
    #   `NextToken` is provided in the output. To resume pagination, provide
    #   the `NextToken` value as an argument of a subsequent API invocation.
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace.
    #
    # @return [Types::ListTablesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTablesResponse#next_token #next_token} => String
    #   * {Types::ListTablesResponse#tables #tables} => Array&lt;Types::TableSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     keyspace_name: "KeyspaceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tables #=> Array
    #   resp.tables[0].keyspace_name #=> String
    #   resp.tables[0].table_name #=> String
    #   resp.tables[0].resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ListTables AWS API Documentation
    #
    # @overload list_tables(params = {})
    # @param [Hash] params ({})
    def list_tables(params = {}, options = {})
      req = build_request(:list_tables, params)
      req.send_request(options)
    end

    # Returns a list of all tags associated with the specified Amazon
    # Keyspaces resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Keyspaces resource.
    #
    # @option params [String] :next_token
    #   The pagination token. To resume pagination, provide the `NextToken`
    #   value as argument of a subsequent API invocation.
    #
    # @option params [Integer] :max_results
    #   The total number of tags to return in the output. If the total number
    #   of tags available is more than the value specified, a `NextToken` is
    #   provided in the output. To resume pagination, provide the `NextToken`
    #   value as an argument of a subsequent API invocation.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ARN", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Restores the specified table to the specified point in time within the
    # `earliest_restorable_timestamp` and the current time. For more
    # information about restore points, see [ Time window for PITR
    # continuous backups][1] in the *Amazon Keyspaces Developer Guide*.
    #
    # Any number of users can execute up to 4 concurrent restores (any type
    # of restore) in a given account.
    #
    # When you restore using point in time recovery, Amazon Keyspaces
    # restores your source table's schema and data to the state based on
    # the selected timestamp `(day:hour:minute:second)` to a new table. The
    # Time to Live (TTL) settings are also restored to the state based on
    # the selected timestamp.
    #
    # In addition to the table's schema, data, and TTL settings,
    # `RestoreTable` restores the capacity mode, encryption, and
    # point-in-time recovery settings from the source table. Unlike the
    # table's schema data and TTL settings, which are restored based on the
    # selected timestamp, these settings are always restored based on the
    # table's settings as of the current time or when the table was
    # deleted.
    #
    # You can also overwrite these settings during restore:
    #
    # * Read/write capacity mode
    #
    # * Provisioned throughput capacity settings
    #
    # * Point-in-time (PITR) settings
    #
    # * Tags
    #
    # For more information, see [PITR restore settings][2] in the *Amazon
    # Keyspaces Developer Guide*.
    #
    # Note that the following settings are not restored, and you must
    # configure them manually for the new table:
    #
    # * Automatic scaling policies (for tables that use provisioned capacity
    #   mode)
    #
    # * Identity and Access Management (IAM) policies
    #
    # * Amazon CloudWatch metrics and alarms
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_window
    # [2]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_settings
    #
    # @option params [required, String] :source_keyspace_name
    #   The keyspace name of the source table.
    #
    # @option params [required, String] :source_table_name
    #   The name of the source table.
    #
    # @option params [required, String] :target_keyspace_name
    #   The name of the target keyspace.
    #
    # @option params [required, String] :target_table_name
    #   The name of the target table.
    #
    # @option params [Time,DateTime,Date,Integer,String] :restore_timestamp
    #   The restore timestamp in ISO 8601 format.
    #
    # @option params [Types::CapacitySpecification] :capacity_specification_override
    #   Specifies the read/write throughput capacity mode for the target
    #   table. The options are:
    #
    #   * `throughputMode:PAY_PER_REQUEST`
    #
    #   * `throughputMode:PROVISIONED` - Provisioned capacity mode requires
    #     `readCapacityUnits` and `writeCapacityUnits` as input.
    #
    #   The default is `throughput_mode:PAY_PER_REQUEST`.
    #
    #   For more information, see [Read/write capacity modes][1] in the
    #   *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html
    #
    # @option params [Types::EncryptionSpecification] :encryption_specification_override
    #   Specifies the encryption settings for the target table. You can choose
    #   one of the following KMS key (KMS key):
    #
    #   * `type:AWS_OWNED_KMS_KEY` - This key is owned by Amazon Keyspaces.
    #
    #   * `type:CUSTOMER_MANAGED_KMS_KEY` - This key is stored in your account
    #     and is created, owned, and managed by you. This option requires the
    #     `kms_key_identifier` of the KMS key in Amazon Resource Name (ARN)
    #     format as input.
    #
    #   The default is `type:AWS_OWNED_KMS_KEY`.
    #
    #   For more information, see [Encryption at rest][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html
    #
    # @option params [Types::PointInTimeRecovery] :point_in_time_recovery_override
    #   Specifies the `pointInTimeRecovery` settings for the target table. The
    #   options are:
    #
    #   * `status=ENABLED`
    #
    #   * `status=DISABLED`
    #
    #   If it's not specified, the default is `status=DISABLED`.
    #
    #   For more information, see [Point-in-time recovery][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html
    #
    # @option params [Array<Types::Tag>] :tags_override
    #   A list of key-value pair tags to be attached to the restored table.
    #
    #   For more information, see [Adding tags and labels to Amazon Keyspaces
    #   resources][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
    #
    # @return [Types::RestoreTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreTableResponse#restored_table_arn #restored_table_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_table({
    #     source_keyspace_name: "KeyspaceName", # required
    #     source_table_name: "TableName", # required
    #     target_keyspace_name: "KeyspaceName", # required
    #     target_table_name: "TableName", # required
    #     restore_timestamp: Time.now,
    #     capacity_specification_override: {
    #       throughput_mode: "PAY_PER_REQUEST", # required, accepts PAY_PER_REQUEST, PROVISIONED
    #       read_capacity_units: 1,
    #       write_capacity_units: 1,
    #     },
    #     encryption_specification_override: {
    #       type: "CUSTOMER_MANAGED_KMS_KEY", # required, accepts CUSTOMER_MANAGED_KMS_KEY, AWS_OWNED_KMS_KEY
    #       kms_key_identifier: "kmsKeyARN",
    #     },
    #     point_in_time_recovery_override: {
    #       status: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     tags_override: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.restored_table_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/RestoreTable AWS API Documentation
    #
    # @overload restore_table(params = {})
    # @param [Hash] params ({})
    def restore_table(params = {}, options = {})
      req = build_request(:restore_table, params)
      req.send_request(options)
    end

    # Associates a set of tags with a Amazon Keyspaces resource. You can
    # then activate these user-defined tags so that they appear on the Cost
    # Management Console for cost allocation tracking. For more information,
    # see [Adding tags and labels to Amazon Keyspaces resources][1] in the
    # *Amazon Keyspaces Developer Guide*.
    #
    # For IAM policy examples that show how to control access to Amazon
    # Keyspaces resources based on tags, see [Amazon Keyspaces resource
    # access based on tags][2] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
    # [2]: https://docs.aws.amazon.com/keyspaces/latest/devguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-tags
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Keyspaces resource to
    #   which to add tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to be assigned to the Amazon Keyspaces resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the association of tags from a Amazon Keyspaces resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Keyspaces resource that the tags will be removed from. This
    #   value is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of existing tags to be removed from the Amazon Keyspaces
    #   resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Adds new columns to the table or updates one of the table's settings,
    # for example capacity mode, encryption, point-in-time recovery, or ttl
    # settings. Note that you can only update one specific table setting per
    # update operation.
    #
    # @option params [required, String] :keyspace_name
    #   The name of the keyspace the specified table is stored in.
    #
    # @option params [required, String] :table_name
    #   The name of the table.
    #
    # @option params [Array<Types::ColumnDefinition>] :add_columns
    #   For each column to be added to the specified table:
    #
    #   * `name` - The name of the column.
    #
    #   * `type` - An Amazon Keyspaces data type. For more information, see
    #     [Data types][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types
    #
    # @option params [Types::CapacitySpecification] :capacity_specification
    #   Modifies the read/write throughput capacity mode for the table. The
    #   options are:
    #
    #   * `throughputMode:PAY_PER_REQUEST` and
    #
    #   * `throughputMode:PROVISIONED` - Provisioned capacity mode requires
    #     `readCapacityUnits` and `writeCapacityUnits` as input.
    #
    #   The default is `throughput_mode:PAY_PER_REQUEST`.
    #
    #   For more information, see [Read/write capacity modes][1] in the
    #   *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html
    #
    # @option params [Types::EncryptionSpecification] :encryption_specification
    #   Modifies the encryption settings of the table. You can choose one of
    #   the following KMS key (KMS key):
    #
    #   * `type:AWS_OWNED_KMS_KEY` - This key is owned by Amazon Keyspaces.
    #
    #   * `type:CUSTOMER_MANAGED_KMS_KEY` - This key is stored in your account
    #     and is created, owned, and managed by you. This option requires the
    #     `kms_key_identifier` of the KMS key in Amazon Resource Name (ARN)
    #     format as input.
    #
    #   The default is `AWS_OWNED_KMS_KEY`.
    #
    #   For more information, see [Encryption at rest][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html
    #
    # @option params [Types::PointInTimeRecovery] :point_in_time_recovery
    #   Modifies the `pointInTimeRecovery` settings of the table. The options
    #   are:
    #
    #   * `status=ENABLED`
    #
    #   * `status=DISABLED`
    #
    #   If it's not specified, the default is `status=DISABLED`.
    #
    #   For more information, see [Point-in-time recovery][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html
    #
    # @option params [Types::TimeToLive] :ttl
    #   Modifies Time to Live custom settings for the table. The options are:
    #
    #   * `status:enabled`
    #
    #   * `status:disabled`
    #
    #   The default is `status:disabled`. After `ttl` is enabled, you can't
    #   disable it for the table.
    #
    #   For more information, see [Expiring data by using Amazon Keyspaces
    #   Time to Live (TTL)][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html
    #
    # @option params [Integer] :default_time_to_live
    #   The default Time to Live setting in seconds for the table.
    #
    #   For more information, see [Setting the default TTL value for a
    #   table][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl
    #
    # @option params [Types::ClientSideTimestamps] :client_side_timestamps
    #   Enables client-side timestamps for the table. By default, the setting
    #   is disabled. You can enable client-side timestamps with the following
    #   option:
    #
    #   * `status: "enabled"`
    #
    #   ^
    #
    #   Once client-side timestamps are enabled for a table, this setting
    #   cannot be disabled.
    #
    # @return [Types::UpdateTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTableResponse#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table({
    #     keyspace_name: "KeyspaceName", # required
    #     table_name: "TableName", # required
    #     add_columns: [
    #       {
    #         name: "GenericString", # required
    #         type: "GenericString", # required
    #       },
    #     ],
    #     capacity_specification: {
    #       throughput_mode: "PAY_PER_REQUEST", # required, accepts PAY_PER_REQUEST, PROVISIONED
    #       read_capacity_units: 1,
    #       write_capacity_units: 1,
    #     },
    #     encryption_specification: {
    #       type: "CUSTOMER_MANAGED_KMS_KEY", # required, accepts CUSTOMER_MANAGED_KMS_KEY, AWS_OWNED_KMS_KEY
    #       kms_key_identifier: "kmsKeyARN",
    #     },
    #     point_in_time_recovery: {
    #       status: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     ttl: {
    #       status: "ENABLED", # required, accepts ENABLED
    #     },
    #     default_time_to_live: 1,
    #     client_side_timestamps: {
    #       status: "ENABLED", # required, accepts ENABLED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/UpdateTable AWS API Documentation
    #
    # @overload update_table(params = {})
    # @param [Hash] params ({})
    def update_table(params = {}, options = {})
      req = build_request(:update_table, params)
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
      context[:gem_name] = 'aws-sdk-keyspaces'
      context[:gem_version] = '1.12.0'
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
