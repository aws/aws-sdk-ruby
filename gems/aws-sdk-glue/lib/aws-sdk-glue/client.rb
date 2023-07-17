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

Aws::Plugins::GlobalConfiguration.add_identifier(:glue)

module Aws::Glue
  # An API client for Glue.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Glue::Client.new(
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

    @identifier = :glue

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
    add_plugin(Aws::Glue::Plugins::Endpoints)

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
    #   @option options [Aws::Glue::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Glue::EndpointParameters`
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

    # Creates one or more partitions in a batch operation.
    #
    # @option params [String] :catalog_id
    #   The ID of the catalog in which the partition is to be created.
    #   Currently, this should be the Amazon Web Services account ID.
    #
    # @option params [required, String] :database_name
    #   The name of the metadata database in which the partition is to be
    #   created.
    #
    # @option params [required, String] :table_name
    #   The name of the metadata table in which the partition is to be
    #   created.
    #
    # @option params [required, Array<Types::PartitionInput>] :partition_input_list
    #   A list of `PartitionInput` structures that define the partitions to be
    #   created.
    #
    # @return [Types::BatchCreatePartitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreatePartitionResponse#errors #errors} => Array&lt;Types::PartitionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_input_list: [ # required
    #       {
    #         values: ["ValueString"],
    #         last_access_time: Time.now,
    #         storage_descriptor: {
    #           columns: [
    #             {
    #               name: "NameString", # required
    #               type: "ColumnTypeString",
    #               comment: "CommentString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #           ],
    #           location: "LocationString",
    #           additional_locations: ["LocationString"],
    #           input_format: "FormatString",
    #           output_format: "FormatString",
    #           compressed: false,
    #           number_of_buckets: 1,
    #           serde_info: {
    #             name: "NameString",
    #             serialization_library: "NameString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #           bucket_columns: ["NameString"],
    #           sort_columns: [
    #             {
    #               column: "NameString", # required
    #               sort_order: 1, # required
    #             },
    #           ],
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #           skewed_info: {
    #             skewed_column_names: ["NameString"],
    #             skewed_column_values: ["ColumnValuesString"],
    #             skewed_column_value_location_maps: {
    #               "ColumnValuesString" => "ColumnValuesString",
    #             },
    #           },
    #           stored_as_sub_directories: false,
    #           schema_reference: {
    #             schema_id: {
    #               schema_arn: "GlueResourceArn",
    #               schema_name: "SchemaRegistryNameString",
    #               registry_name: "SchemaRegistryNameString",
    #             },
    #             schema_version_id: "SchemaVersionIdString",
    #             schema_version_number: 1,
    #           },
    #         },
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         last_analyzed_time: Time.now,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].partition_values #=> Array
    #   resp.errors[0].partition_values[0] #=> String
    #   resp.errors[0].error_detail.error_code #=> String
    #   resp.errors[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchCreatePartition AWS API Documentation
    #
    # @overload batch_create_partition(params = {})
    # @param [Hash] params ({})
    def batch_create_partition(params = {}, options = {})
      req = build_request(:batch_create_partition, params)
      req.send_request(options)
    end

    # Deletes a list of connection definitions from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the connections reside. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, Array<String>] :connection_name_list
    #   A list of names of the connections to delete.
    #
    # @return [Types::BatchDeleteConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteConnectionResponse#succeeded #succeeded} => Array&lt;String&gt;
    #   * {Types::BatchDeleteConnectionResponse#errors #errors} => Hash&lt;String,Types::ErrorDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_connection({
    #     catalog_id: "CatalogIdString",
    #     connection_name_list: ["NameString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.succeeded #=> Array
    #   resp.succeeded[0] #=> String
    #   resp.errors #=> Hash
    #   resp.errors["NameString"].error_code #=> String
    #   resp.errors["NameString"].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteConnection AWS API Documentation
    #
    # @overload batch_delete_connection(params = {})
    # @param [Hash] params ({})
    def batch_delete_connection(params = {}, options = {})
      req = build_request(:batch_delete_connection, params)
      req.send_request(options)
    end

    # Deletes one or more partitions in a batch operation.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partition to be deleted resides.
    #   If none is provided, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #
    # @option params [required, String] :table_name
    #   The name of the table that contains the partitions to be deleted.
    #
    # @option params [required, Array<Types::PartitionValueList>] :partitions_to_delete
    #   A list of `PartitionInput` structures that define the partitions to be
    #   deleted.
    #
    # @return [Types::BatchDeletePartitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeletePartitionResponse#errors #errors} => Array&lt;Types::PartitionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partitions_to_delete: [ # required
    #       {
    #         values: ["ValueString"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].partition_values #=> Array
    #   resp.errors[0].partition_values[0] #=> String
    #   resp.errors[0].error_detail.error_code #=> String
    #   resp.errors[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeletePartition AWS API Documentation
    #
    # @overload batch_delete_partition(params = {})
    # @param [Hash] params ({})
    def batch_delete_partition(params = {}, options = {})
      req = build_request(:batch_delete_partition, params)
      req.send_request(options)
    end

    # Deletes multiple tables at once.
    #
    # <note markdown="1"> After completing this operation, you no longer have access to the
    # table versions and partitions that belong to the deleted table. Glue
    # deletes these "orphaned" resources asynchronously in a timely
    # manner, at the discretion of the service.
    #
    #  To ensure the immediate deletion of all related resources, before
    # calling `BatchDeleteTable`, use `DeleteTableVersion` or
    # `BatchDeleteTableVersion`, and `DeletePartition` or
    # `BatchDeletePartition`, to delete any resources that belong to the
    # table.
    #
    #  </note>
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the tables to delete reside.
    #   For Hive compatibility, this name is entirely lowercase.
    #
    # @option params [required, Array<String>] :tables_to_delete
    #   A list of the table to delete.
    #
    # @option params [String] :transaction_id
    #   The transaction ID at which to delete the table contents.
    #
    # @return [Types::BatchDeleteTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteTableResponse#errors #errors} => Array&lt;Types::TableError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_table({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     tables_to_delete: ["NameString"], # required
    #     transaction_id: "TransactionIdString",
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].table_name #=> String
    #   resp.errors[0].error_detail.error_code #=> String
    #   resp.errors[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTable AWS API Documentation
    #
    # @overload batch_delete_table(params = {})
    # @param [Hash] params ({})
    def batch_delete_table(params = {}, options = {})
      req = build_request(:batch_delete_table, params)
      req.send_request(options)
    end

    # Deletes a specified batch of versions of a table.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, String] :table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #
    # @option params [required, Array<String>] :version_ids
    #   A list of the IDs of versions to be deleted. A `VersionId` is a string
    #   representation of an integer. Each version is incremented by 1.
    #
    # @return [Types::BatchDeleteTableVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteTableVersionResponse#errors #errors} => Array&lt;Types::TableVersionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_table_version({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     version_ids: ["VersionString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].table_name #=> String
    #   resp.errors[0].version_id #=> String
    #   resp.errors[0].error_detail.error_code #=> String
    #   resp.errors[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTableVersion AWS API Documentation
    #
    # @overload batch_delete_table_version(params = {})
    # @param [Hash] params ({})
    def batch_delete_table_version(params = {}, options = {})
      req = build_request(:batch_delete_table_version, params)
      req.send_request(options)
    end

    # Retrieves information about a list of blueprints.
    #
    # @option params [required, Array<String>] :names
    #   A list of blueprint names.
    #
    # @option params [Boolean] :include_blueprint
    #   Specifies whether or not to include the blueprint in the response.
    #
    # @option params [Boolean] :include_parameter_spec
    #   Specifies whether or not to include the parameters, as a JSON string,
    #   for the blueprint in the response.
    #
    # @return [Types::BatchGetBlueprintsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetBlueprintsResponse#blueprints #blueprints} => Array&lt;Types::Blueprint&gt;
    #   * {Types::BatchGetBlueprintsResponse#missing_blueprints #missing_blueprints} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_blueprints({
    #     names: ["OrchestrationNameString"], # required
    #     include_blueprint: false,
    #     include_parameter_spec: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.blueprints #=> Array
    #   resp.blueprints[0].name #=> String
    #   resp.blueprints[0].description #=> String
    #   resp.blueprints[0].created_on #=> Time
    #   resp.blueprints[0].last_modified_on #=> Time
    #   resp.blueprints[0].parameter_spec #=> String
    #   resp.blueprints[0].blueprint_location #=> String
    #   resp.blueprints[0].blueprint_service_location #=> String
    #   resp.blueprints[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "FAILED"
    #   resp.blueprints[0].error_message #=> String
    #   resp.blueprints[0].last_active_definition.description #=> String
    #   resp.blueprints[0].last_active_definition.last_modified_on #=> Time
    #   resp.blueprints[0].last_active_definition.parameter_spec #=> String
    #   resp.blueprints[0].last_active_definition.blueprint_location #=> String
    #   resp.blueprints[0].last_active_definition.blueprint_service_location #=> String
    #   resp.missing_blueprints #=> Array
    #   resp.missing_blueprints[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetBlueprints AWS API Documentation
    #
    # @overload batch_get_blueprints(params = {})
    # @param [Hash] params ({})
    def batch_get_blueprints(params = {}, options = {})
      req = build_request(:batch_get_blueprints, params)
      req.send_request(options)
    end

    # Returns a list of resource metadata for a given list of crawler names.
    # After calling the `ListCrawlers` operation, you can call this
    # operation to access the data to which you have been granted
    # permissions. This operation supports all IAM permissions, including
    # permission conditions that uses tags.
    #
    # @option params [required, Array<String>] :crawler_names
    #   A list of crawler names, which might be the names returned from the
    #   `ListCrawlers` operation.
    #
    # @return [Types::BatchGetCrawlersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCrawlersResponse#crawlers #crawlers} => Array&lt;Types::Crawler&gt;
    #   * {Types::BatchGetCrawlersResponse#crawlers_not_found #crawlers_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_crawlers({
    #     crawler_names: ["NameString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.crawlers #=> Array
    #   resp.crawlers[0].name #=> String
    #   resp.crawlers[0].role #=> String
    #   resp.crawlers[0].targets.s3_targets #=> Array
    #   resp.crawlers[0].targets.s3_targets[0].path #=> String
    #   resp.crawlers[0].targets.s3_targets[0].exclusions #=> Array
    #   resp.crawlers[0].targets.s3_targets[0].exclusions[0] #=> String
    #   resp.crawlers[0].targets.s3_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.s3_targets[0].sample_size #=> Integer
    #   resp.crawlers[0].targets.s3_targets[0].event_queue_arn #=> String
    #   resp.crawlers[0].targets.s3_targets[0].dlq_event_queue_arn #=> String
    #   resp.crawlers[0].targets.jdbc_targets #=> Array
    #   resp.crawlers[0].targets.jdbc_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.jdbc_targets[0].path #=> String
    #   resp.crawlers[0].targets.jdbc_targets[0].exclusions #=> Array
    #   resp.crawlers[0].targets.jdbc_targets[0].exclusions[0] #=> String
    #   resp.crawlers[0].targets.jdbc_targets[0].enable_additional_metadata #=> Array
    #   resp.crawlers[0].targets.jdbc_targets[0].enable_additional_metadata[0] #=> String, one of "COMMENTS", "RAWTYPES"
    #   resp.crawlers[0].targets.mongo_db_targets #=> Array
    #   resp.crawlers[0].targets.mongo_db_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.mongo_db_targets[0].path #=> String
    #   resp.crawlers[0].targets.mongo_db_targets[0].scan_all #=> Boolean
    #   resp.crawlers[0].targets.dynamo_db_targets #=> Array
    #   resp.crawlers[0].targets.dynamo_db_targets[0].path #=> String
    #   resp.crawlers[0].targets.dynamo_db_targets[0].scan_all #=> Boolean
    #   resp.crawlers[0].targets.dynamo_db_targets[0].scan_rate #=> Float
    #   resp.crawlers[0].targets.catalog_targets #=> Array
    #   resp.crawlers[0].targets.catalog_targets[0].database_name #=> String
    #   resp.crawlers[0].targets.catalog_targets[0].tables #=> Array
    #   resp.crawlers[0].targets.catalog_targets[0].tables[0] #=> String
    #   resp.crawlers[0].targets.catalog_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.catalog_targets[0].event_queue_arn #=> String
    #   resp.crawlers[0].targets.catalog_targets[0].dlq_event_queue_arn #=> String
    #   resp.crawlers[0].targets.delta_targets #=> Array
    #   resp.crawlers[0].targets.delta_targets[0].delta_tables #=> Array
    #   resp.crawlers[0].targets.delta_targets[0].delta_tables[0] #=> String
    #   resp.crawlers[0].targets.delta_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.delta_targets[0].write_manifest #=> Boolean
    #   resp.crawlers[0].targets.delta_targets[0].create_native_delta_table #=> Boolean
    #   resp.crawlers[0].targets.iceberg_targets #=> Array
    #   resp.crawlers[0].targets.iceberg_targets[0].paths #=> Array
    #   resp.crawlers[0].targets.iceberg_targets[0].paths[0] #=> String
    #   resp.crawlers[0].targets.iceberg_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.iceberg_targets[0].exclusions #=> Array
    #   resp.crawlers[0].targets.iceberg_targets[0].exclusions[0] #=> String
    #   resp.crawlers[0].targets.iceberg_targets[0].maximum_traversal_depth #=> Integer
    #   resp.crawlers[0].database_name #=> String
    #   resp.crawlers[0].description #=> String
    #   resp.crawlers[0].classifiers #=> Array
    #   resp.crawlers[0].classifiers[0] #=> String
    #   resp.crawlers[0].recrawl_policy.recrawl_behavior #=> String, one of "CRAWL_EVERYTHING", "CRAWL_NEW_FOLDERS_ONLY", "CRAWL_EVENT_MODE"
    #   resp.crawlers[0].schema_change_policy.update_behavior #=> String, one of "LOG", "UPDATE_IN_DATABASE"
    #   resp.crawlers[0].schema_change_policy.delete_behavior #=> String, one of "LOG", "DELETE_FROM_DATABASE", "DEPRECATE_IN_DATABASE"
    #   resp.crawlers[0].lineage_configuration.crawler_lineage_settings #=> String, one of "ENABLE", "DISABLE"
    #   resp.crawlers[0].state #=> String, one of "READY", "RUNNING", "STOPPING"
    #   resp.crawlers[0].table_prefix #=> String
    #   resp.crawlers[0].schedule.schedule_expression #=> String
    #   resp.crawlers[0].schedule.state #=> String, one of "SCHEDULED", "NOT_SCHEDULED", "TRANSITIONING"
    #   resp.crawlers[0].crawl_elapsed_time #=> Integer
    #   resp.crawlers[0].creation_time #=> Time
    #   resp.crawlers[0].last_updated #=> Time
    #   resp.crawlers[0].last_crawl.status #=> String, one of "SUCCEEDED", "CANCELLED", "FAILED"
    #   resp.crawlers[0].last_crawl.error_message #=> String
    #   resp.crawlers[0].last_crawl.log_group #=> String
    #   resp.crawlers[0].last_crawl.log_stream #=> String
    #   resp.crawlers[0].last_crawl.message_prefix #=> String
    #   resp.crawlers[0].last_crawl.start_time #=> Time
    #   resp.crawlers[0].version #=> Integer
    #   resp.crawlers[0].configuration #=> String
    #   resp.crawlers[0].crawler_security_configuration #=> String
    #   resp.crawlers[0].lake_formation_configuration.use_lake_formation_credentials #=> Boolean
    #   resp.crawlers[0].lake_formation_configuration.account_id #=> String
    #   resp.crawlers_not_found #=> Array
    #   resp.crawlers_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetCrawlers AWS API Documentation
    #
    # @overload batch_get_crawlers(params = {})
    # @param [Hash] params ({})
    def batch_get_crawlers(params = {}, options = {})
      req = build_request(:batch_get_crawlers, params)
      req.send_request(options)
    end

    # Retrieves the details for the custom patterns specified by a list of
    # names.
    #
    # @option params [required, Array<String>] :names
    #   A list of names of the custom patterns that you want to retrieve.
    #
    # @return [Types::BatchGetCustomEntityTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCustomEntityTypesResponse#custom_entity_types #custom_entity_types} => Array&lt;Types::CustomEntityType&gt;
    #   * {Types::BatchGetCustomEntityTypesResponse#custom_entity_types_not_found #custom_entity_types_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_custom_entity_types({
    #     names: ["NameString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_entity_types #=> Array
    #   resp.custom_entity_types[0].name #=> String
    #   resp.custom_entity_types[0].regex_string #=> String
    #   resp.custom_entity_types[0].context_words #=> Array
    #   resp.custom_entity_types[0].context_words[0] #=> String
    #   resp.custom_entity_types_not_found #=> Array
    #   resp.custom_entity_types_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetCustomEntityTypes AWS API Documentation
    #
    # @overload batch_get_custom_entity_types(params = {})
    # @param [Hash] params ({})
    def batch_get_custom_entity_types(params = {}, options = {})
      req = build_request(:batch_get_custom_entity_types, params)
      req.send_request(options)
    end

    # Retrieves a list of data quality results for the specified result IDs.
    #
    # @option params [required, Array<String>] :result_ids
    #   A list of unique result IDs for the data quality results.
    #
    # @return [Types::BatchGetDataQualityResultResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetDataQualityResultResponse#results #results} => Array&lt;Types::DataQualityResult&gt;
    #   * {Types::BatchGetDataQualityResultResponse#results_not_found #results_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_data_quality_result({
    #     result_ids: ["HashString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].result_id #=> String
    #   resp.results[0].score #=> Float
    #   resp.results[0].data_source.glue_table.database_name #=> String
    #   resp.results[0].data_source.glue_table.table_name #=> String
    #   resp.results[0].data_source.glue_table.catalog_id #=> String
    #   resp.results[0].data_source.glue_table.connection_name #=> String
    #   resp.results[0].data_source.glue_table.additional_options #=> Hash
    #   resp.results[0].data_source.glue_table.additional_options["NameString"] #=> String
    #   resp.results[0].ruleset_name #=> String
    #   resp.results[0].evaluation_context #=> String
    #   resp.results[0].started_on #=> Time
    #   resp.results[0].completed_on #=> Time
    #   resp.results[0].job_name #=> String
    #   resp.results[0].job_run_id #=> String
    #   resp.results[0].ruleset_evaluation_run_id #=> String
    #   resp.results[0].rule_results #=> Array
    #   resp.results[0].rule_results[0].name #=> String
    #   resp.results[0].rule_results[0].description #=> String
    #   resp.results[0].rule_results[0].evaluation_message #=> String
    #   resp.results[0].rule_results[0].result #=> String, one of "PASS", "FAIL", "ERROR"
    #   resp.results[0].rule_results[0].evaluated_metrics #=> Hash
    #   resp.results[0].rule_results[0].evaluated_metrics["NameString"] #=> Float
    #   resp.results_not_found #=> Array
    #   resp.results_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetDataQualityResult AWS API Documentation
    #
    # @overload batch_get_data_quality_result(params = {})
    # @param [Hash] params ({})
    def batch_get_data_quality_result(params = {}, options = {})
      req = build_request(:batch_get_data_quality_result, params)
      req.send_request(options)
    end

    # Returns a list of resource metadata for a given list of development
    # endpoint names. After calling the `ListDevEndpoints` operation, you
    # can call this operation to access the data to which you have been
    # granted permissions. This operation supports all IAM permissions,
    # including permission conditions that uses tags.
    #
    # @option params [required, Array<String>] :dev_endpoint_names
    #   The list of `DevEndpoint` names, which might be the names returned
    #   from the `ListDevEndpoint` operation.
    #
    # @return [Types::BatchGetDevEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetDevEndpointsResponse#dev_endpoints #dev_endpoints} => Array&lt;Types::DevEndpoint&gt;
    #   * {Types::BatchGetDevEndpointsResponse#dev_endpoints_not_found #dev_endpoints_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_dev_endpoints({
    #     dev_endpoint_names: ["GenericString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dev_endpoints #=> Array
    #   resp.dev_endpoints[0].endpoint_name #=> String
    #   resp.dev_endpoints[0].role_arn #=> String
    #   resp.dev_endpoints[0].security_group_ids #=> Array
    #   resp.dev_endpoints[0].security_group_ids[0] #=> String
    #   resp.dev_endpoints[0].subnet_id #=> String
    #   resp.dev_endpoints[0].yarn_endpoint_address #=> String
    #   resp.dev_endpoints[0].private_address #=> String
    #   resp.dev_endpoints[0].zeppelin_remote_spark_interpreter_port #=> Integer
    #   resp.dev_endpoints[0].public_address #=> String
    #   resp.dev_endpoints[0].status #=> String
    #   resp.dev_endpoints[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.dev_endpoints[0].glue_version #=> String
    #   resp.dev_endpoints[0].number_of_workers #=> Integer
    #   resp.dev_endpoints[0].number_of_nodes #=> Integer
    #   resp.dev_endpoints[0].availability_zone #=> String
    #   resp.dev_endpoints[0].vpc_id #=> String
    #   resp.dev_endpoints[0].extra_python_libs_s3_path #=> String
    #   resp.dev_endpoints[0].extra_jars_s3_path #=> String
    #   resp.dev_endpoints[0].failure_reason #=> String
    #   resp.dev_endpoints[0].last_update_status #=> String
    #   resp.dev_endpoints[0].created_timestamp #=> Time
    #   resp.dev_endpoints[0].last_modified_timestamp #=> Time
    #   resp.dev_endpoints[0].public_key #=> String
    #   resp.dev_endpoints[0].public_keys #=> Array
    #   resp.dev_endpoints[0].public_keys[0] #=> String
    #   resp.dev_endpoints[0].security_configuration #=> String
    #   resp.dev_endpoints[0].arguments #=> Hash
    #   resp.dev_endpoints[0].arguments["GenericString"] #=> String
    #   resp.dev_endpoints_not_found #=> Array
    #   resp.dev_endpoints_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetDevEndpoints AWS API Documentation
    #
    # @overload batch_get_dev_endpoints(params = {})
    # @param [Hash] params ({})
    def batch_get_dev_endpoints(params = {}, options = {})
      req = build_request(:batch_get_dev_endpoints, params)
      req.send_request(options)
    end

    # Returns a list of resource metadata for a given list of job names.
    # After calling the `ListJobs` operation, you can call this operation to
    # access the data to which you have been granted permissions. This
    # operation supports all IAM permissions, including permission
    # conditions that uses tags.
    #
    # @option params [required, Array<String>] :job_names
    #   A list of job names, which might be the names returned from the
    #   `ListJobs` operation.
    #
    # @return [Types::BatchGetJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetJobsResponse#jobs #jobs} => Array&lt;Types::Job&gt;
    #   * {Types::BatchGetJobsResponse#jobs_not_found #jobs_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_jobs({
    #     job_names: ["NameString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].name #=> String
    #   resp.jobs[0].description #=> String
    #   resp.jobs[0].log_uri #=> String
    #   resp.jobs[0].role #=> String
    #   resp.jobs[0].created_on #=> Time
    #   resp.jobs[0].last_modified_on #=> Time
    #   resp.jobs[0].execution_property.max_concurrent_runs #=> Integer
    #   resp.jobs[0].command.name #=> String
    #   resp.jobs[0].command.script_location #=> String
    #   resp.jobs[0].command.python_version #=> String
    #   resp.jobs[0].command.runtime #=> String
    #   resp.jobs[0].default_arguments #=> Hash
    #   resp.jobs[0].default_arguments["GenericString"] #=> String
    #   resp.jobs[0].non_overridable_arguments #=> Hash
    #   resp.jobs[0].non_overridable_arguments["GenericString"] #=> String
    #   resp.jobs[0].connections.connections #=> Array
    #   resp.jobs[0].connections.connections[0] #=> String
    #   resp.jobs[0].max_retries #=> Integer
    #   resp.jobs[0].allocated_capacity #=> Integer
    #   resp.jobs[0].timeout #=> Integer
    #   resp.jobs[0].max_capacity #=> Float
    #   resp.jobs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.jobs[0].number_of_workers #=> Integer
    #   resp.jobs[0].security_configuration #=> String
    #   resp.jobs[0].notification_property.notify_delay_after #=> Integer
    #   resp.jobs[0].glue_version #=> String
    #   resp.jobs[0].code_gen_configuration_nodes #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.connector_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.connection_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.connection_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.schema_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.connector_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.connection_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.filter_predicate #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.partition_column #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.lower_bound #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.upper_bound #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.num_partitions #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.job_bookmark_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.job_bookmark_keys[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.job_bookmark_keys_sort_order #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.data_type_mapping #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.data_type_mapping["JDBCDataType"] #=> String, one of "DATE", "STRING", "TIMESTAMP", "INT", "FLOAT", "LONG", "BIGDECIMAL", "BYTE", "SHORT", "DOUBLE"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.connection_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.query #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.connector_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.connection_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_source.redshift_tmp_dir #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_source.tmp_dir_iam_role #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_source.partition_predicate #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.paths[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.compression_type #=> String, one of "gzip", "bzip2"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.exclusions #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.exclusions[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.group_size #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.group_files #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.recurse #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.max_band #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.max_files_in_band #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.additional_options.enable_sample_path #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.additional_options.sample_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.separator #=> String, one of "comma", "ctrla", "pipe", "semicolon", "tab"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.escaper #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.quote_char #=> String, one of "quote", "quillemet", "single_quote", "disabled"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.multiline #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.with_header #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.write_header #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.skip_first #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.optimize_performance #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.paths[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.compression_type #=> String, one of "gzip", "bzip2"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.exclusions #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.exclusions[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.group_size #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.group_files #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.recurse #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.max_band #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.max_files_in_band #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.additional_options.enable_sample_path #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.additional_options.sample_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.json_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.multiline #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.paths[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.compression_type #=> String, one of "snappy", "lzo", "gzip", "uncompressed", "none"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.exclusions #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.exclusions[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.group_size #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.group_files #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.recurse #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.max_band #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.max_files_in_band #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.additional_options.enable_sample_path #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.additional_options.sample_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].relational_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].relational_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].relational_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamo_db_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamo_db_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamo_db_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.connection_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.connector_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.connection_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.connector_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.connection_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.redshift_tmp_dir #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.tmp_dir_iam_role #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.upsert_redshift_options.table_location #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.upsert_redshift_options.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.upsert_redshift_options.upsert_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.upsert_redshift_options.upsert_keys[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.compression #=> String, one of "snappy", "lzo", "gzip", "uncompressed", "none"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.schema_change_policy.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.schema_change_policy.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.compression #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.format #=> String, one of "json", "csv", "avro", "orc", "parquet", "hudi", "delta"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.schema_change_policy.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.schema_change_policy.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].to_key #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].from_path #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].from_path[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].from_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].to_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].dropped #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].children #=> Types::Mappings
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_fields.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_fields.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_fields.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_fields.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_fields.paths[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_fields.paths[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_fields.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_fields.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_fields.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_fields.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_fields.paths[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_fields.paths[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.source_path #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.source_path[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.target_path #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.target_path[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spigot.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spigot.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spigot.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spigot.path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spigot.topk #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spigot.prob #=> Float
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.join_type #=> String, one of "equijoin", "left", "right", "outer", "leftsemi", "leftanti"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.columns[0].from #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.columns[0].keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.columns[0].keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.columns[0].keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].split_fields.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].split_fields.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].split_fields.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].split_fields.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].split_fields.paths[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].split_fields.paths[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_from_collection.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_from_collection.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_from_collection.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_from_collection.index #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].fill_missing_values.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].fill_missing_values.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].fill_missing_values.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].fill_missing_values.imputed_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].fill_missing_values.filled_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.logical_operator #=> String, one of "AND", "OR"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters[0].operation #=> String, one of "EQ", "LT", "GT", "LTE", "GTE", "REGEX", "ISNULL"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters[0].negated #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters[0].values #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters[0].values[0].type #=> String, one of "COLUMNEXTRACTED", "CONSTANT"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters[0].values[0].value #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters[0].values[0].value[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.code #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.class_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.sql_query #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.sql_aliases #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.sql_aliases[0].from #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.sql_aliases[0].alias #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.window_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.detect_schema #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.endpoint_url #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.stream_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.classification #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.delimiter #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.starting_position #=> String, one of "latest", "trim_horizon", "earliest", "timestamp"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.max_fetch_time_in_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.max_fetch_records_per_shard #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.max_record_per_read #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.add_idle_time_between_reads #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.idle_time_between_reads_in_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.describe_shard_interval #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.num_retries #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.retry_interval_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.max_retry_interval_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.avoid_empty_batches #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.stream_arn #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.role_arn #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.role_session_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.add_record_timestamp #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.emit_consumer_lag_metrics #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.starting_timestamp #=> Time
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.data_preview_options.polling_time #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.data_preview_options.record_polling_limit #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.bootstrap_servers #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.security_protocol #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.topic_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.assign #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.subscribe_pattern #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.classification #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.delimiter #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.starting_offsets #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.ending_offsets #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.poll_timeout_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.num_retries #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.retry_interval_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.max_offsets_per_trigger #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.min_partitions #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.include_headers #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.add_record_timestamp #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.emit_consumer_lag_metrics #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.starting_timestamp #=> Time
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.window_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.detect_schema #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.data_preview_options.polling_time #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.data_preview_options.record_polling_limit #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.window_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.detect_schema #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.endpoint_url #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.stream_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.classification #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.delimiter #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.starting_position #=> String, one of "latest", "trim_horizon", "earliest", "timestamp"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.max_fetch_time_in_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.max_fetch_records_per_shard #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.max_record_per_read #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.add_idle_time_between_reads #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.idle_time_between_reads_in_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.describe_shard_interval #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.num_retries #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.retry_interval_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.max_retry_interval_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.avoid_empty_batches #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.stream_arn #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.role_arn #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.role_session_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.add_record_timestamp #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.emit_consumer_lag_metrics #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.starting_timestamp #=> Time
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.data_preview_options.polling_time #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.data_preview_options.record_polling_limit #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.window_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.detect_schema #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.bootstrap_servers #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.security_protocol #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.topic_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.assign #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.subscribe_pattern #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.classification #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.delimiter #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.starting_offsets #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.ending_offsets #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.poll_timeout_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.num_retries #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.retry_interval_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.max_offsets_per_trigger #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.min_partitions #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.include_headers #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.add_record_timestamp #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.emit_consumer_lag_metrics #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.starting_timestamp #=> Time
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.data_preview_options.polling_time #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.data_preview_options.record_polling_limit #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_check_box_list.is_empty #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_check_box_list.is_null_string #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_check_box_list.is_neg_one #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_text_list #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_text_list[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_text_list[0].datatype.id #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_text_list[0].datatype.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.source #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.primary_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.primary_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.primary_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].union.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].union.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].union.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].union.union_type #=> String, one of "ALL", "DISTINCT"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.pii_type #=> String, one of "RowAudit", "RowMasking", "ColumnAudit", "ColumnMasking"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.entity_types_to_detect #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.entity_types_to_detect[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.output_column_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.sample_fraction #=> Float
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.threshold_fraction #=> Float
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.mask_value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.groups #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.groups[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.groups[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.aggs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.aggs[0].column #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.aggs[0].column[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.aggs[0].agg_func #=> String, one of "avg", "countDistinct", "count", "first", "last", "kurtosis", "max", "min", "skewness", "stddev_samp", "stddev_pop", "sum", "sumDistinct", "var_samp", "var_pop"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_duplicates.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_duplicates.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_duplicates.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_duplicates.columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_duplicates.columns[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_duplicates.columns[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_source.partition_predicate #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.transform_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].type #=> String, one of "str", "int", "float", "complex", "bool", "list", "null"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].validation_rule #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].validation_message #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].value #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].value[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].list_type #=> String, one of "str", "int", "float", "complex", "bool", "list", "null"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].is_optional #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.function_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.version #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.ruleset #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.output #=> String, one of "PrimaryInput", "EvaluationResults"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.publishing_options.evaluation_context #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.publishing_options.results_s3_prefix #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.publishing_options.cloud_watch_metrics_enabled #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.publishing_options.results_publishing_enabled #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.stop_job_on_failure_options.stop_job_on_failure_timing #=> String, one of "Immediate", "AfterDataLoad"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.additional_hudi_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.additional_hudi_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.additional_hudi_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.additional_hudi_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.paths[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_hudi_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_hudi_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_options.enable_sample_path #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_options.sample_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.compression #=> String, one of "gzip", "lzo", "uncompressed", "snappy"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.format #=> String, one of "json", "csv", "avro", "orc", "parquet", "hudi", "delta"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.schema_change_policy.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.schema_change_policy.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_jdbc_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_jdbc_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_jdbc_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_jdbc_source.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_jdbc_source.connection_type #=> String, one of "sqlserver", "mysql", "oracle", "postgresql", "redshift"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_jdbc_source.redshift_tmp_dir #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.additional_delta_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.additional_delta_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.additional_delta_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.additional_delta_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.paths[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_delta_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_delta_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_options.enable_sample_path #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_options.sample_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.compression #=> String, one of "uncompressed", "snappy"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.format #=> String, one of "json", "csv", "avro", "orc", "parquet", "hudi", "delta"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.schema_change_policy.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.schema_change_policy.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.access_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.source_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.connection.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.connection.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.connection.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.schema.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.schema.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.schema.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_database.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_database.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_database.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_table.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_table.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_table.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_redshift_schema #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_redshift_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.temp_dir #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.iam_role.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.iam_role.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.iam_role.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.advanced_options #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.advanced_options[0].key #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.advanced_options[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.sample_query #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.pre_action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.post_action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_prefix #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.upsert #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.merge_action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.merge_when_matched #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.merge_when_not_matched #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.merge_clause #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.crawler_connection #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_schema #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_schema[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_schema[0].label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_schema[0].description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.staging_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.selected_columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.selected_columns[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.selected_columns[0].label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.selected_columns[0].description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.access_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.source_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.connection.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.connection.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.connection.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.schema.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.schema.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.schema.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_database.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_database.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_database.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_table.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_table.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_table.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_redshift_schema #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_redshift_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.temp_dir #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.iam_role.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.iam_role.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.iam_role.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.advanced_options #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.advanced_options[0].key #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.advanced_options[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.sample_query #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.pre_action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.post_action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_prefix #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.upsert #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.merge_action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.merge_when_matched #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.merge_when_not_matched #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.merge_clause #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.crawler_connection #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_schema #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_schema[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_schema[0].label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_schema[0].description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.staging_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.selected_columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.selected_columns[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.selected_columns[0].label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.selected_columns[0].description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.additional_data_sources #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.additional_data_sources["NodeName"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.ruleset #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.publishing_options.evaluation_context #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.publishing_options.results_s3_prefix #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.publishing_options.cloud_watch_metrics_enabled #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.publishing_options.results_publishing_enabled #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.additional_options["AdditionalOptionKeys"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.stop_job_on_failure_options.stop_job_on_failure_timing #=> String, one of "Immediate", "AfterDataLoad"
    #   resp.jobs[0].execution_class #=> String, one of "FLEX", "STANDARD"
    #   resp.jobs[0].source_control_details.provider #=> String, one of "GITHUB", "AWS_CODE_COMMIT"
    #   resp.jobs[0].source_control_details.repository #=> String
    #   resp.jobs[0].source_control_details.owner #=> String
    #   resp.jobs[0].source_control_details.branch #=> String
    #   resp.jobs[0].source_control_details.folder #=> String
    #   resp.jobs[0].source_control_details.last_commit_id #=> String
    #   resp.jobs[0].source_control_details.auth_strategy #=> String, one of "PERSONAL_ACCESS_TOKEN", "AWS_SECRETS_MANAGER"
    #   resp.jobs[0].source_control_details.auth_token #=> String
    #   resp.jobs_not_found #=> Array
    #   resp.jobs_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetJobs AWS API Documentation
    #
    # @overload batch_get_jobs(params = {})
    # @param [Hash] params ({})
    def batch_get_jobs(params = {}, options = {})
      req = build_request(:batch_get_jobs, params)
      req.send_request(options)
    end

    # Retrieves partitions in a batch request.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partitions in question reside. If
    #   none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partitions reside.
    #
    # @option params [required, String] :table_name
    #   The name of the partitions' table.
    #
    # @option params [required, Array<Types::PartitionValueList>] :partitions_to_get
    #   A list of partition values identifying the partitions to retrieve.
    #
    # @return [Types::BatchGetPartitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetPartitionResponse#partitions #partitions} => Array&lt;Types::Partition&gt;
    #   * {Types::BatchGetPartitionResponse#unprocessed_keys #unprocessed_keys} => Array&lt;Types::PartitionValueList&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partitions_to_get: [ # required
    #       {
    #         values: ["ValueString"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.partitions #=> Array
    #   resp.partitions[0].values #=> Array
    #   resp.partitions[0].values[0] #=> String
    #   resp.partitions[0].database_name #=> String
    #   resp.partitions[0].table_name #=> String
    #   resp.partitions[0].creation_time #=> Time
    #   resp.partitions[0].last_access_time #=> Time
    #   resp.partitions[0].storage_descriptor.columns #=> Array
    #   resp.partitions[0].storage_descriptor.columns[0].name #=> String
    #   resp.partitions[0].storage_descriptor.columns[0].type #=> String
    #   resp.partitions[0].storage_descriptor.columns[0].comment #=> String
    #   resp.partitions[0].storage_descriptor.columns[0].parameters #=> Hash
    #   resp.partitions[0].storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.partitions[0].storage_descriptor.location #=> String
    #   resp.partitions[0].storage_descriptor.additional_locations #=> Array
    #   resp.partitions[0].storage_descriptor.additional_locations[0] #=> String
    #   resp.partitions[0].storage_descriptor.input_format #=> String
    #   resp.partitions[0].storage_descriptor.output_format #=> String
    #   resp.partitions[0].storage_descriptor.compressed #=> Boolean
    #   resp.partitions[0].storage_descriptor.number_of_buckets #=> Integer
    #   resp.partitions[0].storage_descriptor.serde_info.name #=> String
    #   resp.partitions[0].storage_descriptor.serde_info.serialization_library #=> String
    #   resp.partitions[0].storage_descriptor.serde_info.parameters #=> Hash
    #   resp.partitions[0].storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.partitions[0].storage_descriptor.bucket_columns #=> Array
    #   resp.partitions[0].storage_descriptor.bucket_columns[0] #=> String
    #   resp.partitions[0].storage_descriptor.sort_columns #=> Array
    #   resp.partitions[0].storage_descriptor.sort_columns[0].column #=> String
    #   resp.partitions[0].storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.partitions[0].storage_descriptor.parameters #=> Hash
    #   resp.partitions[0].storage_descriptor.parameters["KeyString"] #=> String
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.partitions[0].storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.partitions[0].storage_descriptor.schema_reference.schema_id.schema_arn #=> String
    #   resp.partitions[0].storage_descriptor.schema_reference.schema_id.schema_name #=> String
    #   resp.partitions[0].storage_descriptor.schema_reference.schema_id.registry_name #=> String
    #   resp.partitions[0].storage_descriptor.schema_reference.schema_version_id #=> String
    #   resp.partitions[0].storage_descriptor.schema_reference.schema_version_number #=> Integer
    #   resp.partitions[0].parameters #=> Hash
    #   resp.partitions[0].parameters["KeyString"] #=> String
    #   resp.partitions[0].last_analyzed_time #=> Time
    #   resp.partitions[0].catalog_id #=> String
    #   resp.unprocessed_keys #=> Array
    #   resp.unprocessed_keys[0].values #=> Array
    #   resp.unprocessed_keys[0].values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetPartition AWS API Documentation
    #
    # @overload batch_get_partition(params = {})
    # @param [Hash] params ({})
    def batch_get_partition(params = {}, options = {})
      req = build_request(:batch_get_partition, params)
      req.send_request(options)
    end

    # Returns a list of resource metadata for a given list of trigger names.
    # After calling the `ListTriggers` operation, you can call this
    # operation to access the data to which you have been granted
    # permissions. This operation supports all IAM permissions, including
    # permission conditions that uses tags.
    #
    # @option params [required, Array<String>] :trigger_names
    #   A list of trigger names, which may be the names returned from the
    #   `ListTriggers` operation.
    #
    # @return [Types::BatchGetTriggersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetTriggersResponse#triggers #triggers} => Array&lt;Types::Trigger&gt;
    #   * {Types::BatchGetTriggersResponse#triggers_not_found #triggers_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_triggers({
    #     trigger_names: ["NameString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.triggers #=> Array
    #   resp.triggers[0].name #=> String
    #   resp.triggers[0].workflow_name #=> String
    #   resp.triggers[0].id #=> String
    #   resp.triggers[0].type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND", "EVENT"
    #   resp.triggers[0].state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.triggers[0].description #=> String
    #   resp.triggers[0].schedule #=> String
    #   resp.triggers[0].actions #=> Array
    #   resp.triggers[0].actions[0].job_name #=> String
    #   resp.triggers[0].actions[0].arguments #=> Hash
    #   resp.triggers[0].actions[0].arguments["GenericString"] #=> String
    #   resp.triggers[0].actions[0].timeout #=> Integer
    #   resp.triggers[0].actions[0].security_configuration #=> String
    #   resp.triggers[0].actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.triggers[0].actions[0].crawler_name #=> String
    #   resp.triggers[0].predicate.logical #=> String, one of "AND", "ANY"
    #   resp.triggers[0].predicate.conditions #=> Array
    #   resp.triggers[0].predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.triggers[0].predicate.conditions[0].job_name #=> String
    #   resp.triggers[0].predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.triggers[0].predicate.conditions[0].crawler_name #=> String
    #   resp.triggers[0].predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.triggers[0].event_batching_condition.batch_size #=> Integer
    #   resp.triggers[0].event_batching_condition.batch_window #=> Integer
    #   resp.triggers_not_found #=> Array
    #   resp.triggers_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetTriggers AWS API Documentation
    #
    # @overload batch_get_triggers(params = {})
    # @param [Hash] params ({})
    def batch_get_triggers(params = {}, options = {})
      req = build_request(:batch_get_triggers, params)
      req.send_request(options)
    end

    # Returns a list of resource metadata for a given list of workflow
    # names. After calling the `ListWorkflows` operation, you can call this
    # operation to access the data to which you have been granted
    # permissions. This operation supports all IAM permissions, including
    # permission conditions that uses tags.
    #
    # @option params [required, Array<String>] :names
    #   A list of workflow names, which may be the names returned from the
    #   `ListWorkflows` operation.
    #
    # @option params [Boolean] :include_graph
    #   Specifies whether to include a graph when returning the workflow
    #   resource metadata.
    #
    # @return [Types::BatchGetWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetWorkflowsResponse#workflows #workflows} => Array&lt;Types::Workflow&gt;
    #   * {Types::BatchGetWorkflowsResponse#missing_workflows #missing_workflows} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_workflows({
    #     names: ["NameString"], # required
    #     include_graph: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.workflows #=> Array
    #   resp.workflows[0].name #=> String
    #   resp.workflows[0].description #=> String
    #   resp.workflows[0].default_run_properties #=> Hash
    #   resp.workflows[0].default_run_properties["IdString"] #=> String
    #   resp.workflows[0].created_on #=> Time
    #   resp.workflows[0].last_modified_on #=> Time
    #   resp.workflows[0].last_run.name #=> String
    #   resp.workflows[0].last_run.workflow_run_id #=> String
    #   resp.workflows[0].last_run.previous_run_id #=> String
    #   resp.workflows[0].last_run.workflow_run_properties #=> Hash
    #   resp.workflows[0].last_run.workflow_run_properties["IdString"] #=> String
    #   resp.workflows[0].last_run.started_on #=> Time
    #   resp.workflows[0].last_run.completed_on #=> Time
    #   resp.workflows[0].last_run.status #=> String, one of "RUNNING", "COMPLETED", "STOPPING", "STOPPED", "ERROR"
    #   resp.workflows[0].last_run.error_message #=> String
    #   resp.workflows[0].last_run.statistics.total_actions #=> Integer
    #   resp.workflows[0].last_run.statistics.timeout_actions #=> Integer
    #   resp.workflows[0].last_run.statistics.failed_actions #=> Integer
    #   resp.workflows[0].last_run.statistics.stopped_actions #=> Integer
    #   resp.workflows[0].last_run.statistics.succeeded_actions #=> Integer
    #   resp.workflows[0].last_run.statistics.running_actions #=> Integer
    #   resp.workflows[0].last_run.statistics.errored_actions #=> Integer
    #   resp.workflows[0].last_run.statistics.waiting_actions #=> Integer
    #   resp.workflows[0].last_run.graph.nodes #=> Array
    #   resp.workflows[0].last_run.graph.nodes[0].type #=> String, one of "CRAWLER", "JOB", "TRIGGER"
    #   resp.workflows[0].last_run.graph.nodes[0].name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].unique_id #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.workflow_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.id #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND", "EVENT"
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.description #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.schedule #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions #=> Array
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].job_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].arguments #=> Hash
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].timeout #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].security_configuration #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.actions[0].crawler_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions #=> Array
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].job_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.event_batching_condition.batch_size #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].trigger_details.trigger.event_batching_condition.batch_window #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs #=> Array
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].id #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].attempt #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].previous_run_id #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].trigger_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].job_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].started_on #=> Time
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].last_modified_on #=> Time
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].completed_on #=> Time
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].arguments #=> Hash
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].arguments["GenericString"] #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].error_message #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].predecessor_runs #=> Array
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].allocated_capacity #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].execution_time #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].timeout #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].max_capacity #=> Float
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].number_of_workers #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].security_configuration #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].log_group_name #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].glue_version #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].dpu_seconds #=> Float
    #   resp.workflows[0].last_run.graph.nodes[0].job_details.job_runs[0].execution_class #=> String, one of "FLEX", "STANDARD"
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls #=> Array
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls[0].state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls[0].started_on #=> Time
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls[0].completed_on #=> Time
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls[0].error_message #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls[0].log_group #=> String
    #   resp.workflows[0].last_run.graph.nodes[0].crawler_details.crawls[0].log_stream #=> String
    #   resp.workflows[0].last_run.graph.edges #=> Array
    #   resp.workflows[0].last_run.graph.edges[0].source_id #=> String
    #   resp.workflows[0].last_run.graph.edges[0].destination_id #=> String
    #   resp.workflows[0].last_run.starting_event_batch_condition.batch_size #=> Integer
    #   resp.workflows[0].last_run.starting_event_batch_condition.batch_window #=> Integer
    #   resp.workflows[0].graph.nodes #=> Array
    #   resp.workflows[0].graph.nodes[0].type #=> String, one of "CRAWLER", "JOB", "TRIGGER"
    #   resp.workflows[0].graph.nodes[0].name #=> String
    #   resp.workflows[0].graph.nodes[0].unique_id #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.name #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.workflow_name #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.id #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND", "EVENT"
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.description #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.schedule #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions #=> Array
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].job_name #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].arguments #=> Hash
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].timeout #=> Integer
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].security_configuration #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.actions[0].crawler_name #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.conditions #=> Array
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].job_name #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.event_batching_condition.batch_size #=> Integer
    #   resp.workflows[0].graph.nodes[0].trigger_details.trigger.event_batching_condition.batch_window #=> Integer
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs #=> Array
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].id #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].attempt #=> Integer
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].previous_run_id #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].trigger_name #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].job_name #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].started_on #=> Time
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].last_modified_on #=> Time
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].completed_on #=> Time
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].arguments #=> Hash
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].arguments["GenericString"] #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].error_message #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].predecessor_runs #=> Array
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].allocated_capacity #=> Integer
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].execution_time #=> Integer
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].timeout #=> Integer
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].max_capacity #=> Float
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].number_of_workers #=> Integer
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].security_configuration #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].log_group_name #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].glue_version #=> String
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].dpu_seconds #=> Float
    #   resp.workflows[0].graph.nodes[0].job_details.job_runs[0].execution_class #=> String, one of "FLEX", "STANDARD"
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls #=> Array
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls[0].state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls[0].started_on #=> Time
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls[0].completed_on #=> Time
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls[0].error_message #=> String
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls[0].log_group #=> String
    #   resp.workflows[0].graph.nodes[0].crawler_details.crawls[0].log_stream #=> String
    #   resp.workflows[0].graph.edges #=> Array
    #   resp.workflows[0].graph.edges[0].source_id #=> String
    #   resp.workflows[0].graph.edges[0].destination_id #=> String
    #   resp.workflows[0].max_concurrent_runs #=> Integer
    #   resp.workflows[0].blueprint_details.blueprint_name #=> String
    #   resp.workflows[0].blueprint_details.run_id #=> String
    #   resp.missing_workflows #=> Array
    #   resp.missing_workflows[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetWorkflows AWS API Documentation
    #
    # @overload batch_get_workflows(params = {})
    # @param [Hash] params ({})
    def batch_get_workflows(params = {}, options = {})
      req = build_request(:batch_get_workflows, params)
      req.send_request(options)
    end

    # Stops one or more job runs for a specified job definition.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition for which to stop job runs.
    #
    # @option params [required, Array<String>] :job_run_ids
    #   A list of the `JobRunIds` that should be stopped for that job
    #   definition.
    #
    # @return [Types::BatchStopJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchStopJobRunResponse#successful_submissions #successful_submissions} => Array&lt;Types::BatchStopJobRunSuccessfulSubmission&gt;
    #   * {Types::BatchStopJobRunResponse#errors #errors} => Array&lt;Types::BatchStopJobRunError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_stop_job_run({
    #     job_name: "NameString", # required
    #     job_run_ids: ["IdString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_submissions #=> Array
    #   resp.successful_submissions[0].job_name #=> String
    #   resp.successful_submissions[0].job_run_id #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].job_name #=> String
    #   resp.errors[0].job_run_id #=> String
    #   resp.errors[0].error_detail.error_code #=> String
    #   resp.errors[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchStopJobRun AWS API Documentation
    #
    # @overload batch_stop_job_run(params = {})
    # @param [Hash] params ({})
    def batch_stop_job_run(params = {}, options = {})
      req = build_request(:batch_stop_job_run, params)
      req.send_request(options)
    end

    # Updates one or more partitions in a batch operation.
    #
    # @option params [String] :catalog_id
    #   The ID of the catalog in which the partition is to be updated.
    #   Currently, this should be the Amazon Web Services account ID.
    #
    # @option params [required, String] :database_name
    #   The name of the metadata database in which the partition is to be
    #   updated.
    #
    # @option params [required, String] :table_name
    #   The name of the metadata table in which the partition is to be
    #   updated.
    #
    # @option params [required, Array<Types::BatchUpdatePartitionRequestEntry>] :entries
    #   A list of up to 100 `BatchUpdatePartitionRequestEntry` objects to
    #   update.
    #
    # @return [Types::BatchUpdatePartitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdatePartitionResponse#errors #errors} => Array&lt;Types::BatchUpdatePartitionFailureEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     entries: [ # required
    #       {
    #         partition_value_list: ["ValueString"], # required
    #         partition_input: { # required
    #           values: ["ValueString"],
    #           last_access_time: Time.now,
    #           storage_descriptor: {
    #             columns: [
    #               {
    #                 name: "NameString", # required
    #                 type: "ColumnTypeString",
    #                 comment: "CommentString",
    #                 parameters: {
    #                   "KeyString" => "ParametersMapValue",
    #                 },
    #               },
    #             ],
    #             location: "LocationString",
    #             additional_locations: ["LocationString"],
    #             input_format: "FormatString",
    #             output_format: "FormatString",
    #             compressed: false,
    #             number_of_buckets: 1,
    #             serde_info: {
    #               name: "NameString",
    #               serialization_library: "NameString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #             bucket_columns: ["NameString"],
    #             sort_columns: [
    #               {
    #                 column: "NameString", # required
    #                 sort_order: 1, # required
    #               },
    #             ],
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #             skewed_info: {
    #               skewed_column_names: ["NameString"],
    #               skewed_column_values: ["ColumnValuesString"],
    #               skewed_column_value_location_maps: {
    #                 "ColumnValuesString" => "ColumnValuesString",
    #               },
    #             },
    #             stored_as_sub_directories: false,
    #             schema_reference: {
    #               schema_id: {
    #                 schema_arn: "GlueResourceArn",
    #                 schema_name: "SchemaRegistryNameString",
    #                 registry_name: "SchemaRegistryNameString",
    #               },
    #               schema_version_id: "SchemaVersionIdString",
    #               schema_version_number: 1,
    #             },
    #           },
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #           last_analyzed_time: Time.now,
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].partition_value_list #=> Array
    #   resp.errors[0].partition_value_list[0] #=> String
    #   resp.errors[0].error_detail.error_code #=> String
    #   resp.errors[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchUpdatePartition AWS API Documentation
    #
    # @overload batch_update_partition(params = {})
    # @param [Hash] params ({})
    def batch_update_partition(params = {}, options = {})
      req = build_request(:batch_update_partition, params)
      req.send_request(options)
    end

    # Cancels the specified recommendation run that was being used to
    # generate rules.
    #
    # @option params [required, String] :run_id
    #   The unique run identifier associated with this run.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_data_quality_rule_recommendation_run({
    #     run_id: "HashString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelDataQualityRuleRecommendationRun AWS API Documentation
    #
    # @overload cancel_data_quality_rule_recommendation_run(params = {})
    # @param [Hash] params ({})
    def cancel_data_quality_rule_recommendation_run(params = {}, options = {})
      req = build_request(:cancel_data_quality_rule_recommendation_run, params)
      req.send_request(options)
    end

    # Cancels a run where a ruleset is being evaluated against a data
    # source.
    #
    # @option params [required, String] :run_id
    #   The unique run identifier associated with this run.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_data_quality_ruleset_evaluation_run({
    #     run_id: "HashString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelDataQualityRulesetEvaluationRun AWS API Documentation
    #
    # @overload cancel_data_quality_ruleset_evaluation_run(params = {})
    # @param [Hash] params ({})
    def cancel_data_quality_ruleset_evaluation_run(params = {}, options = {})
      req = build_request(:cancel_data_quality_ruleset_evaluation_run, params)
      req.send_request(options)
    end

    # Cancels (stops) a task run. Machine learning task runs are
    # asynchronous tasks that Glue runs on your behalf as part of various
    # machine learning workflows. You can cancel a machine learning task run
    # at any time by calling `CancelMLTaskRun` with a task run's parent
    # transform's `TransformID` and the task run's `TaskRunId`.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @option params [required, String] :task_run_id
    #   A unique identifier for the task run.
    #
    # @return [Types::CancelMLTaskRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelMLTaskRunResponse#transform_id #transform_id} => String
    #   * {Types::CancelMLTaskRunResponse#task_run_id #task_run_id} => String
    #   * {Types::CancelMLTaskRunResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_ml_task_run({
    #     transform_id: "HashString", # required
    #     task_run_id: "HashString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_id #=> String
    #   resp.task_run_id #=> String
    #   resp.status #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelMLTaskRun AWS API Documentation
    #
    # @overload cancel_ml_task_run(params = {})
    # @param [Hash] params ({})
    def cancel_ml_task_run(params = {}, options = {})
      req = build_request(:cancel_ml_task_run, params)
      req.send_request(options)
    end

    # Cancels the statement.
    #
    # @option params [required, String] :session_id
    #   The Session ID of the statement to be cancelled.
    #
    # @option params [required, Integer] :id
    #   The ID of the statement to be cancelled.
    #
    # @option params [String] :request_origin
    #   The origin of the request to cancel the statement.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_statement({
    #     session_id: "NameString", # required
    #     id: 1, # required
    #     request_origin: "OrchestrationNameString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelStatement AWS API Documentation
    #
    # @overload cancel_statement(params = {})
    # @param [Hash] params ({})
    def cancel_statement(params = {}, options = {})
      req = build_request(:cancel_statement, params)
      req.send_request(options)
    end

    # Validates the supplied schema. This call has no side effects, it
    # simply validates using the supplied schema using `DataFormat` as the
    # format. Since it does not take a schema set name, no compatibility
    # checks are performed.
    #
    # @option params [required, String] :data_format
    #   The data format of the schema definition. Currently `AVRO`, `JSON` and
    #   `PROTOBUF` are supported.
    #
    # @option params [required, String] :schema_definition
    #   The definition of the schema that has to be validated.
    #
    # @return [Types::CheckSchemaVersionValidityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CheckSchemaVersionValidityResponse#valid #valid} => Boolean
    #   * {Types::CheckSchemaVersionValidityResponse#error #error} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.check_schema_version_validity({
    #     data_format: "AVRO", # required, accepts AVRO, JSON, PROTOBUF
    #     schema_definition: "SchemaDefinitionString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.valid #=> Boolean
    #   resp.error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CheckSchemaVersionValidity AWS API Documentation
    #
    # @overload check_schema_version_validity(params = {})
    # @param [Hash] params ({})
    def check_schema_version_validity(params = {}, options = {})
      req = build_request(:check_schema_version_validity, params)
      req.send_request(options)
    end

    # Registers a blueprint with Glue.
    #
    # @option params [required, String] :name
    #   The name of the blueprint.
    #
    # @option params [String] :description
    #   A description of the blueprint.
    #
    # @option params [required, String] :blueprint_location
    #   Specifies a path in Amazon S3 where the blueprint is published.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be applied to this blueprint.
    #
    # @return [Types::CreateBlueprintResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBlueprintResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_blueprint({
    #     name: "OrchestrationNameString", # required
    #     description: "Generic512CharString",
    #     blueprint_location: "OrchestrationS3Location", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateBlueprint AWS API Documentation
    #
    # @overload create_blueprint(params = {})
    # @param [Hash] params ({})
    def create_blueprint(params = {}, options = {})
      req = build_request(:create_blueprint, params)
      req.send_request(options)
    end

    # Creates a classifier in the user's account. This can be a
    # `GrokClassifier`, an `XMLClassifier`, a `JsonClassifier`, or a
    # `CsvClassifier`, depending on which field of the request is present.
    #
    # @option params [Types::CreateGrokClassifierRequest] :grok_classifier
    #   A `GrokClassifier` object specifying the classifier to create.
    #
    # @option params [Types::CreateXMLClassifierRequest] :xml_classifier
    #   An `XMLClassifier` object specifying the classifier to create.
    #
    # @option params [Types::CreateJsonClassifierRequest] :json_classifier
    #   A `JsonClassifier` object specifying the classifier to create.
    #
    # @option params [Types::CreateCsvClassifierRequest] :csv_classifier
    #   A `CsvClassifier` object specifying the classifier to create.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_classifier({
    #     grok_classifier: {
    #       classification: "Classification", # required
    #       name: "NameString", # required
    #       grok_pattern: "GrokPattern", # required
    #       custom_patterns: "CustomPatterns",
    #     },
    #     xml_classifier: {
    #       classification: "Classification", # required
    #       name: "NameString", # required
    #       row_tag: "RowTag",
    #     },
    #     json_classifier: {
    #       name: "NameString", # required
    #       json_path: "JsonPath", # required
    #     },
    #     csv_classifier: {
    #       name: "NameString", # required
    #       delimiter: "CsvColumnDelimiter",
    #       quote_symbol: "CsvQuoteSymbol",
    #       contains_header: "UNKNOWN", # accepts UNKNOWN, PRESENT, ABSENT
    #       header: ["NameString"],
    #       disable_value_trimming: false,
    #       allow_single_column: false,
    #       custom_datatype_configured: false,
    #       custom_datatypes: ["NameString"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateClassifier AWS API Documentation
    #
    # @overload create_classifier(params = {})
    # @param [Hash] params ({})
    def create_classifier(params = {}, options = {})
      req = build_request(:create_classifier, params)
      req.send_request(options)
    end

    # Creates a connection definition in the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which to create the connection. If none
    #   is provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, Types::ConnectionInput] :connection_input
    #   A `ConnectionInput` object defining the connection to create.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags you assign to the connection.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection({
    #     catalog_id: "CatalogIdString",
    #     connection_input: { # required
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       connection_type: "JDBC", # required, accepts JDBC, SFTP, MONGODB, KAFKA, NETWORK, MARKETPLACE, CUSTOM
    #       match_criteria: ["NameString"],
    #       connection_properties: { # required
    #         "HOST" => "ValueString",
    #       },
    #       physical_connection_requirements: {
    #         subnet_id: "NameString",
    #         security_group_id_list: ["NameString"],
    #         availability_zone: "NameString",
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateConnection AWS API Documentation
    #
    # @overload create_connection(params = {})
    # @param [Hash] params ({})
    def create_connection(params = {}, options = {})
      req = build_request(:create_connection, params)
      req.send_request(options)
    end

    # Creates a new crawler with specified targets, role, configuration, and
    # optional schedule. At least one crawl target must be specified, in the
    # `s3Targets` field, the `jdbcTargets` field, or the `DynamoDBTargets`
    # field.
    #
    # @option params [required, String] :name
    #   Name of the new crawler.
    #
    # @option params [required, String] :role
    #   The IAM role or Amazon Resource Name (ARN) of an IAM role used by the
    #   new crawler to access customer resources.
    #
    # @option params [String] :database_name
    #   The Glue database where results are written, such as:
    #   `arn:aws:daylight:us-east-1::database/sometable/*`.
    #
    # @option params [String] :description
    #   A description of the new crawler.
    #
    # @option params [required, Types::CrawlerTargets] :targets
    #   A list of collection of targets to crawl.
    #
    # @option params [String] :schedule
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #
    # @option params [Array<String>] :classifiers
    #   A list of custom classifiers that the user has registered. By default,
    #   all built-in classifiers are included in a crawl, but these custom
    #   classifiers always override the default classifiers for a given
    #   classification.
    #
    # @option params [String] :table_prefix
    #   The table prefix used for catalog tables that are created.
    #
    # @option params [Types::SchemaChangePolicy] :schema_change_policy
    #   The policy for the crawler's update and deletion behavior.
    #
    # @option params [Types::RecrawlPolicy] :recrawl_policy
    #   A policy that specifies whether to crawl the entire dataset again, or
    #   to crawl only folders that were added since the last crawler run.
    #
    # @option params [Types::LineageConfiguration] :lineage_configuration
    #   Specifies data lineage configuration settings for the crawler.
    #
    # @option params [Types::LakeFormationConfiguration] :lake_formation_configuration
    #   Specifies Lake Formation configuration settings for the crawler.
    #
    # @option params [String] :configuration
    #   Crawler configuration information. This versioned JSON string allows
    #   users to specify aspects of a crawler's behavior. For more
    #   information, see [Setting crawler configuration options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html
    #
    # @option params [String] :crawler_security_configuration
    #   The name of the `SecurityConfiguration` structure to be used by this
    #   crawler.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to use with this crawler request. You may use tags to limit
    #   access to the crawler. For more information about tags in Glue, see
    #   [Amazon Web Services Tags in Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_crawler({
    #     name: "NameString", # required
    #     role: "Role", # required
    #     database_name: "DatabaseName",
    #     description: "DescriptionString",
    #     targets: { # required
    #       s3_targets: [
    #         {
    #           path: "Path",
    #           exclusions: ["Path"],
    #           connection_name: "ConnectionName",
    #           sample_size: 1,
    #           event_queue_arn: "EventQueueArn",
    #           dlq_event_queue_arn: "EventQueueArn",
    #         },
    #       ],
    #       jdbc_targets: [
    #         {
    #           connection_name: "ConnectionName",
    #           path: "Path",
    #           exclusions: ["Path"],
    #           enable_additional_metadata: ["COMMENTS"], # accepts COMMENTS, RAWTYPES
    #         },
    #       ],
    #       mongo_db_targets: [
    #         {
    #           connection_name: "ConnectionName",
    #           path: "Path",
    #           scan_all: false,
    #         },
    #       ],
    #       dynamo_db_targets: [
    #         {
    #           path: "Path",
    #           scan_all: false,
    #           scan_rate: 1.0,
    #         },
    #       ],
    #       catalog_targets: [
    #         {
    #           database_name: "NameString", # required
    #           tables: ["NameString"], # required
    #           connection_name: "ConnectionName",
    #           event_queue_arn: "EventQueueArn",
    #           dlq_event_queue_arn: "EventQueueArn",
    #         },
    #       ],
    #       delta_targets: [
    #         {
    #           delta_tables: ["Path"],
    #           connection_name: "ConnectionName",
    #           write_manifest: false,
    #           create_native_delta_table: false,
    #         },
    #       ],
    #       iceberg_targets: [
    #         {
    #           paths: ["Path"],
    #           connection_name: "ConnectionName",
    #           exclusions: ["Path"],
    #           maximum_traversal_depth: 1,
    #         },
    #       ],
    #     },
    #     schedule: "CronExpression",
    #     classifiers: ["NameString"],
    #     table_prefix: "TablePrefix",
    #     schema_change_policy: {
    #       update_behavior: "LOG", # accepts LOG, UPDATE_IN_DATABASE
    #       delete_behavior: "LOG", # accepts LOG, DELETE_FROM_DATABASE, DEPRECATE_IN_DATABASE
    #     },
    #     recrawl_policy: {
    #       recrawl_behavior: "CRAWL_EVERYTHING", # accepts CRAWL_EVERYTHING, CRAWL_NEW_FOLDERS_ONLY, CRAWL_EVENT_MODE
    #     },
    #     lineage_configuration: {
    #       crawler_lineage_settings: "ENABLE", # accepts ENABLE, DISABLE
    #     },
    #     lake_formation_configuration: {
    #       use_lake_formation_credentials: false,
    #       account_id: "AccountId",
    #     },
    #     configuration: "CrawlerConfiguration",
    #     crawler_security_configuration: "CrawlerSecurityConfiguration",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCrawler AWS API Documentation
    #
    # @overload create_crawler(params = {})
    # @param [Hash] params ({})
    def create_crawler(params = {}, options = {})
      req = build_request(:create_crawler, params)
      req.send_request(options)
    end

    # Creates a custom pattern that is used to detect sensitive data across
    # the columns and rows of your structured data.
    #
    # Each custom pattern you create specifies a regular expression and an
    # optional list of context words. If no context words are passed only a
    # regular expression is checked.
    #
    # @option params [required, String] :name
    #   A name for the custom pattern that allows it to be retrieved or
    #   deleted later. This name must be unique per Amazon Web Services
    #   account.
    #
    # @option params [required, String] :regex_string
    #   A regular expression string that is used for detecting sensitive data
    #   in a custom pattern.
    #
    # @option params [Array<String>] :context_words
    #   A list of context words. If none of these context words are found
    #   within the vicinity of the regular expression the data will not be
    #   detected as sensitive data.
    #
    #   If no context words are passed only a regular expression is checked.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags applied to the custom entity type.
    #
    # @return [Types::CreateCustomEntityTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomEntityTypeResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_entity_type({
    #     name: "NameString", # required
    #     regex_string: "NameString", # required
    #     context_words: ["NameString"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCustomEntityType AWS API Documentation
    #
    # @overload create_custom_entity_type(params = {})
    # @param [Hash] params ({})
    def create_custom_entity_type(params = {}, options = {})
      req = build_request(:create_custom_entity_type, params)
      req.send_request(options)
    end

    # Creates a data quality ruleset with DQDL rules applied to a specified
    # Glue table.
    #
    # You create the ruleset using the Data Quality Definition Language
    # (DQDL). For more information, see the Glue developer guide.
    #
    # @option params [required, String] :name
    #   A unique name for the data quality ruleset.
    #
    # @option params [String] :description
    #   A description of the data quality ruleset.
    #
    # @option params [required, String] :ruleset
    #   A Data Quality Definition Language (DQDL) ruleset. For more
    #   information, see the Glue developer guide.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags applied to the data quality ruleset.
    #
    # @option params [Types::DataQualityTargetTable] :target_table
    #   A target table associated with the data quality ruleset.
    #
    # @option params [String] :client_token
    #   Used for idempotency and is recommended to be set to a random ID (such
    #   as a UUID) to avoid creating or starting multiple instances of the
    #   same resource.
    #
    # @return [Types::CreateDataQualityRulesetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataQualityRulesetResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_quality_ruleset({
    #     name: "NameString", # required
    #     description: "DescriptionString",
    #     ruleset: "DataQualityRulesetString", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     target_table: {
    #       table_name: "NameString", # required
    #       database_name: "NameString", # required
    #       catalog_id: "NameString",
    #     },
    #     client_token: "HashString",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDataQualityRuleset AWS API Documentation
    #
    # @overload create_data_quality_ruleset(params = {})
    # @param [Hash] params ({})
    def create_data_quality_ruleset(params = {}, options = {})
      req = build_request(:create_data_quality_ruleset, params)
      req.send_request(options)
    end

    # Creates a new database in a Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which to create the database. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, Types::DatabaseInput] :database_input
    #   The metadata for the database.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags you assign to the database.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_database({
    #     catalog_id: "CatalogIdString",
    #     database_input: { # required
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       location_uri: "URI",
    #       parameters: {
    #         "KeyString" => "ParametersMapValue",
    #       },
    #       create_table_default_permissions: [
    #         {
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString",
    #           },
    #           permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #         },
    #       ],
    #       target_database: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         region: "NameString",
    #       },
    #       federated_database: {
    #         identifier: "FederationIdentifier",
    #         connection_name: "NameString",
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDatabase AWS API Documentation
    #
    # @overload create_database(params = {})
    # @param [Hash] params ({})
    def create_database(params = {}, options = {})
      req = build_request(:create_database, params)
      req.send_request(options)
    end

    # Creates a new development endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name to be assigned to the new `DevEndpoint`.
    #
    # @option params [required, String] :role_arn
    #   The IAM role for the `DevEndpoint`.
    #
    # @option params [Array<String>] :security_group_ids
    #   Security group IDs for the security groups to be used by the new
    #   `DevEndpoint`.
    #
    # @option params [String] :subnet_id
    #   The subnet ID for the new `DevEndpoint` to use.
    #
    # @option params [String] :public_key
    #   The public key to be used by this `DevEndpoint` for authentication.
    #   This attribute is provided for backward compatibility because the
    #   recommended attribute to use is public keys.
    #
    # @option params [Array<String>] :public_keys
    #   A list of public keys to be used by the development endpoints for
    #   authentication. The use of this attribute is preferred over a single
    #   public key because the public keys allow you to have a different
    #   private key per client.
    #
    #   <note markdown="1"> If you previously created an endpoint with a public key, you must
    #   remove that key to be able to set a list of public keys. Call the
    #   `UpdateDevEndpoint` API with the public key content in the
    #   `deletePublicKeys` attribute, and the list of new keys in the
    #   `addPublicKeys` attribute.
    #
    #    </note>
    #
    # @option params [Integer] :number_of_nodes
    #   The number of Glue Data Processing Units (DPUs) to allocate to this
    #   `DevEndpoint`.
    #
    # @option params [String] :worker_type
    #   The type of predefined worker that is allocated to the development
    #   endpoint. Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
    #     of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
    #     of memory, 128 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   Known issue: when a development endpoint is created with the `G.2X`
    #   `WorkerType` configuration, the Spark drivers for the development
    #   endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.
    #
    # @option params [String] :glue_version
    #   Glue version determines the versions of Apache Spark and Python that
    #   Glue supports. The Python version indicates the version supported for
    #   running your ETL scripts on development endpoints.
    #
    #   For more information about the available Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in the
    #   developer guide.
    #
    #   Development endpoints that are created without specifying a Glue
    #   version default to Glue 0.9.
    #
    #   You can specify a version of Python support for development endpoints
    #   by using the `Arguments` parameter in the `CreateDevEndpoint` or
    #   `UpdateDevEndpoint` APIs. If no arguments are provided, the version
    #   defaults to Python 2.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #
    # @option params [Integer] :number_of_workers
    #   The number of workers of a defined `workerType` that are allocated to
    #   the development endpoint.
    #
    #   The maximum number of workers you can define are 299 for `G.1X`, and
    #   149 for `G.2X`.
    #
    # @option params [String] :extra_python_libs_s3_path
    #   The paths to one or more Python libraries in an Amazon S3 bucket that
    #   should be loaded in your `DevEndpoint`. Multiple values must be
    #   complete paths separated by a comma.
    #
    #   <note markdown="1"> You can only use pure Python libraries with a `DevEndpoint`. Libraries
    #   that rely on C extensions, such as the [pandas][1] Python data
    #   analysis library, are not yet supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://pandas.pydata.org/
    #
    # @option params [String] :extra_jars_s3_path
    #   The path to one or more Java `.jar` files in an S3 bucket that should
    #   be loaded in your `DevEndpoint`.
    #
    # @option params [String] :security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with this
    #   `DevEndpoint`.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to use with this DevEndpoint. You may use tags to limit
    #   access to the DevEndpoint. For more information about tags in Glue,
    #   see [Amazon Web Services Tags in Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #
    # @option params [Hash<String,String>] :arguments
    #   A map of arguments used to configure the `DevEndpoint`.
    #
    # @return [Types::CreateDevEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDevEndpointResponse#endpoint_name #endpoint_name} => String
    #   * {Types::CreateDevEndpointResponse#status #status} => String
    #   * {Types::CreateDevEndpointResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #   * {Types::CreateDevEndpointResponse#subnet_id #subnet_id} => String
    #   * {Types::CreateDevEndpointResponse#role_arn #role_arn} => String
    #   * {Types::CreateDevEndpointResponse#yarn_endpoint_address #yarn_endpoint_address} => String
    #   * {Types::CreateDevEndpointResponse#zeppelin_remote_spark_interpreter_port #zeppelin_remote_spark_interpreter_port} => Integer
    #   * {Types::CreateDevEndpointResponse#number_of_nodes #number_of_nodes} => Integer
    #   * {Types::CreateDevEndpointResponse#worker_type #worker_type} => String
    #   * {Types::CreateDevEndpointResponse#glue_version #glue_version} => String
    #   * {Types::CreateDevEndpointResponse#number_of_workers #number_of_workers} => Integer
    #   * {Types::CreateDevEndpointResponse#availability_zone #availability_zone} => String
    #   * {Types::CreateDevEndpointResponse#vpc_id #vpc_id} => String
    #   * {Types::CreateDevEndpointResponse#extra_python_libs_s3_path #extra_python_libs_s3_path} => String
    #   * {Types::CreateDevEndpointResponse#extra_jars_s3_path #extra_jars_s3_path} => String
    #   * {Types::CreateDevEndpointResponse#failure_reason #failure_reason} => String
    #   * {Types::CreateDevEndpointResponse#security_configuration #security_configuration} => String
    #   * {Types::CreateDevEndpointResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::CreateDevEndpointResponse#arguments #arguments} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dev_endpoint({
    #     endpoint_name: "GenericString", # required
    #     role_arn: "RoleArn", # required
    #     security_group_ids: ["GenericString"],
    #     subnet_id: "GenericString",
    #     public_key: "GenericString",
    #     public_keys: ["GenericString"],
    #     number_of_nodes: 1,
    #     worker_type: "Standard", # accepts Standard, G.1X, G.2X, G.025X, G.4X, G.8X, Z.2X
    #     glue_version: "GlueVersionString",
    #     number_of_workers: 1,
    #     extra_python_libs_s3_path: "GenericString",
    #     extra_jars_s3_path: "GenericString",
    #     security_configuration: "NameString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     arguments: {
    #       "GenericString" => "GenericString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_name #=> String
    #   resp.status #=> String
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #   resp.subnet_id #=> String
    #   resp.role_arn #=> String
    #   resp.yarn_endpoint_address #=> String
    #   resp.zeppelin_remote_spark_interpreter_port #=> Integer
    #   resp.number_of_nodes #=> Integer
    #   resp.worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.glue_version #=> String
    #   resp.number_of_workers #=> Integer
    #   resp.availability_zone #=> String
    #   resp.vpc_id #=> String
    #   resp.extra_python_libs_s3_path #=> String
    #   resp.extra_jars_s3_path #=> String
    #   resp.failure_reason #=> String
    #   resp.security_configuration #=> String
    #   resp.created_timestamp #=> Time
    #   resp.arguments #=> Hash
    #   resp.arguments["GenericString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDevEndpoint AWS API Documentation
    #
    # @overload create_dev_endpoint(params = {})
    # @param [Hash] params ({})
    def create_dev_endpoint(params = {}, options = {})
      req = build_request(:create_dev_endpoint, params)
      req.send_request(options)
    end

    # Creates a new job definition.
    #
    # @option params [required, String] :name
    #   The name you assign to this job definition. It must be unique in your
    #   account.
    #
    # @option params [String] :description
    #   Description of the job being defined.
    #
    # @option params [String] :log_uri
    #   This field is reserved for future use.
    #
    # @option params [required, String] :role
    #   The name or Amazon Resource Name (ARN) of the IAM role associated with
    #   this job.
    #
    # @option params [Types::ExecutionProperty] :execution_property
    #   An `ExecutionProperty` specifying the maximum number of concurrent
    #   runs allowed for this job.
    #
    # @option params [required, Types::JobCommand] :command
    #   The `JobCommand` that runs this job.
    #
    # @option params [Hash<String,String>] :default_arguments
    #   The default arguments for every run of this job, specified as
    #   name-value pairs.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that Glue itself consumes.
    #
    #   Job arguments may be logged. Do not pass plaintext secrets as
    #   arguments. Retrieve secrets from a Glue Connection, Secrets Manager or
    #   other secret management mechanism if you intend to keep them within
    #   the Job.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the arguments you can provide to this field when
    #   configuring Spark jobs, see the [Special Parameters Used by Glue][2]
    #   topic in the developer guide.
    #
    #   For information about the arguments you can provide to this field when
    #   configuring Ray jobs, see [Using job parameters in Ray jobs][3] in the
    #   developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   [3]: https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html
    #
    # @option params [Hash<String,String>] :non_overridable_arguments
    #   Arguments for this job that are not overridden when providing job
    #   arguments in a job run, specified as name-value pairs.
    #
    # @option params [Types::ConnectionsList] :connections
    #   The connections used for this job.
    #
    # @option params [Integer] :max_retries
    #   The maximum number of times to retry this job if it fails.
    #
    # @option params [Integer] :allocated_capacity
    #   This parameter is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of Glue data processing units (DPUs) to allocate to this
    #   Job. You can allocate a minimum of 2 DPUs; the default is 10. A DPU is
    #   a relative measure of processing power that consists of 4 vCPUs of
    #   compute capacity and 16 GB of memory. For more information, see the
    #   [Glue pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #
    # @option params [Integer] :timeout
    #   The job timeout in minutes. This is the maximum time that a job run
    #   can consume resources before it is terminated and enters `TIMEOUT`
    #   status. The default is 2,880 minutes (48 hours).
    #
    # @option params [Float] :max_capacity
    #   For Glue version 1.0 or earlier jobs, using the standard worker type,
    #   the number of Glue data processing units (DPUs) that can be allocated
    #   when this job runs. A DPU is a relative measure of processing power
    #   that consists of 4 vCPUs of compute capacity and 16 GB of memory. For
    #   more information, see the [ Glue pricing page][1].
    #
    #   For Glue version 2.0+ jobs, you cannot specify a `Maximum capacity`.
    #   Instead, you should specify a `Worker type` and the `Number of
    #   workers`.
    #
    #   Do not set `MaxCapacity` if using `WorkerType` and `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job, an Apache Spark ETL job, or an
    #   Apache Spark streaming ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either 0.0625
    #     or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl") or Apache Spark streaming ETL job
    #     (`JobCommand.Name`="gluestreaming"), you can allocate from 2 to
    #     100 DPUs. The default is 10 DPUs. This job type cannot have a
    #     fractional DPU allocation.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #
    # @option params [String] :security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with this
    #   job.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to use with this job. You may use tags to limit access to the
    #   job. For more information about tags in Glue, see [Amazon Web Services
    #   Tags in Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #
    # @option params [Types::NotificationProperty] :notification_property
    #   Specifies configuration properties of a job notification.
    #
    # @option params [String] :glue_version
    #   In Spark jobs, `GlueVersion` determines the versions of Apache Spark
    #   and Python that Glue available in a job. The Python version indicates
    #   the version supported for jobs of type Spark.
    #
    #   Ray jobs should set `GlueVersion` to `4.0` or greater. However, the
    #   versions of Ray, Python and additional libraries available in your Ray
    #   job are determined by the `Runtime` parameter of the Job command.
    #
    #   For more information about the available Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in the
    #   developer guide.
    #
    #   Jobs that are created without specifying a Glue version default to
    #   Glue 0.9.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #
    # @option params [Integer] :number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #
    # @option params [String] :worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of Standard, G.1X, G.2X, or G.025X for Spark jobs.
    #   Accepts the value Z.2X for Ray jobs.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
    #     of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
    #     of memory, 128 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.025X` worker type, each worker maps to 0.25 DPU (2 vCPU,
    #     4 GB of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for low volume streaming jobs. This
    #     worker type is only available for Glue version 3.0 streaming jobs.
    #
    #   * For the `Z.2X` worker type, each worker maps to 2 M-DPU (8vCPU, 64
    #     GB of m emory, 128 GB disk), and provides up to 8 Ray workers based
    #     on the autoscaler.
    #
    # @option params [Hash<String,Types::CodeGenConfigurationNode>] :code_gen_configuration_nodes
    #   The representation of a directed acyclic graph on which both the Glue
    #   Studio visual component and Glue Studio code generation is based.
    #
    # @option params [String] :execution_class
    #   Indicates whether the job is run with a standard or flexible execution
    #   class. The standard execution-class is ideal for time-sensitive
    #   workloads that require fast job startup and dedicated resources.
    #
    #   The flexible execution class is appropriate for time-insensitive jobs
    #   whose start and completion times may vary.
    #
    #   Only jobs with Glue version 3.0 and above and command type `glueetl`
    #   will be allowed to set `ExecutionClass` to `FLEX`. The flexible
    #   execution class is available for Spark jobs.
    #
    # @option params [Types::SourceControlDetails] :source_control_details
    #   The details for a source control configuration for a job, allowing
    #   synchronization of job artifacts to or from a remote repository.
    #
    # @return [Types::CreateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResponse#name #name} => String
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateJob AWS API Documentation
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # Creates an Glue machine learning transform. This operation creates the
    # transform and all the necessary parameters to train it.
    #
    # Call this operation as the first step in the process of using a
    # machine learning transform (such as the `FindMatches` transform) for
    # deduplicating data. You can provide an optional `Description`, in
    # addition to the parameters that you want to use for your algorithm.
    #
    # You must also specify certain parameters for the tasks that Glue runs
    # on your behalf as part of learning from your data and creating a
    # high-quality machine learning transform. These parameters include
    # `Role`, and optionally, `AllocatedCapacity`, `Timeout`, and
    # `MaxRetries`. For more information, see [Jobs][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html
    #
    # @option params [required, String] :name
    #   The unique name that you give the transform when you create it.
    #
    # @option params [String] :description
    #   A description of the machine learning transform that is being defined.
    #   The default is an empty string.
    #
    # @option params [required, Array<Types::GlueTable>] :input_record_tables
    #   A list of Glue table definitions used by the transform.
    #
    # @option params [required, Types::TransformParameters] :parameters
    #   The algorithmic parameters that are specific to the transform type
    #   used. Conditionally dependent on the transform type.
    #
    # @option params [required, String] :role
    #   The name or Amazon Resource Name (ARN) of the IAM role with the
    #   required permissions. The required permissions include both Glue
    #   service role permissions to Glue resources, and Amazon S3 permissions
    #   required by the transform.
    #
    #   * This role needs Glue service role permissions to allow access to
    #     resources in Glue. See [Attach a Policy to IAM Users That Access
    #     Glue][1].
    #
    #   * This role needs permission to your Amazon Simple Storage Service
    #     (Amazon S3) sources, targets, temporary directory, scripts, and any
    #     libraries used by the task run for this transform.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html
    #
    # @option params [String] :glue_version
    #   This value determines which version of Glue this machine learning
    #   transform is compatible with. Glue 1.0 is recommended for most
    #   customers. If the value is not set, the Glue compatibility defaults to
    #   Glue 0.9. For more information, see [Glue Versions][1] in the
    #   developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #
    # @option params [Float] :max_capacity
    #   The number of Glue data processing units (DPUs) that are allocated to
    #   task runs for this transform. You can allocate from 2 to 100 DPUs; the
    #   default is 10. A DPU is a relative measure of processing power that
    #   consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
    #   information, see the [Glue pricing page][1].
    #
    #   `MaxCapacity` is a mutually exclusive option with `NumberOfWorkers`
    #   and `WorkerType`.
    #
    #   * If either `NumberOfWorkers` or `WorkerType` is set, then
    #     `MaxCapacity` cannot be set.
    #
    #   * If `MaxCapacity` is set then neither `NumberOfWorkers` or
    #     `WorkerType` can be set.
    #
    #   * If `WorkerType` is set, then `NumberOfWorkers` is required (and vice
    #     versa).
    #
    #   * `MaxCapacity` and `NumberOfWorkers` must both be at least 1.
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #
    # @option params [String] :worker_type
    #   The type of predefined worker that is allocated when this task runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #
    #   `MaxCapacity` is a mutually exclusive option with `NumberOfWorkers`
    #   and `WorkerType`.
    #
    #   * If either `NumberOfWorkers` or `WorkerType` is set, then
    #     `MaxCapacity` cannot be set.
    #
    #   * If `MaxCapacity` is set then neither `NumberOfWorkers` or
    #     `WorkerType` can be set.
    #
    #   * If `WorkerType` is set, then `NumberOfWorkers` is required (and vice
    #     versa).
    #
    #   * `MaxCapacity` and `NumberOfWorkers` must both be at least 1.
    #
    # @option params [Integer] :number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when this task runs.
    #
    #   If `WorkerType` is set, then `NumberOfWorkers` is required (and vice
    #   versa).
    #
    # @option params [Integer] :timeout
    #   The timeout of the task run for this transform in minutes. This is the
    #   maximum time that a task run for this transform can consume resources
    #   before it is terminated and enters `TIMEOUT` status. The default is
    #   2,880 minutes (48 hours).
    #
    # @option params [Integer] :max_retries
    #   The maximum number of times to retry a task for this transform after a
    #   task run fails.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to use with this machine learning transform. You may use tags
    #   to limit access to the machine learning transform. For more
    #   information about tags in Glue, see [Amazon Web Services Tags in
    #   Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #
    # @option params [Types::TransformEncryption] :transform_encryption
    #   The encryption-at-rest settings of the transform that apply to
    #   accessing user data. Machine learning transforms can access user data
    #   encrypted in Amazon S3 using KMS.
    #
    # @return [Types::CreateMLTransformResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMLTransformResponse#transform_id #transform_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ml_transform({
    #     name: "NameString", # required
    #     description: "DescriptionString",
    #     input_record_tables: [ # required
    #       {
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         catalog_id: "NameString",
    #         connection_name: "NameString",
    #         additional_options: {
    #           "NameString" => "DescriptionString",
    #         },
    #       },
    #     ],
    #     parameters: { # required
    #       transform_type: "FIND_MATCHES", # required, accepts FIND_MATCHES
    #       find_matches_parameters: {
    #         primary_key_column_name: "ColumnNameString",
    #         precision_recall_tradeoff: 1.0,
    #         accuracy_cost_tradeoff: 1.0,
    #         enforce_provided_labels: false,
    #       },
    #     },
    #     role: "RoleString", # required
    #     glue_version: "GlueVersionString",
    #     max_capacity: 1.0,
    #     worker_type: "Standard", # accepts Standard, G.1X, G.2X, G.025X, G.4X, G.8X, Z.2X
    #     number_of_workers: 1,
    #     timeout: 1,
    #     max_retries: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     transform_encryption: {
    #       ml_user_data_encryption: {
    #         ml_user_data_encryption_mode: "DISABLED", # required, accepts DISABLED, SSE-KMS
    #         kms_key_id: "NameString",
    #       },
    #       task_run_security_configuration_name: "NameString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateMLTransform AWS API Documentation
    #
    # @overload create_ml_transform(params = {})
    # @param [Hash] params ({})
    def create_ml_transform(params = {}, options = {})
      req = build_request(:create_ml_transform, params)
      req.send_request(options)
    end

    # Creates a new partition.
    #
    # @option params [String] :catalog_id
    #   The Amazon Web Services account ID of the catalog in which the
    #   partition is to be created.
    #
    # @option params [required, String] :database_name
    #   The name of the metadata database in which the partition is to be
    #   created.
    #
    # @option params [required, String] :table_name
    #   The name of the metadata table in which the partition is to be
    #   created.
    #
    # @option params [required, Types::PartitionInput] :partition_input
    #   A `PartitionInput` structure defining the partition to be created.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_input: { # required
    #       values: ["ValueString"],
    #       last_access_time: Time.now,
    #       storage_descriptor: {
    #         columns: [
    #           {
    #             name: "NameString", # required
    #             type: "ColumnTypeString",
    #             comment: "CommentString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #         ],
    #         location: "LocationString",
    #         additional_locations: ["LocationString"],
    #         input_format: "FormatString",
    #         output_format: "FormatString",
    #         compressed: false,
    #         number_of_buckets: 1,
    #         serde_info: {
    #           name: "NameString",
    #           serialization_library: "NameString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #         bucket_columns: ["NameString"],
    #         sort_columns: [
    #           {
    #             column: "NameString", # required
    #             sort_order: 1, # required
    #           },
    #         ],
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         skewed_info: {
    #           skewed_column_names: ["NameString"],
    #           skewed_column_values: ["ColumnValuesString"],
    #           skewed_column_value_location_maps: {
    #             "ColumnValuesString" => "ColumnValuesString",
    #           },
    #         },
    #         stored_as_sub_directories: false,
    #         schema_reference: {
    #           schema_id: {
    #             schema_arn: "GlueResourceArn",
    #             schema_name: "SchemaRegistryNameString",
    #             registry_name: "SchemaRegistryNameString",
    #           },
    #           schema_version_id: "SchemaVersionIdString",
    #           schema_version_number: 1,
    #         },
    #       },
    #       parameters: {
    #         "KeyString" => "ParametersMapValue",
    #       },
    #       last_analyzed_time: Time.now,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreatePartition AWS API Documentation
    #
    # @overload create_partition(params = {})
    # @param [Hash] params ({})
    def create_partition(params = {}, options = {})
      req = build_request(:create_partition, params)
      req.send_request(options)
    end

    # Creates a specified partition index in an existing table.
    #
    # @option params [String] :catalog_id
    #   The catalog ID where the table resides.
    #
    # @option params [required, String] :database_name
    #   Specifies the name of a database in which you want to create a
    #   partition index.
    #
    # @option params [required, String] :table_name
    #   Specifies the name of a table in which you want to create a partition
    #   index.
    #
    # @option params [required, Types::PartitionIndex] :partition_index
    #   Specifies a `PartitionIndex` structure to create a partition index in
    #   an existing table.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_partition_index({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_index: { # required
    #       keys: ["NameString"], # required
    #       index_name: "NameString", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreatePartitionIndex AWS API Documentation
    #
    # @overload create_partition_index(params = {})
    # @param [Hash] params ({})
    def create_partition_index(params = {}, options = {})
      req = build_request(:create_partition_index, params)
      req.send_request(options)
    end

    # Creates a new registry which may be used to hold a collection of
    # schemas.
    #
    # @option params [required, String] :registry_name
    #   Name of the registry to be created of max length of 255, and may only
    #   contain letters, numbers, hyphen, underscore, dollar sign, or hash
    #   mark. No whitespace.
    #
    # @option params [String] :description
    #   A description of the registry. If description is not provided, there
    #   will not be any default value for this.
    #
    # @option params [Hash<String,String>] :tags
    #   Amazon Web Services tags that contain a key value pair and may be
    #   searched by console, command line, or API.
    #
    # @return [Types::CreateRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRegistryResponse#registry_arn #registry_arn} => String
    #   * {Types::CreateRegistryResponse#registry_name #registry_name} => String
    #   * {Types::CreateRegistryResponse#description #description} => String
    #   * {Types::CreateRegistryResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_registry({
    #     registry_name: "SchemaRegistryNameString", # required
    #     description: "DescriptionString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_arn #=> String
    #   resp.registry_name #=> String
    #   resp.description #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateRegistry AWS API Documentation
    #
    # @overload create_registry(params = {})
    # @param [Hash] params ({})
    def create_registry(params = {}, options = {})
      req = build_request(:create_registry, params)
      req.send_request(options)
    end

    # Creates a new schema set and registers the schema definition. Returns
    # an error if the schema set already exists without actually registering
    # the version.
    #
    # When the schema set is created, a version checkpoint will be set to
    # the first version. Compatibility mode "DISABLED" restricts any
    # additional schema versions from being added after the first schema
    # version. For all other compatibility modes, validation of
    # compatibility settings will be applied only from the second version
    # onwards when the `RegisterSchemaVersion` API is used.
    #
    # When this API is called without a `RegistryId`, this will create an
    # entry for a "default-registry" in the registry database tables, if
    # it is not already present.
    #
    # @option params [Types::RegistryId] :registry_id
    #   This is a wrapper shape to contain the registry identity fields. If
    #   this is not provided, the default registry will be used. The ARN
    #   format for the same will be: `arn:aws:glue:us-east-2:<customer
    #   id>:registry/default-registry:random-5-letter-id`.
    #
    # @option params [required, String] :schema_name
    #   Name of the schema to be created of max length of 255, and may only
    #   contain letters, numbers, hyphen, underscore, dollar sign, or hash
    #   mark. No whitespace.
    #
    # @option params [required, String] :data_format
    #   The data format of the schema definition. Currently `AVRO`, `JSON` and
    #   `PROTOBUF` are supported.
    #
    # @option params [String] :compatibility
    #   The compatibility mode of the schema. The possible values are:
    #
    #   * *NONE*: No compatibility mode applies. You can use this choice in
    #     development scenarios or if you do not know the compatibility mode
    #     that you want to apply to schemas. Any new version added will be
    #     accepted without undergoing a compatibility check.
    #
    #   * *DISABLED*: This compatibility choice prevents versioning for a
    #     particular schema. You can use this choice to prevent future
    #     versioning of a schema.
    #
    #   * *BACKWARD*: This compatibility choice is recommended as it allows
    #     data receivers to read both the current and one previous schema
    #     version. This means that for instance, a new schema version cannot
    #     drop data fields or change the type of these fields, so they can't
    #     be read by readers using the previous version.
    #
    #   * *BACKWARD\_ALL*: This compatibility choice allows data receivers to
    #     read both the current and all previous schema versions. You can use
    #     this choice when you need to delete fields or add optional fields,
    #     and check compatibility against all previous schema versions.
    #
    #   * *FORWARD*: This compatibility choice allows data receivers to read
    #     both the current and one next schema version, but not necessarily
    #     later versions. You can use this choice when you need to add fields
    #     or delete optional fields, but only check compatibility against the
    #     last schema version.
    #
    #   * *FORWARD\_ALL*: This compatibility choice allows data receivers to
    #     read written by producers of any new registered schema. You can use
    #     this choice when you need to add fields or delete optional fields,
    #     and check compatibility against all previous schema versions.
    #
    #   * *FULL*: This compatibility choice allows data receivers to read data
    #     written by producers using the previous or next version of the
    #     schema, but not necessarily earlier or later versions. You can use
    #     this choice when you need to add or remove optional fields, but only
    #     check compatibility against the last schema version.
    #
    #   * *FULL\_ALL*: This compatibility choice allows data receivers to read
    #     data written by producers using all previous schema versions. You
    #     can use this choice when you need to add or remove optional fields,
    #     and check compatibility against all previous schema versions.
    #
    # @option params [String] :description
    #   An optional description of the schema. If description is not provided,
    #   there will not be any automatic default value for this.
    #
    # @option params [Hash<String,String>] :tags
    #   Amazon Web Services tags that contain a key value pair and may be
    #   searched by console, command line, or API. If specified, follows the
    #   Amazon Web Services tags-on-create pattern.
    #
    # @option params [String] :schema_definition
    #   The schema definition using the `DataFormat` setting for `SchemaName`.
    #
    # @return [Types::CreateSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSchemaResponse#registry_name #registry_name} => String
    #   * {Types::CreateSchemaResponse#registry_arn #registry_arn} => String
    #   * {Types::CreateSchemaResponse#schema_name #schema_name} => String
    #   * {Types::CreateSchemaResponse#schema_arn #schema_arn} => String
    #   * {Types::CreateSchemaResponse#description #description} => String
    #   * {Types::CreateSchemaResponse#data_format #data_format} => String
    #   * {Types::CreateSchemaResponse#compatibility #compatibility} => String
    #   * {Types::CreateSchemaResponse#schema_checkpoint #schema_checkpoint} => Integer
    #   * {Types::CreateSchemaResponse#latest_schema_version #latest_schema_version} => Integer
    #   * {Types::CreateSchemaResponse#next_schema_version #next_schema_version} => Integer
    #   * {Types::CreateSchemaResponse#schema_status #schema_status} => String
    #   * {Types::CreateSchemaResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateSchemaResponse#schema_version_id #schema_version_id} => String
    #   * {Types::CreateSchemaResponse#schema_version_status #schema_version_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schema({
    #     registry_id: {
    #       registry_name: "SchemaRegistryNameString",
    #       registry_arn: "GlueResourceArn",
    #     },
    #     schema_name: "SchemaRegistryNameString", # required
    #     data_format: "AVRO", # required, accepts AVRO, JSON, PROTOBUF
    #     compatibility: "NONE", # accepts NONE, DISABLED, BACKWARD, BACKWARD_ALL, FORWARD, FORWARD_ALL, FULL, FULL_ALL
    #     description: "DescriptionString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     schema_definition: "SchemaDefinitionString",
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_name #=> String
    #   resp.registry_arn #=> String
    #   resp.schema_name #=> String
    #   resp.schema_arn #=> String
    #   resp.description #=> String
    #   resp.data_format #=> String, one of "AVRO", "JSON", "PROTOBUF"
    #   resp.compatibility #=> String, one of "NONE", "DISABLED", "BACKWARD", "BACKWARD_ALL", "FORWARD", "FORWARD_ALL", "FULL", "FULL_ALL"
    #   resp.schema_checkpoint #=> Integer
    #   resp.latest_schema_version #=> Integer
    #   resp.next_schema_version #=> Integer
    #   resp.schema_status #=> String, one of "AVAILABLE", "PENDING", "DELETING"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.schema_version_id #=> String
    #   resp.schema_version_status #=> String, one of "AVAILABLE", "PENDING", "FAILURE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateSchema AWS API Documentation
    #
    # @overload create_schema(params = {})
    # @param [Hash] params ({})
    def create_schema(params = {}, options = {})
      req = build_request(:create_schema, params)
      req.send_request(options)
    end

    # Transforms a directed acyclic graph (DAG) into code.
    #
    # @option params [Array<Types::CodeGenNode>] :dag_nodes
    #   A list of the nodes in the DAG.
    #
    # @option params [Array<Types::CodeGenEdge>] :dag_edges
    #   A list of the edges in the DAG.
    #
    # @option params [String] :language
    #   The programming language of the resulting code from the DAG.
    #
    # @return [Types::CreateScriptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScriptResponse#python_script #python_script} => String
    #   * {Types::CreateScriptResponse#scala_code #scala_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_script({
    #     dag_nodes: [
    #       {
    #         id: "CodeGenIdentifier", # required
    #         node_type: "CodeGenNodeType", # required
    #         args: [ # required
    #           {
    #             name: "CodeGenArgName", # required
    #             value: "CodeGenArgValue", # required
    #             param: false,
    #           },
    #         ],
    #         line_number: 1,
    #       },
    #     ],
    #     dag_edges: [
    #       {
    #         source: "CodeGenIdentifier", # required
    #         target: "CodeGenIdentifier", # required
    #         target_parameter: "CodeGenArgName",
    #       },
    #     ],
    #     language: "PYTHON", # accepts PYTHON, SCALA
    #   })
    #
    # @example Response structure
    #
    #   resp.python_script #=> String
    #   resp.scala_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateScript AWS API Documentation
    #
    # @overload create_script(params = {})
    # @param [Hash] params ({})
    def create_script(params = {}, options = {})
      req = build_request(:create_script, params)
      req.send_request(options)
    end

    # Creates a new security configuration. A security configuration is a
    # set of security properties that can be used by Glue. You can use a
    # security configuration to encrypt data at rest. For information about
    # using security configurations in Glue, see [Encrypting Data Written by
    # Crawlers, Jobs, and Development Endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/encryption-security-configuration.html
    #
    # @option params [required, String] :name
    #   The name for the new security configuration.
    #
    # @option params [required, Types::EncryptionConfiguration] :encryption_configuration
    #   The encryption configuration for the new security configuration.
    #
    # @return [Types::CreateSecurityConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecurityConfigurationResponse#name #name} => String
    #   * {Types::CreateSecurityConfigurationResponse#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_configuration({
    #     name: "NameString", # required
    #     encryption_configuration: { # required
    #       s3_encryption: [
    #         {
    #           s3_encryption_mode: "DISABLED", # accepts DISABLED, SSE-KMS, SSE-S3
    #           kms_key_arn: "KmsKeyArn",
    #         },
    #       ],
    #       cloud_watch_encryption: {
    #         cloud_watch_encryption_mode: "DISABLED", # accepts DISABLED, SSE-KMS
    #         kms_key_arn: "KmsKeyArn",
    #       },
    #       job_bookmarks_encryption: {
    #         job_bookmarks_encryption_mode: "DISABLED", # accepts DISABLED, CSE-KMS
    #         kms_key_arn: "KmsKeyArn",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateSecurityConfiguration AWS API Documentation
    #
    # @overload create_security_configuration(params = {})
    # @param [Hash] params ({})
    def create_security_configuration(params = {}, options = {})
      req = build_request(:create_security_configuration, params)
      req.send_request(options)
    end

    # Creates a new session.
    #
    # @option params [required, String] :id
    #   The ID of the session request.
    #
    # @option params [String] :description
    #   The description of the session.
    #
    # @option params [required, String] :role
    #   The IAM Role ARN
    #
    # @option params [required, Types::SessionCommand] :command
    #   The `SessionCommand` that runs the job.
    #
    # @option params [Integer] :timeout
    #   The number of minutes before session times out. Default for Spark ETL
    #   jobs is 48 hours (2880 minutes), the maximum session lifetime for this
    #   job type. Consult the documentation for other job types.
    #
    # @option params [Integer] :idle_timeout
    #   The number of minutes when idle before session times out. Default for
    #   Spark ETL jobs is value of Timeout. Consult the documentation for
    #   other job types.
    #
    # @option params [Hash<String,String>] :default_arguments
    #   A map array of key-value pairs. Max is 75 pairs.
    #
    # @option params [Types::ConnectionsList] :connections
    #   The number of connections to use for the session.
    #
    # @option params [Float] :max_capacity
    #   The number of Glue data processing units (DPUs) that can be allocated
    #   when the job runs. A DPU is a relative measure of processing power
    #   that consists of 4 vCPUs of compute capacity and 16 GB memory.
    #
    # @option params [Integer] :number_of_workers
    #   The number of workers of a defined `WorkerType` to use for the
    #   session.
    #
    # @option params [String] :worker_type
    #   The type of predefined worker that is allocated to use for the
    #   session. Accepts a value of Standard, G.1X, G.2X, or G.025X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
    #     of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
    #     of memory, 128 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.025X` worker type, each worker maps to 0.25 DPU (2 vCPU,
    #     4 GB of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for low volume streaming jobs. This
    #     worker type is only available for Glue version 3.0 streaming jobs.
    #
    # @option params [String] :security_configuration
    #   The name of the SecurityConfiguration structure to be used with the
    #   session
    #
    # @option params [String] :glue_version
    #   The Glue version determines the versions of Apache Spark and Python
    #   that Glue supports. The GlueVersion must be greater than 2.0.
    #
    # @option params [Hash<String,String>] :tags
    #   The map of key value pairs (tags) belonging to the session.
    #
    # @option params [String] :request_origin
    #   The origin of the request.
    #
    # @return [Types::CreateSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSessionResponse#session #session} => Types::Session
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_session({
    #     id: "NameString", # required
    #     description: "DescriptionString",
    #     role: "OrchestrationRoleArn", # required
    #     command: { # required
    #       name: "NameString",
    #       python_version: "PythonVersionString",
    #     },
    #     timeout: 1,
    #     idle_timeout: 1,
    #     default_arguments: {
    #       "OrchestrationNameString" => "OrchestrationArgumentsValue",
    #     },
    #     connections: {
    #       connections: ["GenericString"],
    #     },
    #     max_capacity: 1.0,
    #     number_of_workers: 1,
    #     worker_type: "Standard", # accepts Standard, G.1X, G.2X, G.025X, G.4X, G.8X, Z.2X
    #     security_configuration: "NameString",
    #     glue_version: "GlueVersionString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     request_origin: "OrchestrationNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.session.id #=> String
    #   resp.session.created_on #=> Time
    #   resp.session.status #=> String, one of "PROVISIONING", "READY", "FAILED", "TIMEOUT", "STOPPING", "STOPPED"
    #   resp.session.error_message #=> String
    #   resp.session.description #=> String
    #   resp.session.role #=> String
    #   resp.session.command.name #=> String
    #   resp.session.command.python_version #=> String
    #   resp.session.default_arguments #=> Hash
    #   resp.session.default_arguments["OrchestrationNameString"] #=> String
    #   resp.session.connections.connections #=> Array
    #   resp.session.connections.connections[0] #=> String
    #   resp.session.progress #=> Float
    #   resp.session.max_capacity #=> Float
    #   resp.session.security_configuration #=> String
    #   resp.session.glue_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateSession AWS API Documentation
    #
    # @overload create_session(params = {})
    # @param [Hash] params ({})
    def create_session(params = {}, options = {})
      req = build_request(:create_session, params)
      req.send_request(options)
    end

    # Creates a new table definition in the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which to create the `Table`. If none is
    #   supplied, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The catalog database in which to create the new table. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, Types::TableInput] :table_input
    #   The `TableInput` object that defines the metadata table to create in
    #   the catalog.
    #
    # @option params [Array<Types::PartitionIndex>] :partition_indexes
    #   A list of partition indexes, `PartitionIndex` structures, to create in
    #   the table.
    #
    # @option params [String] :transaction_id
    #   The ID of the transaction.
    #
    # @option params [Types::OpenTableFormatInput] :open_table_format_input
    #   Specifies an `OpenTableFormatInput` structure when creating an open
    #   format table.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_table({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_input: { # required
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       owner: "NameString",
    #       last_access_time: Time.now,
    #       last_analyzed_time: Time.now,
    #       retention: 1,
    #       storage_descriptor: {
    #         columns: [
    #           {
    #             name: "NameString", # required
    #             type: "ColumnTypeString",
    #             comment: "CommentString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #         ],
    #         location: "LocationString",
    #         additional_locations: ["LocationString"],
    #         input_format: "FormatString",
    #         output_format: "FormatString",
    #         compressed: false,
    #         number_of_buckets: 1,
    #         serde_info: {
    #           name: "NameString",
    #           serialization_library: "NameString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #         bucket_columns: ["NameString"],
    #         sort_columns: [
    #           {
    #             column: "NameString", # required
    #             sort_order: 1, # required
    #           },
    #         ],
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         skewed_info: {
    #           skewed_column_names: ["NameString"],
    #           skewed_column_values: ["ColumnValuesString"],
    #           skewed_column_value_location_maps: {
    #             "ColumnValuesString" => "ColumnValuesString",
    #           },
    #         },
    #         stored_as_sub_directories: false,
    #         schema_reference: {
    #           schema_id: {
    #             schema_arn: "GlueResourceArn",
    #             schema_name: "SchemaRegistryNameString",
    #             registry_name: "SchemaRegistryNameString",
    #           },
    #           schema_version_id: "SchemaVersionIdString",
    #           schema_version_number: 1,
    #         },
    #       },
    #       partition_keys: [
    #         {
    #           name: "NameString", # required
    #           type: "ColumnTypeString",
    #           comment: "CommentString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #       ],
    #       view_original_text: "ViewTextString",
    #       view_expanded_text: "ViewTextString",
    #       table_type: "TableTypeString",
    #       parameters: {
    #         "KeyString" => "ParametersMapValue",
    #       },
    #       target_table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         name: "NameString",
    #         region: "NameString",
    #       },
    #     },
    #     partition_indexes: [
    #       {
    #         keys: ["NameString"], # required
    #         index_name: "NameString", # required
    #       },
    #     ],
    #     transaction_id: "TransactionIdString",
    #     open_table_format_input: {
    #       iceberg_input: {
    #         metadata_operation: "CREATE", # required, accepts CREATE
    #         version: "VersionString",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTable AWS API Documentation
    #
    # @overload create_table(params = {})
    # @param [Hash] params ({})
    def create_table(params = {}, options = {})
      req = build_request(:create_table, params)
      req.send_request(options)
    end

    # Creates a new trigger.
    #
    # @option params [required, String] :name
    #   The name of the trigger.
    #
    # @option params [String] :workflow_name
    #   The name of the workflow associated with the trigger.
    #
    # @option params [required, String] :type
    #   The type of the new trigger.
    #
    # @option params [String] :schedule
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
    #
    #   This field is required when the trigger type is SCHEDULED.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #
    # @option params [Types::Predicate] :predicate
    #   A predicate to specify when the new trigger should fire.
    #
    #   This field is required when the trigger type is `CONDITIONAL`.
    #
    # @option params [required, Array<Types::Action>] :actions
    #   The actions initiated by this trigger when it fires.
    #
    # @option params [String] :description
    #   A description of the new trigger.
    #
    # @option params [Boolean] :start_on_creation
    #   Set to `true` to start `SCHEDULED` and `CONDITIONAL` triggers when
    #   created. True is not supported for `ON_DEMAND` triggers.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to use with this trigger. You may use tags to limit access to
    #   the trigger. For more information about tags in Glue, see [Amazon Web
    #   Services Tags in Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #
    # @option params [Types::EventBatchingCondition] :event_batching_condition
    #   Batch condition that must be met (specified number of events received
    #   or batch time window expired) before EventBridge event trigger fires.
    #
    # @return [Types::CreateTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTriggerResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trigger({
    #     name: "NameString", # required
    #     workflow_name: "NameString",
    #     type: "SCHEDULED", # required, accepts SCHEDULED, CONDITIONAL, ON_DEMAND, EVENT
    #     schedule: "GenericString",
    #     predicate: {
    #       logical: "AND", # accepts AND, ANY
    #       conditions: [
    #         {
    #           logical_operator: "EQUALS", # accepts EQUALS
    #           job_name: "NameString",
    #           state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT, ERROR, WAITING
    #           crawler_name: "NameString",
    #           crawl_state: "RUNNING", # accepts RUNNING, CANCELLING, CANCELLED, SUCCEEDED, FAILED, ERROR
    #         },
    #       ],
    #     },
    #     actions: [ # required
    #       {
    #         job_name: "NameString",
    #         arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #         timeout: 1,
    #         security_configuration: "NameString",
    #         notification_property: {
    #           notify_delay_after: 1,
    #         },
    #         crawler_name: "NameString",
    #       },
    #     ],
    #     description: "DescriptionString",
    #     start_on_creation: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     event_batching_condition: {
    #       batch_size: 1, # required
    #       batch_window: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTrigger AWS API Documentation
    #
    # @overload create_trigger(params = {})
    # @param [Hash] params ({})
    def create_trigger(params = {}, options = {})
      req = build_request(:create_trigger, params)
      req.send_request(options)
    end

    # Creates a new function definition in the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which to create the function. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which to create the function.
    #
    # @option params [required, Types::UserDefinedFunctionInput] :function_input
    #   A `FunctionInput` object that defines the function to create in the
    #   Data Catalog.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_defined_function({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     function_input: { # required
    #       function_name: "NameString",
    #       class_name: "NameString",
    #       owner_name: "NameString",
    #       owner_type: "USER", # accepts USER, ROLE, GROUP
    #       resource_uris: [
    #         {
    #           resource_type: "JAR", # accepts JAR, FILE, ARCHIVE
    #           uri: "URI",
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateUserDefinedFunction AWS API Documentation
    #
    # @overload create_user_defined_function(params = {})
    # @param [Hash] params ({})
    def create_user_defined_function(params = {}, options = {})
      req = build_request(:create_user_defined_function, params)
      req.send_request(options)
    end

    # Creates a new workflow.
    #
    # @option params [required, String] :name
    #   The name to be assigned to the workflow. It should be unique within
    #   your account.
    #
    # @option params [String] :description
    #   A description of the workflow.
    #
    # @option params [Hash<String,String>] :default_run_properties
    #   A collection of properties to be used as part of each execution of the
    #   workflow.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be used with this workflow.
    #
    # @option params [Integer] :max_concurrent_runs
    #   You can use this parameter to prevent unwanted multiple updates to
    #   data, to control costs, or in some cases, to prevent exceeding the
    #   maximum number of concurrent runs of any of the component jobs. If you
    #   leave this parameter blank, there is no limit to the number of
    #   concurrent workflow runs.
    #
    # @return [Types::CreateWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkflowResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow({
    #     name: "NameString", # required
    #     description: "GenericString",
    #     default_run_properties: {
    #       "IdString" => "GenericString",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     max_concurrent_runs: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateWorkflow AWS API Documentation
    #
    # @overload create_workflow(params = {})
    # @param [Hash] params ({})
    def create_workflow(params = {}, options = {})
      req = build_request(:create_workflow, params)
      req.send_request(options)
    end

    # Deletes an existing blueprint.
    #
    # @option params [required, String] :name
    #   The name of the blueprint to delete.
    #
    # @return [Types::DeleteBlueprintResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBlueprintResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_blueprint({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteBlueprint AWS API Documentation
    #
    # @overload delete_blueprint(params = {})
    # @param [Hash] params ({})
    def delete_blueprint(params = {}, options = {})
      req = build_request(:delete_blueprint, params)
      req.send_request(options)
    end

    # Removes a classifier from the Data Catalog.
    #
    # @option params [required, String] :name
    #   Name of the classifier to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_classifier({
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteClassifier AWS API Documentation
    #
    # @overload delete_classifier(params = {})
    # @param [Hash] params ({})
    def delete_classifier(params = {}, options = {})
      req = build_request(:delete_classifier, params)
      req.send_request(options)
    end

    # Delete the partition column statistics of a column.
    #
    # The Identity and Access Management (IAM) permission required for this
    # operation is `DeletePartition`.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partitions in question reside. If
    #   none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partitions reside.
    #
    # @option params [required, String] :table_name
    #   The name of the partitions' table.
    #
    # @option params [required, Array<String>] :partition_values
    #   A list of partition values identifying the partition.
    #
    # @option params [required, String] :column_name
    #   Name of the column.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_column_statistics_for_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_values: ["ValueString"], # required
    #     column_name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteColumnStatisticsForPartition AWS API Documentation
    #
    # @overload delete_column_statistics_for_partition(params = {})
    # @param [Hash] params ({})
    def delete_column_statistics_for_partition(params = {}, options = {})
      req = build_request(:delete_column_statistics_for_partition, params)
      req.send_request(options)
    end

    # Retrieves table statistics of columns.
    #
    # The Identity and Access Management (IAM) permission required for this
    # operation is `DeleteTable`.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partitions in question reside. If
    #   none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partitions reside.
    #
    # @option params [required, String] :table_name
    #   The name of the partitions' table.
    #
    # @option params [required, String] :column_name
    #   The name of the column.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_column_statistics_for_table({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     column_name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteColumnStatisticsForTable AWS API Documentation
    #
    # @overload delete_column_statistics_for_table(params = {})
    # @param [Hash] params ({})
    def delete_column_statistics_for_table(params = {}, options = {})
      req = build_request(:delete_column_statistics_for_table, params)
      req.send_request(options)
    end

    # Deletes a connection from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :connection_name
    #   The name of the connection to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection({
    #     catalog_id: "CatalogIdString",
    #     connection_name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteConnection AWS API Documentation
    #
    # @overload delete_connection(params = {})
    # @param [Hash] params ({})
    def delete_connection(params = {}, options = {})
      req = build_request(:delete_connection, params)
      req.send_request(options)
    end

    # Removes a specified crawler from the Glue Data Catalog, unless the
    # crawler state is `RUNNING`.
    #
    # @option params [required, String] :name
    #   The name of the crawler to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_crawler({
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCrawler AWS API Documentation
    #
    # @overload delete_crawler(params = {})
    # @param [Hash] params ({})
    def delete_crawler(params = {}, options = {})
      req = build_request(:delete_crawler, params)
      req.send_request(options)
    end

    # Deletes a custom pattern by specifying its name.
    #
    # @option params [required, String] :name
    #   The name of the custom pattern that you want to delete.
    #
    # @return [Types::DeleteCustomEntityTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCustomEntityTypeResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_entity_type({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCustomEntityType AWS API Documentation
    #
    # @overload delete_custom_entity_type(params = {})
    # @param [Hash] params ({})
    def delete_custom_entity_type(params = {}, options = {})
      req = build_request(:delete_custom_entity_type, params)
      req.send_request(options)
    end

    # Deletes a data quality ruleset.
    #
    # @option params [required, String] :name
    #   A name for the data quality ruleset.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_quality_ruleset({
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDataQualityRuleset AWS API Documentation
    #
    # @overload delete_data_quality_ruleset(params = {})
    # @param [Hash] params ({})
    def delete_data_quality_ruleset(params = {}, options = {})
      req = build_request(:delete_data_quality_ruleset, params)
      req.send_request(options)
    end

    # Removes a specified database from a Data Catalog.
    #
    # <note markdown="1"> After completing this operation, you no longer have access to the
    # tables (and all table versions and partitions that might belong to the
    # tables) and the user-defined functions in the deleted database. Glue
    # deletes these "orphaned" resources asynchronously in a timely
    # manner, at the discretion of the service.
    #
    #  To ensure the immediate deletion of all related resources, before
    # calling `DeleteDatabase`, use `DeleteTableVersion` or
    # `BatchDeleteTableVersion`, `DeletePartition` or
    # `BatchDeletePartition`, `DeleteUserDefinedFunction`, and `DeleteTable`
    # or `BatchDeleteTable`, to delete any resources that belong to the
    # database.
    #
    #  </note>
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the database resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :name
    #   The name of the database to delete. For Hive compatibility, this must
    #   be all lowercase.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_database({
    #     catalog_id: "CatalogIdString",
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDatabase AWS API Documentation
    #
    # @overload delete_database(params = {})
    # @param [Hash] params ({})
    def delete_database(params = {}, options = {})
      req = build_request(:delete_database, params)
      req.send_request(options)
    end

    # Deletes a specified development endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the `DevEndpoint`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dev_endpoint({
    #     endpoint_name: "GenericString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDevEndpoint AWS API Documentation
    #
    # @overload delete_dev_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_dev_endpoint(params = {}, options = {})
      req = build_request(:delete_dev_endpoint, params)
      req.send_request(options)
    end

    # Deletes a specified job definition. If the job definition is not
    # found, no exception is thrown.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition to delete.
    #
    # @return [Types::DeleteJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteJobResponse#job_name #job_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job({
    #     job_name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteJob AWS API Documentation
    #
    # @overload delete_job(params = {})
    # @param [Hash] params ({})
    def delete_job(params = {}, options = {})
      req = build_request(:delete_job, params)
      req.send_request(options)
    end

    # Deletes an Glue machine learning transform. Machine learning
    # transforms are a special type of transform that use machine learning
    # to learn the details of the transformation to be performed by learning
    # from examples provided by humans. These transformations are then saved
    # by Glue. If you no longer need a transform, you can delete it by
    # calling `DeleteMLTransforms`. However, any Glue jobs that still
    # reference the deleted transform will no longer succeed.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the transform to delete.
    #
    # @return [Types::DeleteMLTransformResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMLTransformResponse#transform_id #transform_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ml_transform({
    #     transform_id: "HashString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteMLTransform AWS API Documentation
    #
    # @overload delete_ml_transform(params = {})
    # @param [Hash] params ({})
    def delete_ml_transform(params = {}, options = {})
      req = build_request(:delete_ml_transform, params)
      req.send_request(options)
    end

    # Deletes a specified partition.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partition to be deleted resides.
    #   If none is provided, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #
    # @option params [required, String] :table_name
    #   The name of the table that contains the partition to be deleted.
    #
    # @option params [required, Array<String>] :partition_values
    #   The values that define the partition.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_values: ["ValueString"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeletePartition AWS API Documentation
    #
    # @overload delete_partition(params = {})
    # @param [Hash] params ({})
    def delete_partition(params = {}, options = {})
      req = build_request(:delete_partition, params)
      req.send_request(options)
    end

    # Deletes a specified partition index from an existing table.
    #
    # @option params [String] :catalog_id
    #   The catalog ID where the table resides.
    #
    # @option params [required, String] :database_name
    #   Specifies the name of a database from which you want to delete a
    #   partition index.
    #
    # @option params [required, String] :table_name
    #   Specifies the name of a table from which you want to delete a
    #   partition index.
    #
    # @option params [required, String] :index_name
    #   The name of the partition index to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_partition_index({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     index_name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeletePartitionIndex AWS API Documentation
    #
    # @overload delete_partition_index(params = {})
    # @param [Hash] params ({})
    def delete_partition_index(params = {}, options = {})
      req = build_request(:delete_partition_index, params)
      req.send_request(options)
    end

    # Delete the entire registry including schema and all of its versions.
    # To get the status of the delete operation, you can call the
    # `GetRegistry` API after the asynchronous call. Deleting a registry
    # will deactivate all online operations for the registry such as the
    # `UpdateRegistry`, `CreateSchema`, `UpdateSchema`, and
    # `RegisterSchemaVersion` APIs.
    #
    # @option params [required, Types::RegistryId] :registry_id
    #   This is a wrapper structure that may contain the registry name and
    #   Amazon Resource Name (ARN).
    #
    # @return [Types::DeleteRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRegistryResponse#registry_name #registry_name} => String
    #   * {Types::DeleteRegistryResponse#registry_arn #registry_arn} => String
    #   * {Types::DeleteRegistryResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_registry({
    #     registry_id: { # required
    #       registry_name: "SchemaRegistryNameString",
    #       registry_arn: "GlueResourceArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_name #=> String
    #   resp.registry_arn #=> String
    #   resp.status #=> String, one of "AVAILABLE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteRegistry AWS API Documentation
    #
    # @overload delete_registry(params = {})
    # @param [Hash] params ({})
    def delete_registry(params = {}, options = {})
      req = build_request(:delete_registry, params)
      req.send_request(options)
    end

    # Deletes a specified policy.
    #
    # @option params [String] :policy_hash_condition
    #   The hash value returned when this policy was set.
    #
    # @option params [String] :resource_arn
    #   The ARN of the Glue resource for the resource policy to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     policy_hash_condition: "HashString",
    #     resource_arn: "GlueResourceArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes the entire schema set, including the schema set and all of its
    # versions. To get the status of the delete operation, you can call
    # `GetSchema` API after the asynchronous call. Deleting a registry will
    # deactivate all online operations for the schema, such as the
    # `GetSchemaByDefinition`, and `RegisterSchemaVersion` APIs.
    #
    # @option params [required, Types::SchemaId] :schema_id
    #   This is a wrapper structure that may contain the schema name and
    #   Amazon Resource Name (ARN).
    #
    # @return [Types::DeleteSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSchemaResponse#schema_arn #schema_arn} => String
    #   * {Types::DeleteSchemaResponse#schema_name #schema_name} => String
    #   * {Types::DeleteSchemaResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schema({
    #     schema_id: { # required
    #       schema_arn: "GlueResourceArn",
    #       schema_name: "SchemaRegistryNameString",
    #       registry_name: "SchemaRegistryNameString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_arn #=> String
    #   resp.schema_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "PENDING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSchema AWS API Documentation
    #
    # @overload delete_schema(params = {})
    # @param [Hash] params ({})
    def delete_schema(params = {}, options = {})
      req = build_request(:delete_schema, params)
      req.send_request(options)
    end

    # Remove versions from the specified schema. A version number or range
    # may be supplied. If the compatibility mode forbids deleting of a
    # version that is necessary, such as BACKWARDS\_FULL, an error is
    # returned. Calling the `GetSchemaVersions` API after this call will
    # list the status of the deleted versions.
    #
    # When the range of version numbers contain check pointed version, the
    # API will return a 409 conflict and will not proceed with the deletion.
    # You have to remove the checkpoint first using the
    # `DeleteSchemaCheckpoint` API before using this API.
    #
    # You cannot use the `DeleteSchemaVersions` API to delete the first
    # schema version in the schema set. The first schema version can only be
    # deleted by the `DeleteSchema` API. This operation will also delete the
    # attached `SchemaVersionMetadata` under the schema versions. Hard
    # deletes will be enforced on the database.
    #
    # If the compatibility mode forbids deleting of a version that is
    # necessary, such as BACKWARDS\_FULL, an error is returned.
    #
    # @option params [required, Types::SchemaId] :schema_id
    #   This is a wrapper structure that may contain the schema name and
    #   Amazon Resource Name (ARN).
    #
    # @option params [required, String] :versions
    #   A version range may be supplied which may be of the format:
    #
    #   * a single version number, 5
    #
    #   * a range, 5-8 : deletes versions 5, 6, 7, 8
    #
    # @return [Types::DeleteSchemaVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSchemaVersionsResponse#schema_version_errors #schema_version_errors} => Array&lt;Types::SchemaVersionErrorItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schema_versions({
    #     schema_id: { # required
    #       schema_arn: "GlueResourceArn",
    #       schema_name: "SchemaRegistryNameString",
    #       registry_name: "SchemaRegistryNameString",
    #     },
    #     versions: "VersionsString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_version_errors #=> Array
    #   resp.schema_version_errors[0].version_number #=> Integer
    #   resp.schema_version_errors[0].error_details.error_code #=> String
    #   resp.schema_version_errors[0].error_details.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSchemaVersions AWS API Documentation
    #
    # @overload delete_schema_versions(params = {})
    # @param [Hash] params ({})
    def delete_schema_versions(params = {}, options = {})
      req = build_request(:delete_schema_versions, params)
      req.send_request(options)
    end

    # Deletes a specified security configuration.
    #
    # @option params [required, String] :name
    #   The name of the security configuration to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_configuration({
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSecurityConfiguration AWS API Documentation
    #
    # @overload delete_security_configuration(params = {})
    # @param [Hash] params ({})
    def delete_security_configuration(params = {}, options = {})
      req = build_request(:delete_security_configuration, params)
      req.send_request(options)
    end

    # Deletes the session.
    #
    # @option params [required, String] :id
    #   The ID of the session to be deleted.
    #
    # @option params [String] :request_origin
    #   The name of the origin of the delete session request.
    #
    # @return [Types::DeleteSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSessionResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_session({
    #     id: "NameString", # required
    #     request_origin: "OrchestrationNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSession AWS API Documentation
    #
    # @overload delete_session(params = {})
    # @param [Hash] params ({})
    def delete_session(params = {}, options = {})
      req = build_request(:delete_session, params)
      req.send_request(options)
    end

    # Removes a table definition from the Data Catalog.
    #
    # <note markdown="1"> After completing this operation, you no longer have access to the
    # table versions and partitions that belong to the deleted table. Glue
    # deletes these "orphaned" resources asynchronously in a timely
    # manner, at the discretion of the service.
    #
    #  To ensure the immediate deletion of all related resources, before
    # calling `DeleteTable`, use `DeleteTableVersion` or
    # `BatchDeleteTableVersion`, and `DeletePartition` or
    # `BatchDeletePartition`, to delete any resources that belong to the
    # table.
    #
    #  </note>
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, String] :name
    #   The name of the table to be deleted. For Hive compatibility, this name
    #   is entirely lowercase.
    #
    # @option params [String] :transaction_id
    #   The transaction ID at which to delete the table contents.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     name: "NameString", # required
    #     transaction_id: "TransactionIdString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTable AWS API Documentation
    #
    # @overload delete_table(params = {})
    # @param [Hash] params ({})
    def delete_table(params = {}, options = {})
      req = build_request(:delete_table, params)
      req.send_request(options)
    end

    # Deletes a specified version of a table.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, String] :table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #
    # @option params [required, String] :version_id
    #   The ID of the table version to be deleted. A `VersionID` is a string
    #   representation of an integer. Each version is incremented by 1.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table_version({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     version_id: "VersionString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableVersion AWS API Documentation
    #
    # @overload delete_table_version(params = {})
    # @param [Hash] params ({})
    def delete_table_version(params = {}, options = {})
      req = build_request(:delete_table_version, params)
      req.send_request(options)
    end

    # Deletes a specified trigger. If the trigger is not found, no exception
    # is thrown.
    #
    # @option params [required, String] :name
    #   The name of the trigger to delete.
    #
    # @return [Types::DeleteTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTriggerResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trigger({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTrigger AWS API Documentation
    #
    # @overload delete_trigger(params = {})
    # @param [Hash] params ({})
    def delete_trigger(params = {}, options = {})
      req = build_request(:delete_trigger, params)
      req.send_request(options)
    end

    # Deletes an existing function definition from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the function to be deleted is
    #   located. If none is supplied, the Amazon Web Services account ID is
    #   used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the function is located.
    #
    # @option params [required, String] :function_name
    #   The name of the function definition to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_defined_function({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     function_name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteUserDefinedFunction AWS API Documentation
    #
    # @overload delete_user_defined_function(params = {})
    # @param [Hash] params ({})
    def delete_user_defined_function(params = {}, options = {})
      req = build_request(:delete_user_defined_function, params)
      req.send_request(options)
    end

    # Deletes a workflow.
    #
    # @option params [required, String] :name
    #   Name of the workflow to be deleted.
    #
    # @return [Types::DeleteWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWorkflowResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteWorkflow AWS API Documentation
    #
    # @overload delete_workflow(params = {})
    # @param [Hash] params ({})
    def delete_workflow(params = {}, options = {})
      req = build_request(:delete_workflow, params)
      req.send_request(options)
    end

    # Retrieves the details of a blueprint.
    #
    # @option params [required, String] :name
    #   The name of the blueprint.
    #
    # @option params [Boolean] :include_blueprint
    #   Specifies whether or not to include the blueprint in the response.
    #
    # @option params [Boolean] :include_parameter_spec
    #   Specifies whether or not to include the parameter specification.
    #
    # @return [Types::GetBlueprintResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBlueprintResponse#blueprint #blueprint} => Types::Blueprint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_blueprint({
    #     name: "NameString", # required
    #     include_blueprint: false,
    #     include_parameter_spec: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.blueprint.name #=> String
    #   resp.blueprint.description #=> String
    #   resp.blueprint.created_on #=> Time
    #   resp.blueprint.last_modified_on #=> Time
    #   resp.blueprint.parameter_spec #=> String
    #   resp.blueprint.blueprint_location #=> String
    #   resp.blueprint.blueprint_service_location #=> String
    #   resp.blueprint.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "FAILED"
    #   resp.blueprint.error_message #=> String
    #   resp.blueprint.last_active_definition.description #=> String
    #   resp.blueprint.last_active_definition.last_modified_on #=> Time
    #   resp.blueprint.last_active_definition.parameter_spec #=> String
    #   resp.blueprint.last_active_definition.blueprint_location #=> String
    #   resp.blueprint.last_active_definition.blueprint_service_location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetBlueprint AWS API Documentation
    #
    # @overload get_blueprint(params = {})
    # @param [Hash] params ({})
    def get_blueprint(params = {}, options = {})
      req = build_request(:get_blueprint, params)
      req.send_request(options)
    end

    # Retrieves the details of a blueprint run.
    #
    # @option params [required, String] :blueprint_name
    #   The name of the blueprint.
    #
    # @option params [required, String] :run_id
    #   The run ID for the blueprint run you want to retrieve.
    #
    # @return [Types::GetBlueprintRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBlueprintRunResponse#blueprint_run #blueprint_run} => Types::BlueprintRun
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_blueprint_run({
    #     blueprint_name: "OrchestrationNameString", # required
    #     run_id: "IdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.blueprint_run.blueprint_name #=> String
    #   resp.blueprint_run.run_id #=> String
    #   resp.blueprint_run.workflow_name #=> String
    #   resp.blueprint_run.state #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "ROLLING_BACK"
    #   resp.blueprint_run.started_on #=> Time
    #   resp.blueprint_run.completed_on #=> Time
    #   resp.blueprint_run.error_message #=> String
    #   resp.blueprint_run.rollback_error_message #=> String
    #   resp.blueprint_run.parameters #=> String
    #   resp.blueprint_run.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetBlueprintRun AWS API Documentation
    #
    # @overload get_blueprint_run(params = {})
    # @param [Hash] params ({})
    def get_blueprint_run(params = {}, options = {})
      req = build_request(:get_blueprint_run, params)
      req.send_request(options)
    end

    # Retrieves the details of blueprint runs for a specified blueprint.
    #
    # @option params [required, String] :blueprint_name
    #   The name of the blueprint.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @return [Types::GetBlueprintRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBlueprintRunsResponse#blueprint_runs #blueprint_runs} => Array&lt;Types::BlueprintRun&gt;
    #   * {Types::GetBlueprintRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_blueprint_runs({
    #     blueprint_name: "NameString", # required
    #     next_token: "GenericString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.blueprint_runs #=> Array
    #   resp.blueprint_runs[0].blueprint_name #=> String
    #   resp.blueprint_runs[0].run_id #=> String
    #   resp.blueprint_runs[0].workflow_name #=> String
    #   resp.blueprint_runs[0].state #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "ROLLING_BACK"
    #   resp.blueprint_runs[0].started_on #=> Time
    #   resp.blueprint_runs[0].completed_on #=> Time
    #   resp.blueprint_runs[0].error_message #=> String
    #   resp.blueprint_runs[0].rollback_error_message #=> String
    #   resp.blueprint_runs[0].parameters #=> String
    #   resp.blueprint_runs[0].role_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetBlueprintRuns AWS API Documentation
    #
    # @overload get_blueprint_runs(params = {})
    # @param [Hash] params ({})
    def get_blueprint_runs(params = {}, options = {})
      req = build_request(:get_blueprint_runs, params)
      req.send_request(options)
    end

    # Retrieves the status of a migration operation.
    #
    # @option params [String] :catalog_id
    #   The ID of the catalog to migrate. Currently, this should be the Amazon
    #   Web Services account ID.
    #
    # @return [Types::GetCatalogImportStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCatalogImportStatusResponse#import_status #import_status} => Types::CatalogImportStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_catalog_import_status({
    #     catalog_id: "CatalogIdString",
    #   })
    #
    # @example Response structure
    #
    #   resp.import_status.import_completed #=> Boolean
    #   resp.import_status.import_time #=> Time
    #   resp.import_status.imported_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCatalogImportStatus AWS API Documentation
    #
    # @overload get_catalog_import_status(params = {})
    # @param [Hash] params ({})
    def get_catalog_import_status(params = {}, options = {})
      req = build_request(:get_catalog_import_status, params)
      req.send_request(options)
    end

    # Retrieve a classifier by name.
    #
    # @option params [required, String] :name
    #   Name of the classifier to retrieve.
    #
    # @return [Types::GetClassifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetClassifierResponse#classifier #classifier} => Types::Classifier
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_classifier({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.classifier.grok_classifier.name #=> String
    #   resp.classifier.grok_classifier.classification #=> String
    #   resp.classifier.grok_classifier.creation_time #=> Time
    #   resp.classifier.grok_classifier.last_updated #=> Time
    #   resp.classifier.grok_classifier.version #=> Integer
    #   resp.classifier.grok_classifier.grok_pattern #=> String
    #   resp.classifier.grok_classifier.custom_patterns #=> String
    #   resp.classifier.xml_classifier.name #=> String
    #   resp.classifier.xml_classifier.classification #=> String
    #   resp.classifier.xml_classifier.creation_time #=> Time
    #   resp.classifier.xml_classifier.last_updated #=> Time
    #   resp.classifier.xml_classifier.version #=> Integer
    #   resp.classifier.xml_classifier.row_tag #=> String
    #   resp.classifier.json_classifier.name #=> String
    #   resp.classifier.json_classifier.creation_time #=> Time
    #   resp.classifier.json_classifier.last_updated #=> Time
    #   resp.classifier.json_classifier.version #=> Integer
    #   resp.classifier.json_classifier.json_path #=> String
    #   resp.classifier.csv_classifier.name #=> String
    #   resp.classifier.csv_classifier.creation_time #=> Time
    #   resp.classifier.csv_classifier.last_updated #=> Time
    #   resp.classifier.csv_classifier.version #=> Integer
    #   resp.classifier.csv_classifier.delimiter #=> String
    #   resp.classifier.csv_classifier.quote_symbol #=> String
    #   resp.classifier.csv_classifier.contains_header #=> String, one of "UNKNOWN", "PRESENT", "ABSENT"
    #   resp.classifier.csv_classifier.header #=> Array
    #   resp.classifier.csv_classifier.header[0] #=> String
    #   resp.classifier.csv_classifier.disable_value_trimming #=> Boolean
    #   resp.classifier.csv_classifier.allow_single_column #=> Boolean
    #   resp.classifier.csv_classifier.custom_datatype_configured #=> Boolean
    #   resp.classifier.csv_classifier.custom_datatypes #=> Array
    #   resp.classifier.csv_classifier.custom_datatypes[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifier AWS API Documentation
    #
    # @overload get_classifier(params = {})
    # @param [Hash] params ({})
    def get_classifier(params = {}, options = {})
      req = build_request(:get_classifier, params)
      req.send_request(options)
    end

    # Lists all classifier objects in the Data Catalog.
    #
    # @option params [Integer] :max_results
    #   The size of the list to return (optional).
    #
    # @option params [String] :next_token
    #   An optional continuation token.
    #
    # @return [Types::GetClassifiersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetClassifiersResponse#classifiers #classifiers} => Array&lt;Types::Classifier&gt;
    #   * {Types::GetClassifiersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_classifiers({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.classifiers #=> Array
    #   resp.classifiers[0].grok_classifier.name #=> String
    #   resp.classifiers[0].grok_classifier.classification #=> String
    #   resp.classifiers[0].grok_classifier.creation_time #=> Time
    #   resp.classifiers[0].grok_classifier.last_updated #=> Time
    #   resp.classifiers[0].grok_classifier.version #=> Integer
    #   resp.classifiers[0].grok_classifier.grok_pattern #=> String
    #   resp.classifiers[0].grok_classifier.custom_patterns #=> String
    #   resp.classifiers[0].xml_classifier.name #=> String
    #   resp.classifiers[0].xml_classifier.classification #=> String
    #   resp.classifiers[0].xml_classifier.creation_time #=> Time
    #   resp.classifiers[0].xml_classifier.last_updated #=> Time
    #   resp.classifiers[0].xml_classifier.version #=> Integer
    #   resp.classifiers[0].xml_classifier.row_tag #=> String
    #   resp.classifiers[0].json_classifier.name #=> String
    #   resp.classifiers[0].json_classifier.creation_time #=> Time
    #   resp.classifiers[0].json_classifier.last_updated #=> Time
    #   resp.classifiers[0].json_classifier.version #=> Integer
    #   resp.classifiers[0].json_classifier.json_path #=> String
    #   resp.classifiers[0].csv_classifier.name #=> String
    #   resp.classifiers[0].csv_classifier.creation_time #=> Time
    #   resp.classifiers[0].csv_classifier.last_updated #=> Time
    #   resp.classifiers[0].csv_classifier.version #=> Integer
    #   resp.classifiers[0].csv_classifier.delimiter #=> String
    #   resp.classifiers[0].csv_classifier.quote_symbol #=> String
    #   resp.classifiers[0].csv_classifier.contains_header #=> String, one of "UNKNOWN", "PRESENT", "ABSENT"
    #   resp.classifiers[0].csv_classifier.header #=> Array
    #   resp.classifiers[0].csv_classifier.header[0] #=> String
    #   resp.classifiers[0].csv_classifier.disable_value_trimming #=> Boolean
    #   resp.classifiers[0].csv_classifier.allow_single_column #=> Boolean
    #   resp.classifiers[0].csv_classifier.custom_datatype_configured #=> Boolean
    #   resp.classifiers[0].csv_classifier.custom_datatypes #=> Array
    #   resp.classifiers[0].csv_classifier.custom_datatypes[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifiers AWS API Documentation
    #
    # @overload get_classifiers(params = {})
    # @param [Hash] params ({})
    def get_classifiers(params = {}, options = {})
      req = build_request(:get_classifiers, params)
      req.send_request(options)
    end

    # Retrieves partition statistics of columns.
    #
    # The Identity and Access Management (IAM) permission required for this
    # operation is `GetPartition`.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partitions in question reside. If
    #   none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partitions reside.
    #
    # @option params [required, String] :table_name
    #   The name of the partitions' table.
    #
    # @option params [required, Array<String>] :partition_values
    #   A list of partition values identifying the partition.
    #
    # @option params [required, Array<String>] :column_names
    #   A list of the column names.
    #
    # @return [Types::GetColumnStatisticsForPartitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetColumnStatisticsForPartitionResponse#column_statistics_list #column_statistics_list} => Array&lt;Types::ColumnStatistics&gt;
    #   * {Types::GetColumnStatisticsForPartitionResponse#errors #errors} => Array&lt;Types::ColumnError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_column_statistics_for_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_values: ["ValueString"], # required
    #     column_names: ["NameString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.column_statistics_list #=> Array
    #   resp.column_statistics_list[0].column_name #=> String
    #   resp.column_statistics_list[0].column_type #=> String
    #   resp.column_statistics_list[0].analyzed_time #=> Time
    #   resp.column_statistics_list[0].statistics_data.type #=> String, one of "BOOLEAN", "DATE", "DECIMAL", "DOUBLE", "LONG", "STRING", "BINARY"
    #   resp.column_statistics_list[0].statistics_data.boolean_column_statistics_data.number_of_trues #=> Integer
    #   resp.column_statistics_list[0].statistics_data.boolean_column_statistics_data.number_of_falses #=> Integer
    #   resp.column_statistics_list[0].statistics_data.boolean_column_statistics_data.number_of_nulls #=> Integer
    #   resp.column_statistics_list[0].statistics_data.date_column_statistics_data.minimum_value #=> Time
    #   resp.column_statistics_list[0].statistics_data.date_column_statistics_data.maximum_value #=> Time
    #   resp.column_statistics_list[0].statistics_data.date_column_statistics_data.number_of_nulls #=> Integer
    #   resp.column_statistics_list[0].statistics_data.date_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.column_statistics_list[0].statistics_data.decimal_column_statistics_data.minimum_value.unscaled_value #=> String
    #   resp.column_statistics_list[0].statistics_data.decimal_column_statistics_data.minimum_value.scale #=> Integer
    #   resp.column_statistics_list[0].statistics_data.decimal_column_statistics_data.maximum_value.unscaled_value #=> String
    #   resp.column_statistics_list[0].statistics_data.decimal_column_statistics_data.maximum_value.scale #=> Integer
    #   resp.column_statistics_list[0].statistics_data.decimal_column_statistics_data.number_of_nulls #=> Integer
    #   resp.column_statistics_list[0].statistics_data.decimal_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.column_statistics_list[0].statistics_data.double_column_statistics_data.minimum_value #=> Float
    #   resp.column_statistics_list[0].statistics_data.double_column_statistics_data.maximum_value #=> Float
    #   resp.column_statistics_list[0].statistics_data.double_column_statistics_data.number_of_nulls #=> Integer
    #   resp.column_statistics_list[0].statistics_data.double_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.column_statistics_list[0].statistics_data.long_column_statistics_data.minimum_value #=> Integer
    #   resp.column_statistics_list[0].statistics_data.long_column_statistics_data.maximum_value #=> Integer
    #   resp.column_statistics_list[0].statistics_data.long_column_statistics_data.number_of_nulls #=> Integer
    #   resp.column_statistics_list[0].statistics_data.long_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.column_statistics_list[0].statistics_data.string_column_statistics_data.maximum_length #=> Integer
    #   resp.column_statistics_list[0].statistics_data.string_column_statistics_data.average_length #=> Float
    #   resp.column_statistics_list[0].statistics_data.string_column_statistics_data.number_of_nulls #=> Integer
    #   resp.column_statistics_list[0].statistics_data.string_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.column_statistics_list[0].statistics_data.binary_column_statistics_data.maximum_length #=> Integer
    #   resp.column_statistics_list[0].statistics_data.binary_column_statistics_data.average_length #=> Float
    #   resp.column_statistics_list[0].statistics_data.binary_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors #=> Array
    #   resp.errors[0].column_name #=> String
    #   resp.errors[0].error.error_code #=> String
    #   resp.errors[0].error.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetColumnStatisticsForPartition AWS API Documentation
    #
    # @overload get_column_statistics_for_partition(params = {})
    # @param [Hash] params ({})
    def get_column_statistics_for_partition(params = {}, options = {})
      req = build_request(:get_column_statistics_for_partition, params)
      req.send_request(options)
    end

    # Retrieves table statistics of columns.
    #
    # The Identity and Access Management (IAM) permission required for this
    # operation is `GetTable`.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partitions in question reside. If
    #   none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partitions reside.
    #
    # @option params [required, String] :table_name
    #   The name of the partitions' table.
    #
    # @option params [required, Array<String>] :column_names
    #   A list of the column names.
    #
    # @return [Types::GetColumnStatisticsForTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetColumnStatisticsForTableResponse#column_statistics_list #column_statistics_list} => Array&lt;Types::ColumnStatistics&gt;
    #   * {Types::GetColumnStatisticsForTableResponse#errors #errors} => Array&lt;Types::ColumnError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_column_statistics_for_table({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     column_names: ["NameString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.column_statistics_list #=> Array
    #   resp.column_statistics_list[0].column_name #=> String
    #   resp.column_statistics_list[0].column_type #=> String
    #   resp.column_statistics_list[0].analyzed_time #=> Time
    #   resp.column_statistics_list[0].statistics_data.type #=> String, one of "BOOLEAN", "DATE", "DECIMAL", "DOUBLE", "LONG", "STRING", "BINARY"
    #   resp.column_statistics_list[0].statistics_data.boolean_column_statistics_data.number_of_trues #=> Integer
    #   resp.column_statistics_list[0].statistics_data.boolean_column_statistics_data.number_of_falses #=> Integer
    #   resp.column_statistics_list[0].statistics_data.boolean_column_statistics_data.number_of_nulls #=> Integer
    #   resp.column_statistics_list[0].statistics_data.date_column_statistics_data.minimum_value #=> Time
    #   resp.column_statistics_list[0].statistics_data.date_column_statistics_data.maximum_value #=> Time
    #   resp.column_statistics_list[0].statistics_data.date_column_statistics_data.number_of_nulls #=> Integer
    #   resp.column_statistics_list[0].statistics_data.date_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.column_statistics_list[0].statistics_data.decimal_column_statistics_data.minimum_value.unscaled_value #=> String
    #   resp.column_statistics_list[0].statistics_data.decimal_column_statistics_data.minimum_value.scale #=> Integer
    #   resp.column_statistics_list[0].statistics_data.decimal_column_statistics_data.maximum_value.unscaled_value #=> String
    #   resp.column_statistics_list[0].statistics_data.decimal_column_statistics_data.maximum_value.scale #=> Integer
    #   resp.column_statistics_list[0].statistics_data.decimal_column_statistics_data.number_of_nulls #=> Integer
    #   resp.column_statistics_list[0].statistics_data.decimal_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.column_statistics_list[0].statistics_data.double_column_statistics_data.minimum_value #=> Float
    #   resp.column_statistics_list[0].statistics_data.double_column_statistics_data.maximum_value #=> Float
    #   resp.column_statistics_list[0].statistics_data.double_column_statistics_data.number_of_nulls #=> Integer
    #   resp.column_statistics_list[0].statistics_data.double_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.column_statistics_list[0].statistics_data.long_column_statistics_data.minimum_value #=> Integer
    #   resp.column_statistics_list[0].statistics_data.long_column_statistics_data.maximum_value #=> Integer
    #   resp.column_statistics_list[0].statistics_data.long_column_statistics_data.number_of_nulls #=> Integer
    #   resp.column_statistics_list[0].statistics_data.long_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.column_statistics_list[0].statistics_data.string_column_statistics_data.maximum_length #=> Integer
    #   resp.column_statistics_list[0].statistics_data.string_column_statistics_data.average_length #=> Float
    #   resp.column_statistics_list[0].statistics_data.string_column_statistics_data.number_of_nulls #=> Integer
    #   resp.column_statistics_list[0].statistics_data.string_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.column_statistics_list[0].statistics_data.binary_column_statistics_data.maximum_length #=> Integer
    #   resp.column_statistics_list[0].statistics_data.binary_column_statistics_data.average_length #=> Float
    #   resp.column_statistics_list[0].statistics_data.binary_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors #=> Array
    #   resp.errors[0].column_name #=> String
    #   resp.errors[0].error.error_code #=> String
    #   resp.errors[0].error.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetColumnStatisticsForTable AWS API Documentation
    #
    # @overload get_column_statistics_for_table(params = {})
    # @param [Hash] params ({})
    def get_column_statistics_for_table(params = {}, options = {})
      req = build_request(:get_column_statistics_for_table, params)
      req.send_request(options)
    end

    # Retrieves a connection definition from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :name
    #   The name of the connection definition to retrieve.
    #
    # @option params [Boolean] :hide_password
    #   Allows you to retrieve the connection metadata without returning the
    #   password. For instance, the Glue console uses this flag to retrieve
    #   the connection, and does not display the password. Set this parameter
    #   when the caller might not have permission to use the KMS key to
    #   decrypt the password, but it does have permission to access the rest
    #   of the connection properties.
    #
    # @return [Types::GetConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionResponse#connection #connection} => Types::Connection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection({
    #     catalog_id: "CatalogIdString",
    #     name: "NameString", # required
    #     hide_password: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.connection.name #=> String
    #   resp.connection.description #=> String
    #   resp.connection.connection_type #=> String, one of "JDBC", "SFTP", "MONGODB", "KAFKA", "NETWORK", "MARKETPLACE", "CUSTOM"
    #   resp.connection.match_criteria #=> Array
    #   resp.connection.match_criteria[0] #=> String
    #   resp.connection.connection_properties #=> Hash
    #   resp.connection.connection_properties["ConnectionPropertyKey"] #=> String
    #   resp.connection.physical_connection_requirements.subnet_id #=> String
    #   resp.connection.physical_connection_requirements.security_group_id_list #=> Array
    #   resp.connection.physical_connection_requirements.security_group_id_list[0] #=> String
    #   resp.connection.physical_connection_requirements.availability_zone #=> String
    #   resp.connection.creation_time #=> Time
    #   resp.connection.last_updated_time #=> Time
    #   resp.connection.last_updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnection AWS API Documentation
    #
    # @overload get_connection(params = {})
    # @param [Hash] params ({})
    def get_connection(params = {}, options = {})
      req = build_request(:get_connection, params)
      req.send_request(options)
    end

    # Retrieves a list of connection definitions from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the connections reside. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [Types::GetConnectionsFilter] :filter
    #   A filter that controls which connections are returned.
    #
    # @option params [Boolean] :hide_password
    #   Allows you to retrieve the connection metadata without returning the
    #   password. For instance, the Glue console uses this flag to retrieve
    #   the connection, and does not display the password. Set this parameter
    #   when the caller might not have permission to use the KMS key to
    #   decrypt the password, but it does have permission to access the rest
    #   of the connection properties.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of connections to return in one response.
    #
    # @return [Types::GetConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionsResponse#connection_list #connection_list} => Array&lt;Types::Connection&gt;
    #   * {Types::GetConnectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connections({
    #     catalog_id: "CatalogIdString",
    #     filter: {
    #       match_criteria: ["NameString"],
    #       connection_type: "JDBC", # accepts JDBC, SFTP, MONGODB, KAFKA, NETWORK, MARKETPLACE, CUSTOM
    #     },
    #     hide_password: false,
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_list #=> Array
    #   resp.connection_list[0].name #=> String
    #   resp.connection_list[0].description #=> String
    #   resp.connection_list[0].connection_type #=> String, one of "JDBC", "SFTP", "MONGODB", "KAFKA", "NETWORK", "MARKETPLACE", "CUSTOM"
    #   resp.connection_list[0].match_criteria #=> Array
    #   resp.connection_list[0].match_criteria[0] #=> String
    #   resp.connection_list[0].connection_properties #=> Hash
    #   resp.connection_list[0].connection_properties["ConnectionPropertyKey"] #=> String
    #   resp.connection_list[0].physical_connection_requirements.subnet_id #=> String
    #   resp.connection_list[0].physical_connection_requirements.security_group_id_list #=> Array
    #   resp.connection_list[0].physical_connection_requirements.security_group_id_list[0] #=> String
    #   resp.connection_list[0].physical_connection_requirements.availability_zone #=> String
    #   resp.connection_list[0].creation_time #=> Time
    #   resp.connection_list[0].last_updated_time #=> Time
    #   resp.connection_list[0].last_updated_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnections AWS API Documentation
    #
    # @overload get_connections(params = {})
    # @param [Hash] params ({})
    def get_connections(params = {}, options = {})
      req = build_request(:get_connections, params)
      req.send_request(options)
    end

    # Retrieves metadata for a specified crawler.
    #
    # @option params [required, String] :name
    #   The name of the crawler to retrieve metadata for.
    #
    # @return [Types::GetCrawlerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCrawlerResponse#crawler #crawler} => Types::Crawler
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_crawler({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.crawler.name #=> String
    #   resp.crawler.role #=> String
    #   resp.crawler.targets.s3_targets #=> Array
    #   resp.crawler.targets.s3_targets[0].path #=> String
    #   resp.crawler.targets.s3_targets[0].exclusions #=> Array
    #   resp.crawler.targets.s3_targets[0].exclusions[0] #=> String
    #   resp.crawler.targets.s3_targets[0].connection_name #=> String
    #   resp.crawler.targets.s3_targets[0].sample_size #=> Integer
    #   resp.crawler.targets.s3_targets[0].event_queue_arn #=> String
    #   resp.crawler.targets.s3_targets[0].dlq_event_queue_arn #=> String
    #   resp.crawler.targets.jdbc_targets #=> Array
    #   resp.crawler.targets.jdbc_targets[0].connection_name #=> String
    #   resp.crawler.targets.jdbc_targets[0].path #=> String
    #   resp.crawler.targets.jdbc_targets[0].exclusions #=> Array
    #   resp.crawler.targets.jdbc_targets[0].exclusions[0] #=> String
    #   resp.crawler.targets.jdbc_targets[0].enable_additional_metadata #=> Array
    #   resp.crawler.targets.jdbc_targets[0].enable_additional_metadata[0] #=> String, one of "COMMENTS", "RAWTYPES"
    #   resp.crawler.targets.mongo_db_targets #=> Array
    #   resp.crawler.targets.mongo_db_targets[0].connection_name #=> String
    #   resp.crawler.targets.mongo_db_targets[0].path #=> String
    #   resp.crawler.targets.mongo_db_targets[0].scan_all #=> Boolean
    #   resp.crawler.targets.dynamo_db_targets #=> Array
    #   resp.crawler.targets.dynamo_db_targets[0].path #=> String
    #   resp.crawler.targets.dynamo_db_targets[0].scan_all #=> Boolean
    #   resp.crawler.targets.dynamo_db_targets[0].scan_rate #=> Float
    #   resp.crawler.targets.catalog_targets #=> Array
    #   resp.crawler.targets.catalog_targets[0].database_name #=> String
    #   resp.crawler.targets.catalog_targets[0].tables #=> Array
    #   resp.crawler.targets.catalog_targets[0].tables[0] #=> String
    #   resp.crawler.targets.catalog_targets[0].connection_name #=> String
    #   resp.crawler.targets.catalog_targets[0].event_queue_arn #=> String
    #   resp.crawler.targets.catalog_targets[0].dlq_event_queue_arn #=> String
    #   resp.crawler.targets.delta_targets #=> Array
    #   resp.crawler.targets.delta_targets[0].delta_tables #=> Array
    #   resp.crawler.targets.delta_targets[0].delta_tables[0] #=> String
    #   resp.crawler.targets.delta_targets[0].connection_name #=> String
    #   resp.crawler.targets.delta_targets[0].write_manifest #=> Boolean
    #   resp.crawler.targets.delta_targets[0].create_native_delta_table #=> Boolean
    #   resp.crawler.targets.iceberg_targets #=> Array
    #   resp.crawler.targets.iceberg_targets[0].paths #=> Array
    #   resp.crawler.targets.iceberg_targets[0].paths[0] #=> String
    #   resp.crawler.targets.iceberg_targets[0].connection_name #=> String
    #   resp.crawler.targets.iceberg_targets[0].exclusions #=> Array
    #   resp.crawler.targets.iceberg_targets[0].exclusions[0] #=> String
    #   resp.crawler.targets.iceberg_targets[0].maximum_traversal_depth #=> Integer
    #   resp.crawler.database_name #=> String
    #   resp.crawler.description #=> String
    #   resp.crawler.classifiers #=> Array
    #   resp.crawler.classifiers[0] #=> String
    #   resp.crawler.recrawl_policy.recrawl_behavior #=> String, one of "CRAWL_EVERYTHING", "CRAWL_NEW_FOLDERS_ONLY", "CRAWL_EVENT_MODE"
    #   resp.crawler.schema_change_policy.update_behavior #=> String, one of "LOG", "UPDATE_IN_DATABASE"
    #   resp.crawler.schema_change_policy.delete_behavior #=> String, one of "LOG", "DELETE_FROM_DATABASE", "DEPRECATE_IN_DATABASE"
    #   resp.crawler.lineage_configuration.crawler_lineage_settings #=> String, one of "ENABLE", "DISABLE"
    #   resp.crawler.state #=> String, one of "READY", "RUNNING", "STOPPING"
    #   resp.crawler.table_prefix #=> String
    #   resp.crawler.schedule.schedule_expression #=> String
    #   resp.crawler.schedule.state #=> String, one of "SCHEDULED", "NOT_SCHEDULED", "TRANSITIONING"
    #   resp.crawler.crawl_elapsed_time #=> Integer
    #   resp.crawler.creation_time #=> Time
    #   resp.crawler.last_updated #=> Time
    #   resp.crawler.last_crawl.status #=> String, one of "SUCCEEDED", "CANCELLED", "FAILED"
    #   resp.crawler.last_crawl.error_message #=> String
    #   resp.crawler.last_crawl.log_group #=> String
    #   resp.crawler.last_crawl.log_stream #=> String
    #   resp.crawler.last_crawl.message_prefix #=> String
    #   resp.crawler.last_crawl.start_time #=> Time
    #   resp.crawler.version #=> Integer
    #   resp.crawler.configuration #=> String
    #   resp.crawler.crawler_security_configuration #=> String
    #   resp.crawler.lake_formation_configuration.use_lake_formation_credentials #=> Boolean
    #   resp.crawler.lake_formation_configuration.account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawler AWS API Documentation
    #
    # @overload get_crawler(params = {})
    # @param [Hash] params ({})
    def get_crawler(params = {}, options = {})
      req = build_request(:get_crawler, params)
      req.send_request(options)
    end

    # Retrieves metrics about specified crawlers.
    #
    # @option params [Array<String>] :crawler_name_list
    #   A list of the names of crawlers about which to retrieve metrics.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @return [Types::GetCrawlerMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCrawlerMetricsResponse#crawler_metrics_list #crawler_metrics_list} => Array&lt;Types::CrawlerMetrics&gt;
    #   * {Types::GetCrawlerMetricsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_crawler_metrics({
    #     crawler_name_list: ["NameString"],
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.crawler_metrics_list #=> Array
    #   resp.crawler_metrics_list[0].crawler_name #=> String
    #   resp.crawler_metrics_list[0].time_left_seconds #=> Float
    #   resp.crawler_metrics_list[0].still_estimating #=> Boolean
    #   resp.crawler_metrics_list[0].last_runtime_seconds #=> Float
    #   resp.crawler_metrics_list[0].median_runtime_seconds #=> Float
    #   resp.crawler_metrics_list[0].tables_created #=> Integer
    #   resp.crawler_metrics_list[0].tables_updated #=> Integer
    #   resp.crawler_metrics_list[0].tables_deleted #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerMetrics AWS API Documentation
    #
    # @overload get_crawler_metrics(params = {})
    # @param [Hash] params ({})
    def get_crawler_metrics(params = {}, options = {})
      req = build_request(:get_crawler_metrics, params)
      req.send_request(options)
    end

    # Retrieves metadata for all crawlers defined in the customer account.
    #
    # @option params [Integer] :max_results
    #   The number of crawlers to return on each call.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @return [Types::GetCrawlersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCrawlersResponse#crawlers #crawlers} => Array&lt;Types::Crawler&gt;
    #   * {Types::GetCrawlersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_crawlers({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.crawlers #=> Array
    #   resp.crawlers[0].name #=> String
    #   resp.crawlers[0].role #=> String
    #   resp.crawlers[0].targets.s3_targets #=> Array
    #   resp.crawlers[0].targets.s3_targets[0].path #=> String
    #   resp.crawlers[0].targets.s3_targets[0].exclusions #=> Array
    #   resp.crawlers[0].targets.s3_targets[0].exclusions[0] #=> String
    #   resp.crawlers[0].targets.s3_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.s3_targets[0].sample_size #=> Integer
    #   resp.crawlers[0].targets.s3_targets[0].event_queue_arn #=> String
    #   resp.crawlers[0].targets.s3_targets[0].dlq_event_queue_arn #=> String
    #   resp.crawlers[0].targets.jdbc_targets #=> Array
    #   resp.crawlers[0].targets.jdbc_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.jdbc_targets[0].path #=> String
    #   resp.crawlers[0].targets.jdbc_targets[0].exclusions #=> Array
    #   resp.crawlers[0].targets.jdbc_targets[0].exclusions[0] #=> String
    #   resp.crawlers[0].targets.jdbc_targets[0].enable_additional_metadata #=> Array
    #   resp.crawlers[0].targets.jdbc_targets[0].enable_additional_metadata[0] #=> String, one of "COMMENTS", "RAWTYPES"
    #   resp.crawlers[0].targets.mongo_db_targets #=> Array
    #   resp.crawlers[0].targets.mongo_db_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.mongo_db_targets[0].path #=> String
    #   resp.crawlers[0].targets.mongo_db_targets[0].scan_all #=> Boolean
    #   resp.crawlers[0].targets.dynamo_db_targets #=> Array
    #   resp.crawlers[0].targets.dynamo_db_targets[0].path #=> String
    #   resp.crawlers[0].targets.dynamo_db_targets[0].scan_all #=> Boolean
    #   resp.crawlers[0].targets.dynamo_db_targets[0].scan_rate #=> Float
    #   resp.crawlers[0].targets.catalog_targets #=> Array
    #   resp.crawlers[0].targets.catalog_targets[0].database_name #=> String
    #   resp.crawlers[0].targets.catalog_targets[0].tables #=> Array
    #   resp.crawlers[0].targets.catalog_targets[0].tables[0] #=> String
    #   resp.crawlers[0].targets.catalog_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.catalog_targets[0].event_queue_arn #=> String
    #   resp.crawlers[0].targets.catalog_targets[0].dlq_event_queue_arn #=> String
    #   resp.crawlers[0].targets.delta_targets #=> Array
    #   resp.crawlers[0].targets.delta_targets[0].delta_tables #=> Array
    #   resp.crawlers[0].targets.delta_targets[0].delta_tables[0] #=> String
    #   resp.crawlers[0].targets.delta_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.delta_targets[0].write_manifest #=> Boolean
    #   resp.crawlers[0].targets.delta_targets[0].create_native_delta_table #=> Boolean
    #   resp.crawlers[0].targets.iceberg_targets #=> Array
    #   resp.crawlers[0].targets.iceberg_targets[0].paths #=> Array
    #   resp.crawlers[0].targets.iceberg_targets[0].paths[0] #=> String
    #   resp.crawlers[0].targets.iceberg_targets[0].connection_name #=> String
    #   resp.crawlers[0].targets.iceberg_targets[0].exclusions #=> Array
    #   resp.crawlers[0].targets.iceberg_targets[0].exclusions[0] #=> String
    #   resp.crawlers[0].targets.iceberg_targets[0].maximum_traversal_depth #=> Integer
    #   resp.crawlers[0].database_name #=> String
    #   resp.crawlers[0].description #=> String
    #   resp.crawlers[0].classifiers #=> Array
    #   resp.crawlers[0].classifiers[0] #=> String
    #   resp.crawlers[0].recrawl_policy.recrawl_behavior #=> String, one of "CRAWL_EVERYTHING", "CRAWL_NEW_FOLDERS_ONLY", "CRAWL_EVENT_MODE"
    #   resp.crawlers[0].schema_change_policy.update_behavior #=> String, one of "LOG", "UPDATE_IN_DATABASE"
    #   resp.crawlers[0].schema_change_policy.delete_behavior #=> String, one of "LOG", "DELETE_FROM_DATABASE", "DEPRECATE_IN_DATABASE"
    #   resp.crawlers[0].lineage_configuration.crawler_lineage_settings #=> String, one of "ENABLE", "DISABLE"
    #   resp.crawlers[0].state #=> String, one of "READY", "RUNNING", "STOPPING"
    #   resp.crawlers[0].table_prefix #=> String
    #   resp.crawlers[0].schedule.schedule_expression #=> String
    #   resp.crawlers[0].schedule.state #=> String, one of "SCHEDULED", "NOT_SCHEDULED", "TRANSITIONING"
    #   resp.crawlers[0].crawl_elapsed_time #=> Integer
    #   resp.crawlers[0].creation_time #=> Time
    #   resp.crawlers[0].last_updated #=> Time
    #   resp.crawlers[0].last_crawl.status #=> String, one of "SUCCEEDED", "CANCELLED", "FAILED"
    #   resp.crawlers[0].last_crawl.error_message #=> String
    #   resp.crawlers[0].last_crawl.log_group #=> String
    #   resp.crawlers[0].last_crawl.log_stream #=> String
    #   resp.crawlers[0].last_crawl.message_prefix #=> String
    #   resp.crawlers[0].last_crawl.start_time #=> Time
    #   resp.crawlers[0].version #=> Integer
    #   resp.crawlers[0].configuration #=> String
    #   resp.crawlers[0].crawler_security_configuration #=> String
    #   resp.crawlers[0].lake_formation_configuration.use_lake_formation_credentials #=> Boolean
    #   resp.crawlers[0].lake_formation_configuration.account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlers AWS API Documentation
    #
    # @overload get_crawlers(params = {})
    # @param [Hash] params ({})
    def get_crawlers(params = {}, options = {})
      req = build_request(:get_crawlers, params)
      req.send_request(options)
    end

    # Retrieves the details of a custom pattern by specifying its name.
    #
    # @option params [required, String] :name
    #   The name of the custom pattern that you want to retrieve.
    #
    # @return [Types::GetCustomEntityTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCustomEntityTypeResponse#name #name} => String
    #   * {Types::GetCustomEntityTypeResponse#regex_string #regex_string} => String
    #   * {Types::GetCustomEntityTypeResponse#context_words #context_words} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_custom_entity_type({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.regex_string #=> String
    #   resp.context_words #=> Array
    #   resp.context_words[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCustomEntityType AWS API Documentation
    #
    # @overload get_custom_entity_type(params = {})
    # @param [Hash] params ({})
    def get_custom_entity_type(params = {}, options = {})
      req = build_request(:get_custom_entity_type, params)
      req.send_request(options)
    end

    # Retrieves the security configuration for a specified catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog to retrieve the security configuration for.
    #   If none is provided, the Amazon Web Services account ID is used by
    #   default.
    #
    # @return [Types::GetDataCatalogEncryptionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataCatalogEncryptionSettingsResponse#data_catalog_encryption_settings #data_catalog_encryption_settings} => Types::DataCatalogEncryptionSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_catalog_encryption_settings({
    #     catalog_id: "CatalogIdString",
    #   })
    #
    # @example Response structure
    #
    #   resp.data_catalog_encryption_settings.encryption_at_rest.catalog_encryption_mode #=> String, one of "DISABLED", "SSE-KMS"
    #   resp.data_catalog_encryption_settings.encryption_at_rest.sse_aws_kms_key_id #=> String
    #   resp.data_catalog_encryption_settings.connection_password_encryption.return_connection_password_encrypted #=> Boolean
    #   resp.data_catalog_encryption_settings.connection_password_encryption.aws_kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataCatalogEncryptionSettings AWS API Documentation
    #
    # @overload get_data_catalog_encryption_settings(params = {})
    # @param [Hash] params ({})
    def get_data_catalog_encryption_settings(params = {}, options = {})
      req = build_request(:get_data_catalog_encryption_settings, params)
      req.send_request(options)
    end

    # Retrieves the result of a data quality rule evaluation.
    #
    # @option params [required, String] :result_id
    #   A unique result ID for the data quality result.
    #
    # @return [Types::GetDataQualityResultResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataQualityResultResponse#result_id #result_id} => String
    #   * {Types::GetDataQualityResultResponse#score #score} => Float
    #   * {Types::GetDataQualityResultResponse#data_source #data_source} => Types::DataSource
    #   * {Types::GetDataQualityResultResponse#ruleset_name #ruleset_name} => String
    #   * {Types::GetDataQualityResultResponse#evaluation_context #evaluation_context} => String
    #   * {Types::GetDataQualityResultResponse#started_on #started_on} => Time
    #   * {Types::GetDataQualityResultResponse#completed_on #completed_on} => Time
    #   * {Types::GetDataQualityResultResponse#job_name #job_name} => String
    #   * {Types::GetDataQualityResultResponse#job_run_id #job_run_id} => String
    #   * {Types::GetDataQualityResultResponse#ruleset_evaluation_run_id #ruleset_evaluation_run_id} => String
    #   * {Types::GetDataQualityResultResponse#rule_results #rule_results} => Array&lt;Types::DataQualityRuleResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_quality_result({
    #     result_id: "HashString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.result_id #=> String
    #   resp.score #=> Float
    #   resp.data_source.glue_table.database_name #=> String
    #   resp.data_source.glue_table.table_name #=> String
    #   resp.data_source.glue_table.catalog_id #=> String
    #   resp.data_source.glue_table.connection_name #=> String
    #   resp.data_source.glue_table.additional_options #=> Hash
    #   resp.data_source.glue_table.additional_options["NameString"] #=> String
    #   resp.ruleset_name #=> String
    #   resp.evaluation_context #=> String
    #   resp.started_on #=> Time
    #   resp.completed_on #=> Time
    #   resp.job_name #=> String
    #   resp.job_run_id #=> String
    #   resp.ruleset_evaluation_run_id #=> String
    #   resp.rule_results #=> Array
    #   resp.rule_results[0].name #=> String
    #   resp.rule_results[0].description #=> String
    #   resp.rule_results[0].evaluation_message #=> String
    #   resp.rule_results[0].result #=> String, one of "PASS", "FAIL", "ERROR"
    #   resp.rule_results[0].evaluated_metrics #=> Hash
    #   resp.rule_results[0].evaluated_metrics["NameString"] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityResult AWS API Documentation
    #
    # @overload get_data_quality_result(params = {})
    # @param [Hash] params ({})
    def get_data_quality_result(params = {}, options = {})
      req = build_request(:get_data_quality_result, params)
      req.send_request(options)
    end

    # Gets the specified recommendation run that was used to generate rules.
    #
    # @option params [required, String] :run_id
    #   The unique run identifier associated with this run.
    #
    # @return [Types::GetDataQualityRuleRecommendationRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataQualityRuleRecommendationRunResponse#run_id #run_id} => String
    #   * {Types::GetDataQualityRuleRecommendationRunResponse#data_source #data_source} => Types::DataSource
    #   * {Types::GetDataQualityRuleRecommendationRunResponse#role #role} => String
    #   * {Types::GetDataQualityRuleRecommendationRunResponse#number_of_workers #number_of_workers} => Integer
    #   * {Types::GetDataQualityRuleRecommendationRunResponse#timeout #timeout} => Integer
    #   * {Types::GetDataQualityRuleRecommendationRunResponse#status #status} => String
    #   * {Types::GetDataQualityRuleRecommendationRunResponse#error_string #error_string} => String
    #   * {Types::GetDataQualityRuleRecommendationRunResponse#started_on #started_on} => Time
    #   * {Types::GetDataQualityRuleRecommendationRunResponse#last_modified_on #last_modified_on} => Time
    #   * {Types::GetDataQualityRuleRecommendationRunResponse#completed_on #completed_on} => Time
    #   * {Types::GetDataQualityRuleRecommendationRunResponse#execution_time #execution_time} => Integer
    #   * {Types::GetDataQualityRuleRecommendationRunResponse#recommended_ruleset #recommended_ruleset} => String
    #   * {Types::GetDataQualityRuleRecommendationRunResponse#created_ruleset_name #created_ruleset_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_quality_rule_recommendation_run({
    #     run_id: "HashString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.run_id #=> String
    #   resp.data_source.glue_table.database_name #=> String
    #   resp.data_source.glue_table.table_name #=> String
    #   resp.data_source.glue_table.catalog_id #=> String
    #   resp.data_source.glue_table.connection_name #=> String
    #   resp.data_source.glue_table.additional_options #=> Hash
    #   resp.data_source.glue_table.additional_options["NameString"] #=> String
    #   resp.role #=> String
    #   resp.number_of_workers #=> Integer
    #   resp.timeout #=> Integer
    #   resp.status #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.error_string #=> String
    #   resp.started_on #=> Time
    #   resp.last_modified_on #=> Time
    #   resp.completed_on #=> Time
    #   resp.execution_time #=> Integer
    #   resp.recommended_ruleset #=> String
    #   resp.created_ruleset_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityRuleRecommendationRun AWS API Documentation
    #
    # @overload get_data_quality_rule_recommendation_run(params = {})
    # @param [Hash] params ({})
    def get_data_quality_rule_recommendation_run(params = {}, options = {})
      req = build_request(:get_data_quality_rule_recommendation_run, params)
      req.send_request(options)
    end

    # Returns an existing ruleset by identifier or name.
    #
    # @option params [required, String] :name
    #   The name of the ruleset.
    #
    # @return [Types::GetDataQualityRulesetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataQualityRulesetResponse#name #name} => String
    #   * {Types::GetDataQualityRulesetResponse#description #description} => String
    #   * {Types::GetDataQualityRulesetResponse#ruleset #ruleset} => String
    #   * {Types::GetDataQualityRulesetResponse#target_table #target_table} => Types::DataQualityTargetTable
    #   * {Types::GetDataQualityRulesetResponse#created_on #created_on} => Time
    #   * {Types::GetDataQualityRulesetResponse#last_modified_on #last_modified_on} => Time
    #   * {Types::GetDataQualityRulesetResponse#recommendation_run_id #recommendation_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_quality_ruleset({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.ruleset #=> String
    #   resp.target_table.table_name #=> String
    #   resp.target_table.database_name #=> String
    #   resp.target_table.catalog_id #=> String
    #   resp.created_on #=> Time
    #   resp.last_modified_on #=> Time
    #   resp.recommendation_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityRuleset AWS API Documentation
    #
    # @overload get_data_quality_ruleset(params = {})
    # @param [Hash] params ({})
    def get_data_quality_ruleset(params = {}, options = {})
      req = build_request(:get_data_quality_ruleset, params)
      req.send_request(options)
    end

    # Retrieves a specific run where a ruleset is evaluated against a data
    # source.
    #
    # @option params [required, String] :run_id
    #   The unique run identifier associated with this run.
    #
    # @return [Types::GetDataQualityRulesetEvaluationRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#run_id #run_id} => String
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#data_source #data_source} => Types::DataSource
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#role #role} => String
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#number_of_workers #number_of_workers} => Integer
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#timeout #timeout} => Integer
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#additional_run_options #additional_run_options} => Types::DataQualityEvaluationRunAdditionalRunOptions
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#status #status} => String
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#error_string #error_string} => String
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#started_on #started_on} => Time
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#last_modified_on #last_modified_on} => Time
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#completed_on #completed_on} => Time
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#execution_time #execution_time} => Integer
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#ruleset_names #ruleset_names} => Array&lt;String&gt;
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#result_ids #result_ids} => Array&lt;String&gt;
    #   * {Types::GetDataQualityRulesetEvaluationRunResponse#additional_data_sources #additional_data_sources} => Hash&lt;String,Types::DataSource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_quality_ruleset_evaluation_run({
    #     run_id: "HashString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.run_id #=> String
    #   resp.data_source.glue_table.database_name #=> String
    #   resp.data_source.glue_table.table_name #=> String
    #   resp.data_source.glue_table.catalog_id #=> String
    #   resp.data_source.glue_table.connection_name #=> String
    #   resp.data_source.glue_table.additional_options #=> Hash
    #   resp.data_source.glue_table.additional_options["NameString"] #=> String
    #   resp.role #=> String
    #   resp.number_of_workers #=> Integer
    #   resp.timeout #=> Integer
    #   resp.additional_run_options.cloud_watch_metrics_enabled #=> Boolean
    #   resp.additional_run_options.results_s3_prefix #=> String
    #   resp.status #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.error_string #=> String
    #   resp.started_on #=> Time
    #   resp.last_modified_on #=> Time
    #   resp.completed_on #=> Time
    #   resp.execution_time #=> Integer
    #   resp.ruleset_names #=> Array
    #   resp.ruleset_names[0] #=> String
    #   resp.result_ids #=> Array
    #   resp.result_ids[0] #=> String
    #   resp.additional_data_sources #=> Hash
    #   resp.additional_data_sources["NameString"].glue_table.database_name #=> String
    #   resp.additional_data_sources["NameString"].glue_table.table_name #=> String
    #   resp.additional_data_sources["NameString"].glue_table.catalog_id #=> String
    #   resp.additional_data_sources["NameString"].glue_table.connection_name #=> String
    #   resp.additional_data_sources["NameString"].glue_table.additional_options #=> Hash
    #   resp.additional_data_sources["NameString"].glue_table.additional_options["NameString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataQualityRulesetEvaluationRun AWS API Documentation
    #
    # @overload get_data_quality_ruleset_evaluation_run(params = {})
    # @param [Hash] params ({})
    def get_data_quality_ruleset_evaluation_run(params = {}, options = {})
      req = build_request(:get_data_quality_ruleset_evaluation_run, params)
      req.send_request(options)
    end

    # Retrieves the definition of a specified database.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the database resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :name
    #   The name of the database to retrieve. For Hive compatibility, this
    #   should be all lowercase.
    #
    # @return [Types::GetDatabaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatabaseResponse#database #database} => Types::Database
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_database({
    #     catalog_id: "CatalogIdString",
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.database.name #=> String
    #   resp.database.description #=> String
    #   resp.database.location_uri #=> String
    #   resp.database.parameters #=> Hash
    #   resp.database.parameters["KeyString"] #=> String
    #   resp.database.create_time #=> Time
    #   resp.database.create_table_default_permissions #=> Array
    #   resp.database.create_table_default_permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.database.create_table_default_permissions[0].permissions #=> Array
    #   resp.database.create_table_default_permissions[0].permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #   resp.database.target_database.catalog_id #=> String
    #   resp.database.target_database.database_name #=> String
    #   resp.database.target_database.region #=> String
    #   resp.database.catalog_id #=> String
    #   resp.database.federated_database.identifier #=> String
    #   resp.database.federated_database.connection_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabase AWS API Documentation
    #
    # @overload get_database(params = {})
    # @param [Hash] params ({})
    def get_database(params = {}, options = {})
      req = build_request(:get_database, params)
      req.send_request(options)
    end

    # Retrieves all databases defined in a given Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog from which to retrieve `Databases`. If none
    #   is provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of databases to return in one response.
    #
    # @option params [String] :resource_share_type
    #   Allows you to specify that you want to list the databases shared with
    #   your account. The allowable values are `FEDERATED`, `FOREIGN` or
    #   `ALL`.
    #
    #   * If set to `FEDERATED`, will list the federated databases
    #     (referencing an external entity) shared with your account.
    #
    #   * If set to `FOREIGN`, will list the databases shared with your
    #     account.
    #
    #   * If set to `ALL`, will list the databases shared with your account,
    #     as well as the databases in yor local account.
    #
    # @return [Types::GetDatabasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatabasesResponse#database_list #database_list} => Array&lt;Types::Database&gt;
    #   * {Types::GetDatabasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_databases({
    #     catalog_id: "CatalogIdString",
    #     next_token: "Token",
    #     max_results: 1,
    #     resource_share_type: "FOREIGN", # accepts FOREIGN, ALL, FEDERATED
    #   })
    #
    # @example Response structure
    #
    #   resp.database_list #=> Array
    #   resp.database_list[0].name #=> String
    #   resp.database_list[0].description #=> String
    #   resp.database_list[0].location_uri #=> String
    #   resp.database_list[0].parameters #=> Hash
    #   resp.database_list[0].parameters["KeyString"] #=> String
    #   resp.database_list[0].create_time #=> Time
    #   resp.database_list[0].create_table_default_permissions #=> Array
    #   resp.database_list[0].create_table_default_permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.database_list[0].create_table_default_permissions[0].permissions #=> Array
    #   resp.database_list[0].create_table_default_permissions[0].permissions[0] #=> String, one of "ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS"
    #   resp.database_list[0].target_database.catalog_id #=> String
    #   resp.database_list[0].target_database.database_name #=> String
    #   resp.database_list[0].target_database.region #=> String
    #   resp.database_list[0].catalog_id #=> String
    #   resp.database_list[0].federated_database.identifier #=> String
    #   resp.database_list[0].federated_database.connection_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabases AWS API Documentation
    #
    # @overload get_databases(params = {})
    # @param [Hash] params ({})
    def get_databases(params = {}, options = {})
      req = build_request(:get_databases, params)
      req.send_request(options)
    end

    # Transforms a Python script into a directed acyclic graph (DAG).
    #
    # @option params [String] :python_script
    #   The Python script to transform.
    #
    # @return [Types::GetDataflowGraphResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataflowGraphResponse#dag_nodes #dag_nodes} => Array&lt;Types::CodeGenNode&gt;
    #   * {Types::GetDataflowGraphResponse#dag_edges #dag_edges} => Array&lt;Types::CodeGenEdge&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dataflow_graph({
    #     python_script: "PythonScript",
    #   })
    #
    # @example Response structure
    #
    #   resp.dag_nodes #=> Array
    #   resp.dag_nodes[0].id #=> String
    #   resp.dag_nodes[0].node_type #=> String
    #   resp.dag_nodes[0].args #=> Array
    #   resp.dag_nodes[0].args[0].name #=> String
    #   resp.dag_nodes[0].args[0].value #=> String
    #   resp.dag_nodes[0].args[0].param #=> Boolean
    #   resp.dag_nodes[0].line_number #=> Integer
    #   resp.dag_edges #=> Array
    #   resp.dag_edges[0].source #=> String
    #   resp.dag_edges[0].target #=> String
    #   resp.dag_edges[0].target_parameter #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataflowGraph AWS API Documentation
    #
    # @overload get_dataflow_graph(params = {})
    # @param [Hash] params ({})
    def get_dataflow_graph(params = {}, options = {})
      req = build_request(:get_dataflow_graph, params)
      req.send_request(options)
    end

    # Retrieves information about a specified development endpoint.
    #
    # <note markdown="1"> When you create a development endpoint in a virtual private cloud
    # (VPC), Glue returns only a private IP address, and the public IP
    # address field is not populated. When you create a non-VPC development
    # endpoint, Glue returns only a public IP address.
    #
    #  </note>
    #
    # @option params [required, String] :endpoint_name
    #   Name of the `DevEndpoint` to retrieve information for.
    #
    # @return [Types::GetDevEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDevEndpointResponse#dev_endpoint #dev_endpoint} => Types::DevEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dev_endpoint({
    #     endpoint_name: "GenericString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dev_endpoint.endpoint_name #=> String
    #   resp.dev_endpoint.role_arn #=> String
    #   resp.dev_endpoint.security_group_ids #=> Array
    #   resp.dev_endpoint.security_group_ids[0] #=> String
    #   resp.dev_endpoint.subnet_id #=> String
    #   resp.dev_endpoint.yarn_endpoint_address #=> String
    #   resp.dev_endpoint.private_address #=> String
    #   resp.dev_endpoint.zeppelin_remote_spark_interpreter_port #=> Integer
    #   resp.dev_endpoint.public_address #=> String
    #   resp.dev_endpoint.status #=> String
    #   resp.dev_endpoint.worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.dev_endpoint.glue_version #=> String
    #   resp.dev_endpoint.number_of_workers #=> Integer
    #   resp.dev_endpoint.number_of_nodes #=> Integer
    #   resp.dev_endpoint.availability_zone #=> String
    #   resp.dev_endpoint.vpc_id #=> String
    #   resp.dev_endpoint.extra_python_libs_s3_path #=> String
    #   resp.dev_endpoint.extra_jars_s3_path #=> String
    #   resp.dev_endpoint.failure_reason #=> String
    #   resp.dev_endpoint.last_update_status #=> String
    #   resp.dev_endpoint.created_timestamp #=> Time
    #   resp.dev_endpoint.last_modified_timestamp #=> Time
    #   resp.dev_endpoint.public_key #=> String
    #   resp.dev_endpoint.public_keys #=> Array
    #   resp.dev_endpoint.public_keys[0] #=> String
    #   resp.dev_endpoint.security_configuration #=> String
    #   resp.dev_endpoint.arguments #=> Hash
    #   resp.dev_endpoint.arguments["GenericString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpoint AWS API Documentation
    #
    # @overload get_dev_endpoint(params = {})
    # @param [Hash] params ({})
    def get_dev_endpoint(params = {}, options = {})
      req = build_request(:get_dev_endpoint, params)
      req.send_request(options)
    end

    # Retrieves all the development endpoints in this Amazon Web Services
    # account.
    #
    # <note markdown="1"> When you create a development endpoint in a virtual private cloud
    # (VPC), Glue returns only a private IP address and the public IP
    # address field is not populated. When you create a non-VPC development
    # endpoint, Glue returns only a public IP address.
    #
    #  </note>
    #
    # @option params [Integer] :max_results
    #   The maximum size of information to return.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @return [Types::GetDevEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDevEndpointsResponse#dev_endpoints #dev_endpoints} => Array&lt;Types::DevEndpoint&gt;
    #   * {Types::GetDevEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dev_endpoints({
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.dev_endpoints #=> Array
    #   resp.dev_endpoints[0].endpoint_name #=> String
    #   resp.dev_endpoints[0].role_arn #=> String
    #   resp.dev_endpoints[0].security_group_ids #=> Array
    #   resp.dev_endpoints[0].security_group_ids[0] #=> String
    #   resp.dev_endpoints[0].subnet_id #=> String
    #   resp.dev_endpoints[0].yarn_endpoint_address #=> String
    #   resp.dev_endpoints[0].private_address #=> String
    #   resp.dev_endpoints[0].zeppelin_remote_spark_interpreter_port #=> Integer
    #   resp.dev_endpoints[0].public_address #=> String
    #   resp.dev_endpoints[0].status #=> String
    #   resp.dev_endpoints[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.dev_endpoints[0].glue_version #=> String
    #   resp.dev_endpoints[0].number_of_workers #=> Integer
    #   resp.dev_endpoints[0].number_of_nodes #=> Integer
    #   resp.dev_endpoints[0].availability_zone #=> String
    #   resp.dev_endpoints[0].vpc_id #=> String
    #   resp.dev_endpoints[0].extra_python_libs_s3_path #=> String
    #   resp.dev_endpoints[0].extra_jars_s3_path #=> String
    #   resp.dev_endpoints[0].failure_reason #=> String
    #   resp.dev_endpoints[0].last_update_status #=> String
    #   resp.dev_endpoints[0].created_timestamp #=> Time
    #   resp.dev_endpoints[0].last_modified_timestamp #=> Time
    #   resp.dev_endpoints[0].public_key #=> String
    #   resp.dev_endpoints[0].public_keys #=> Array
    #   resp.dev_endpoints[0].public_keys[0] #=> String
    #   resp.dev_endpoints[0].security_configuration #=> String
    #   resp.dev_endpoints[0].arguments #=> Hash
    #   resp.dev_endpoints[0].arguments["GenericString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpoints AWS API Documentation
    #
    # @overload get_dev_endpoints(params = {})
    # @param [Hash] params ({})
    def get_dev_endpoints(params = {}, options = {})
      req = build_request(:get_dev_endpoints, params)
      req.send_request(options)
    end

    # Retrieves an existing job definition.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition to retrieve.
    #
    # @return [Types::GetJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job({
    #     job_name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.name #=> String
    #   resp.job.description #=> String
    #   resp.job.log_uri #=> String
    #   resp.job.role #=> String
    #   resp.job.created_on #=> Time
    #   resp.job.last_modified_on #=> Time
    #   resp.job.execution_property.max_concurrent_runs #=> Integer
    #   resp.job.command.name #=> String
    #   resp.job.command.script_location #=> String
    #   resp.job.command.python_version #=> String
    #   resp.job.command.runtime #=> String
    #   resp.job.default_arguments #=> Hash
    #   resp.job.default_arguments["GenericString"] #=> String
    #   resp.job.non_overridable_arguments #=> Hash
    #   resp.job.non_overridable_arguments["GenericString"] #=> String
    #   resp.job.connections.connections #=> Array
    #   resp.job.connections.connections[0] #=> String
    #   resp.job.max_retries #=> Integer
    #   resp.job.allocated_capacity #=> Integer
    #   resp.job.timeout #=> Integer
    #   resp.job.max_capacity #=> Float
    #   resp.job.worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.job.number_of_workers #=> Integer
    #   resp.job.security_configuration #=> String
    #   resp.job.notification_property.notify_delay_after #=> Integer
    #   resp.job.glue_version #=> String
    #   resp.job.code_gen_configuration_nodes #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].athena_connector_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].athena_connector_source.connection_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].athena_connector_source.connector_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].athena_connector_source.connection_type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].athena_connector_source.connection_table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].athena_connector_source.schema_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].athena_connector_source.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].athena_connector_source.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].athena_connector_source.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].athena_connector_source.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.connection_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.connector_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.connection_type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.filter_predicate #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.partition_column #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.lower_bound #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.upper_bound #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.num_partitions #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.job_bookmark_keys #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.job_bookmark_keys[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.job_bookmark_keys_sort_order #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.data_type_mapping #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.data_type_mapping["JDBCDataType"] #=> String, one of "DATE", "STRING", "TIMESTAMP", "INT", "FLOAT", "LONG", "BIGDECIMAL", "BYTE", "SHORT", "DOUBLE"
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.connection_table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.query #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_source.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_source.connection_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_source.connector_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_source.connection_type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_source.additional_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_source.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_source.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_source.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_source.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_source.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_source.redshift_tmp_dir #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_source.tmp_dir_iam_role #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_source.partition_predicate #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_source.additional_options.bounded_size #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_source.additional_options.bounded_files #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.paths #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.paths[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.compression_type #=> String, one of "gzip", "bzip2"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.exclusions #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.exclusions[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.group_size #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.group_files #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.recurse #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.max_band #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.max_files_in_band #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.additional_options.bounded_size #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.additional_options.bounded_files #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.additional_options.enable_sample_path #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.additional_options.sample_path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.separator #=> String, one of "comma", "ctrla", "pipe", "semicolon", "tab"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.escaper #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.quote_char #=> String, one of "quote", "quillemet", "single_quote", "disabled"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.multiline #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.with_header #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.write_header #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.skip_first #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.optimize_performance #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_csv_source.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.paths #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.paths[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.compression_type #=> String, one of "gzip", "bzip2"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.exclusions #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.exclusions[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.group_size #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.group_files #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.recurse #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.max_band #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.max_files_in_band #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.additional_options.bounded_size #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.additional_options.bounded_files #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.additional_options.enable_sample_path #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.additional_options.sample_path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.json_path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.multiline #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_json_source.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.paths #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.paths[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.compression_type #=> String, one of "snappy", "lzo", "gzip", "uncompressed", "none"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.exclusions #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.exclusions[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.group_size #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.group_files #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.recurse #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.max_band #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.max_files_in_band #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.additional_options.bounded_size #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.additional_options.bounded_files #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.additional_options.enable_sample_path #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.additional_options.sample_path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_parquet_source.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].relational_catalog_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].relational_catalog_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].relational_catalog_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamo_db_catalog_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamo_db_catalog_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamo_db_catalog_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_target.connection_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_target.connection_table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_target.connector_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_target.connection_type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_target.additional_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_target.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_target.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_target.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].jdbc_connector_target.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_target.connection_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_target.connector_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_target.connection_type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_target.additional_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_target.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_target.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_target.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_connector_target.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_target.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_target.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_target.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_target.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_target.redshift_tmp_dir #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_target.tmp_dir_iam_role #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_target.upsert_redshift_options.table_location #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_target.upsert_redshift_options.connection_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_target.upsert_redshift_options.upsert_keys #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].redshift_target.upsert_redshift_options.upsert_keys[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_target.partition_keys #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_target.partition_keys[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_target.partition_keys[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_target.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_target.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.partition_keys #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.partition_keys[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.partition_keys[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.compression #=> String, one of "snappy", "lzo", "gzip", "uncompressed", "none"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.schema_change_policy.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.schema_change_policy.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_direct_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_direct_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_direct_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_direct_target.partition_keys #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_direct_target.partition_keys[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_direct_target.partition_keys[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_direct_target.path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_direct_target.compression #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_direct_target.format #=> String, one of "json", "csv", "avro", "orc", "parquet", "hudi", "delta"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_direct_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_direct_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_direct_target.schema_change_policy.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_direct_target.schema_change_policy.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].apply_mapping.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].apply_mapping.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].apply_mapping.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].apply_mapping.mapping #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].to_key #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].from_path #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].from_path[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].from_type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].to_type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].dropped #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].children #=> Types::Mappings
    #   resp.job.code_gen_configuration_nodes["NodeId"].select_fields.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].select_fields.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].select_fields.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].select_fields.paths #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].select_fields.paths[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].select_fields.paths[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_fields.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_fields.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_fields.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_fields.paths #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_fields.paths[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_fields.paths[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].rename_field.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].rename_field.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].rename_field.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].rename_field.source_path #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].rename_field.source_path[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].rename_field.target_path #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].rename_field.target_path[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spigot.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spigot.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].spigot.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spigot.path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spigot.topk #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].spigot.prob #=> Float
    #   resp.job.code_gen_configuration_nodes["NodeId"].join.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].join.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].join.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].join.join_type #=> String, one of "equijoin", "left", "right", "outer", "leftsemi", "leftanti"
    #   resp.job.code_gen_configuration_nodes["NodeId"].join.columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].join.columns[0].from #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].join.columns[0].keys #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].join.columns[0].keys[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].join.columns[0].keys[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].split_fields.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].split_fields.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].split_fields.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].split_fields.paths #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].split_fields.paths[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].split_fields.paths[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].select_from_collection.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].select_from_collection.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].select_from_collection.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].select_from_collection.index #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].fill_missing_values.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].fill_missing_values.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].fill_missing_values.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].fill_missing_values.imputed_path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].fill_missing_values.filled_path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].filter.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].filter.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].filter.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].filter.logical_operator #=> String, one of "AND", "OR"
    #   resp.job.code_gen_configuration_nodes["NodeId"].filter.filters #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].filter.filters[0].operation #=> String, one of "EQ", "LT", "GT", "LTE", "GTE", "REGEX", "ISNULL"
    #   resp.job.code_gen_configuration_nodes["NodeId"].filter.filters[0].negated #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].filter.filters[0].values #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].filter.filters[0].values[0].type #=> String, one of "COLUMNEXTRACTED", "CONSTANT"
    #   resp.job.code_gen_configuration_nodes["NodeId"].filter.filters[0].values[0].value #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].filter.filters[0].values[0].value[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].custom_code.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].custom_code.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].custom_code.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].custom_code.code #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].custom_code.class_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].custom_code.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].custom_code.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].custom_code.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].custom_code.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_sql.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_sql.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_sql.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_sql.sql_query #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_sql.sql_aliases #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_sql.sql_aliases[0].from #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_sql.sql_aliases[0].alias #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_sql.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_sql.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_sql.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].spark_sql.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.window_size #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.detect_schema #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.endpoint_url #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.stream_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.classification #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.delimiter #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.starting_position #=> String, one of "latest", "trim_horizon", "earliest", "timestamp"
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.max_fetch_time_in_ms #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.max_fetch_records_per_shard #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.max_record_per_read #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.add_idle_time_between_reads #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.idle_time_between_reads_in_ms #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.describe_shard_interval #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.num_retries #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.retry_interval_ms #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.max_retry_interval_ms #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.avoid_empty_batches #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.stream_arn #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.role_arn #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.role_session_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.add_record_timestamp #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.emit_consumer_lag_metrics #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.starting_timestamp #=> Time
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.data_preview_options.polling_time #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kinesis_source.data_preview_options.record_polling_limit #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.bootstrap_servers #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.security_protocol #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.connection_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.topic_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.assign #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.subscribe_pattern #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.classification #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.delimiter #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.starting_offsets #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.ending_offsets #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.poll_timeout_ms #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.num_retries #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.retry_interval_ms #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.max_offsets_per_trigger #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.min_partitions #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.include_headers #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.add_record_timestamp #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.emit_consumer_lag_metrics #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.starting_timestamp #=> Time
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.window_size #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.detect_schema #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.data_preview_options.polling_time #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_kafka_source.data_preview_options.record_polling_limit #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.window_size #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.detect_schema #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.endpoint_url #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.stream_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.classification #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.delimiter #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.starting_position #=> String, one of "latest", "trim_horizon", "earliest", "timestamp"
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.max_fetch_time_in_ms #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.max_fetch_records_per_shard #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.max_record_per_read #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.add_idle_time_between_reads #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.idle_time_between_reads_in_ms #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.describe_shard_interval #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.num_retries #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.retry_interval_ms #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.max_retry_interval_ms #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.avoid_empty_batches #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.stream_arn #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.role_arn #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.role_session_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.add_record_timestamp #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.emit_consumer_lag_metrics #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.starting_timestamp #=> Time
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.data_preview_options.polling_time #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.data_preview_options.record_polling_limit #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.window_size #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.detect_schema #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.bootstrap_servers #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.security_protocol #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.connection_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.topic_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.assign #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.subscribe_pattern #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.classification #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.delimiter #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.starting_offsets #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.ending_offsets #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.poll_timeout_ms #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.num_retries #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.retry_interval_ms #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.max_offsets_per_trigger #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.min_partitions #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.include_headers #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.add_record_timestamp #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.emit_consumer_lag_metrics #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.starting_timestamp #=> Time
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.data_preview_options.polling_time #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_kafka_source.data_preview_options.record_polling_limit #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_null_fields.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_null_fields.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_null_fields.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_null_fields.null_check_box_list.is_empty #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_null_fields.null_check_box_list.is_null_string #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_null_fields.null_check_box_list.is_neg_one #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_null_fields.null_text_list #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_null_fields.null_text_list[0].value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_null_fields.null_text_list[0].datatype.id #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_null_fields.null_text_list[0].datatype.label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].merge.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].merge.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].merge.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].merge.source #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].merge.primary_keys #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].merge.primary_keys[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].merge.primary_keys[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].union.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].union.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].union.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].union.union_type #=> String, one of "ALL", "DISTINCT"
    #   resp.job.code_gen_configuration_nodes["NodeId"].pii_detection.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].pii_detection.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].pii_detection.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].pii_detection.pii_type #=> String, one of "RowAudit", "RowMasking", "ColumnAudit", "ColumnMasking"
    #   resp.job.code_gen_configuration_nodes["NodeId"].pii_detection.entity_types_to_detect #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].pii_detection.entity_types_to_detect[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].pii_detection.output_column_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].pii_detection.sample_fraction #=> Float
    #   resp.job.code_gen_configuration_nodes["NodeId"].pii_detection.threshold_fraction #=> Float
    #   resp.job.code_gen_configuration_nodes["NodeId"].pii_detection.mask_value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].aggregate.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].aggregate.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].aggregate.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].aggregate.groups #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].aggregate.groups[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].aggregate.groups[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].aggregate.aggs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].aggregate.aggs[0].column #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].aggregate.aggs[0].column[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].aggregate.aggs[0].agg_func #=> String, one of "avg", "countDistinct", "count", "first", "last", "kurtosis", "max", "min", "skewness", "stddev_samp", "stddev_pop", "sum", "sumDistinct", "var_samp", "var_pop"
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_duplicates.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_duplicates.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_duplicates.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_duplicates.columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_duplicates.columns[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].drop_duplicates.columns[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_target.partition_keys #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_target.partition_keys[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_target.partition_keys[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_target.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_target.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_source.partition_predicate #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_source.additional_options.bounded_size #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].governed_catalog_source.additional_options.bounded_files #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].my_sql_catalog_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].my_sql_catalog_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].my_sql_catalog_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.transform_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].type #=> String, one of "str", "int", "float", "complex", "bool", "list", "null"
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].validation_rule #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].validation_message #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].value #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].value[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].list_type #=> String, one of "str", "int", "float", "complex", "bool", "list", "null"
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].is_optional #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.function_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.version #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].dynamic_transform.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality.ruleset #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality.output #=> String, one of "PrimaryInput", "EvaluationResults"
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality.publishing_options.evaluation_context #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality.publishing_options.results_s3_prefix #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality.publishing_options.cloud_watch_metrics_enabled #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality.publishing_options.results_publishing_enabled #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality.stop_job_on_failure_options.stop_job_on_failure_timing #=> String, one of "Immediate", "AfterDataLoad"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.additional_hudi_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.additional_hudi_options["EnclosedInStringProperty"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_hudi_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_hudi_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_hudi_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_hudi_source.additional_hudi_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_hudi_source.additional_hudi_options["EnclosedInStringProperty"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_hudi_source.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_hudi_source.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_hudi_source.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_hudi_source.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_source.paths #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_source.paths[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_hudi_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_hudi_options["EnclosedInStringProperty"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_options.bounded_size #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_options.bounded_files #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_options.enable_sample_path #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_options.sample_path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_source.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_source.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_source.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_source.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.partition_keys #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.partition_keys[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.partition_keys[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.additional_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.compression #=> String, one of "gzip", "lzo", "uncompressed", "snappy"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.partition_keys #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.partition_keys[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.partition_keys[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.format #=> String, one of "json", "csv", "avro", "orc", "parquet", "hudi", "delta"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.additional_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.schema_change_policy.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.schema_change_policy.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_jdbc_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_jdbc_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_jdbc_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_jdbc_source.connection_name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_jdbc_source.connection_type #=> String, one of "sqlserver", "mysql", "oracle", "postgresql", "redshift"
    #   resp.job.code_gen_configuration_nodes["NodeId"].direct_jdbc_source.redshift_tmp_dir #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.additional_delta_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.additional_delta_options["EnclosedInStringProperty"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_delta_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_delta_source.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_delta_source.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_delta_source.additional_delta_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_delta_source.additional_delta_options["EnclosedInStringProperty"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_delta_source.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_delta_source.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_delta_source.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].catalog_delta_source.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_source.paths #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_source.paths[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_delta_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_delta_options["EnclosedInStringProperty"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_options.bounded_size #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_options.bounded_files #=> Integer
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_options.enable_sample_path #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_options.sample_path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_source.output_schemas #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_source.output_schemas[0].columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_source.output_schemas[0].columns[0].name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_source.output_schemas[0].columns[0].type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.partition_keys #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.partition_keys[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.partition_keys[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.additional_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.partition_keys #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.partition_keys[0] #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.partition_keys[0][0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.path #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.compression #=> String, one of "uncompressed", "snappy"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.format #=> String, one of "json", "csv", "avro", "orc", "parquet", "hudi", "delta"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.additional_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.schema_change_policy.table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.schema_change_policy.database #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.access_type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.source_type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.connection.value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.connection.label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.connection.description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.schema.value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.schema.label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.schema.description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table.value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table.label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table.description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_database.value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_database.label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_database.description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_table.value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_table.label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_table.description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_redshift_schema #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_redshift_table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.temp_dir #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.iam_role.value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.iam_role.label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.iam_role.description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.advanced_options #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.advanced_options[0].key #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.advanced_options[0].value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.sample_query #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.pre_action #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.post_action #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.action #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_prefix #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.upsert #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.merge_action #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.merge_when_matched #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.merge_when_not_matched #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.merge_clause #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.crawler_connection #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_schema #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_schema[0].value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_schema[0].label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_schema[0].description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.staging_table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.selected_columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.selected_columns[0].value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.selected_columns[0].label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.selected_columns[0].description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.access_type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.source_type #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.connection.value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.connection.label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.connection.description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.schema.value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.schema.label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.schema.description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table.value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table.label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table.description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_database.value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_database.label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_database.description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_table.value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_table.label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_table.description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_redshift_schema #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_redshift_table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.temp_dir #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.iam_role.value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.iam_role.label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.iam_role.description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.advanced_options #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.advanced_options[0].key #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.advanced_options[0].value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.sample_query #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.pre_action #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.post_action #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.action #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_prefix #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.upsert #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.merge_action #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.merge_when_matched #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.merge_when_not_matched #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.merge_clause #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.crawler_connection #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_schema #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_schema[0].value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_schema[0].label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_schema[0].description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.staging_table #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.selected_columns #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.selected_columns[0].value #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.selected_columns[0].label #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.selected_columns[0].description #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].amazon_redshift_target.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.name #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.inputs #=> Array
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.inputs[0] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.additional_data_sources #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.additional_data_sources["NodeName"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.ruleset #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.publishing_options.evaluation_context #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.publishing_options.results_s3_prefix #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.publishing_options.cloud_watch_metrics_enabled #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.publishing_options.results_publishing_enabled #=> Boolean
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.additional_options #=> Hash
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.additional_options["AdditionalOptionKeys"] #=> String
    #   resp.job.code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.stop_job_on_failure_options.stop_job_on_failure_timing #=> String, one of "Immediate", "AfterDataLoad"
    #   resp.job.execution_class #=> String, one of "FLEX", "STANDARD"
    #   resp.job.source_control_details.provider #=> String, one of "GITHUB", "AWS_CODE_COMMIT"
    #   resp.job.source_control_details.repository #=> String
    #   resp.job.source_control_details.owner #=> String
    #   resp.job.source_control_details.branch #=> String
    #   resp.job.source_control_details.folder #=> String
    #   resp.job.source_control_details.last_commit_id #=> String
    #   resp.job.source_control_details.auth_strategy #=> String, one of "PERSONAL_ACCESS_TOKEN", "AWS_SECRETS_MANAGER"
    #   resp.job.source_control_details.auth_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJob AWS API Documentation
    #
    # @overload get_job(params = {})
    # @param [Hash] params ({})
    def get_job(params = {}, options = {})
      req = build_request(:get_job, params)
      req.send_request(options)
    end

    # Returns information on a job bookmark entry.
    #
    # For more information about enabling and using job bookmarks, see:
    #
    # * [Tracking processed data using job bookmarks][1]
    #
    # * [Job parameters used by Glue][2]
    #
    # * [Job structure][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-continuations.html
    # [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    # [3]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html#aws-glue-api-jobs-job-Job
    #
    # @option params [required, String] :job_name
    #   The name of the job in question.
    #
    # @option params [String] :run_id
    #   The unique run identifier associated with this job run.
    #
    # @return [Types::GetJobBookmarkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobBookmarkResponse#job_bookmark_entry #job_bookmark_entry} => Types::JobBookmarkEntry
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_bookmark({
    #     job_name: "JobName", # required
    #     run_id: "RunId",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_bookmark_entry.job_name #=> String
    #   resp.job_bookmark_entry.version #=> Integer
    #   resp.job_bookmark_entry.run #=> Integer
    #   resp.job_bookmark_entry.attempt #=> Integer
    #   resp.job_bookmark_entry.previous_run_id #=> String
    #   resp.job_bookmark_entry.run_id #=> String
    #   resp.job_bookmark_entry.job_bookmark #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobBookmark AWS API Documentation
    #
    # @overload get_job_bookmark(params = {})
    # @param [Hash] params ({})
    def get_job_bookmark(params = {}, options = {})
      req = build_request(:get_job_bookmark, params)
      req.send_request(options)
    end

    # Retrieves the metadata for a given job run.
    #
    # @option params [required, String] :job_name
    #   Name of the job definition being run.
    #
    # @option params [required, String] :run_id
    #   The ID of the job run.
    #
    # @option params [Boolean] :predecessors_included
    #   True if a list of predecessor runs should be returned.
    #
    # @return [Types::GetJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobRunResponse#job_run #job_run} => Types::JobRun
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_run({
    #     job_name: "NameString", # required
    #     run_id: "IdString", # required
    #     predecessors_included: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_run.id #=> String
    #   resp.job_run.attempt #=> Integer
    #   resp.job_run.previous_run_id #=> String
    #   resp.job_run.trigger_name #=> String
    #   resp.job_run.job_name #=> String
    #   resp.job_run.started_on #=> Time
    #   resp.job_run.last_modified_on #=> Time
    #   resp.job_run.completed_on #=> Time
    #   resp.job_run.job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.job_run.arguments #=> Hash
    #   resp.job_run.arguments["GenericString"] #=> String
    #   resp.job_run.error_message #=> String
    #   resp.job_run.predecessor_runs #=> Array
    #   resp.job_run.predecessor_runs[0].job_name #=> String
    #   resp.job_run.predecessor_runs[0].run_id #=> String
    #   resp.job_run.allocated_capacity #=> Integer
    #   resp.job_run.execution_time #=> Integer
    #   resp.job_run.timeout #=> Integer
    #   resp.job_run.max_capacity #=> Float
    #   resp.job_run.worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.job_run.number_of_workers #=> Integer
    #   resp.job_run.security_configuration #=> String
    #   resp.job_run.log_group_name #=> String
    #   resp.job_run.notification_property.notify_delay_after #=> Integer
    #   resp.job_run.glue_version #=> String
    #   resp.job_run.dpu_seconds #=> Float
    #   resp.job_run.execution_class #=> String, one of "FLEX", "STANDARD"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRun AWS API Documentation
    #
    # @overload get_job_run(params = {})
    # @param [Hash] params ({})
    def get_job_run(params = {}, options = {})
      req = build_request(:get_job_run, params)
      req.send_request(options)
    end

    # Retrieves metadata for all runs of a given job definition.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition for which to retrieve all job runs.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the response.
    #
    # @return [Types::GetJobRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobRunsResponse#job_runs #job_runs} => Array&lt;Types::JobRun&gt;
    #   * {Types::GetJobRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_runs({
    #     job_name: "NameString", # required
    #     next_token: "GenericString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_runs #=> Array
    #   resp.job_runs[0].id #=> String
    #   resp.job_runs[0].attempt #=> Integer
    #   resp.job_runs[0].previous_run_id #=> String
    #   resp.job_runs[0].trigger_name #=> String
    #   resp.job_runs[0].job_name #=> String
    #   resp.job_runs[0].started_on #=> Time
    #   resp.job_runs[0].last_modified_on #=> Time
    #   resp.job_runs[0].completed_on #=> Time
    #   resp.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.job_runs[0].arguments #=> Hash
    #   resp.job_runs[0].arguments["GenericString"] #=> String
    #   resp.job_runs[0].error_message #=> String
    #   resp.job_runs[0].predecessor_runs #=> Array
    #   resp.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.job_runs[0].allocated_capacity #=> Integer
    #   resp.job_runs[0].execution_time #=> Integer
    #   resp.job_runs[0].timeout #=> Integer
    #   resp.job_runs[0].max_capacity #=> Float
    #   resp.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.job_runs[0].number_of_workers #=> Integer
    #   resp.job_runs[0].security_configuration #=> String
    #   resp.job_runs[0].log_group_name #=> String
    #   resp.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.job_runs[0].glue_version #=> String
    #   resp.job_runs[0].dpu_seconds #=> Float
    #   resp.job_runs[0].execution_class #=> String, one of "FLEX", "STANDARD"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRuns AWS API Documentation
    #
    # @overload get_job_runs(params = {})
    # @param [Hash] params ({})
    def get_job_runs(params = {}, options = {})
      req = build_request(:get_job_runs, params)
      req.send_request(options)
    end

    # Retrieves all current job definitions.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the response.
    #
    # @return [Types::GetJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobsResponse#jobs #jobs} => Array&lt;Types::Job&gt;
    #   * {Types::GetJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_jobs({
    #     next_token: "GenericString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].name #=> String
    #   resp.jobs[0].description #=> String
    #   resp.jobs[0].log_uri #=> String
    #   resp.jobs[0].role #=> String
    #   resp.jobs[0].created_on #=> Time
    #   resp.jobs[0].last_modified_on #=> Time
    #   resp.jobs[0].execution_property.max_concurrent_runs #=> Integer
    #   resp.jobs[0].command.name #=> String
    #   resp.jobs[0].command.script_location #=> String
    #   resp.jobs[0].command.python_version #=> String
    #   resp.jobs[0].command.runtime #=> String
    #   resp.jobs[0].default_arguments #=> Hash
    #   resp.jobs[0].default_arguments["GenericString"] #=> String
    #   resp.jobs[0].non_overridable_arguments #=> Hash
    #   resp.jobs[0].non_overridable_arguments["GenericString"] #=> String
    #   resp.jobs[0].connections.connections #=> Array
    #   resp.jobs[0].connections.connections[0] #=> String
    #   resp.jobs[0].max_retries #=> Integer
    #   resp.jobs[0].allocated_capacity #=> Integer
    #   resp.jobs[0].timeout #=> Integer
    #   resp.jobs[0].max_capacity #=> Float
    #   resp.jobs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.jobs[0].number_of_workers #=> Integer
    #   resp.jobs[0].security_configuration #=> String
    #   resp.jobs[0].notification_property.notify_delay_after #=> Integer
    #   resp.jobs[0].glue_version #=> String
    #   resp.jobs[0].code_gen_configuration_nodes #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.connector_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.connection_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.connection_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.schema_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].athena_connector_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.connector_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.connection_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.filter_predicate #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.partition_column #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.lower_bound #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.upper_bound #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.num_partitions #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.job_bookmark_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.job_bookmark_keys[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.job_bookmark_keys_sort_order #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.data_type_mapping #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.additional_options.data_type_mapping["JDBCDataType"] #=> String, one of "DATE", "STRING", "TIMESTAMP", "INT", "FLOAT", "LONG", "BIGDECIMAL", "BYTE", "SHORT", "DOUBLE"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.connection_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.query #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.connector_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.connection_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_source.redshift_tmp_dir #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_source.tmp_dir_iam_role #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_source.partition_predicate #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.paths[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.compression_type #=> String, one of "gzip", "bzip2"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.exclusions #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.exclusions[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.group_size #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.group_files #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.recurse #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.max_band #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.max_files_in_band #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.additional_options.enable_sample_path #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.additional_options.sample_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.separator #=> String, one of "comma", "ctrla", "pipe", "semicolon", "tab"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.escaper #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.quote_char #=> String, one of "quote", "quillemet", "single_quote", "disabled"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.multiline #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.with_header #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.write_header #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.skip_first #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.optimize_performance #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_csv_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.paths[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.compression_type #=> String, one of "gzip", "bzip2"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.exclusions #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.exclusions[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.group_size #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.group_files #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.recurse #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.max_band #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.max_files_in_band #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.additional_options.enable_sample_path #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.additional_options.sample_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.json_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.multiline #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_json_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.paths[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.compression_type #=> String, one of "snappy", "lzo", "gzip", "uncompressed", "none"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.exclusions #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.exclusions[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.group_size #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.group_files #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.recurse #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.max_band #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.max_files_in_band #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.additional_options.enable_sample_path #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.additional_options.sample_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_parquet_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].relational_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].relational_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].relational_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamo_db_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamo_db_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamo_db_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.connection_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.connector_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.connection_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].jdbc_connector_target.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.connector_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.connection_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_connector_target.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.redshift_tmp_dir #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.tmp_dir_iam_role #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.upsert_redshift_options.table_location #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.upsert_redshift_options.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.upsert_redshift_options.upsert_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].redshift_target.upsert_redshift_options.upsert_keys[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.compression #=> String, one of "snappy", "lzo", "gzip", "uncompressed", "none"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.schema_change_policy.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_glue_parquet_target.schema_change_policy.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.compression #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.format #=> String, one of "json", "csv", "avro", "orc", "parquet", "hudi", "delta"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.schema_change_policy.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_direct_target.schema_change_policy.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].to_key #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].from_path #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].from_path[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].from_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].to_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].dropped #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].apply_mapping.mapping[0].children #=> Types::Mappings
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_fields.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_fields.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_fields.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_fields.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_fields.paths[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_fields.paths[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_fields.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_fields.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_fields.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_fields.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_fields.paths[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_fields.paths[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.source_path #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.source_path[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.target_path #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].rename_field.target_path[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spigot.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spigot.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spigot.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spigot.path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spigot.topk #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spigot.prob #=> Float
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.join_type #=> String, one of "equijoin", "left", "right", "outer", "leftsemi", "leftanti"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.columns[0].from #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.columns[0].keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.columns[0].keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].join.columns[0].keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].split_fields.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].split_fields.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].split_fields.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].split_fields.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].split_fields.paths[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].split_fields.paths[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_from_collection.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_from_collection.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_from_collection.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].select_from_collection.index #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].fill_missing_values.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].fill_missing_values.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].fill_missing_values.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].fill_missing_values.imputed_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].fill_missing_values.filled_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.logical_operator #=> String, one of "AND", "OR"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters[0].operation #=> String, one of "EQ", "LT", "GT", "LTE", "GTE", "REGEX", "ISNULL"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters[0].negated #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters[0].values #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters[0].values[0].type #=> String, one of "COLUMNEXTRACTED", "CONSTANT"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters[0].values[0].value #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].filter.filters[0].values[0].value[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.code #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.class_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].custom_code.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.sql_query #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.sql_aliases #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.sql_aliases[0].from #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.sql_aliases[0].alias #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].spark_sql.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.window_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.detect_schema #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.endpoint_url #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.stream_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.classification #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.delimiter #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.starting_position #=> String, one of "latest", "trim_horizon", "earliest", "timestamp"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.max_fetch_time_in_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.max_fetch_records_per_shard #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.max_record_per_read #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.add_idle_time_between_reads #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.idle_time_between_reads_in_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.describe_shard_interval #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.num_retries #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.retry_interval_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.max_retry_interval_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.avoid_empty_batches #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.stream_arn #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.role_arn #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.role_session_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.add_record_timestamp #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.emit_consumer_lag_metrics #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.streaming_options.starting_timestamp #=> Time
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.data_preview_options.polling_time #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kinesis_source.data_preview_options.record_polling_limit #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.bootstrap_servers #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.security_protocol #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.topic_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.assign #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.subscribe_pattern #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.classification #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.delimiter #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.starting_offsets #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.ending_offsets #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.poll_timeout_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.num_retries #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.retry_interval_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.max_offsets_per_trigger #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.min_partitions #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.include_headers #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.add_record_timestamp #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.emit_consumer_lag_metrics #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.streaming_options.starting_timestamp #=> Time
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.window_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.detect_schema #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.data_preview_options.polling_time #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_kafka_source.data_preview_options.record_polling_limit #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.window_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.detect_schema #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.endpoint_url #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.stream_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.classification #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.delimiter #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.starting_position #=> String, one of "latest", "trim_horizon", "earliest", "timestamp"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.max_fetch_time_in_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.max_fetch_records_per_shard #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.max_record_per_read #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.add_idle_time_between_reads #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.idle_time_between_reads_in_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.describe_shard_interval #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.num_retries #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.retry_interval_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.max_retry_interval_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.avoid_empty_batches #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.stream_arn #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.role_arn #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.role_session_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.add_record_timestamp #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.emit_consumer_lag_metrics #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.streaming_options.starting_timestamp #=> Time
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.data_preview_options.polling_time #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kinesis_source.data_preview_options.record_polling_limit #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.window_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.detect_schema #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.bootstrap_servers #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.security_protocol #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.topic_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.assign #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.subscribe_pattern #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.classification #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.delimiter #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.starting_offsets #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.ending_offsets #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.poll_timeout_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.num_retries #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.retry_interval_ms #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.max_offsets_per_trigger #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.min_partitions #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.include_headers #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.add_record_timestamp #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.emit_consumer_lag_metrics #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.streaming_options.starting_timestamp #=> Time
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.data_preview_options.polling_time #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_kafka_source.data_preview_options.record_polling_limit #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_check_box_list.is_empty #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_check_box_list.is_null_string #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_check_box_list.is_neg_one #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_text_list #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_text_list[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_text_list[0].datatype.id #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_null_fields.null_text_list[0].datatype.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.source #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.primary_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.primary_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].merge.primary_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].union.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].union.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].union.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].union.union_type #=> String, one of "ALL", "DISTINCT"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.pii_type #=> String, one of "RowAudit", "RowMasking", "ColumnAudit", "ColumnMasking"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.entity_types_to_detect #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.entity_types_to_detect[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.output_column_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.sample_fraction #=> Float
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.threshold_fraction #=> Float
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].pii_detection.mask_value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.groups #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.groups[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.groups[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.aggs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.aggs[0].column #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.aggs[0].column[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].aggregate.aggs[0].agg_func #=> String, one of "avg", "countDistinct", "count", "first", "last", "kurtosis", "max", "min", "skewness", "stddev_samp", "stddev_pop", "sum", "sumDistinct", "var_samp", "var_pop"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_duplicates.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_duplicates.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_duplicates.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_duplicates.columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_duplicates.columns[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].drop_duplicates.columns[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_source.partition_predicate #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].governed_catalog_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].microsoft_sql_server_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].my_sql_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].oracle_sql_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].postgre_sql_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.transform_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].type #=> String, one of "str", "int", "float", "complex", "bool", "list", "null"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].validation_rule #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].validation_message #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].value #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].value[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].list_type #=> String, one of "str", "int", "float", "complex", "bool", "list", "null"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.parameters[0].is_optional #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.function_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.version #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].dynamic_transform.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.ruleset #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.output #=> String, one of "PrimaryInput", "EvaluationResults"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.publishing_options.evaluation_context #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.publishing_options.results_s3_prefix #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.publishing_options.cloud_watch_metrics_enabled #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.publishing_options.results_publishing_enabled #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality.stop_job_on_failure_options.stop_job_on_failure_timing #=> String, one of "Immediate", "AfterDataLoad"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.additional_hudi_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.additional_hudi_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_hudi_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.additional_hudi_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.additional_hudi_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_hudi_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.paths[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_hudi_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_hudi_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_options.enable_sample_path #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.additional_options.sample_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_catalog_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.compression #=> String, one of "gzip", "lzo", "uncompressed", "snappy"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.format #=> String, one of "json", "csv", "avro", "orc", "parquet", "hudi", "delta"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.schema_change_policy.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_hudi_direct_target.schema_change_policy.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_jdbc_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_jdbc_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_jdbc_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_jdbc_source.connection_name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_jdbc_source.connection_type #=> String, one of "sqlserver", "mysql", "oracle", "postgresql", "redshift"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].direct_jdbc_source.redshift_tmp_dir #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.additional_delta_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.additional_delta_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_catalog_delta_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.additional_delta_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.additional_delta_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].catalog_delta_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.paths #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.paths[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_delta_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_delta_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_options.bounded_size #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_options.bounded_files #=> Integer
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_options.enable_sample_path #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.additional_options.sample_path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.output_schemas #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.output_schemas[0].columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.output_schemas[0].columns[0].name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_source.output_schemas[0].columns[0].type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_catalog_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.partition_keys #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.partition_keys[0] #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.partition_keys[0][0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.path #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.compression #=> String, one of "uncompressed", "snappy"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.format #=> String, one of "json", "csv", "avro", "orc", "parquet", "hudi", "delta"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.additional_options["EnclosedInStringProperty"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.schema_change_policy.enable_update_catalog #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.schema_change_policy.update_behavior #=> String, one of "UPDATE_IN_DATABASE", "LOG"
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.schema_change_policy.table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].s3_delta_direct_target.schema_change_policy.database #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.access_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.source_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.connection.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.connection.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.connection.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.schema.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.schema.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.schema.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_database.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_database.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_database.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_table.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_table.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_table.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_redshift_schema #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.catalog_redshift_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.temp_dir #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.iam_role.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.iam_role.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.iam_role.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.advanced_options #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.advanced_options[0].key #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.advanced_options[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.sample_query #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.pre_action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.post_action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_prefix #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.upsert #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.merge_action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.merge_when_matched #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.merge_when_not_matched #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.merge_clause #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.crawler_connection #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_schema #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_schema[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_schema[0].label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.table_schema[0].description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.staging_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.selected_columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.selected_columns[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.selected_columns[0].label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_source.data.selected_columns[0].description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.access_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.source_type #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.connection.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.connection.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.connection.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.schema.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.schema.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.schema.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_database.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_database.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_database.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_table.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_table.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_table.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_redshift_schema #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.catalog_redshift_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.temp_dir #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.iam_role.value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.iam_role.label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.iam_role.description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.advanced_options #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.advanced_options[0].key #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.advanced_options[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.sample_query #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.pre_action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.post_action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_prefix #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.upsert #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.merge_action #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.merge_when_matched #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.merge_when_not_matched #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.merge_clause #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.crawler_connection #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_schema #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_schema[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_schema[0].label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.table_schema[0].description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.staging_table #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.selected_columns #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.selected_columns[0].value #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.selected_columns[0].label #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.data.selected_columns[0].description #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].amazon_redshift_target.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.name #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.inputs #=> Array
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.inputs[0] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.additional_data_sources #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.additional_data_sources["NodeName"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.ruleset #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.publishing_options.evaluation_context #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.publishing_options.results_s3_prefix #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.publishing_options.cloud_watch_metrics_enabled #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.publishing_options.results_publishing_enabled #=> Boolean
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.additional_options #=> Hash
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.additional_options["AdditionalOptionKeys"] #=> String
    #   resp.jobs[0].code_gen_configuration_nodes["NodeId"].evaluate_data_quality_multi_frame.stop_job_on_failure_options.stop_job_on_failure_timing #=> String, one of "Immediate", "AfterDataLoad"
    #   resp.jobs[0].execution_class #=> String, one of "FLEX", "STANDARD"
    #   resp.jobs[0].source_control_details.provider #=> String, one of "GITHUB", "AWS_CODE_COMMIT"
    #   resp.jobs[0].source_control_details.repository #=> String
    #   resp.jobs[0].source_control_details.owner #=> String
    #   resp.jobs[0].source_control_details.branch #=> String
    #   resp.jobs[0].source_control_details.folder #=> String
    #   resp.jobs[0].source_control_details.last_commit_id #=> String
    #   resp.jobs[0].source_control_details.auth_strategy #=> String, one of "PERSONAL_ACCESS_TOKEN", "AWS_SECRETS_MANAGER"
    #   resp.jobs[0].source_control_details.auth_token #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobs AWS API Documentation
    #
    # @overload get_jobs(params = {})
    # @param [Hash] params ({})
    def get_jobs(params = {}, options = {})
      req = build_request(:get_jobs, params)
      req.send_request(options)
    end

    # Gets details for a specific task run on a machine learning transform.
    # Machine learning task runs are asynchronous tasks that Glue runs on
    # your behalf as part of various machine learning workflows. You can
    # check the stats of any task run by calling `GetMLTaskRun` with the
    # `TaskRunID` and its parent transform's `TransformID`.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @option params [required, String] :task_run_id
    #   The unique identifier of the task run.
    #
    # @return [Types::GetMLTaskRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLTaskRunResponse#transform_id #transform_id} => String
    #   * {Types::GetMLTaskRunResponse#task_run_id #task_run_id} => String
    #   * {Types::GetMLTaskRunResponse#status #status} => String
    #   * {Types::GetMLTaskRunResponse#log_group_name #log_group_name} => String
    #   * {Types::GetMLTaskRunResponse#properties #properties} => Types::TaskRunProperties
    #   * {Types::GetMLTaskRunResponse#error_string #error_string} => String
    #   * {Types::GetMLTaskRunResponse#started_on #started_on} => Time
    #   * {Types::GetMLTaskRunResponse#last_modified_on #last_modified_on} => Time
    #   * {Types::GetMLTaskRunResponse#completed_on #completed_on} => Time
    #   * {Types::GetMLTaskRunResponse#execution_time #execution_time} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_task_run({
    #     transform_id: "HashString", # required
    #     task_run_id: "HashString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_id #=> String
    #   resp.task_run_id #=> String
    #   resp.status #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.log_group_name #=> String
    #   resp.properties.task_type #=> String, one of "EVALUATION", "LABELING_SET_GENERATION", "IMPORT_LABELS", "EXPORT_LABELS", "FIND_MATCHES"
    #   resp.properties.import_labels_task_run_properties.input_s3_path #=> String
    #   resp.properties.import_labels_task_run_properties.replace #=> Boolean
    #   resp.properties.export_labels_task_run_properties.output_s3_path #=> String
    #   resp.properties.labeling_set_generation_task_run_properties.output_s3_path #=> String
    #   resp.properties.find_matches_task_run_properties.job_id #=> String
    #   resp.properties.find_matches_task_run_properties.job_name #=> String
    #   resp.properties.find_matches_task_run_properties.job_run_id #=> String
    #   resp.error_string #=> String
    #   resp.started_on #=> Time
    #   resp.last_modified_on #=> Time
    #   resp.completed_on #=> Time
    #   resp.execution_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTaskRun AWS API Documentation
    #
    # @overload get_ml_task_run(params = {})
    # @param [Hash] params ({})
    def get_ml_task_run(params = {}, options = {})
      req = build_request(:get_ml_task_run, params)
      req.send_request(options)
    end

    # Gets a list of runs for a machine learning transform. Machine learning
    # task runs are asynchronous tasks that Glue runs on your behalf as part
    # of various machine learning workflows. You can get a sortable,
    # filterable list of machine learning task runs by calling
    # `GetMLTaskRuns` with their parent transform's `TransformID` and other
    # optional parameters as documented in this section.
    #
    # This operation returns a list of historic runs and must be paginated.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @option params [String] :next_token
    #   A token for pagination of the results. The default is empty.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [Types::TaskRunFilterCriteria] :filter
    #   The filter criteria, in the `TaskRunFilterCriteria` structure, for the
    #   task run.
    #
    # @option params [Types::TaskRunSortCriteria] :sort
    #   The sorting criteria, in the `TaskRunSortCriteria` structure, for the
    #   task run.
    #
    # @return [Types::GetMLTaskRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLTaskRunsResponse#task_runs #task_runs} => Array&lt;Types::TaskRun&gt;
    #   * {Types::GetMLTaskRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_task_runs({
    #     transform_id: "HashString", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filter: {
    #       task_run_type: "EVALUATION", # accepts EVALUATION, LABELING_SET_GENERATION, IMPORT_LABELS, EXPORT_LABELS, FIND_MATCHES
    #       status: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT
    #       started_before: Time.now,
    #       started_after: Time.now,
    #     },
    #     sort: {
    #       column: "TASK_RUN_TYPE", # required, accepts TASK_RUN_TYPE, STATUS, STARTED
    #       sort_direction: "DESCENDING", # required, accepts DESCENDING, ASCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.task_runs #=> Array
    #   resp.task_runs[0].transform_id #=> String
    #   resp.task_runs[0].task_run_id #=> String
    #   resp.task_runs[0].status #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.task_runs[0].log_group_name #=> String
    #   resp.task_runs[0].properties.task_type #=> String, one of "EVALUATION", "LABELING_SET_GENERATION", "IMPORT_LABELS", "EXPORT_LABELS", "FIND_MATCHES"
    #   resp.task_runs[0].properties.import_labels_task_run_properties.input_s3_path #=> String
    #   resp.task_runs[0].properties.import_labels_task_run_properties.replace #=> Boolean
    #   resp.task_runs[0].properties.export_labels_task_run_properties.output_s3_path #=> String
    #   resp.task_runs[0].properties.labeling_set_generation_task_run_properties.output_s3_path #=> String
    #   resp.task_runs[0].properties.find_matches_task_run_properties.job_id #=> String
    #   resp.task_runs[0].properties.find_matches_task_run_properties.job_name #=> String
    #   resp.task_runs[0].properties.find_matches_task_run_properties.job_run_id #=> String
    #   resp.task_runs[0].error_string #=> String
    #   resp.task_runs[0].started_on #=> Time
    #   resp.task_runs[0].last_modified_on #=> Time
    #   resp.task_runs[0].completed_on #=> Time
    #   resp.task_runs[0].execution_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTaskRuns AWS API Documentation
    #
    # @overload get_ml_task_runs(params = {})
    # @param [Hash] params ({})
    def get_ml_task_runs(params = {}, options = {})
      req = build_request(:get_ml_task_runs, params)
      req.send_request(options)
    end

    # Gets an Glue machine learning transform artifact and all its
    # corresponding metadata. Machine learning transforms are a special type
    # of transform that use machine learning to learn the details of the
    # transformation to be performed by learning from examples provided by
    # humans. These transformations are then saved by Glue. You can retrieve
    # their metadata by calling `GetMLTransform`.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the transform, generated at the time that the
    #   transform was created.
    #
    # @return [Types::GetMLTransformResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLTransformResponse#transform_id #transform_id} => String
    #   * {Types::GetMLTransformResponse#name #name} => String
    #   * {Types::GetMLTransformResponse#description #description} => String
    #   * {Types::GetMLTransformResponse#status #status} => String
    #   * {Types::GetMLTransformResponse#created_on #created_on} => Time
    #   * {Types::GetMLTransformResponse#last_modified_on #last_modified_on} => Time
    #   * {Types::GetMLTransformResponse#input_record_tables #input_record_tables} => Array&lt;Types::GlueTable&gt;
    #   * {Types::GetMLTransformResponse#parameters #parameters} => Types::TransformParameters
    #   * {Types::GetMLTransformResponse#evaluation_metrics #evaluation_metrics} => Types::EvaluationMetrics
    #   * {Types::GetMLTransformResponse#label_count #label_count} => Integer
    #   * {Types::GetMLTransformResponse#schema #schema} => Array&lt;Types::SchemaColumn&gt;
    #   * {Types::GetMLTransformResponse#role #role} => String
    #   * {Types::GetMLTransformResponse#glue_version #glue_version} => String
    #   * {Types::GetMLTransformResponse#max_capacity #max_capacity} => Float
    #   * {Types::GetMLTransformResponse#worker_type #worker_type} => String
    #   * {Types::GetMLTransformResponse#number_of_workers #number_of_workers} => Integer
    #   * {Types::GetMLTransformResponse#timeout #timeout} => Integer
    #   * {Types::GetMLTransformResponse#max_retries #max_retries} => Integer
    #   * {Types::GetMLTransformResponse#transform_encryption #transform_encryption} => Types::TransformEncryption
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_transform({
    #     transform_id: "HashString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "NOT_READY", "READY", "DELETING"
    #   resp.created_on #=> Time
    #   resp.last_modified_on #=> Time
    #   resp.input_record_tables #=> Array
    #   resp.input_record_tables[0].database_name #=> String
    #   resp.input_record_tables[0].table_name #=> String
    #   resp.input_record_tables[0].catalog_id #=> String
    #   resp.input_record_tables[0].connection_name #=> String
    #   resp.input_record_tables[0].additional_options #=> Hash
    #   resp.input_record_tables[0].additional_options["NameString"] #=> String
    #   resp.parameters.transform_type #=> String, one of "FIND_MATCHES"
    #   resp.parameters.find_matches_parameters.primary_key_column_name #=> String
    #   resp.parameters.find_matches_parameters.precision_recall_tradeoff #=> Float
    #   resp.parameters.find_matches_parameters.accuracy_cost_tradeoff #=> Float
    #   resp.parameters.find_matches_parameters.enforce_provided_labels #=> Boolean
    #   resp.evaluation_metrics.transform_type #=> String, one of "FIND_MATCHES"
    #   resp.evaluation_metrics.find_matches_metrics.area_under_pr_curve #=> Float
    #   resp.evaluation_metrics.find_matches_metrics.precision #=> Float
    #   resp.evaluation_metrics.find_matches_metrics.recall #=> Float
    #   resp.evaluation_metrics.find_matches_metrics.f1 #=> Float
    #   resp.evaluation_metrics.find_matches_metrics.confusion_matrix.num_true_positives #=> Integer
    #   resp.evaluation_metrics.find_matches_metrics.confusion_matrix.num_false_positives #=> Integer
    #   resp.evaluation_metrics.find_matches_metrics.confusion_matrix.num_true_negatives #=> Integer
    #   resp.evaluation_metrics.find_matches_metrics.confusion_matrix.num_false_negatives #=> Integer
    #   resp.evaluation_metrics.find_matches_metrics.column_importances #=> Array
    #   resp.evaluation_metrics.find_matches_metrics.column_importances[0].column_name #=> String
    #   resp.evaluation_metrics.find_matches_metrics.column_importances[0].importance #=> Float
    #   resp.label_count #=> Integer
    #   resp.schema #=> Array
    #   resp.schema[0].name #=> String
    #   resp.schema[0].data_type #=> String
    #   resp.role #=> String
    #   resp.glue_version #=> String
    #   resp.max_capacity #=> Float
    #   resp.worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.number_of_workers #=> Integer
    #   resp.timeout #=> Integer
    #   resp.max_retries #=> Integer
    #   resp.transform_encryption.ml_user_data_encryption.ml_user_data_encryption_mode #=> String, one of "DISABLED", "SSE-KMS"
    #   resp.transform_encryption.ml_user_data_encryption.kms_key_id #=> String
    #   resp.transform_encryption.task_run_security_configuration_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTransform AWS API Documentation
    #
    # @overload get_ml_transform(params = {})
    # @param [Hash] params ({})
    def get_ml_transform(params = {}, options = {})
      req = build_request(:get_ml_transform, params)
      req.send_request(options)
    end

    # Gets a sortable, filterable list of existing Glue machine learning
    # transforms. Machine learning transforms are a special type of
    # transform that use machine learning to learn the details of the
    # transformation to be performed by learning from examples provided by
    # humans. These transformations are then saved by Glue, and you can
    # retrieve their metadata by calling `GetMLTransforms`.
    #
    # @option params [String] :next_token
    #   A paginated token to offset the results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [Types::TransformFilterCriteria] :filter
    #   The filter transformation criteria.
    #
    # @option params [Types::TransformSortCriteria] :sort
    #   The sorting criteria.
    #
    # @return [Types::GetMLTransformsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLTransformsResponse#transforms #transforms} => Array&lt;Types::MLTransform&gt;
    #   * {Types::GetMLTransformsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_transforms({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filter: {
    #       name: "NameString",
    #       transform_type: "FIND_MATCHES", # accepts FIND_MATCHES
    #       status: "NOT_READY", # accepts NOT_READY, READY, DELETING
    #       glue_version: "GlueVersionString",
    #       created_before: Time.now,
    #       created_after: Time.now,
    #       last_modified_before: Time.now,
    #       last_modified_after: Time.now,
    #       schema: [
    #         {
    #           name: "ColumnNameString",
    #           data_type: "ColumnTypeString",
    #         },
    #       ],
    #     },
    #     sort: {
    #       column: "NAME", # required, accepts NAME, TRANSFORM_TYPE, STATUS, CREATED, LAST_MODIFIED
    #       sort_direction: "DESCENDING", # required, accepts DESCENDING, ASCENDING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.transforms #=> Array
    #   resp.transforms[0].transform_id #=> String
    #   resp.transforms[0].name #=> String
    #   resp.transforms[0].description #=> String
    #   resp.transforms[0].status #=> String, one of "NOT_READY", "READY", "DELETING"
    #   resp.transforms[0].created_on #=> Time
    #   resp.transforms[0].last_modified_on #=> Time
    #   resp.transforms[0].input_record_tables #=> Array
    #   resp.transforms[0].input_record_tables[0].database_name #=> String
    #   resp.transforms[0].input_record_tables[0].table_name #=> String
    #   resp.transforms[0].input_record_tables[0].catalog_id #=> String
    #   resp.transforms[0].input_record_tables[0].connection_name #=> String
    #   resp.transforms[0].input_record_tables[0].additional_options #=> Hash
    #   resp.transforms[0].input_record_tables[0].additional_options["NameString"] #=> String
    #   resp.transforms[0].parameters.transform_type #=> String, one of "FIND_MATCHES"
    #   resp.transforms[0].parameters.find_matches_parameters.primary_key_column_name #=> String
    #   resp.transforms[0].parameters.find_matches_parameters.precision_recall_tradeoff #=> Float
    #   resp.transforms[0].parameters.find_matches_parameters.accuracy_cost_tradeoff #=> Float
    #   resp.transforms[0].parameters.find_matches_parameters.enforce_provided_labels #=> Boolean
    #   resp.transforms[0].evaluation_metrics.transform_type #=> String, one of "FIND_MATCHES"
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.area_under_pr_curve #=> Float
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.precision #=> Float
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.recall #=> Float
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.f1 #=> Float
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.confusion_matrix.num_true_positives #=> Integer
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.confusion_matrix.num_false_positives #=> Integer
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.confusion_matrix.num_true_negatives #=> Integer
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.confusion_matrix.num_false_negatives #=> Integer
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.column_importances #=> Array
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.column_importances[0].column_name #=> String
    #   resp.transforms[0].evaluation_metrics.find_matches_metrics.column_importances[0].importance #=> Float
    #   resp.transforms[0].label_count #=> Integer
    #   resp.transforms[0].schema #=> Array
    #   resp.transforms[0].schema[0].name #=> String
    #   resp.transforms[0].schema[0].data_type #=> String
    #   resp.transforms[0].role #=> String
    #   resp.transforms[0].glue_version #=> String
    #   resp.transforms[0].max_capacity #=> Float
    #   resp.transforms[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.transforms[0].number_of_workers #=> Integer
    #   resp.transforms[0].timeout #=> Integer
    #   resp.transforms[0].max_retries #=> Integer
    #   resp.transforms[0].transform_encryption.ml_user_data_encryption.ml_user_data_encryption_mode #=> String, one of "DISABLED", "SSE-KMS"
    #   resp.transforms[0].transform_encryption.ml_user_data_encryption.kms_key_id #=> String
    #   resp.transforms[0].transform_encryption.task_run_security_configuration_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTransforms AWS API Documentation
    #
    # @overload get_ml_transforms(params = {})
    # @param [Hash] params ({})
    def get_ml_transforms(params = {}, options = {})
      req = build_request(:get_ml_transforms, params)
      req.send_request(options)
    end

    # Creates mappings.
    #
    # @option params [required, Types::CatalogEntry] :source
    #   Specifies the source table.
    #
    # @option params [Array<Types::CatalogEntry>] :sinks
    #   A list of target tables.
    #
    # @option params [Types::Location] :location
    #   Parameters for the mapping.
    #
    # @return [Types::GetMappingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMappingResponse#mapping #mapping} => Array&lt;Types::MappingEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_mapping({
    #     source: { # required
    #       database_name: "NameString", # required
    #       table_name: "NameString", # required
    #     },
    #     sinks: [
    #       {
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #       },
    #     ],
    #     location: {
    #       jdbc: [
    #         {
    #           name: "CodeGenArgName", # required
    #           value: "CodeGenArgValue", # required
    #           param: false,
    #         },
    #       ],
    #       s3: [
    #         {
    #           name: "CodeGenArgName", # required
    #           value: "CodeGenArgValue", # required
    #           param: false,
    #         },
    #       ],
    #       dynamo_db: [
    #         {
    #           name: "CodeGenArgName", # required
    #           value: "CodeGenArgValue", # required
    #           param: false,
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.mapping #=> Array
    #   resp.mapping[0].source_table #=> String
    #   resp.mapping[0].source_path #=> String
    #   resp.mapping[0].source_type #=> String
    #   resp.mapping[0].target_table #=> String
    #   resp.mapping[0].target_path #=> String
    #   resp.mapping[0].target_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMapping AWS API Documentation
    #
    # @overload get_mapping(params = {})
    # @param [Hash] params ({})
    def get_mapping(params = {}, options = {})
      req = build_request(:get_mapping, params)
      req.send_request(options)
    end

    # Retrieves information about a specified partition.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partition in question resides. If
    #   none is provided, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partition resides.
    #
    # @option params [required, String] :table_name
    #   The name of the partition's table.
    #
    # @option params [required, Array<String>] :partition_values
    #   The values that define the partition.
    #
    # @return [Types::GetPartitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPartitionResponse#partition #data.partition} => Types::Partition (This method conflicts with a method on Response, call it through the data member)
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_values: ["ValueString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data.partition.values #=> Array
    #   resp.data.partition.values[0] #=> String
    #   resp.data.partition.database_name #=> String
    #   resp.data.partition.table_name #=> String
    #   resp.data.partition.creation_time #=> Time
    #   resp.data.partition.last_access_time #=> Time
    #   resp.data.partition.storage_descriptor.columns #=> Array
    #   resp.data.partition.storage_descriptor.columns[0].name #=> String
    #   resp.data.partition.storage_descriptor.columns[0].type #=> String
    #   resp.data.partition.storage_descriptor.columns[0].comment #=> String
    #   resp.data.partition.storage_descriptor.columns[0].parameters #=> Hash
    #   resp.data.partition.storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.data.partition.storage_descriptor.location #=> String
    #   resp.data.partition.storage_descriptor.additional_locations #=> Array
    #   resp.data.partition.storage_descriptor.additional_locations[0] #=> String
    #   resp.data.partition.storage_descriptor.input_format #=> String
    #   resp.data.partition.storage_descriptor.output_format #=> String
    #   resp.data.partition.storage_descriptor.compressed #=> Boolean
    #   resp.data.partition.storage_descriptor.number_of_buckets #=> Integer
    #   resp.data.partition.storage_descriptor.serde_info.name #=> String
    #   resp.data.partition.storage_descriptor.serde_info.serialization_library #=> String
    #   resp.data.partition.storage_descriptor.serde_info.parameters #=> Hash
    #   resp.data.partition.storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.data.partition.storage_descriptor.bucket_columns #=> Array
    #   resp.data.partition.storage_descriptor.bucket_columns[0] #=> String
    #   resp.data.partition.storage_descriptor.sort_columns #=> Array
    #   resp.data.partition.storage_descriptor.sort_columns[0].column #=> String
    #   resp.data.partition.storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.data.partition.storage_descriptor.parameters #=> Hash
    #   resp.data.partition.storage_descriptor.parameters["KeyString"] #=> String
    #   resp.data.partition.storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.data.partition.storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.data.partition.storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.data.partition.storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.data.partition.storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.data.partition.storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.data.partition.storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.data.partition.storage_descriptor.schema_reference.schema_id.schema_arn #=> String
    #   resp.data.partition.storage_descriptor.schema_reference.schema_id.schema_name #=> String
    #   resp.data.partition.storage_descriptor.schema_reference.schema_id.registry_name #=> String
    #   resp.data.partition.storage_descriptor.schema_reference.schema_version_id #=> String
    #   resp.data.partition.storage_descriptor.schema_reference.schema_version_number #=> Integer
    #   resp.data.partition.parameters #=> Hash
    #   resp.data.partition.parameters["KeyString"] #=> String
    #   resp.data.partition.last_analyzed_time #=> Time
    #   resp.data.partition.catalog_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartition AWS API Documentation
    #
    # @overload get_partition(params = {})
    # @param [Hash] params ({})
    def get_partition(params = {}, options = {})
      req = build_request(:get_partition, params)
      req.send_request(options)
    end

    # Retrieves the partition indexes associated with a table.
    #
    # @option params [String] :catalog_id
    #   The catalog ID where the table resides.
    #
    # @option params [required, String] :database_name
    #   Specifies the name of a database from which you want to retrieve
    #   partition indexes.
    #
    # @option params [required, String] :table_name
    #   Specifies the name of a table for which you want to retrieve the
    #   partition indexes.
    #
    # @option params [String] :next_token
    #   A continuation token, included if this is a continuation call.
    #
    # @return [Types::GetPartitionIndexesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPartitionIndexesResponse#partition_index_descriptor_list #partition_index_descriptor_list} => Array&lt;Types::PartitionIndexDescriptor&gt;
    #   * {Types::GetPartitionIndexesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_partition_indexes({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.partition_index_descriptor_list #=> Array
    #   resp.partition_index_descriptor_list[0].index_name #=> String
    #   resp.partition_index_descriptor_list[0].keys #=> Array
    #   resp.partition_index_descriptor_list[0].keys[0].name #=> String
    #   resp.partition_index_descriptor_list[0].keys[0].type #=> String
    #   resp.partition_index_descriptor_list[0].index_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.partition_index_descriptor_list[0].backfill_errors #=> Array
    #   resp.partition_index_descriptor_list[0].backfill_errors[0].code #=> String, one of "ENCRYPTED_PARTITION_ERROR", "INTERNAL_ERROR", "INVALID_PARTITION_TYPE_DATA_ERROR", "MISSING_PARTITION_VALUE_ERROR", "UNSUPPORTED_PARTITION_CHARACTER_ERROR"
    #   resp.partition_index_descriptor_list[0].backfill_errors[0].partitions #=> Array
    #   resp.partition_index_descriptor_list[0].backfill_errors[0].partitions[0].values #=> Array
    #   resp.partition_index_descriptor_list[0].backfill_errors[0].partitions[0].values[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionIndexes AWS API Documentation
    #
    # @overload get_partition_indexes(params = {})
    # @param [Hash] params ({})
    def get_partition_indexes(params = {}, options = {})
      req = build_request(:get_partition_indexes, params)
      req.send_request(options)
    end

    # Retrieves information about the partitions in a table.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partitions in question reside. If
    #   none is provided, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partitions reside.
    #
    # @option params [required, String] :table_name
    #   The name of the partitions' table.
    #
    # @option params [String] :expression
    #   An expression that filters the partitions to be returned.
    #
    #   The expression uses SQL syntax similar to the SQL `WHERE` filter
    #   clause. The SQL statement parser [JSQLParser][1] parses the
    #   expression.
    #
    #   *Operators*: The following are the operators that you can use in the
    #   `Expression` API call:
    #
    #   =
    #
    #   : Checks whether the values of the two operands are equal; if yes,
    #     then the condition becomes true.
    #
    #     Example: Assume 'variable a' holds 10 and 'variable b' holds 20.
    #
    #     (a = b) is not true.
    #
    #   &lt; &gt;
    #
    #   : Checks whether the values of two operands are equal; if the values
    #     are not equal, then the condition becomes true.
    #
    #     Example: (a &lt; &gt; b) is true.
    #
    #   &gt;
    #
    #   : Checks whether the value of the left operand is greater than the
    #     value of the right operand; if yes, then the condition becomes true.
    #
    #     Example: (a &gt; b) is not true.
    #
    #   &lt;
    #
    #   : Checks whether the value of the left operand is less than the value
    #     of the right operand; if yes, then the condition becomes true.
    #
    #     Example: (a &lt; b) is true.
    #
    #   &gt;=
    #
    #   : Checks whether the value of the left operand is greater than or
    #     equal to the value of the right operand; if yes, then the condition
    #     becomes true.
    #
    #     Example: (a &gt;= b) is not true.
    #
    #   &lt;=
    #
    #   : Checks whether the value of the left operand is less than or equal
    #     to the value of the right operand; if yes, then the condition
    #     becomes true.
    #
    #     Example: (a &lt;= b) is true.
    #
    #   AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL
    #
    #   : Logical operators.
    #
    #   *Supported Partition Key Types*: The following are the supported
    #   partition keys.
    #
    #   * `string`
    #
    #   * `date`
    #
    #   * `timestamp`
    #
    #   * `int`
    #
    #   * `bigint`
    #
    #   * `long`
    #
    #   * `tinyint`
    #
    #   * `smallint`
    #
    #   * `decimal`
    #
    #   If an type is encountered that is not valid, an exception is thrown.
    #
    #   The following list shows the valid operators on each type. When you
    #   define a crawler, the `partitionKey` type is created as a `STRING`, to
    #   be compatible with the catalog partitions.
    #
    #   *Sample API Call*:
    #
    #
    #
    #   [1]: http://jsqlparser.sourceforge.net/home.php
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call to retrieve these
    #   partitions.
    #
    # @option params [Types::Segment] :segment
    #   The segment of the table's partitions to scan in this request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of partitions to return in a single response.
    #
    # @option params [Boolean] :exclude_column_schema
    #   When true, specifies not returning the partition column schema. Useful
    #   when you are interested only in other partition attributes such as
    #   partition values or location. This approach avoids the problem of a
    #   large response by not returning duplicate data.
    #
    # @option params [String] :transaction_id
    #   The transaction ID at which to read the partition contents.
    #
    # @option params [Time,DateTime,Date,Integer,String] :query_as_of_time
    #   The time as of when to read the partition contents. If not set, the
    #   most recent transaction commit time will be used. Cannot be specified
    #   along with `TransactionId`.
    #
    # @return [Types::GetPartitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPartitionsResponse#partitions #partitions} => Array&lt;Types::Partition&gt;
    #   * {Types::GetPartitionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_partitions({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     expression: "PredicateString",
    #     next_token: "Token",
    #     segment: {
    #       segment_number: 1, # required
    #       total_segments: 1, # required
    #     },
    #     max_results: 1,
    #     exclude_column_schema: false,
    #     transaction_id: "TransactionIdString",
    #     query_as_of_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.partitions #=> Array
    #   resp.partitions[0].values #=> Array
    #   resp.partitions[0].values[0] #=> String
    #   resp.partitions[0].database_name #=> String
    #   resp.partitions[0].table_name #=> String
    #   resp.partitions[0].creation_time #=> Time
    #   resp.partitions[0].last_access_time #=> Time
    #   resp.partitions[0].storage_descriptor.columns #=> Array
    #   resp.partitions[0].storage_descriptor.columns[0].name #=> String
    #   resp.partitions[0].storage_descriptor.columns[0].type #=> String
    #   resp.partitions[0].storage_descriptor.columns[0].comment #=> String
    #   resp.partitions[0].storage_descriptor.columns[0].parameters #=> Hash
    #   resp.partitions[0].storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.partitions[0].storage_descriptor.location #=> String
    #   resp.partitions[0].storage_descriptor.additional_locations #=> Array
    #   resp.partitions[0].storage_descriptor.additional_locations[0] #=> String
    #   resp.partitions[0].storage_descriptor.input_format #=> String
    #   resp.partitions[0].storage_descriptor.output_format #=> String
    #   resp.partitions[0].storage_descriptor.compressed #=> Boolean
    #   resp.partitions[0].storage_descriptor.number_of_buckets #=> Integer
    #   resp.partitions[0].storage_descriptor.serde_info.name #=> String
    #   resp.partitions[0].storage_descriptor.serde_info.serialization_library #=> String
    #   resp.partitions[0].storage_descriptor.serde_info.parameters #=> Hash
    #   resp.partitions[0].storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.partitions[0].storage_descriptor.bucket_columns #=> Array
    #   resp.partitions[0].storage_descriptor.bucket_columns[0] #=> String
    #   resp.partitions[0].storage_descriptor.sort_columns #=> Array
    #   resp.partitions[0].storage_descriptor.sort_columns[0].column #=> String
    #   resp.partitions[0].storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.partitions[0].storage_descriptor.parameters #=> Hash
    #   resp.partitions[0].storage_descriptor.parameters["KeyString"] #=> String
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.partitions[0].storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.partitions[0].storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.partitions[0].storage_descriptor.schema_reference.schema_id.schema_arn #=> String
    #   resp.partitions[0].storage_descriptor.schema_reference.schema_id.schema_name #=> String
    #   resp.partitions[0].storage_descriptor.schema_reference.schema_id.registry_name #=> String
    #   resp.partitions[0].storage_descriptor.schema_reference.schema_version_id #=> String
    #   resp.partitions[0].storage_descriptor.schema_reference.schema_version_number #=> Integer
    #   resp.partitions[0].parameters #=> Hash
    #   resp.partitions[0].parameters["KeyString"] #=> String
    #   resp.partitions[0].last_analyzed_time #=> Time
    #   resp.partitions[0].catalog_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitions AWS API Documentation
    #
    # @overload get_partitions(params = {})
    # @param [Hash] params ({})
    def get_partitions(params = {}, options = {})
      req = build_request(:get_partitions, params)
      req.send_request(options)
    end

    # Gets code to perform a specified mapping.
    #
    # @option params [required, Array<Types::MappingEntry>] :mapping
    #   The list of mappings from a source table to target tables.
    #
    # @option params [required, Types::CatalogEntry] :source
    #   The source table.
    #
    # @option params [Array<Types::CatalogEntry>] :sinks
    #   The target tables.
    #
    # @option params [Types::Location] :location
    #   The parameters for the mapping.
    #
    # @option params [String] :language
    #   The programming language of the code to perform the mapping.
    #
    # @option params [Hash<String,String>] :additional_plan_options_map
    #   A map to hold additional optional key-value parameters.
    #
    #   Currently, these key-value pairs are supported:
    #
    #   * `inferSchema`  —  Specifies whether to set `inferSchema` to true or
    #     false for the default script generated by an Glue job. For example,
    #     to set `inferSchema` to true, pass the following key value pair:
    #
    #     `--additional-plan-options-map '\{"inferSchema":"true"\}'`
    #
    # @return [Types::GetPlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPlanResponse#python_script #python_script} => String
    #   * {Types::GetPlanResponse#scala_code #scala_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_plan({
    #     mapping: [ # required
    #       {
    #         source_table: "TableName",
    #         source_path: "SchemaPathString",
    #         source_type: "FieldType",
    #         target_table: "TableName",
    #         target_path: "SchemaPathString",
    #         target_type: "FieldType",
    #       },
    #     ],
    #     source: { # required
    #       database_name: "NameString", # required
    #       table_name: "NameString", # required
    #     },
    #     sinks: [
    #       {
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #       },
    #     ],
    #     location: {
    #       jdbc: [
    #         {
    #           name: "CodeGenArgName", # required
    #           value: "CodeGenArgValue", # required
    #           param: false,
    #         },
    #       ],
    #       s3: [
    #         {
    #           name: "CodeGenArgName", # required
    #           value: "CodeGenArgValue", # required
    #           param: false,
    #         },
    #       ],
    #       dynamo_db: [
    #         {
    #           name: "CodeGenArgName", # required
    #           value: "CodeGenArgValue", # required
    #           param: false,
    #         },
    #       ],
    #     },
    #     language: "PYTHON", # accepts PYTHON, SCALA
    #     additional_plan_options_map: {
    #       "GenericString" => "GenericString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.python_script #=> String
    #   resp.scala_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPlan AWS API Documentation
    #
    # @overload get_plan(params = {})
    # @param [Hash] params ({})
    def get_plan(params = {}, options = {})
      req = build_request(:get_plan, params)
      req.send_request(options)
    end

    # Describes the specified registry in detail.
    #
    # @option params [required, Types::RegistryId] :registry_id
    #   This is a wrapper structure that may contain the registry name and
    #   Amazon Resource Name (ARN).
    #
    # @return [Types::GetRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegistryResponse#registry_name #registry_name} => String
    #   * {Types::GetRegistryResponse#registry_arn #registry_arn} => String
    #   * {Types::GetRegistryResponse#description #description} => String
    #   * {Types::GetRegistryResponse#status #status} => String
    #   * {Types::GetRegistryResponse#created_time #created_time} => String
    #   * {Types::GetRegistryResponse#updated_time #updated_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_registry({
    #     registry_id: { # required
    #       registry_name: "SchemaRegistryNameString",
    #       registry_arn: "GlueResourceArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_name #=> String
    #   resp.registry_arn #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "AVAILABLE", "DELETING"
    #   resp.created_time #=> String
    #   resp.updated_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetRegistry AWS API Documentation
    #
    # @overload get_registry(params = {})
    # @param [Hash] params ({})
    def get_registry(params = {}, options = {})
      req = build_request(:get_registry, params)
      req.send_request(options)
    end

    # Retrieves the resource policies set on individual resources by
    # Resource Access Manager during cross-account permission grants. Also
    # retrieves the Data Catalog resource policy.
    #
    # If you enabled metadata encryption in Data Catalog settings, and you
    # do not have permission on the KMS key, the operation can't return the
    # Data Catalog resource policy.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @return [Types::GetResourcePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePoliciesResponse#get_resource_policies_response_list #get_resource_policies_response_list} => Array&lt;Types::GluePolicy&gt;
    #   * {Types::GetResourcePoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policies({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.get_resource_policies_response_list #=> Array
    #   resp.get_resource_policies_response_list[0].policy_in_json #=> String
    #   resp.get_resource_policies_response_list[0].policy_hash #=> String
    #   resp.get_resource_policies_response_list[0].create_time #=> Time
    #   resp.get_resource_policies_response_list[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetResourcePolicies AWS API Documentation
    #
    # @overload get_resource_policies(params = {})
    # @param [Hash] params ({})
    def get_resource_policies(params = {}, options = {})
      req = build_request(:get_resource_policies, params)
      req.send_request(options)
    end

    # Retrieves a specified resource policy.
    #
    # @option params [String] :resource_arn
    #   The ARN of the Glue resource for which to retrieve the resource
    #   policy. If not supplied, the Data Catalog resource policy is returned.
    #   Use `GetResourcePolicies` to view all existing resource policies. For
    #   more information see [Specifying Glue Resource ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/glue-specifying-resource-arns.html
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#policy_in_json #policy_in_json} => String
    #   * {Types::GetResourcePolicyResponse#policy_hash #policy_hash} => String
    #   * {Types::GetResourcePolicyResponse#create_time #create_time} => Time
    #   * {Types::GetResourcePolicyResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "GlueResourceArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_in_json #=> String
    #   resp.policy_hash #=> String
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Describes the specified schema in detail.
    #
    # @option params [required, Types::SchemaId] :schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     Either `SchemaArn` or `SchemaName` and `RegistryName` has to be
    #     provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. Either `SchemaArn` or
    #     `SchemaName` and `RegistryName` has to be provided.
    #
    # @return [Types::GetSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSchemaResponse#registry_name #registry_name} => String
    #   * {Types::GetSchemaResponse#registry_arn #registry_arn} => String
    #   * {Types::GetSchemaResponse#schema_name #schema_name} => String
    #   * {Types::GetSchemaResponse#schema_arn #schema_arn} => String
    #   * {Types::GetSchemaResponse#description #description} => String
    #   * {Types::GetSchemaResponse#data_format #data_format} => String
    #   * {Types::GetSchemaResponse#compatibility #compatibility} => String
    #   * {Types::GetSchemaResponse#schema_checkpoint #schema_checkpoint} => Integer
    #   * {Types::GetSchemaResponse#latest_schema_version #latest_schema_version} => Integer
    #   * {Types::GetSchemaResponse#next_schema_version #next_schema_version} => Integer
    #   * {Types::GetSchemaResponse#schema_status #schema_status} => String
    #   * {Types::GetSchemaResponse#created_time #created_time} => String
    #   * {Types::GetSchemaResponse#updated_time #updated_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema({
    #     schema_id: { # required
    #       schema_arn: "GlueResourceArn",
    #       schema_name: "SchemaRegistryNameString",
    #       registry_name: "SchemaRegistryNameString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_name #=> String
    #   resp.registry_arn #=> String
    #   resp.schema_name #=> String
    #   resp.schema_arn #=> String
    #   resp.description #=> String
    #   resp.data_format #=> String, one of "AVRO", "JSON", "PROTOBUF"
    #   resp.compatibility #=> String, one of "NONE", "DISABLED", "BACKWARD", "BACKWARD_ALL", "FORWARD", "FORWARD_ALL", "FULL", "FULL_ALL"
    #   resp.schema_checkpoint #=> Integer
    #   resp.latest_schema_version #=> Integer
    #   resp.next_schema_version #=> Integer
    #   resp.schema_status #=> String, one of "AVAILABLE", "PENDING", "DELETING"
    #   resp.created_time #=> String
    #   resp.updated_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSchema AWS API Documentation
    #
    # @overload get_schema(params = {})
    # @param [Hash] params ({})
    def get_schema(params = {}, options = {})
      req = build_request(:get_schema, params)
      req.send_request(options)
    end

    # Retrieves a schema by the `SchemaDefinition`. The schema definition is
    # sent to the Schema Registry, canonicalized, and hashed. If the hash is
    # matched within the scope of the `SchemaName` or ARN (or the default
    # registry, if none is supplied), that schema’s metadata is returned.
    # Otherwise, a 404 or NotFound error is returned. Schema versions in
    # `Deleted` statuses will not be included in the results.
    #
    # @option params [required, Types::SchemaId] :schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     One of `SchemaArn` or `SchemaName` has to be provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. One of `SchemaArn` or
    #     `SchemaName` has to be provided.
    #
    # @option params [required, String] :schema_definition
    #   The definition of the schema for which schema details are required.
    #
    # @return [Types::GetSchemaByDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSchemaByDefinitionResponse#schema_version_id #schema_version_id} => String
    #   * {Types::GetSchemaByDefinitionResponse#schema_arn #schema_arn} => String
    #   * {Types::GetSchemaByDefinitionResponse#data_format #data_format} => String
    #   * {Types::GetSchemaByDefinitionResponse#status #status} => String
    #   * {Types::GetSchemaByDefinitionResponse#created_time #created_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema_by_definition({
    #     schema_id: { # required
    #       schema_arn: "GlueResourceArn",
    #       schema_name: "SchemaRegistryNameString",
    #       registry_name: "SchemaRegistryNameString",
    #     },
    #     schema_definition: "SchemaDefinitionString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_version_id #=> String
    #   resp.schema_arn #=> String
    #   resp.data_format #=> String, one of "AVRO", "JSON", "PROTOBUF"
    #   resp.status #=> String, one of "AVAILABLE", "PENDING", "FAILURE", "DELETING"
    #   resp.created_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSchemaByDefinition AWS API Documentation
    #
    # @overload get_schema_by_definition(params = {})
    # @param [Hash] params ({})
    def get_schema_by_definition(params = {}, options = {})
      req = build_request(:get_schema_by_definition, params)
      req.send_request(options)
    end

    # Get the specified schema by its unique ID assigned when a version of
    # the schema is created or registered. Schema versions in Deleted status
    # will not be included in the results.
    #
    # @option params [Types::SchemaId] :schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     Either `SchemaArn` or `SchemaName` and `RegistryName` has to be
    #     provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. Either `SchemaArn` or
    #     `SchemaName` and `RegistryName` has to be provided.
    #
    # @option params [String] :schema_version_id
    #   The `SchemaVersionId` of the schema version. This field is required
    #   for fetching by schema ID. Either this or the `SchemaId` wrapper has
    #   to be provided.
    #
    # @option params [Types::SchemaVersionNumber] :schema_version_number
    #   The version number of the schema.
    #
    # @return [Types::GetSchemaVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSchemaVersionResponse#schema_version_id #schema_version_id} => String
    #   * {Types::GetSchemaVersionResponse#schema_definition #schema_definition} => String
    #   * {Types::GetSchemaVersionResponse#data_format #data_format} => String
    #   * {Types::GetSchemaVersionResponse#schema_arn #schema_arn} => String
    #   * {Types::GetSchemaVersionResponse#version_number #version_number} => Integer
    #   * {Types::GetSchemaVersionResponse#status #status} => String
    #   * {Types::GetSchemaVersionResponse#created_time #created_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema_version({
    #     schema_id: {
    #       schema_arn: "GlueResourceArn",
    #       schema_name: "SchemaRegistryNameString",
    #       registry_name: "SchemaRegistryNameString",
    #     },
    #     schema_version_id: "SchemaVersionIdString",
    #     schema_version_number: {
    #       latest_version: false,
    #       version_number: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_version_id #=> String
    #   resp.schema_definition #=> String
    #   resp.data_format #=> String, one of "AVRO", "JSON", "PROTOBUF"
    #   resp.schema_arn #=> String
    #   resp.version_number #=> Integer
    #   resp.status #=> String, one of "AVAILABLE", "PENDING", "FAILURE", "DELETING"
    #   resp.created_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSchemaVersion AWS API Documentation
    #
    # @overload get_schema_version(params = {})
    # @param [Hash] params ({})
    def get_schema_version(params = {}, options = {})
      req = build_request(:get_schema_version, params)
      req.send_request(options)
    end

    # Fetches the schema version difference in the specified difference type
    # between two stored schema versions in the Schema Registry.
    #
    # This API allows you to compare two schema versions between two schema
    # definitions under the same schema.
    #
    # @option params [required, Types::SchemaId] :schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     One of `SchemaArn` or `SchemaName` has to be provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. One of `SchemaArn` or
    #     `SchemaName` has to be provided.
    #
    # @option params [required, Types::SchemaVersionNumber] :first_schema_version_number
    #   The first of the two schema versions to be compared.
    #
    # @option params [required, Types::SchemaVersionNumber] :second_schema_version_number
    #   The second of the two schema versions to be compared.
    #
    # @option params [required, String] :schema_diff_type
    #   Refers to `SYNTAX_DIFF`, which is the currently supported diff type.
    #
    # @return [Types::GetSchemaVersionsDiffResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSchemaVersionsDiffResponse#diff #diff} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema_versions_diff({
    #     schema_id: { # required
    #       schema_arn: "GlueResourceArn",
    #       schema_name: "SchemaRegistryNameString",
    #       registry_name: "SchemaRegistryNameString",
    #     },
    #     first_schema_version_number: { # required
    #       latest_version: false,
    #       version_number: 1,
    #     },
    #     second_schema_version_number: { # required
    #       latest_version: false,
    #       version_number: 1,
    #     },
    #     schema_diff_type: "SYNTAX_DIFF", # required, accepts SYNTAX_DIFF
    #   })
    #
    # @example Response structure
    #
    #   resp.diff #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSchemaVersionsDiff AWS API Documentation
    #
    # @overload get_schema_versions_diff(params = {})
    # @param [Hash] params ({})
    def get_schema_versions_diff(params = {}, options = {})
      req = build_request(:get_schema_versions_diff, params)
      req.send_request(options)
    end

    # Retrieves a specified security configuration.
    #
    # @option params [required, String] :name
    #   The name of the security configuration to retrieve.
    #
    # @return [Types::GetSecurityConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSecurityConfigurationResponse#security_configuration #security_configuration} => Types::SecurityConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_security_configuration({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_configuration.name #=> String
    #   resp.security_configuration.created_time_stamp #=> Time
    #   resp.security_configuration.encryption_configuration.s3_encryption #=> Array
    #   resp.security_configuration.encryption_configuration.s3_encryption[0].s3_encryption_mode #=> String, one of "DISABLED", "SSE-KMS", "SSE-S3"
    #   resp.security_configuration.encryption_configuration.s3_encryption[0].kms_key_arn #=> String
    #   resp.security_configuration.encryption_configuration.cloud_watch_encryption.cloud_watch_encryption_mode #=> String, one of "DISABLED", "SSE-KMS"
    #   resp.security_configuration.encryption_configuration.cloud_watch_encryption.kms_key_arn #=> String
    #   resp.security_configuration.encryption_configuration.job_bookmarks_encryption.job_bookmarks_encryption_mode #=> String, one of "DISABLED", "CSE-KMS"
    #   resp.security_configuration.encryption_configuration.job_bookmarks_encryption.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSecurityConfiguration AWS API Documentation
    #
    # @overload get_security_configuration(params = {})
    # @param [Hash] params ({})
    def get_security_configuration(params = {}, options = {})
      req = build_request(:get_security_configuration, params)
      req.send_request(options)
    end

    # Retrieves a list of all security configurations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @return [Types::GetSecurityConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSecurityConfigurationsResponse#security_configurations #security_configurations} => Array&lt;Types::SecurityConfiguration&gt;
    #   * {Types::GetSecurityConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_security_configurations({
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.security_configurations #=> Array
    #   resp.security_configurations[0].name #=> String
    #   resp.security_configurations[0].created_time_stamp #=> Time
    #   resp.security_configurations[0].encryption_configuration.s3_encryption #=> Array
    #   resp.security_configurations[0].encryption_configuration.s3_encryption[0].s3_encryption_mode #=> String, one of "DISABLED", "SSE-KMS", "SSE-S3"
    #   resp.security_configurations[0].encryption_configuration.s3_encryption[0].kms_key_arn #=> String
    #   resp.security_configurations[0].encryption_configuration.cloud_watch_encryption.cloud_watch_encryption_mode #=> String, one of "DISABLED", "SSE-KMS"
    #   resp.security_configurations[0].encryption_configuration.cloud_watch_encryption.kms_key_arn #=> String
    #   resp.security_configurations[0].encryption_configuration.job_bookmarks_encryption.job_bookmarks_encryption_mode #=> String, one of "DISABLED", "CSE-KMS"
    #   resp.security_configurations[0].encryption_configuration.job_bookmarks_encryption.kms_key_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSecurityConfigurations AWS API Documentation
    #
    # @overload get_security_configurations(params = {})
    # @param [Hash] params ({})
    def get_security_configurations(params = {}, options = {})
      req = build_request(:get_security_configurations, params)
      req.send_request(options)
    end

    # Retrieves the session.
    #
    # @option params [required, String] :id
    #   The ID of the session.
    #
    # @option params [String] :request_origin
    #   The origin of the request.
    #
    # @return [Types::GetSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionResponse#session #session} => Types::Session
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session({
    #     id: "NameString", # required
    #     request_origin: "OrchestrationNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.session.id #=> String
    #   resp.session.created_on #=> Time
    #   resp.session.status #=> String, one of "PROVISIONING", "READY", "FAILED", "TIMEOUT", "STOPPING", "STOPPED"
    #   resp.session.error_message #=> String
    #   resp.session.description #=> String
    #   resp.session.role #=> String
    #   resp.session.command.name #=> String
    #   resp.session.command.python_version #=> String
    #   resp.session.default_arguments #=> Hash
    #   resp.session.default_arguments["OrchestrationNameString"] #=> String
    #   resp.session.connections.connections #=> Array
    #   resp.session.connections.connections[0] #=> String
    #   resp.session.progress #=> Float
    #   resp.session.max_capacity #=> Float
    #   resp.session.security_configuration #=> String
    #   resp.session.glue_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSession AWS API Documentation
    #
    # @overload get_session(params = {})
    # @param [Hash] params ({})
    def get_session(params = {}, options = {})
      req = build_request(:get_session, params)
      req.send_request(options)
    end

    # Retrieves the statement.
    #
    # @option params [required, String] :session_id
    #   The Session ID of the statement.
    #
    # @option params [required, Integer] :id
    #   The Id of the statement.
    #
    # @option params [String] :request_origin
    #   The origin of the request.
    #
    # @return [Types::GetStatementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStatementResponse#statement #statement} => Types::Statement
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_statement({
    #     session_id: "NameString", # required
    #     id: 1, # required
    #     request_origin: "OrchestrationNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.statement.id #=> Integer
    #   resp.statement.code #=> String
    #   resp.statement.state #=> String, one of "WAITING", "RUNNING", "AVAILABLE", "CANCELLING", "CANCELLED", "ERROR"
    #   resp.statement.output.data.text_plain #=> String
    #   resp.statement.output.execution_count #=> Integer
    #   resp.statement.output.status #=> String, one of "WAITING", "RUNNING", "AVAILABLE", "CANCELLING", "CANCELLED", "ERROR"
    #   resp.statement.output.error_name #=> String
    #   resp.statement.output.error_value #=> String
    #   resp.statement.output.traceback #=> Array
    #   resp.statement.output.traceback[0] #=> String
    #   resp.statement.progress #=> Float
    #   resp.statement.started_on #=> Integer
    #   resp.statement.completed_on #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetStatement AWS API Documentation
    #
    # @overload get_statement(params = {})
    # @param [Hash] params ({})
    def get_statement(params = {}, options = {})
      req = build_request(:get_statement, params)
      req.send_request(options)
    end

    # Retrieves the `Table` definition in a Data Catalog for a specified
    # table.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the database in the catalog in which the table resides.
    #   For Hive compatibility, this name is entirely lowercase.
    #
    # @option params [required, String] :name
    #   The name of the table for which to retrieve the definition. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [String] :transaction_id
    #   The transaction ID at which to read the table contents.
    #
    # @option params [Time,DateTime,Date,Integer,String] :query_as_of_time
    #   The time as of when to read the table contents. If not set, the most
    #   recent transaction commit time will be used. Cannot be specified along
    #   with `TransactionId`.
    #
    # @return [Types::GetTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableResponse#table #table} => Types::Table
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     name: "NameString", # required
    #     transaction_id: "TransactionIdString",
    #     query_as_of_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.table.name #=> String
    #   resp.table.database_name #=> String
    #   resp.table.description #=> String
    #   resp.table.owner #=> String
    #   resp.table.create_time #=> Time
    #   resp.table.update_time #=> Time
    #   resp.table.last_access_time #=> Time
    #   resp.table.last_analyzed_time #=> Time
    #   resp.table.retention #=> Integer
    #   resp.table.storage_descriptor.columns #=> Array
    #   resp.table.storage_descriptor.columns[0].name #=> String
    #   resp.table.storage_descriptor.columns[0].type #=> String
    #   resp.table.storage_descriptor.columns[0].comment #=> String
    #   resp.table.storage_descriptor.columns[0].parameters #=> Hash
    #   resp.table.storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.table.storage_descriptor.location #=> String
    #   resp.table.storage_descriptor.additional_locations #=> Array
    #   resp.table.storage_descriptor.additional_locations[0] #=> String
    #   resp.table.storage_descriptor.input_format #=> String
    #   resp.table.storage_descriptor.output_format #=> String
    #   resp.table.storage_descriptor.compressed #=> Boolean
    #   resp.table.storage_descriptor.number_of_buckets #=> Integer
    #   resp.table.storage_descriptor.serde_info.name #=> String
    #   resp.table.storage_descriptor.serde_info.serialization_library #=> String
    #   resp.table.storage_descriptor.serde_info.parameters #=> Hash
    #   resp.table.storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.table.storage_descriptor.bucket_columns #=> Array
    #   resp.table.storage_descriptor.bucket_columns[0] #=> String
    #   resp.table.storage_descriptor.sort_columns #=> Array
    #   resp.table.storage_descriptor.sort_columns[0].column #=> String
    #   resp.table.storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.table.storage_descriptor.parameters #=> Hash
    #   resp.table.storage_descriptor.parameters["KeyString"] #=> String
    #   resp.table.storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.table.storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.table.storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.table.storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.table.storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.table.storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.table.storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.table.storage_descriptor.schema_reference.schema_id.schema_arn #=> String
    #   resp.table.storage_descriptor.schema_reference.schema_id.schema_name #=> String
    #   resp.table.storage_descriptor.schema_reference.schema_id.registry_name #=> String
    #   resp.table.storage_descriptor.schema_reference.schema_version_id #=> String
    #   resp.table.storage_descriptor.schema_reference.schema_version_number #=> Integer
    #   resp.table.partition_keys #=> Array
    #   resp.table.partition_keys[0].name #=> String
    #   resp.table.partition_keys[0].type #=> String
    #   resp.table.partition_keys[0].comment #=> String
    #   resp.table.partition_keys[0].parameters #=> Hash
    #   resp.table.partition_keys[0].parameters["KeyString"] #=> String
    #   resp.table.view_original_text #=> String
    #   resp.table.view_expanded_text #=> String
    #   resp.table.table_type #=> String
    #   resp.table.parameters #=> Hash
    #   resp.table.parameters["KeyString"] #=> String
    #   resp.table.created_by #=> String
    #   resp.table.is_registered_with_lake_formation #=> Boolean
    #   resp.table.target_table.catalog_id #=> String
    #   resp.table.target_table.database_name #=> String
    #   resp.table.target_table.name #=> String
    #   resp.table.target_table.region #=> String
    #   resp.table.catalog_id #=> String
    #   resp.table.version_id #=> String
    #   resp.table.federated_table.identifier #=> String
    #   resp.table.federated_table.database_identifier #=> String
    #   resp.table.federated_table.connection_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTable AWS API Documentation
    #
    # @overload get_table(params = {})
    # @param [Hash] params ({})
    def get_table(params = {}, options = {})
      req = build_request(:get_table, params)
      req.send_request(options)
    end

    # Retrieves a specified version of a table.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, String] :table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #
    # @option params [String] :version_id
    #   The ID value of the table version to be retrieved. A `VersionID` is a
    #   string representation of an integer. Each version is incremented by 1.
    #
    # @return [Types::GetTableVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableVersionResponse#table_version #table_version} => Types::TableVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_version({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     version_id: "VersionString",
    #   })
    #
    # @example Response structure
    #
    #   resp.table_version.table.name #=> String
    #   resp.table_version.table.database_name #=> String
    #   resp.table_version.table.description #=> String
    #   resp.table_version.table.owner #=> String
    #   resp.table_version.table.create_time #=> Time
    #   resp.table_version.table.update_time #=> Time
    #   resp.table_version.table.last_access_time #=> Time
    #   resp.table_version.table.last_analyzed_time #=> Time
    #   resp.table_version.table.retention #=> Integer
    #   resp.table_version.table.storage_descriptor.columns #=> Array
    #   resp.table_version.table.storage_descriptor.columns[0].name #=> String
    #   resp.table_version.table.storage_descriptor.columns[0].type #=> String
    #   resp.table_version.table.storage_descriptor.columns[0].comment #=> String
    #   resp.table_version.table.storage_descriptor.columns[0].parameters #=> Hash
    #   resp.table_version.table.storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.table_version.table.storage_descriptor.location #=> String
    #   resp.table_version.table.storage_descriptor.additional_locations #=> Array
    #   resp.table_version.table.storage_descriptor.additional_locations[0] #=> String
    #   resp.table_version.table.storage_descriptor.input_format #=> String
    #   resp.table_version.table.storage_descriptor.output_format #=> String
    #   resp.table_version.table.storage_descriptor.compressed #=> Boolean
    #   resp.table_version.table.storage_descriptor.number_of_buckets #=> Integer
    #   resp.table_version.table.storage_descriptor.serde_info.name #=> String
    #   resp.table_version.table.storage_descriptor.serde_info.serialization_library #=> String
    #   resp.table_version.table.storage_descriptor.serde_info.parameters #=> Hash
    #   resp.table_version.table.storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.table_version.table.storage_descriptor.bucket_columns #=> Array
    #   resp.table_version.table.storage_descriptor.bucket_columns[0] #=> String
    #   resp.table_version.table.storage_descriptor.sort_columns #=> Array
    #   resp.table_version.table.storage_descriptor.sort_columns[0].column #=> String
    #   resp.table_version.table.storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.table_version.table.storage_descriptor.parameters #=> Hash
    #   resp.table_version.table.storage_descriptor.parameters["KeyString"] #=> String
    #   resp.table_version.table.storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.table_version.table.storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.table_version.table.storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.table_version.table.storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.table_version.table.storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.table_version.table.storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.table_version.table.storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.table_version.table.storage_descriptor.schema_reference.schema_id.schema_arn #=> String
    #   resp.table_version.table.storage_descriptor.schema_reference.schema_id.schema_name #=> String
    #   resp.table_version.table.storage_descriptor.schema_reference.schema_id.registry_name #=> String
    #   resp.table_version.table.storage_descriptor.schema_reference.schema_version_id #=> String
    #   resp.table_version.table.storage_descriptor.schema_reference.schema_version_number #=> Integer
    #   resp.table_version.table.partition_keys #=> Array
    #   resp.table_version.table.partition_keys[0].name #=> String
    #   resp.table_version.table.partition_keys[0].type #=> String
    #   resp.table_version.table.partition_keys[0].comment #=> String
    #   resp.table_version.table.partition_keys[0].parameters #=> Hash
    #   resp.table_version.table.partition_keys[0].parameters["KeyString"] #=> String
    #   resp.table_version.table.view_original_text #=> String
    #   resp.table_version.table.view_expanded_text #=> String
    #   resp.table_version.table.table_type #=> String
    #   resp.table_version.table.parameters #=> Hash
    #   resp.table_version.table.parameters["KeyString"] #=> String
    #   resp.table_version.table.created_by #=> String
    #   resp.table_version.table.is_registered_with_lake_formation #=> Boolean
    #   resp.table_version.table.target_table.catalog_id #=> String
    #   resp.table_version.table.target_table.database_name #=> String
    #   resp.table_version.table.target_table.name #=> String
    #   resp.table_version.table.target_table.region #=> String
    #   resp.table_version.table.catalog_id #=> String
    #   resp.table_version.table.version_id #=> String
    #   resp.table_version.table.federated_table.identifier #=> String
    #   resp.table_version.table.federated_table.database_identifier #=> String
    #   resp.table_version.table.federated_table.connection_name #=> String
    #   resp.table_version.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersion AWS API Documentation
    #
    # @overload get_table_version(params = {})
    # @param [Hash] params ({})
    def get_table_version(params = {}, options = {})
      req = build_request(:get_table_version, params)
      req.send_request(options)
    end

    # Retrieves a list of strings that identify available versions of a
    # specified table.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, String] :table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of table versions to return in one response.
    #
    # @return [Types::GetTableVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableVersionsResponse#table_versions #table_versions} => Array&lt;Types::TableVersion&gt;
    #   * {Types::GetTableVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_versions({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.table_versions #=> Array
    #   resp.table_versions[0].table.name #=> String
    #   resp.table_versions[0].table.database_name #=> String
    #   resp.table_versions[0].table.description #=> String
    #   resp.table_versions[0].table.owner #=> String
    #   resp.table_versions[0].table.create_time #=> Time
    #   resp.table_versions[0].table.update_time #=> Time
    #   resp.table_versions[0].table.last_access_time #=> Time
    #   resp.table_versions[0].table.last_analyzed_time #=> Time
    #   resp.table_versions[0].table.retention #=> Integer
    #   resp.table_versions[0].table.storage_descriptor.columns #=> Array
    #   resp.table_versions[0].table.storage_descriptor.columns[0].name #=> String
    #   resp.table_versions[0].table.storage_descriptor.columns[0].type #=> String
    #   resp.table_versions[0].table.storage_descriptor.columns[0].comment #=> String
    #   resp.table_versions[0].table.storage_descriptor.columns[0].parameters #=> Hash
    #   resp.table_versions[0].table.storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.table_versions[0].table.storage_descriptor.location #=> String
    #   resp.table_versions[0].table.storage_descriptor.additional_locations #=> Array
    #   resp.table_versions[0].table.storage_descriptor.additional_locations[0] #=> String
    #   resp.table_versions[0].table.storage_descriptor.input_format #=> String
    #   resp.table_versions[0].table.storage_descriptor.output_format #=> String
    #   resp.table_versions[0].table.storage_descriptor.compressed #=> Boolean
    #   resp.table_versions[0].table.storage_descriptor.number_of_buckets #=> Integer
    #   resp.table_versions[0].table.storage_descriptor.serde_info.name #=> String
    #   resp.table_versions[0].table.storage_descriptor.serde_info.serialization_library #=> String
    #   resp.table_versions[0].table.storage_descriptor.serde_info.parameters #=> Hash
    #   resp.table_versions[0].table.storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.table_versions[0].table.storage_descriptor.bucket_columns #=> Array
    #   resp.table_versions[0].table.storage_descriptor.bucket_columns[0] #=> String
    #   resp.table_versions[0].table.storage_descriptor.sort_columns #=> Array
    #   resp.table_versions[0].table.storage_descriptor.sort_columns[0].column #=> String
    #   resp.table_versions[0].table.storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.table_versions[0].table.storage_descriptor.parameters #=> Hash
    #   resp.table_versions[0].table.storage_descriptor.parameters["KeyString"] #=> String
    #   resp.table_versions[0].table.storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.table_versions[0].table.storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.table_versions[0].table.storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.table_versions[0].table.storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.table_versions[0].table.storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.table_versions[0].table.storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.table_versions[0].table.storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.table_versions[0].table.storage_descriptor.schema_reference.schema_id.schema_arn #=> String
    #   resp.table_versions[0].table.storage_descriptor.schema_reference.schema_id.schema_name #=> String
    #   resp.table_versions[0].table.storage_descriptor.schema_reference.schema_id.registry_name #=> String
    #   resp.table_versions[0].table.storage_descriptor.schema_reference.schema_version_id #=> String
    #   resp.table_versions[0].table.storage_descriptor.schema_reference.schema_version_number #=> Integer
    #   resp.table_versions[0].table.partition_keys #=> Array
    #   resp.table_versions[0].table.partition_keys[0].name #=> String
    #   resp.table_versions[0].table.partition_keys[0].type #=> String
    #   resp.table_versions[0].table.partition_keys[0].comment #=> String
    #   resp.table_versions[0].table.partition_keys[0].parameters #=> Hash
    #   resp.table_versions[0].table.partition_keys[0].parameters["KeyString"] #=> String
    #   resp.table_versions[0].table.view_original_text #=> String
    #   resp.table_versions[0].table.view_expanded_text #=> String
    #   resp.table_versions[0].table.table_type #=> String
    #   resp.table_versions[0].table.parameters #=> Hash
    #   resp.table_versions[0].table.parameters["KeyString"] #=> String
    #   resp.table_versions[0].table.created_by #=> String
    #   resp.table_versions[0].table.is_registered_with_lake_formation #=> Boolean
    #   resp.table_versions[0].table.target_table.catalog_id #=> String
    #   resp.table_versions[0].table.target_table.database_name #=> String
    #   resp.table_versions[0].table.target_table.name #=> String
    #   resp.table_versions[0].table.target_table.region #=> String
    #   resp.table_versions[0].table.catalog_id #=> String
    #   resp.table_versions[0].table.version_id #=> String
    #   resp.table_versions[0].table.federated_table.identifier #=> String
    #   resp.table_versions[0].table.federated_table.database_identifier #=> String
    #   resp.table_versions[0].table.federated_table.connection_name #=> String
    #   resp.table_versions[0].version_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersions AWS API Documentation
    #
    # @overload get_table_versions(params = {})
    # @param [Hash] params ({})
    def get_table_versions(params = {}, options = {})
      req = build_request(:get_table_versions, params)
      req.send_request(options)
    end

    # Retrieves the definitions of some or all of the tables in a given
    # `Database`.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The database in the catalog whose tables to list. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [String] :expression
    #   A regular expression pattern. If present, only those tables whose
    #   names match the pattern are returned.
    #
    # @option params [String] :next_token
    #   A continuation token, included if this is a continuation call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tables to return in a single response.
    #
    # @option params [String] :transaction_id
    #   The transaction ID at which to read the table contents.
    #
    # @option params [Time,DateTime,Date,Integer,String] :query_as_of_time
    #   The time as of when to read the table contents. If not set, the most
    #   recent transaction commit time will be used. Cannot be specified along
    #   with `TransactionId`.
    #
    # @return [Types::GetTablesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTablesResponse#table_list #table_list} => Array&lt;Types::Table&gt;
    #   * {Types::GetTablesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tables({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     expression: "FilterString",
    #     next_token: "Token",
    #     max_results: 1,
    #     transaction_id: "TransactionIdString",
    #     query_as_of_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.table_list #=> Array
    #   resp.table_list[0].name #=> String
    #   resp.table_list[0].database_name #=> String
    #   resp.table_list[0].description #=> String
    #   resp.table_list[0].owner #=> String
    #   resp.table_list[0].create_time #=> Time
    #   resp.table_list[0].update_time #=> Time
    #   resp.table_list[0].last_access_time #=> Time
    #   resp.table_list[0].last_analyzed_time #=> Time
    #   resp.table_list[0].retention #=> Integer
    #   resp.table_list[0].storage_descriptor.columns #=> Array
    #   resp.table_list[0].storage_descriptor.columns[0].name #=> String
    #   resp.table_list[0].storage_descriptor.columns[0].type #=> String
    #   resp.table_list[0].storage_descriptor.columns[0].comment #=> String
    #   resp.table_list[0].storage_descriptor.columns[0].parameters #=> Hash
    #   resp.table_list[0].storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.table_list[0].storage_descriptor.location #=> String
    #   resp.table_list[0].storage_descriptor.additional_locations #=> Array
    #   resp.table_list[0].storage_descriptor.additional_locations[0] #=> String
    #   resp.table_list[0].storage_descriptor.input_format #=> String
    #   resp.table_list[0].storage_descriptor.output_format #=> String
    #   resp.table_list[0].storage_descriptor.compressed #=> Boolean
    #   resp.table_list[0].storage_descriptor.number_of_buckets #=> Integer
    #   resp.table_list[0].storage_descriptor.serde_info.name #=> String
    #   resp.table_list[0].storage_descriptor.serde_info.serialization_library #=> String
    #   resp.table_list[0].storage_descriptor.serde_info.parameters #=> Hash
    #   resp.table_list[0].storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.table_list[0].storage_descriptor.bucket_columns #=> Array
    #   resp.table_list[0].storage_descriptor.bucket_columns[0] #=> String
    #   resp.table_list[0].storage_descriptor.sort_columns #=> Array
    #   resp.table_list[0].storage_descriptor.sort_columns[0].column #=> String
    #   resp.table_list[0].storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.table_list[0].storage_descriptor.parameters #=> Hash
    #   resp.table_list[0].storage_descriptor.parameters["KeyString"] #=> String
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.table_list[0].storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.table_list[0].storage_descriptor.schema_reference.schema_id.schema_arn #=> String
    #   resp.table_list[0].storage_descriptor.schema_reference.schema_id.schema_name #=> String
    #   resp.table_list[0].storage_descriptor.schema_reference.schema_id.registry_name #=> String
    #   resp.table_list[0].storage_descriptor.schema_reference.schema_version_id #=> String
    #   resp.table_list[0].storage_descriptor.schema_reference.schema_version_number #=> Integer
    #   resp.table_list[0].partition_keys #=> Array
    #   resp.table_list[0].partition_keys[0].name #=> String
    #   resp.table_list[0].partition_keys[0].type #=> String
    #   resp.table_list[0].partition_keys[0].comment #=> String
    #   resp.table_list[0].partition_keys[0].parameters #=> Hash
    #   resp.table_list[0].partition_keys[0].parameters["KeyString"] #=> String
    #   resp.table_list[0].view_original_text #=> String
    #   resp.table_list[0].view_expanded_text #=> String
    #   resp.table_list[0].table_type #=> String
    #   resp.table_list[0].parameters #=> Hash
    #   resp.table_list[0].parameters["KeyString"] #=> String
    #   resp.table_list[0].created_by #=> String
    #   resp.table_list[0].is_registered_with_lake_formation #=> Boolean
    #   resp.table_list[0].target_table.catalog_id #=> String
    #   resp.table_list[0].target_table.database_name #=> String
    #   resp.table_list[0].target_table.name #=> String
    #   resp.table_list[0].target_table.region #=> String
    #   resp.table_list[0].catalog_id #=> String
    #   resp.table_list[0].version_id #=> String
    #   resp.table_list[0].federated_table.identifier #=> String
    #   resp.table_list[0].federated_table.database_identifier #=> String
    #   resp.table_list[0].federated_table.connection_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTables AWS API Documentation
    #
    # @overload get_tables(params = {})
    # @param [Hash] params ({})
    def get_tables(params = {}, options = {})
      req = build_request(:get_tables, params)
      req.send_request(options)
    end

    # Retrieves a list of tags associated with a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to retrieve
    #   tags.
    #
    # @return [Types::GetTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTagsResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tags({
    #     resource_arn: "GlueResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTags AWS API Documentation
    #
    # @overload get_tags(params = {})
    # @param [Hash] params ({})
    def get_tags(params = {}, options = {})
      req = build_request(:get_tags, params)
      req.send_request(options)
    end

    # Retrieves the definition of a trigger.
    #
    # @option params [required, String] :name
    #   The name of the trigger to retrieve.
    #
    # @return [Types::GetTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTriggerResponse#trigger #trigger} => Types::Trigger
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trigger({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trigger.name #=> String
    #   resp.trigger.workflow_name #=> String
    #   resp.trigger.id #=> String
    #   resp.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND", "EVENT"
    #   resp.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.trigger.description #=> String
    #   resp.trigger.schedule #=> String
    #   resp.trigger.actions #=> Array
    #   resp.trigger.actions[0].job_name #=> String
    #   resp.trigger.actions[0].arguments #=> Hash
    #   resp.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.trigger.actions[0].timeout #=> Integer
    #   resp.trigger.actions[0].security_configuration #=> String
    #   resp.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.trigger.actions[0].crawler_name #=> String
    #   resp.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.trigger.predicate.conditions #=> Array
    #   resp.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.trigger.predicate.conditions[0].job_name #=> String
    #   resp.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.trigger.event_batching_condition.batch_size #=> Integer
    #   resp.trigger.event_batching_condition.batch_window #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTrigger AWS API Documentation
    #
    # @overload get_trigger(params = {})
    # @param [Hash] params ({})
    def get_trigger(params = {}, options = {})
      req = build_request(:get_trigger, params)
      req.send_request(options)
    end

    # Gets all the triggers associated with a job.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [String] :dependent_job_name
    #   The name of the job to retrieve triggers for. The trigger that can
    #   start this job is returned, and if there is no such trigger, all
    #   triggers are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the response.
    #
    # @return [Types::GetTriggersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTriggersResponse#triggers #triggers} => Array&lt;Types::Trigger&gt;
    #   * {Types::GetTriggersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_triggers({
    #     next_token: "GenericString",
    #     dependent_job_name: "NameString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.triggers #=> Array
    #   resp.triggers[0].name #=> String
    #   resp.triggers[0].workflow_name #=> String
    #   resp.triggers[0].id #=> String
    #   resp.triggers[0].type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND", "EVENT"
    #   resp.triggers[0].state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.triggers[0].description #=> String
    #   resp.triggers[0].schedule #=> String
    #   resp.triggers[0].actions #=> Array
    #   resp.triggers[0].actions[0].job_name #=> String
    #   resp.triggers[0].actions[0].arguments #=> Hash
    #   resp.triggers[0].actions[0].arguments["GenericString"] #=> String
    #   resp.triggers[0].actions[0].timeout #=> Integer
    #   resp.triggers[0].actions[0].security_configuration #=> String
    #   resp.triggers[0].actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.triggers[0].actions[0].crawler_name #=> String
    #   resp.triggers[0].predicate.logical #=> String, one of "AND", "ANY"
    #   resp.triggers[0].predicate.conditions #=> Array
    #   resp.triggers[0].predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.triggers[0].predicate.conditions[0].job_name #=> String
    #   resp.triggers[0].predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.triggers[0].predicate.conditions[0].crawler_name #=> String
    #   resp.triggers[0].predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.triggers[0].event_batching_condition.batch_size #=> Integer
    #   resp.triggers[0].event_batching_condition.batch_window #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggers AWS API Documentation
    #
    # @overload get_triggers(params = {})
    # @param [Hash] params ({})
    def get_triggers(params = {}, options = {})
      req = build_request(:get_triggers, params)
      req.send_request(options)
    end

    # Retrieves partition metadata from the Data Catalog that contains
    # unfiltered metadata.
    #
    # For IAM authorization, the public IAM action associated with this API
    # is `glue:GetPartition`.
    #
    # @option params [required, String] :catalog_id
    #   The catalog ID where the partition resides.
    #
    # @option params [required, String] :database_name
    #   (Required) Specifies the name of a database that contains the
    #   partition.
    #
    # @option params [required, String] :table_name
    #   (Required) Specifies the name of a table that contains the partition.
    #
    # @option params [required, Array<String>] :partition_values
    #   (Required) A list of partition key values.
    #
    # @option params [Types::AuditContext] :audit_context
    #   A structure containing Lake Formation audit context information.
    #
    # @option params [required, Array<String>] :supported_permission_types
    #   (Required) A list of supported permission types.
    #
    # @return [Types::GetUnfilteredPartitionMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUnfilteredPartitionMetadataResponse#partition #data.partition} => Types::Partition (This method conflicts with a method on Response, call it through the data member)
    #   * {Types::GetUnfilteredPartitionMetadataResponse#authorized_columns #authorized_columns} => Array&lt;String&gt;
    #   * {Types::GetUnfilteredPartitionMetadataResponse#is_registered_with_lake_formation #is_registered_with_lake_formation} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_unfiltered_partition_metadata({
    #     catalog_id: "CatalogIdString", # required
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_values: ["ValueString"], # required
    #     audit_context: {
    #       additional_audit_context: "AuditContextString",
    #       requested_columns: ["ColumnNameString"],
    #       all_columns_requested: false,
    #     },
    #     supported_permission_types: ["COLUMN_PERMISSION"], # required, accepts COLUMN_PERMISSION, CELL_FILTER_PERMISSION, NESTED_PERMISSION, NESTED_CELL_PERMISSION
    #   })
    #
    # @example Response structure
    #
    #   resp.data.partition.values #=> Array
    #   resp.data.partition.values[0] #=> String
    #   resp.data.partition.database_name #=> String
    #   resp.data.partition.table_name #=> String
    #   resp.data.partition.creation_time #=> Time
    #   resp.data.partition.last_access_time #=> Time
    #   resp.data.partition.storage_descriptor.columns #=> Array
    #   resp.data.partition.storage_descriptor.columns[0].name #=> String
    #   resp.data.partition.storage_descriptor.columns[0].type #=> String
    #   resp.data.partition.storage_descriptor.columns[0].comment #=> String
    #   resp.data.partition.storage_descriptor.columns[0].parameters #=> Hash
    #   resp.data.partition.storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.data.partition.storage_descriptor.location #=> String
    #   resp.data.partition.storage_descriptor.additional_locations #=> Array
    #   resp.data.partition.storage_descriptor.additional_locations[0] #=> String
    #   resp.data.partition.storage_descriptor.input_format #=> String
    #   resp.data.partition.storage_descriptor.output_format #=> String
    #   resp.data.partition.storage_descriptor.compressed #=> Boolean
    #   resp.data.partition.storage_descriptor.number_of_buckets #=> Integer
    #   resp.data.partition.storage_descriptor.serde_info.name #=> String
    #   resp.data.partition.storage_descriptor.serde_info.serialization_library #=> String
    #   resp.data.partition.storage_descriptor.serde_info.parameters #=> Hash
    #   resp.data.partition.storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.data.partition.storage_descriptor.bucket_columns #=> Array
    #   resp.data.partition.storage_descriptor.bucket_columns[0] #=> String
    #   resp.data.partition.storage_descriptor.sort_columns #=> Array
    #   resp.data.partition.storage_descriptor.sort_columns[0].column #=> String
    #   resp.data.partition.storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.data.partition.storage_descriptor.parameters #=> Hash
    #   resp.data.partition.storage_descriptor.parameters["KeyString"] #=> String
    #   resp.data.partition.storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.data.partition.storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.data.partition.storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.data.partition.storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.data.partition.storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.data.partition.storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.data.partition.storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.data.partition.storage_descriptor.schema_reference.schema_id.schema_arn #=> String
    #   resp.data.partition.storage_descriptor.schema_reference.schema_id.schema_name #=> String
    #   resp.data.partition.storage_descriptor.schema_reference.schema_id.registry_name #=> String
    #   resp.data.partition.storage_descriptor.schema_reference.schema_version_id #=> String
    #   resp.data.partition.storage_descriptor.schema_reference.schema_version_number #=> Integer
    #   resp.data.partition.parameters #=> Hash
    #   resp.data.partition.parameters["KeyString"] #=> String
    #   resp.data.partition.last_analyzed_time #=> Time
    #   resp.data.partition.catalog_id #=> String
    #   resp.authorized_columns #=> Array
    #   resp.authorized_columns[0] #=> String
    #   resp.is_registered_with_lake_formation #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUnfilteredPartitionMetadata AWS API Documentation
    #
    # @overload get_unfiltered_partition_metadata(params = {})
    # @param [Hash] params ({})
    def get_unfiltered_partition_metadata(params = {}, options = {})
      req = build_request(:get_unfiltered_partition_metadata, params)
      req.send_request(options)
    end

    # Retrieves partition metadata from the Data Catalog that contains
    # unfiltered metadata.
    #
    # For IAM authorization, the public IAM action associated with this API
    # is `glue:GetPartitions`.
    #
    # @option params [required, String] :catalog_id
    #   The ID of the Data Catalog where the partitions in question reside. If
    #   none is provided, the AWS account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partitions reside.
    #
    # @option params [required, String] :table_name
    #   The name of the table that contains the partition.
    #
    # @option params [String] :expression
    #   An expression that filters the partitions to be returned.
    #
    #   The expression uses SQL syntax similar to the SQL `WHERE` filter
    #   clause. The SQL statement parser [JSQLParser][1] parses the
    #   expression.
    #
    #   *Operators*: The following are the operators that you can use in the
    #   `Expression` API call:
    #
    #   =
    #
    #   : Checks whether the values of the two operands are equal; if yes,
    #     then the condition becomes true.
    #
    #     Example: Assume 'variable a' holds 10 and 'variable b' holds 20.
    #
    #     (a = b) is not true.
    #
    #   &lt; &gt;
    #
    #   : Checks whether the values of two operands are equal; if the values
    #     are not equal, then the condition becomes true.
    #
    #     Example: (a &lt; &gt; b) is true.
    #
    #   &gt;
    #
    #   : Checks whether the value of the left operand is greater than the
    #     value of the right operand; if yes, then the condition becomes true.
    #
    #     Example: (a &gt; b) is not true.
    #
    #   &lt;
    #
    #   : Checks whether the value of the left operand is less than the value
    #     of the right operand; if yes, then the condition becomes true.
    #
    #     Example: (a &lt; b) is true.
    #
    #   &gt;=
    #
    #   : Checks whether the value of the left operand is greater than or
    #     equal to the value of the right operand; if yes, then the condition
    #     becomes true.
    #
    #     Example: (a &gt;= b) is not true.
    #
    #   &lt;=
    #
    #   : Checks whether the value of the left operand is less than or equal
    #     to the value of the right operand; if yes, then the condition
    #     becomes true.
    #
    #     Example: (a &lt;= b) is true.
    #
    #   AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL
    #
    #   : Logical operators.
    #
    #   *Supported Partition Key Types*: The following are the supported
    #   partition keys.
    #
    #   * `string`
    #
    #   * `date`
    #
    #   * `timestamp`
    #
    #   * `int`
    #
    #   * `bigint`
    #
    #   * `long`
    #
    #   * `tinyint`
    #
    #   * `smallint`
    #
    #   * `decimal`
    #
    #   If an type is encountered that is not valid, an exception is thrown.
    #
    #
    #
    #   [1]: http://jsqlparser.sourceforge.net/home.php
    #
    # @option params [Types::AuditContext] :audit_context
    #   A structure containing Lake Formation audit context information.
    #
    # @option params [required, Array<String>] :supported_permission_types
    #   A list of supported permission types.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is not the first call to retrieve these
    #   partitions.
    #
    # @option params [Types::Segment] :segment
    #   The segment of the table's partitions to scan in this request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of partitions to return in a single response.
    #
    # @return [Types::GetUnfilteredPartitionsMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUnfilteredPartitionsMetadataResponse#unfiltered_partitions #unfiltered_partitions} => Array&lt;Types::UnfilteredPartition&gt;
    #   * {Types::GetUnfilteredPartitionsMetadataResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_unfiltered_partitions_metadata({
    #     catalog_id: "CatalogIdString", # required
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     expression: "PredicateString",
    #     audit_context: {
    #       additional_audit_context: "AuditContextString",
    #       requested_columns: ["ColumnNameString"],
    #       all_columns_requested: false,
    #     },
    #     supported_permission_types: ["COLUMN_PERMISSION"], # required, accepts COLUMN_PERMISSION, CELL_FILTER_PERMISSION, NESTED_PERMISSION, NESTED_CELL_PERMISSION
    #     next_token: "Token",
    #     segment: {
    #       segment_number: 1, # required
    #       total_segments: 1, # required
    #     },
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.unfiltered_partitions #=> Array
    #   resp.unfiltered_partitions[0].partition.values #=> Array
    #   resp.unfiltered_partitions[0].partition.values[0] #=> String
    #   resp.unfiltered_partitions[0].partition.database_name #=> String
    #   resp.unfiltered_partitions[0].partition.table_name #=> String
    #   resp.unfiltered_partitions[0].partition.creation_time #=> Time
    #   resp.unfiltered_partitions[0].partition.last_access_time #=> Time
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.columns #=> Array
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.columns[0].name #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.columns[0].type #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.columns[0].comment #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.columns[0].parameters #=> Hash
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.location #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.additional_locations #=> Array
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.additional_locations[0] #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.input_format #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.output_format #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.compressed #=> Boolean
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.number_of_buckets #=> Integer
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.serde_info.name #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.serde_info.serialization_library #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.serde_info.parameters #=> Hash
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.bucket_columns #=> Array
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.bucket_columns[0] #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.sort_columns #=> Array
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.sort_columns[0].column #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.parameters #=> Hash
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.parameters["KeyString"] #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.schema_reference.schema_id.schema_arn #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.schema_reference.schema_id.schema_name #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.schema_reference.schema_id.registry_name #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.schema_reference.schema_version_id #=> String
    #   resp.unfiltered_partitions[0].partition.storage_descriptor.schema_reference.schema_version_number #=> Integer
    #   resp.unfiltered_partitions[0].partition.parameters #=> Hash
    #   resp.unfiltered_partitions[0].partition.parameters["KeyString"] #=> String
    #   resp.unfiltered_partitions[0].partition.last_analyzed_time #=> Time
    #   resp.unfiltered_partitions[0].partition.catalog_id #=> String
    #   resp.unfiltered_partitions[0].authorized_columns #=> Array
    #   resp.unfiltered_partitions[0].authorized_columns[0] #=> String
    #   resp.unfiltered_partitions[0].is_registered_with_lake_formation #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUnfilteredPartitionsMetadata AWS API Documentation
    #
    # @overload get_unfiltered_partitions_metadata(params = {})
    # @param [Hash] params ({})
    def get_unfiltered_partitions_metadata(params = {}, options = {})
      req = build_request(:get_unfiltered_partitions_metadata, params)
      req.send_request(options)
    end

    # Retrieves table metadata from the Data Catalog that contains
    # unfiltered metadata.
    #
    # For IAM authorization, the public IAM action associated with this API
    # is `glue:GetTable`.
    #
    # @option params [required, String] :catalog_id
    #   The catalog ID where the table resides.
    #
    # @option params [required, String] :database_name
    #   (Required) Specifies the name of a database that contains the table.
    #
    # @option params [required, String] :name
    #   (Required) Specifies the name of a table for which you are requesting
    #   metadata.
    #
    # @option params [Types::AuditContext] :audit_context
    #   A structure containing Lake Formation audit context information.
    #
    # @option params [required, Array<String>] :supported_permission_types
    #   (Required) A list of supported permission types.
    #
    # @return [Types::GetUnfilteredTableMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUnfilteredTableMetadataResponse#table #table} => Types::Table
    #   * {Types::GetUnfilteredTableMetadataResponse#authorized_columns #authorized_columns} => Array&lt;String&gt;
    #   * {Types::GetUnfilteredTableMetadataResponse#is_registered_with_lake_formation #is_registered_with_lake_formation} => Boolean
    #   * {Types::GetUnfilteredTableMetadataResponse#cell_filters #cell_filters} => Array&lt;Types::ColumnRowFilter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_unfiltered_table_metadata({
    #     catalog_id: "CatalogIdString", # required
    #     database_name: "NameString", # required
    #     name: "NameString", # required
    #     audit_context: {
    #       additional_audit_context: "AuditContextString",
    #       requested_columns: ["ColumnNameString"],
    #       all_columns_requested: false,
    #     },
    #     supported_permission_types: ["COLUMN_PERMISSION"], # required, accepts COLUMN_PERMISSION, CELL_FILTER_PERMISSION, NESTED_PERMISSION, NESTED_CELL_PERMISSION
    #   })
    #
    # @example Response structure
    #
    #   resp.table.name #=> String
    #   resp.table.database_name #=> String
    #   resp.table.description #=> String
    #   resp.table.owner #=> String
    #   resp.table.create_time #=> Time
    #   resp.table.update_time #=> Time
    #   resp.table.last_access_time #=> Time
    #   resp.table.last_analyzed_time #=> Time
    #   resp.table.retention #=> Integer
    #   resp.table.storage_descriptor.columns #=> Array
    #   resp.table.storage_descriptor.columns[0].name #=> String
    #   resp.table.storage_descriptor.columns[0].type #=> String
    #   resp.table.storage_descriptor.columns[0].comment #=> String
    #   resp.table.storage_descriptor.columns[0].parameters #=> Hash
    #   resp.table.storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.table.storage_descriptor.location #=> String
    #   resp.table.storage_descriptor.additional_locations #=> Array
    #   resp.table.storage_descriptor.additional_locations[0] #=> String
    #   resp.table.storage_descriptor.input_format #=> String
    #   resp.table.storage_descriptor.output_format #=> String
    #   resp.table.storage_descriptor.compressed #=> Boolean
    #   resp.table.storage_descriptor.number_of_buckets #=> Integer
    #   resp.table.storage_descriptor.serde_info.name #=> String
    #   resp.table.storage_descriptor.serde_info.serialization_library #=> String
    #   resp.table.storage_descriptor.serde_info.parameters #=> Hash
    #   resp.table.storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.table.storage_descriptor.bucket_columns #=> Array
    #   resp.table.storage_descriptor.bucket_columns[0] #=> String
    #   resp.table.storage_descriptor.sort_columns #=> Array
    #   resp.table.storage_descriptor.sort_columns[0].column #=> String
    #   resp.table.storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.table.storage_descriptor.parameters #=> Hash
    #   resp.table.storage_descriptor.parameters["KeyString"] #=> String
    #   resp.table.storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.table.storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.table.storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.table.storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.table.storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.table.storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.table.storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.table.storage_descriptor.schema_reference.schema_id.schema_arn #=> String
    #   resp.table.storage_descriptor.schema_reference.schema_id.schema_name #=> String
    #   resp.table.storage_descriptor.schema_reference.schema_id.registry_name #=> String
    #   resp.table.storage_descriptor.schema_reference.schema_version_id #=> String
    #   resp.table.storage_descriptor.schema_reference.schema_version_number #=> Integer
    #   resp.table.partition_keys #=> Array
    #   resp.table.partition_keys[0].name #=> String
    #   resp.table.partition_keys[0].type #=> String
    #   resp.table.partition_keys[0].comment #=> String
    #   resp.table.partition_keys[0].parameters #=> Hash
    #   resp.table.partition_keys[0].parameters["KeyString"] #=> String
    #   resp.table.view_original_text #=> String
    #   resp.table.view_expanded_text #=> String
    #   resp.table.table_type #=> String
    #   resp.table.parameters #=> Hash
    #   resp.table.parameters["KeyString"] #=> String
    #   resp.table.created_by #=> String
    #   resp.table.is_registered_with_lake_formation #=> Boolean
    #   resp.table.target_table.catalog_id #=> String
    #   resp.table.target_table.database_name #=> String
    #   resp.table.target_table.name #=> String
    #   resp.table.target_table.region #=> String
    #   resp.table.catalog_id #=> String
    #   resp.table.version_id #=> String
    #   resp.table.federated_table.identifier #=> String
    #   resp.table.federated_table.database_identifier #=> String
    #   resp.table.federated_table.connection_name #=> String
    #   resp.authorized_columns #=> Array
    #   resp.authorized_columns[0] #=> String
    #   resp.is_registered_with_lake_formation #=> Boolean
    #   resp.cell_filters #=> Array
    #   resp.cell_filters[0].column_name #=> String
    #   resp.cell_filters[0].row_filter_expression #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUnfilteredTableMetadata AWS API Documentation
    #
    # @overload get_unfiltered_table_metadata(params = {})
    # @param [Hash] params ({})
    def get_unfiltered_table_metadata(params = {}, options = {})
      req = build_request(:get_unfiltered_table_metadata, params)
      req.send_request(options)
    end

    # Retrieves a specified function definition from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the function to be retrieved is
    #   located. If none is provided, the Amazon Web Services account ID is
    #   used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the function is located.
    #
    # @option params [required, String] :function_name
    #   The name of the function.
    #
    # @return [Types::GetUserDefinedFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserDefinedFunctionResponse#user_defined_function #user_defined_function} => Types::UserDefinedFunction
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_defined_function({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     function_name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_defined_function.function_name #=> String
    #   resp.user_defined_function.database_name #=> String
    #   resp.user_defined_function.class_name #=> String
    #   resp.user_defined_function.owner_name #=> String
    #   resp.user_defined_function.owner_type #=> String, one of "USER", "ROLE", "GROUP"
    #   resp.user_defined_function.create_time #=> Time
    #   resp.user_defined_function.resource_uris #=> Array
    #   resp.user_defined_function.resource_uris[0].resource_type #=> String, one of "JAR", "FILE", "ARCHIVE"
    #   resp.user_defined_function.resource_uris[0].uri #=> String
    #   resp.user_defined_function.catalog_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunction AWS API Documentation
    #
    # @overload get_user_defined_function(params = {})
    # @param [Hash] params ({})
    def get_user_defined_function(params = {}, options = {})
      req = build_request(:get_user_defined_function, params)
      req.send_request(options)
    end

    # Retrieves multiple function definitions from the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the functions to be retrieved are
    #   located. If none is provided, the Amazon Web Services account ID is
    #   used by default.
    #
    # @option params [String] :database_name
    #   The name of the catalog database where the functions are located. If
    #   none is provided, functions from all the databases across the catalog
    #   will be returned.
    #
    # @option params [required, String] :pattern
    #   An optional function-name pattern string that filters the function
    #   definitions returned.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of functions to return in one response.
    #
    # @return [Types::GetUserDefinedFunctionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserDefinedFunctionsResponse#user_defined_functions #user_defined_functions} => Array&lt;Types::UserDefinedFunction&gt;
    #   * {Types::GetUserDefinedFunctionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_defined_functions({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString",
    #     pattern: "NameString", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_defined_functions #=> Array
    #   resp.user_defined_functions[0].function_name #=> String
    #   resp.user_defined_functions[0].database_name #=> String
    #   resp.user_defined_functions[0].class_name #=> String
    #   resp.user_defined_functions[0].owner_name #=> String
    #   resp.user_defined_functions[0].owner_type #=> String, one of "USER", "ROLE", "GROUP"
    #   resp.user_defined_functions[0].create_time #=> Time
    #   resp.user_defined_functions[0].resource_uris #=> Array
    #   resp.user_defined_functions[0].resource_uris[0].resource_type #=> String, one of "JAR", "FILE", "ARCHIVE"
    #   resp.user_defined_functions[0].resource_uris[0].uri #=> String
    #   resp.user_defined_functions[0].catalog_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctions AWS API Documentation
    #
    # @overload get_user_defined_functions(params = {})
    # @param [Hash] params ({})
    def get_user_defined_functions(params = {}, options = {})
      req = build_request(:get_user_defined_functions, params)
      req.send_request(options)
    end

    # Retrieves resource metadata for a workflow.
    #
    # @option params [required, String] :name
    #   The name of the workflow to retrieve.
    #
    # @option params [Boolean] :include_graph
    #   Specifies whether to include a graph when returning the workflow
    #   resource metadata.
    #
    # @return [Types::GetWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowResponse#workflow #workflow} => Types::Workflow
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow({
    #     name: "NameString", # required
    #     include_graph: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow.name #=> String
    #   resp.workflow.description #=> String
    #   resp.workflow.default_run_properties #=> Hash
    #   resp.workflow.default_run_properties["IdString"] #=> String
    #   resp.workflow.created_on #=> Time
    #   resp.workflow.last_modified_on #=> Time
    #   resp.workflow.last_run.name #=> String
    #   resp.workflow.last_run.workflow_run_id #=> String
    #   resp.workflow.last_run.previous_run_id #=> String
    #   resp.workflow.last_run.workflow_run_properties #=> Hash
    #   resp.workflow.last_run.workflow_run_properties["IdString"] #=> String
    #   resp.workflow.last_run.started_on #=> Time
    #   resp.workflow.last_run.completed_on #=> Time
    #   resp.workflow.last_run.status #=> String, one of "RUNNING", "COMPLETED", "STOPPING", "STOPPED", "ERROR"
    #   resp.workflow.last_run.error_message #=> String
    #   resp.workflow.last_run.statistics.total_actions #=> Integer
    #   resp.workflow.last_run.statistics.timeout_actions #=> Integer
    #   resp.workflow.last_run.statistics.failed_actions #=> Integer
    #   resp.workflow.last_run.statistics.stopped_actions #=> Integer
    #   resp.workflow.last_run.statistics.succeeded_actions #=> Integer
    #   resp.workflow.last_run.statistics.running_actions #=> Integer
    #   resp.workflow.last_run.statistics.errored_actions #=> Integer
    #   resp.workflow.last_run.statistics.waiting_actions #=> Integer
    #   resp.workflow.last_run.graph.nodes #=> Array
    #   resp.workflow.last_run.graph.nodes[0].type #=> String, one of "CRAWLER", "JOB", "TRIGGER"
    #   resp.workflow.last_run.graph.nodes[0].name #=> String
    #   resp.workflow.last_run.graph.nodes[0].unique_id #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.name #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.workflow_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.id #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND", "EVENT"
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.description #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.schedule #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions #=> Array
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].job_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].arguments #=> Hash
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].timeout #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].security_configuration #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.actions[0].crawler_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions #=> Array
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].job_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.event_batching_condition.batch_size #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].trigger_details.trigger.event_batching_condition.batch_window #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs #=> Array
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].id #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].attempt #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].previous_run_id #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].trigger_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].job_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].started_on #=> Time
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].last_modified_on #=> Time
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].completed_on #=> Time
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].arguments #=> Hash
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].arguments["GenericString"] #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].error_message #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].predecessor_runs #=> Array
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].allocated_capacity #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].execution_time #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].timeout #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].max_capacity #=> Float
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].number_of_workers #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].security_configuration #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].log_group_name #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].glue_version #=> String
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].dpu_seconds #=> Float
    #   resp.workflow.last_run.graph.nodes[0].job_details.job_runs[0].execution_class #=> String, one of "FLEX", "STANDARD"
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls #=> Array
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls[0].state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls[0].started_on #=> Time
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls[0].completed_on #=> Time
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls[0].error_message #=> String
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls[0].log_group #=> String
    #   resp.workflow.last_run.graph.nodes[0].crawler_details.crawls[0].log_stream #=> String
    #   resp.workflow.last_run.graph.edges #=> Array
    #   resp.workflow.last_run.graph.edges[0].source_id #=> String
    #   resp.workflow.last_run.graph.edges[0].destination_id #=> String
    #   resp.workflow.last_run.starting_event_batch_condition.batch_size #=> Integer
    #   resp.workflow.last_run.starting_event_batch_condition.batch_window #=> Integer
    #   resp.workflow.graph.nodes #=> Array
    #   resp.workflow.graph.nodes[0].type #=> String, one of "CRAWLER", "JOB", "TRIGGER"
    #   resp.workflow.graph.nodes[0].name #=> String
    #   resp.workflow.graph.nodes[0].unique_id #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.name #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.workflow_name #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.id #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND", "EVENT"
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.description #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.schedule #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions #=> Array
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].job_name #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].arguments #=> Hash
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].timeout #=> Integer
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].security_configuration #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.actions[0].crawler_name #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.conditions #=> Array
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].job_name #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.event_batching_condition.batch_size #=> Integer
    #   resp.workflow.graph.nodes[0].trigger_details.trigger.event_batching_condition.batch_window #=> Integer
    #   resp.workflow.graph.nodes[0].job_details.job_runs #=> Array
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].id #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].attempt #=> Integer
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].previous_run_id #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].trigger_name #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].job_name #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].started_on #=> Time
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].last_modified_on #=> Time
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].completed_on #=> Time
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].arguments #=> Hash
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].arguments["GenericString"] #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].error_message #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].predecessor_runs #=> Array
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].allocated_capacity #=> Integer
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].execution_time #=> Integer
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].timeout #=> Integer
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].max_capacity #=> Float
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].number_of_workers #=> Integer
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].security_configuration #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].log_group_name #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].glue_version #=> String
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].dpu_seconds #=> Float
    #   resp.workflow.graph.nodes[0].job_details.job_runs[0].execution_class #=> String, one of "FLEX", "STANDARD"
    #   resp.workflow.graph.nodes[0].crawler_details.crawls #=> Array
    #   resp.workflow.graph.nodes[0].crawler_details.crawls[0].state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.workflow.graph.nodes[0].crawler_details.crawls[0].started_on #=> Time
    #   resp.workflow.graph.nodes[0].crawler_details.crawls[0].completed_on #=> Time
    #   resp.workflow.graph.nodes[0].crawler_details.crawls[0].error_message #=> String
    #   resp.workflow.graph.nodes[0].crawler_details.crawls[0].log_group #=> String
    #   resp.workflow.graph.nodes[0].crawler_details.crawls[0].log_stream #=> String
    #   resp.workflow.graph.edges #=> Array
    #   resp.workflow.graph.edges[0].source_id #=> String
    #   resp.workflow.graph.edges[0].destination_id #=> String
    #   resp.workflow.max_concurrent_runs #=> Integer
    #   resp.workflow.blueprint_details.blueprint_name #=> String
    #   resp.workflow.blueprint_details.run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflow AWS API Documentation
    #
    # @overload get_workflow(params = {})
    # @param [Hash] params ({})
    def get_workflow(params = {}, options = {})
      req = build_request(:get_workflow, params)
      req.send_request(options)
    end

    # Retrieves the metadata for a given workflow run.
    #
    # @option params [required, String] :name
    #   Name of the workflow being run.
    #
    # @option params [required, String] :run_id
    #   The ID of the workflow run.
    #
    # @option params [Boolean] :include_graph
    #   Specifies whether to include the workflow graph in response or not.
    #
    # @return [Types::GetWorkflowRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowRunResponse#run #run} => Types::WorkflowRun
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_run({
    #     name: "NameString", # required
    #     run_id: "IdString", # required
    #     include_graph: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.run.name #=> String
    #   resp.run.workflow_run_id #=> String
    #   resp.run.previous_run_id #=> String
    #   resp.run.workflow_run_properties #=> Hash
    #   resp.run.workflow_run_properties["IdString"] #=> String
    #   resp.run.started_on #=> Time
    #   resp.run.completed_on #=> Time
    #   resp.run.status #=> String, one of "RUNNING", "COMPLETED", "STOPPING", "STOPPED", "ERROR"
    #   resp.run.error_message #=> String
    #   resp.run.statistics.total_actions #=> Integer
    #   resp.run.statistics.timeout_actions #=> Integer
    #   resp.run.statistics.failed_actions #=> Integer
    #   resp.run.statistics.stopped_actions #=> Integer
    #   resp.run.statistics.succeeded_actions #=> Integer
    #   resp.run.statistics.running_actions #=> Integer
    #   resp.run.statistics.errored_actions #=> Integer
    #   resp.run.statistics.waiting_actions #=> Integer
    #   resp.run.graph.nodes #=> Array
    #   resp.run.graph.nodes[0].type #=> String, one of "CRAWLER", "JOB", "TRIGGER"
    #   resp.run.graph.nodes[0].name #=> String
    #   resp.run.graph.nodes[0].unique_id #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.name #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.workflow_name #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.id #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND", "EVENT"
    #   resp.run.graph.nodes[0].trigger_details.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.run.graph.nodes[0].trigger_details.trigger.description #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.schedule #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions #=> Array
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].job_name #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].arguments #=> Hash
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].timeout #=> Integer
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].security_configuration #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.run.graph.nodes[0].trigger_details.trigger.actions[0].crawler_name #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.conditions #=> Array
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].job_name #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.run.graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.run.graph.nodes[0].trigger_details.trigger.event_batching_condition.batch_size #=> Integer
    #   resp.run.graph.nodes[0].trigger_details.trigger.event_batching_condition.batch_window #=> Integer
    #   resp.run.graph.nodes[0].job_details.job_runs #=> Array
    #   resp.run.graph.nodes[0].job_details.job_runs[0].id #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].attempt #=> Integer
    #   resp.run.graph.nodes[0].job_details.job_runs[0].previous_run_id #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].trigger_name #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].job_name #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].started_on #=> Time
    #   resp.run.graph.nodes[0].job_details.job_runs[0].last_modified_on #=> Time
    #   resp.run.graph.nodes[0].job_details.job_runs[0].completed_on #=> Time
    #   resp.run.graph.nodes[0].job_details.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.run.graph.nodes[0].job_details.job_runs[0].arguments #=> Hash
    #   resp.run.graph.nodes[0].job_details.job_runs[0].arguments["GenericString"] #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].error_message #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].predecessor_runs #=> Array
    #   resp.run.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].allocated_capacity #=> Integer
    #   resp.run.graph.nodes[0].job_details.job_runs[0].execution_time #=> Integer
    #   resp.run.graph.nodes[0].job_details.job_runs[0].timeout #=> Integer
    #   resp.run.graph.nodes[0].job_details.job_runs[0].max_capacity #=> Float
    #   resp.run.graph.nodes[0].job_details.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.run.graph.nodes[0].job_details.job_runs[0].number_of_workers #=> Integer
    #   resp.run.graph.nodes[0].job_details.job_runs[0].security_configuration #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].log_group_name #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.run.graph.nodes[0].job_details.job_runs[0].glue_version #=> String
    #   resp.run.graph.nodes[0].job_details.job_runs[0].dpu_seconds #=> Float
    #   resp.run.graph.nodes[0].job_details.job_runs[0].execution_class #=> String, one of "FLEX", "STANDARD"
    #   resp.run.graph.nodes[0].crawler_details.crawls #=> Array
    #   resp.run.graph.nodes[0].crawler_details.crawls[0].state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.run.graph.nodes[0].crawler_details.crawls[0].started_on #=> Time
    #   resp.run.graph.nodes[0].crawler_details.crawls[0].completed_on #=> Time
    #   resp.run.graph.nodes[0].crawler_details.crawls[0].error_message #=> String
    #   resp.run.graph.nodes[0].crawler_details.crawls[0].log_group #=> String
    #   resp.run.graph.nodes[0].crawler_details.crawls[0].log_stream #=> String
    #   resp.run.graph.edges #=> Array
    #   resp.run.graph.edges[0].source_id #=> String
    #   resp.run.graph.edges[0].destination_id #=> String
    #   resp.run.starting_event_batch_condition.batch_size #=> Integer
    #   resp.run.starting_event_batch_condition.batch_window #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRun AWS API Documentation
    #
    # @overload get_workflow_run(params = {})
    # @param [Hash] params ({})
    def get_workflow_run(params = {}, options = {})
      req = build_request(:get_workflow_run, params)
      req.send_request(options)
    end

    # Retrieves the workflow run properties which were set during the run.
    #
    # @option params [required, String] :name
    #   Name of the workflow which was run.
    #
    # @option params [required, String] :run_id
    #   The ID of the workflow run whose run properties should be returned.
    #
    # @return [Types::GetWorkflowRunPropertiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowRunPropertiesResponse#run_properties #run_properties} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_run_properties({
    #     name: "NameString", # required
    #     run_id: "IdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.run_properties #=> Hash
    #   resp.run_properties["IdString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunProperties AWS API Documentation
    #
    # @overload get_workflow_run_properties(params = {})
    # @param [Hash] params ({})
    def get_workflow_run_properties(params = {}, options = {})
      req = build_request(:get_workflow_run_properties, params)
      req.send_request(options)
    end

    # Retrieves metadata for all runs of a given workflow.
    #
    # @option params [required, String] :name
    #   Name of the workflow whose metadata of runs should be returned.
    #
    # @option params [Boolean] :include_graph
    #   Specifies whether to include the workflow graph in response or not.
    #
    # @option params [String] :next_token
    #   The maximum size of the response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of workflow runs to be included in the response.
    #
    # @return [Types::GetWorkflowRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowRunsResponse#runs #runs} => Array&lt;Types::WorkflowRun&gt;
    #   * {Types::GetWorkflowRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_runs({
    #     name: "NameString", # required
    #     include_graph: false,
    #     next_token: "GenericString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.runs #=> Array
    #   resp.runs[0].name #=> String
    #   resp.runs[0].workflow_run_id #=> String
    #   resp.runs[0].previous_run_id #=> String
    #   resp.runs[0].workflow_run_properties #=> Hash
    #   resp.runs[0].workflow_run_properties["IdString"] #=> String
    #   resp.runs[0].started_on #=> Time
    #   resp.runs[0].completed_on #=> Time
    #   resp.runs[0].status #=> String, one of "RUNNING", "COMPLETED", "STOPPING", "STOPPED", "ERROR"
    #   resp.runs[0].error_message #=> String
    #   resp.runs[0].statistics.total_actions #=> Integer
    #   resp.runs[0].statistics.timeout_actions #=> Integer
    #   resp.runs[0].statistics.failed_actions #=> Integer
    #   resp.runs[0].statistics.stopped_actions #=> Integer
    #   resp.runs[0].statistics.succeeded_actions #=> Integer
    #   resp.runs[0].statistics.running_actions #=> Integer
    #   resp.runs[0].statistics.errored_actions #=> Integer
    #   resp.runs[0].statistics.waiting_actions #=> Integer
    #   resp.runs[0].graph.nodes #=> Array
    #   resp.runs[0].graph.nodes[0].type #=> String, one of "CRAWLER", "JOB", "TRIGGER"
    #   resp.runs[0].graph.nodes[0].name #=> String
    #   resp.runs[0].graph.nodes[0].unique_id #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.name #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.workflow_name #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.id #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND", "EVENT"
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.description #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.schedule #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions #=> Array
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].job_name #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].arguments #=> Hash
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].timeout #=> Integer
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].security_configuration #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.actions[0].crawler_name #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.conditions #=> Array
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].job_name #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.event_batching_condition.batch_size #=> Integer
    #   resp.runs[0].graph.nodes[0].trigger_details.trigger.event_batching_condition.batch_window #=> Integer
    #   resp.runs[0].graph.nodes[0].job_details.job_runs #=> Array
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].id #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].attempt #=> Integer
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].previous_run_id #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].trigger_name #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].job_name #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].started_on #=> Time
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].last_modified_on #=> Time
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].completed_on #=> Time
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].job_run_state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].arguments #=> Hash
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].arguments["GenericString"] #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].error_message #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].predecessor_runs #=> Array
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].job_name #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].predecessor_runs[0].run_id #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].allocated_capacity #=> Integer
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].execution_time #=> Integer
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].timeout #=> Integer
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].max_capacity #=> Float
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].worker_type #=> String, one of "Standard", "G.1X", "G.2X", "G.025X", "G.4X", "G.8X", "Z.2X"
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].number_of_workers #=> Integer
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].security_configuration #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].log_group_name #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].notification_property.notify_delay_after #=> Integer
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].glue_version #=> String
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].dpu_seconds #=> Float
    #   resp.runs[0].graph.nodes[0].job_details.job_runs[0].execution_class #=> String, one of "FLEX", "STANDARD"
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls #=> Array
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls[0].state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls[0].started_on #=> Time
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls[0].completed_on #=> Time
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls[0].error_message #=> String
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls[0].log_group #=> String
    #   resp.runs[0].graph.nodes[0].crawler_details.crawls[0].log_stream #=> String
    #   resp.runs[0].graph.edges #=> Array
    #   resp.runs[0].graph.edges[0].source_id #=> String
    #   resp.runs[0].graph.edges[0].destination_id #=> String
    #   resp.runs[0].starting_event_batch_condition.batch_size #=> Integer
    #   resp.runs[0].starting_event_batch_condition.batch_window #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRuns AWS API Documentation
    #
    # @overload get_workflow_runs(params = {})
    # @param [Hash] params ({})
    def get_workflow_runs(params = {}, options = {})
      req = build_request(:get_workflow_runs, params)
      req.send_request(options)
    end

    # Imports an existing Amazon Athena Data Catalog to Glue.
    #
    # @option params [String] :catalog_id
    #   The ID of the catalog to import. Currently, this should be the Amazon
    #   Web Services account ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_catalog_to_glue({
    #     catalog_id: "CatalogIdString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ImportCatalogToGlue AWS API Documentation
    #
    # @overload import_catalog_to_glue(params = {})
    # @param [Hash] params ({})
    def import_catalog_to_glue(params = {}, options = {})
      req = build_request(:import_catalog_to_glue, params)
      req.send_request(options)
    end

    # Lists all the blueprint names in an account.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @option params [Hash<String,String>] :tags
    #   Filters the list by an Amazon Web Services resource tag.
    #
    # @return [Types::ListBlueprintsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBlueprintsResponse#blueprints #blueprints} => Array&lt;String&gt;
    #   * {Types::ListBlueprintsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_blueprints({
    #     next_token: "GenericString",
    #     max_results: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.blueprints #=> Array
    #   resp.blueprints[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListBlueprints AWS API Documentation
    #
    # @overload list_blueprints(params = {})
    # @param [Hash] params ({})
    def list_blueprints(params = {}, options = {})
      req = build_request(:list_blueprints, params)
      req.send_request(options)
    end

    # Retrieves the names of all crawler resources in this Amazon Web
    # Services account, or the resources with the specified tag. This
    # operation allows you to see which resources are available in your
    # account, and their names.
    #
    # This operation takes the optional `Tags` field, which you can use as a
    # filter on the response so that tagged resources can be retrieved as a
    # group. If you choose to use tags filtering, only resources with the
    # tag are retrieved.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [Hash<String,String>] :tags
    #   Specifies to return only these tagged resources.
    #
    # @return [Types::ListCrawlersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCrawlersResponse#crawler_names #crawler_names} => Array&lt;String&gt;
    #   * {Types::ListCrawlersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_crawlers({
    #     max_results: 1,
    #     next_token: "Token",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.crawler_names #=> Array
    #   resp.crawler_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListCrawlers AWS API Documentation
    #
    # @overload list_crawlers(params = {})
    # @param [Hash] params ({})
    def list_crawlers(params = {}, options = {})
      req = build_request(:list_crawlers, params)
      req.send_request(options)
    end

    # Returns all the crawls of a specified crawler. Returns only the crawls
    # that have occurred since the launch date of the crawler history
    # feature, and only retains up to 12 months of crawls. Older crawls will
    # not be returned.
    #
    # You may use this API to:
    #
    # * Retrive all the crawls of a specified crawler.
    #
    # * Retrieve all the crawls of a specified crawler within a limited
    #   count.
    #
    # * Retrieve all the crawls of a specified crawler in a specific time
    #   range.
    #
    # * Retrieve all the crawls of a specified crawler with a particular
    #   state, crawl ID, or DPU hour value.
    #
    # @option params [required, String] :crawler_name
    #   The name of the crawler whose runs you want to retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. The default is 20, and
    #   maximum is 100.
    #
    # @option params [Array<Types::CrawlsFilter>] :filters
    #   Filters the crawls by the criteria you specify in a list of
    #   `CrawlsFilter` objects.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @return [Types::ListCrawlsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCrawlsResponse#crawls #crawls} => Array&lt;Types::CrawlerHistory&gt;
    #   * {Types::ListCrawlsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_crawls({
    #     crawler_name: "NameString", # required
    #     max_results: 1,
    #     filters: [
    #       {
    #         field_name: "CRAWL_ID", # accepts CRAWL_ID, STATE, START_TIME, END_TIME, DPU_HOUR
    #         filter_operator: "GT", # accepts GT, GE, LT, LE, EQ, NE
    #         field_value: "GenericString",
    #       },
    #     ],
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.crawls #=> Array
    #   resp.crawls[0].crawl_id #=> String
    #   resp.crawls[0].state #=> String, one of "RUNNING", "COMPLETED", "FAILED", "STOPPED"
    #   resp.crawls[0].start_time #=> Time
    #   resp.crawls[0].end_time #=> Time
    #   resp.crawls[0].summary #=> String
    #   resp.crawls[0].error_message #=> String
    #   resp.crawls[0].log_group #=> String
    #   resp.crawls[0].log_stream #=> String
    #   resp.crawls[0].message_prefix #=> String
    #   resp.crawls[0].dpu_hour #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListCrawls AWS API Documentation
    #
    # @overload list_crawls(params = {})
    # @param [Hash] params ({})
    def list_crawls(params = {}, options = {})
      req = build_request(:list_crawls, params)
      req.send_request(options)
    end

    # Lists all the custom patterns that have been created.
    #
    # @option params [String] :next_token
    #   A paginated token to offset the results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pair tags.
    #
    # @return [Types::ListCustomEntityTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomEntityTypesResponse#custom_entity_types #custom_entity_types} => Array&lt;Types::CustomEntityType&gt;
    #   * {Types::ListCustomEntityTypesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_entity_types({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_entity_types #=> Array
    #   resp.custom_entity_types[0].name #=> String
    #   resp.custom_entity_types[0].regex_string #=> String
    #   resp.custom_entity_types[0].context_words #=> Array
    #   resp.custom_entity_types[0].context_words[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListCustomEntityTypes AWS API Documentation
    #
    # @overload list_custom_entity_types(params = {})
    # @param [Hash] params ({})
    def list_custom_entity_types(params = {}, options = {})
      req = build_request(:list_custom_entity_types, params)
      req.send_request(options)
    end

    # Returns all data quality execution results for your account.
    #
    # @option params [Types::DataQualityResultFilterCriteria] :filter
    #   The filter criteria.
    #
    # @option params [String] :next_token
    #   A paginated token to offset the results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::ListDataQualityResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataQualityResultsResponse#results #results} => Array&lt;Types::DataQualityResultDescription&gt;
    #   * {Types::ListDataQualityResultsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_quality_results({
    #     filter: {
    #       data_source: {
    #         glue_table: { # required
    #           database_name: "NameString", # required
    #           table_name: "NameString", # required
    #           catalog_id: "NameString",
    #           connection_name: "NameString",
    #           additional_options: {
    #             "NameString" => "DescriptionString",
    #           },
    #         },
    #       },
    #       job_name: "NameString",
    #       job_run_id: "HashString",
    #       started_after: Time.now,
    #       started_before: Time.now,
    #     },
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].result_id #=> String
    #   resp.results[0].data_source.glue_table.database_name #=> String
    #   resp.results[0].data_source.glue_table.table_name #=> String
    #   resp.results[0].data_source.glue_table.catalog_id #=> String
    #   resp.results[0].data_source.glue_table.connection_name #=> String
    #   resp.results[0].data_source.glue_table.additional_options #=> Hash
    #   resp.results[0].data_source.glue_table.additional_options["NameString"] #=> String
    #   resp.results[0].job_name #=> String
    #   resp.results[0].job_run_id #=> String
    #   resp.results[0].started_on #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityResults AWS API Documentation
    #
    # @overload list_data_quality_results(params = {})
    # @param [Hash] params ({})
    def list_data_quality_results(params = {}, options = {})
      req = build_request(:list_data_quality_results, params)
      req.send_request(options)
    end

    # Lists the recommendation runs meeting the filter criteria.
    #
    # @option params [Types::DataQualityRuleRecommendationRunFilter] :filter
    #   The filter criteria.
    #
    # @option params [String] :next_token
    #   A paginated token to offset the results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::ListDataQualityRuleRecommendationRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataQualityRuleRecommendationRunsResponse#runs #runs} => Array&lt;Types::DataQualityRuleRecommendationRunDescription&gt;
    #   * {Types::ListDataQualityRuleRecommendationRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_quality_rule_recommendation_runs({
    #     filter: {
    #       data_source: { # required
    #         glue_table: { # required
    #           database_name: "NameString", # required
    #           table_name: "NameString", # required
    #           catalog_id: "NameString",
    #           connection_name: "NameString",
    #           additional_options: {
    #             "NameString" => "DescriptionString",
    #           },
    #         },
    #       },
    #       started_before: Time.now,
    #       started_after: Time.now,
    #     },
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.runs #=> Array
    #   resp.runs[0].run_id #=> String
    #   resp.runs[0].status #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.runs[0].started_on #=> Time
    #   resp.runs[0].data_source.glue_table.database_name #=> String
    #   resp.runs[0].data_source.glue_table.table_name #=> String
    #   resp.runs[0].data_source.glue_table.catalog_id #=> String
    #   resp.runs[0].data_source.glue_table.connection_name #=> String
    #   resp.runs[0].data_source.glue_table.additional_options #=> Hash
    #   resp.runs[0].data_source.glue_table.additional_options["NameString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityRuleRecommendationRuns AWS API Documentation
    #
    # @overload list_data_quality_rule_recommendation_runs(params = {})
    # @param [Hash] params ({})
    def list_data_quality_rule_recommendation_runs(params = {}, options = {})
      req = build_request(:list_data_quality_rule_recommendation_runs, params)
      req.send_request(options)
    end

    # Lists all the runs meeting the filter criteria, where a ruleset is
    # evaluated against a data source.
    #
    # @option params [Types::DataQualityRulesetEvaluationRunFilter] :filter
    #   The filter criteria.
    #
    # @option params [String] :next_token
    #   A paginated token to offset the results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::ListDataQualityRulesetEvaluationRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataQualityRulesetEvaluationRunsResponse#runs #runs} => Array&lt;Types::DataQualityRulesetEvaluationRunDescription&gt;
    #   * {Types::ListDataQualityRulesetEvaluationRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_quality_ruleset_evaluation_runs({
    #     filter: {
    #       data_source: { # required
    #         glue_table: { # required
    #           database_name: "NameString", # required
    #           table_name: "NameString", # required
    #           catalog_id: "NameString",
    #           connection_name: "NameString",
    #           additional_options: {
    #             "NameString" => "DescriptionString",
    #           },
    #         },
    #       },
    #       started_before: Time.now,
    #       started_after: Time.now,
    #     },
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.runs #=> Array
    #   resp.runs[0].run_id #=> String
    #   resp.runs[0].status #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"
    #   resp.runs[0].started_on #=> Time
    #   resp.runs[0].data_source.glue_table.database_name #=> String
    #   resp.runs[0].data_source.glue_table.table_name #=> String
    #   resp.runs[0].data_source.glue_table.catalog_id #=> String
    #   resp.runs[0].data_source.glue_table.connection_name #=> String
    #   resp.runs[0].data_source.glue_table.additional_options #=> Hash
    #   resp.runs[0].data_source.glue_table.additional_options["NameString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityRulesetEvaluationRuns AWS API Documentation
    #
    # @overload list_data_quality_ruleset_evaluation_runs(params = {})
    # @param [Hash] params ({})
    def list_data_quality_ruleset_evaluation_runs(params = {}, options = {})
      req = build_request(:list_data_quality_ruleset_evaluation_runs, params)
      req.send_request(options)
    end

    # Returns a paginated list of rulesets for the specified list of Glue
    # tables.
    #
    # @option params [String] :next_token
    #   A paginated token to offset the results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [Types::DataQualityRulesetFilterCriteria] :filter
    #   The filter criteria.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pair tags.
    #
    # @return [Types::ListDataQualityRulesetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataQualityRulesetsResponse#rulesets #rulesets} => Array&lt;Types::DataQualityRulesetListDetails&gt;
    #   * {Types::ListDataQualityRulesetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_quality_rulesets({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filter: {
    #       name: "NameString",
    #       description: "DescriptionString",
    #       created_before: Time.now,
    #       created_after: Time.now,
    #       last_modified_before: Time.now,
    #       last_modified_after: Time.now,
    #       target_table: {
    #         table_name: "NameString", # required
    #         database_name: "NameString", # required
    #         catalog_id: "NameString",
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.rulesets #=> Array
    #   resp.rulesets[0].name #=> String
    #   resp.rulesets[0].description #=> String
    #   resp.rulesets[0].created_on #=> Time
    #   resp.rulesets[0].last_modified_on #=> Time
    #   resp.rulesets[0].target_table.table_name #=> String
    #   resp.rulesets[0].target_table.database_name #=> String
    #   resp.rulesets[0].target_table.catalog_id #=> String
    #   resp.rulesets[0].recommendation_run_id #=> String
    #   resp.rulesets[0].rule_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDataQualityRulesets AWS API Documentation
    #
    # @overload list_data_quality_rulesets(params = {})
    # @param [Hash] params ({})
    def list_data_quality_rulesets(params = {}, options = {})
      req = build_request(:list_data_quality_rulesets, params)
      req.send_request(options)
    end

    # Retrieves the names of all `DevEndpoint` resources in this Amazon Web
    # Services account, or the resources with the specified tag. This
    # operation allows you to see which resources are available in your
    # account, and their names.
    #
    # This operation takes the optional `Tags` field, which you can use as a
    # filter on the response so that tagged resources can be retrieved as a
    # group. If you choose to use tags filtering, only resources with the
    # tag are retrieved.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @option params [Hash<String,String>] :tags
    #   Specifies to return only these tagged resources.
    #
    # @return [Types::ListDevEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevEndpointsResponse#dev_endpoint_names #dev_endpoint_names} => Array&lt;String&gt;
    #   * {Types::ListDevEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dev_endpoints({
    #     next_token: "GenericString",
    #     max_results: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dev_endpoint_names #=> Array
    #   resp.dev_endpoint_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDevEndpoints AWS API Documentation
    #
    # @overload list_dev_endpoints(params = {})
    # @param [Hash] params ({})
    def list_dev_endpoints(params = {}, options = {})
      req = build_request(:list_dev_endpoints, params)
      req.send_request(options)
    end

    # Retrieves the names of all job resources in this Amazon Web Services
    # account, or the resources with the specified tag. This operation
    # allows you to see which resources are available in your account, and
    # their names.
    #
    # This operation takes the optional `Tags` field, which you can use as a
    # filter on the response so that tagged resources can be retrieved as a
    # group. If you choose to use tags filtering, only resources with the
    # tag are retrieved.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @option params [Hash<String,String>] :tags
    #   Specifies to return only these tagged resources.
    #
    # @return [Types::ListJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResponse#job_names #job_names} => Array&lt;String&gt;
    #   * {Types::ListJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     next_token: "GenericString",
    #     max_results: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_names #=> Array
    #   resp.job_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Retrieves a sortable, filterable list of existing Glue machine
    # learning transforms in this Amazon Web Services account, or the
    # resources with the specified tag. This operation takes the optional
    # `Tags` field, which you can use as a filter of the responses so that
    # tagged resources can be retrieved as a group. If you choose to use tag
    # filtering, only resources with the tags are retrieved.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @option params [Types::TransformFilterCriteria] :filter
    #   A `TransformFilterCriteria` used to filter the machine learning
    #   transforms.
    #
    # @option params [Types::TransformSortCriteria] :sort
    #   A `TransformSortCriteria` used to sort the machine learning
    #   transforms.
    #
    # @option params [Hash<String,String>] :tags
    #   Specifies to return only these tagged resources.
    #
    # @return [Types::ListMLTransformsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMLTransformsResponse#transform_ids #transform_ids} => Array&lt;String&gt;
    #   * {Types::ListMLTransformsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ml_transforms({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filter: {
    #       name: "NameString",
    #       transform_type: "FIND_MATCHES", # accepts FIND_MATCHES
    #       status: "NOT_READY", # accepts NOT_READY, READY, DELETING
    #       glue_version: "GlueVersionString",
    #       created_before: Time.now,
    #       created_after: Time.now,
    #       last_modified_before: Time.now,
    #       last_modified_after: Time.now,
    #       schema: [
    #         {
    #           name: "ColumnNameString",
    #           data_type: "ColumnTypeString",
    #         },
    #       ],
    #     },
    #     sort: {
    #       column: "NAME", # required, accepts NAME, TRANSFORM_TYPE, STATUS, CREATED, LAST_MODIFIED
    #       sort_direction: "DESCENDING", # required, accepts DESCENDING, ASCENDING
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_ids #=> Array
    #   resp.transform_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListMLTransforms AWS API Documentation
    #
    # @overload list_ml_transforms(params = {})
    # @param [Hash] params ({})
    def list_ml_transforms(params = {}, options = {})
      req = build_request(:list_ml_transforms, params)
      req.send_request(options)
    end

    # Returns a list of registries that you have created, with minimal
    # registry information. Registries in the `Deleting` status will not be
    # included in the results. Empty results will be returned if there are
    # no registries available.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results required per page. If the value is not
    #   supplied, this will be defaulted to 25 per page.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @return [Types::ListRegistriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRegistriesResponse#registries #registries} => Array&lt;Types::RegistryListItem&gt;
    #   * {Types::ListRegistriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_registries({
    #     max_results: 1,
    #     next_token: "SchemaRegistryTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.registries #=> Array
    #   resp.registries[0].registry_name #=> String
    #   resp.registries[0].registry_arn #=> String
    #   resp.registries[0].description #=> String
    #   resp.registries[0].status #=> String, one of "AVAILABLE", "DELETING"
    #   resp.registries[0].created_time #=> String
    #   resp.registries[0].updated_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListRegistries AWS API Documentation
    #
    # @overload list_registries(params = {})
    # @param [Hash] params ({})
    def list_registries(params = {}, options = {})
      req = build_request(:list_registries, params)
      req.send_request(options)
    end

    # Returns a list of schema versions that you have created, with minimal
    # information. Schema versions in Deleted status will not be included in
    # the results. Empty results will be returned if there are no schema
    # versions available.
    #
    # @option params [required, Types::SchemaId] :schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     Either `SchemaArn` or `SchemaName` and `RegistryName` has to be
    #     provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. Either `SchemaArn` or
    #     `SchemaName` and `RegistryName` has to be provided.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results required per page. If the value is not
    #   supplied, this will be defaulted to 25 per page.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @return [Types::ListSchemaVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchemaVersionsResponse#schemas #schemas} => Array&lt;Types::SchemaVersionListItem&gt;
    #   * {Types::ListSchemaVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schema_versions({
    #     schema_id: { # required
    #       schema_arn: "GlueResourceArn",
    #       schema_name: "SchemaRegistryNameString",
    #       registry_name: "SchemaRegistryNameString",
    #     },
    #     max_results: 1,
    #     next_token: "SchemaRegistryTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.schemas #=> Array
    #   resp.schemas[0].schema_arn #=> String
    #   resp.schemas[0].schema_version_id #=> String
    #   resp.schemas[0].version_number #=> Integer
    #   resp.schemas[0].status #=> String, one of "AVAILABLE", "PENDING", "FAILURE", "DELETING"
    #   resp.schemas[0].created_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListSchemaVersions AWS API Documentation
    #
    # @overload list_schema_versions(params = {})
    # @param [Hash] params ({})
    def list_schema_versions(params = {}, options = {})
      req = build_request(:list_schema_versions, params)
      req.send_request(options)
    end

    # Returns a list of schemas with minimal details. Schemas in Deleting
    # status will not be included in the results. Empty results will be
    # returned if there are no schemas available.
    #
    # When the `RegistryId` is not provided, all the schemas across
    # registries will be part of the API response.
    #
    # @option params [Types::RegistryId] :registry_id
    #   A wrapper structure that may contain the registry name and Amazon
    #   Resource Name (ARN).
    #
    # @option params [Integer] :max_results
    #   Maximum number of results required per page. If the value is not
    #   supplied, this will be defaulted to 25 per page.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @return [Types::ListSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchemasResponse#schemas #schemas} => Array&lt;Types::SchemaListItem&gt;
    #   * {Types::ListSchemasResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schemas({
    #     registry_id: {
    #       registry_name: "SchemaRegistryNameString",
    #       registry_arn: "GlueResourceArn",
    #     },
    #     max_results: 1,
    #     next_token: "SchemaRegistryTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.schemas #=> Array
    #   resp.schemas[0].registry_name #=> String
    #   resp.schemas[0].schema_name #=> String
    #   resp.schemas[0].schema_arn #=> String
    #   resp.schemas[0].description #=> String
    #   resp.schemas[0].schema_status #=> String, one of "AVAILABLE", "PENDING", "DELETING"
    #   resp.schemas[0].created_time #=> String
    #   resp.schemas[0].updated_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListSchemas AWS API Documentation
    #
    # @overload list_schemas(params = {})
    # @param [Hash] params ({})
    def list_schemas(params = {}, options = {})
      req = build_request(:list_schemas, params)
      req.send_request(options)
    end

    # Retrieve a list of sessions.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no more
    #   result.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags belonging to the session.
    #
    # @option params [String] :request_origin
    #   The origin of the request.
    #
    # @return [Types::ListSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSessionsResponse#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListSessionsResponse#sessions #sessions} => Array&lt;Types::Session&gt;
    #   * {Types::ListSessionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sessions({
    #     next_token: "OrchestrationToken",
    #     max_results: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     request_origin: "OrchestrationNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.sessions #=> Array
    #   resp.sessions[0].id #=> String
    #   resp.sessions[0].created_on #=> Time
    #   resp.sessions[0].status #=> String, one of "PROVISIONING", "READY", "FAILED", "TIMEOUT", "STOPPING", "STOPPED"
    #   resp.sessions[0].error_message #=> String
    #   resp.sessions[0].description #=> String
    #   resp.sessions[0].role #=> String
    #   resp.sessions[0].command.name #=> String
    #   resp.sessions[0].command.python_version #=> String
    #   resp.sessions[0].default_arguments #=> Hash
    #   resp.sessions[0].default_arguments["OrchestrationNameString"] #=> String
    #   resp.sessions[0].connections.connections #=> Array
    #   resp.sessions[0].connections.connections[0] #=> String
    #   resp.sessions[0].progress #=> Float
    #   resp.sessions[0].max_capacity #=> Float
    #   resp.sessions[0].security_configuration #=> String
    #   resp.sessions[0].glue_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListSessions AWS API Documentation
    #
    # @overload list_sessions(params = {})
    # @param [Hash] params ({})
    def list_sessions(params = {}, options = {})
      req = build_request(:list_sessions, params)
      req.send_request(options)
    end

    # Lists statements for the session.
    #
    # @option params [required, String] :session_id
    #   The Session ID of the statements.
    #
    # @option params [String] :request_origin
    #   The origin of the request to list statements.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @return [Types::ListStatementsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStatementsResponse#statements #statements} => Array&lt;Types::Statement&gt;
    #   * {Types::ListStatementsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_statements({
    #     session_id: "NameString", # required
    #     request_origin: "OrchestrationNameString",
    #     next_token: "OrchestrationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.statements #=> Array
    #   resp.statements[0].id #=> Integer
    #   resp.statements[0].code #=> String
    #   resp.statements[0].state #=> String, one of "WAITING", "RUNNING", "AVAILABLE", "CANCELLING", "CANCELLED", "ERROR"
    #   resp.statements[0].output.data.text_plain #=> String
    #   resp.statements[0].output.execution_count #=> Integer
    #   resp.statements[0].output.status #=> String, one of "WAITING", "RUNNING", "AVAILABLE", "CANCELLING", "CANCELLED", "ERROR"
    #   resp.statements[0].output.error_name #=> String
    #   resp.statements[0].output.error_value #=> String
    #   resp.statements[0].output.traceback #=> Array
    #   resp.statements[0].output.traceback[0] #=> String
    #   resp.statements[0].progress #=> Float
    #   resp.statements[0].started_on #=> Integer
    #   resp.statements[0].completed_on #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListStatements AWS API Documentation
    #
    # @overload list_statements(params = {})
    # @param [Hash] params ({})
    def list_statements(params = {}, options = {})
      req = build_request(:list_statements, params)
      req.send_request(options)
    end

    # Retrieves the names of all trigger resources in this Amazon Web
    # Services account, or the resources with the specified tag. This
    # operation allows you to see which resources are available in your
    # account, and their names.
    #
    # This operation takes the optional `Tags` field, which you can use as a
    # filter on the response so that tagged resources can be retrieved as a
    # group. If you choose to use tags filtering, only resources with the
    # tag are retrieved.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [String] :dependent_job_name
    #   The name of the job for which to retrieve triggers. The trigger that
    #   can start this job is returned. If there is no such trigger, all
    #   triggers are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @option params [Hash<String,String>] :tags
    #   Specifies to return only these tagged resources.
    #
    # @return [Types::ListTriggersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTriggersResponse#trigger_names #trigger_names} => Array&lt;String&gt;
    #   * {Types::ListTriggersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_triggers({
    #     next_token: "GenericString",
    #     dependent_job_name: "NameString",
    #     max_results: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.trigger_names #=> Array
    #   resp.trigger_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListTriggers AWS API Documentation
    #
    # @overload list_triggers(params = {})
    # @param [Hash] params ({})
    def list_triggers(params = {}, options = {})
      req = build_request(:list_triggers, params)
      req.send_request(options)
    end

    # Lists names of workflows created in the account.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation request.
    #
    # @option params [Integer] :max_results
    #   The maximum size of a list to return.
    #
    # @return [Types::ListWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowsResponse#workflows #workflows} => Array&lt;String&gt;
    #   * {Types::ListWorkflowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflows({
    #     next_token: "GenericString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workflows #=> Array
    #   resp.workflows[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListWorkflows AWS API Documentation
    #
    # @overload list_workflows(params = {})
    # @param [Hash] params ({})
    def list_workflows(params = {}, options = {})
      req = build_request(:list_workflows, params)
      req.send_request(options)
    end

    # Sets the security configuration for a specified catalog. After the
    # configuration has been set, the specified encryption is applied to
    # every catalog write thereafter.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog to set the security configuration for. If
    #   none is provided, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, Types::DataCatalogEncryptionSettings] :data_catalog_encryption_settings
    #   The security configuration to set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_data_catalog_encryption_settings({
    #     catalog_id: "CatalogIdString",
    #     data_catalog_encryption_settings: { # required
    #       encryption_at_rest: {
    #         catalog_encryption_mode: "DISABLED", # required, accepts DISABLED, SSE-KMS
    #         sse_aws_kms_key_id: "NameString",
    #       },
    #       connection_password_encryption: {
    #         return_connection_password_encrypted: false, # required
    #         aws_kms_key_id: "NameString",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutDataCatalogEncryptionSettings AWS API Documentation
    #
    # @overload put_data_catalog_encryption_settings(params = {})
    # @param [Hash] params ({})
    def put_data_catalog_encryption_settings(params = {}, options = {})
      req = build_request(:put_data_catalog_encryption_settings, params)
      req.send_request(options)
    end

    # Sets the Data Catalog resource policy for access control.
    #
    # @option params [required, String] :policy_in_json
    #   Contains the policy document to set, in JSON format.
    #
    # @option params [String] :resource_arn
    #   Do not use. For internal use only.
    #
    # @option params [String] :policy_hash_condition
    #   The hash value returned when the previous policy was set using
    #   `PutResourcePolicy`. Its purpose is to prevent concurrent
    #   modifications of a policy. Do not use this parameter if no previous
    #   policy has been set.
    #
    # @option params [String] :policy_exists_condition
    #   A value of `MUST_EXIST` is used to update a policy. A value of
    #   `NOT_EXIST` is used to create a new policy. If a value of `NONE` or a
    #   null value is used, the call does not depend on the existence of a
    #   policy.
    #
    # @option params [String] :enable_hybrid
    #   If `'TRUE'`, indicates that you are using both methods to grant
    #   cross-account access to Data Catalog resources:
    #
    #   * By directly updating the resource policy with `PutResourePolicy`
    #
    #   * By using the **Grant permissions** command on the Amazon Web
    #     Services Management Console.
    #
    #   Must be set to `'TRUE'` if you have already used the Management
    #   Console to grant cross-account access, otherwise the call fails.
    #   Default is 'FALSE'.
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#policy_hash #policy_hash} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     policy_in_json: "PolicyJsonString", # required
    #     resource_arn: "GlueResourceArn",
    #     policy_hash_condition: "HashString",
    #     policy_exists_condition: "MUST_EXIST", # accepts MUST_EXIST, NOT_EXIST, NONE
    #     enable_hybrid: "TRUE", # accepts TRUE, FALSE
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_hash #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Puts the metadata key value pair for a specified schema version ID. A
    # maximum of 10 key value pairs will be allowed per schema version. They
    # can be added over one or more calls.
    #
    # @option params [Types::SchemaId] :schema_id
    #   The unique ID for the schema.
    #
    # @option params [Types::SchemaVersionNumber] :schema_version_number
    #   The version number of the schema.
    #
    # @option params [String] :schema_version_id
    #   The unique version ID of the schema version.
    #
    # @option params [required, Types::MetadataKeyValuePair] :metadata_key_value
    #   The metadata key's corresponding value.
    #
    # @return [Types::PutSchemaVersionMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSchemaVersionMetadataResponse#schema_arn #schema_arn} => String
    #   * {Types::PutSchemaVersionMetadataResponse#schema_name #schema_name} => String
    #   * {Types::PutSchemaVersionMetadataResponse#registry_name #registry_name} => String
    #   * {Types::PutSchemaVersionMetadataResponse#latest_version #latest_version} => Boolean
    #   * {Types::PutSchemaVersionMetadataResponse#version_number #version_number} => Integer
    #   * {Types::PutSchemaVersionMetadataResponse#schema_version_id #schema_version_id} => String
    #   * {Types::PutSchemaVersionMetadataResponse#metadata_key #metadata_key} => String
    #   * {Types::PutSchemaVersionMetadataResponse#metadata_value #metadata_value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_schema_version_metadata({
    #     schema_id: {
    #       schema_arn: "GlueResourceArn",
    #       schema_name: "SchemaRegistryNameString",
    #       registry_name: "SchemaRegistryNameString",
    #     },
    #     schema_version_number: {
    #       latest_version: false,
    #       version_number: 1,
    #     },
    #     schema_version_id: "SchemaVersionIdString",
    #     metadata_key_value: { # required
    #       metadata_key: "MetadataKeyString",
    #       metadata_value: "MetadataValueString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_arn #=> String
    #   resp.schema_name #=> String
    #   resp.registry_name #=> String
    #   resp.latest_version #=> Boolean
    #   resp.version_number #=> Integer
    #   resp.schema_version_id #=> String
    #   resp.metadata_key #=> String
    #   resp.metadata_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutSchemaVersionMetadata AWS API Documentation
    #
    # @overload put_schema_version_metadata(params = {})
    # @param [Hash] params ({})
    def put_schema_version_metadata(params = {}, options = {})
      req = build_request(:put_schema_version_metadata, params)
      req.send_request(options)
    end

    # Puts the specified workflow run properties for the given workflow run.
    # If a property already exists for the specified run, then it overrides
    # the value otherwise adds the property to existing properties.
    #
    # @option params [required, String] :name
    #   Name of the workflow which was run.
    #
    # @option params [required, String] :run_id
    #   The ID of the workflow run for which the run properties should be
    #   updated.
    #
    # @option params [required, Hash<String,String>] :run_properties
    #   The properties to put for the specified run.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_workflow_run_properties({
    #     name: "NameString", # required
    #     run_id: "IdString", # required
    #     run_properties: { # required
    #       "IdString" => "GenericString",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutWorkflowRunProperties AWS API Documentation
    #
    # @overload put_workflow_run_properties(params = {})
    # @param [Hash] params ({})
    def put_workflow_run_properties(params = {}, options = {})
      req = build_request(:put_workflow_run_properties, params)
      req.send_request(options)
    end

    # Queries for the schema version metadata information.
    #
    # @option params [Types::SchemaId] :schema_id
    #   A wrapper structure that may contain the schema name and Amazon
    #   Resource Name (ARN).
    #
    # @option params [Types::SchemaVersionNumber] :schema_version_number
    #   The version number of the schema.
    #
    # @option params [String] :schema_version_id
    #   The unique version ID of the schema version.
    #
    # @option params [Array<Types::MetadataKeyValuePair>] :metadata_list
    #   Search key-value pairs for metadata, if they are not provided all the
    #   metadata information will be fetched.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results required per page. If the value is not
    #   supplied, this will be defaulted to 25 per page.
    #
    # @option params [String] :next_token
    #   A continuation token, if this is a continuation call.
    #
    # @return [Types::QuerySchemaVersionMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::QuerySchemaVersionMetadataResponse#metadata_info_map #metadata_info_map} => Hash&lt;String,Types::MetadataInfo&gt;
    #   * {Types::QuerySchemaVersionMetadataResponse#schema_version_id #schema_version_id} => String
    #   * {Types::QuerySchemaVersionMetadataResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query_schema_version_metadata({
    #     schema_id: {
    #       schema_arn: "GlueResourceArn",
    #       schema_name: "SchemaRegistryNameString",
    #       registry_name: "SchemaRegistryNameString",
    #     },
    #     schema_version_number: {
    #       latest_version: false,
    #       version_number: 1,
    #     },
    #     schema_version_id: "SchemaVersionIdString",
    #     metadata_list: [
    #       {
    #         metadata_key: "MetadataKeyString",
    #         metadata_value: "MetadataValueString",
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "SchemaRegistryTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.metadata_info_map #=> Hash
    #   resp.metadata_info_map["MetadataKeyString"].metadata_value #=> String
    #   resp.metadata_info_map["MetadataKeyString"].created_time #=> String
    #   resp.metadata_info_map["MetadataKeyString"].other_metadata_value_list #=> Array
    #   resp.metadata_info_map["MetadataKeyString"].other_metadata_value_list[0].metadata_value #=> String
    #   resp.metadata_info_map["MetadataKeyString"].other_metadata_value_list[0].created_time #=> String
    #   resp.schema_version_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/QuerySchemaVersionMetadata AWS API Documentation
    #
    # @overload query_schema_version_metadata(params = {})
    # @param [Hash] params ({})
    def query_schema_version_metadata(params = {}, options = {})
      req = build_request(:query_schema_version_metadata, params)
      req.send_request(options)
    end

    # Adds a new version to the existing schema. Returns an error if new
    # version of schema does not meet the compatibility requirements of the
    # schema set. This API will not create a new schema set and will return
    # a 404 error if the schema set is not already present in the Schema
    # Registry.
    #
    # If this is the first schema definition to be registered in the Schema
    # Registry, this API will store the schema version and return
    # immediately. Otherwise, this call has the potential to run longer than
    # other operations due to compatibility modes. You can call the
    # `GetSchemaVersion` API with the `SchemaVersionId` to check
    # compatibility modes.
    #
    # If the same schema definition is already stored in Schema Registry as
    # a version, the schema ID of the existing schema is returned to the
    # caller.
    #
    # @option params [required, Types::SchemaId] :schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     Either `SchemaArn` or `SchemaName` and `RegistryName` has to be
    #     provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. Either `SchemaArn` or
    #     `SchemaName` and `RegistryName` has to be provided.
    #
    # @option params [required, String] :schema_definition
    #   The schema definition using the `DataFormat` setting for the
    #   `SchemaName`.
    #
    # @return [Types::RegisterSchemaVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterSchemaVersionResponse#schema_version_id #schema_version_id} => String
    #   * {Types::RegisterSchemaVersionResponse#version_number #version_number} => Integer
    #   * {Types::RegisterSchemaVersionResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_schema_version({
    #     schema_id: { # required
    #       schema_arn: "GlueResourceArn",
    #       schema_name: "SchemaRegistryNameString",
    #       registry_name: "SchemaRegistryNameString",
    #     },
    #     schema_definition: "SchemaDefinitionString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_version_id #=> String
    #   resp.version_number #=> Integer
    #   resp.status #=> String, one of "AVAILABLE", "PENDING", "FAILURE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RegisterSchemaVersion AWS API Documentation
    #
    # @overload register_schema_version(params = {})
    # @param [Hash] params ({})
    def register_schema_version(params = {}, options = {})
      req = build_request(:register_schema_version, params)
      req.send_request(options)
    end

    # Removes a key value pair from the schema version metadata for the
    # specified schema version ID.
    #
    # @option params [Types::SchemaId] :schema_id
    #   A wrapper structure that may contain the schema name and Amazon
    #   Resource Name (ARN).
    #
    # @option params [Types::SchemaVersionNumber] :schema_version_number
    #   The version number of the schema.
    #
    # @option params [String] :schema_version_id
    #   The unique version ID of the schema version.
    #
    # @option params [required, Types::MetadataKeyValuePair] :metadata_key_value
    #   The value of the metadata key.
    #
    # @return [Types::RemoveSchemaVersionMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveSchemaVersionMetadataResponse#schema_arn #schema_arn} => String
    #   * {Types::RemoveSchemaVersionMetadataResponse#schema_name #schema_name} => String
    #   * {Types::RemoveSchemaVersionMetadataResponse#registry_name #registry_name} => String
    #   * {Types::RemoveSchemaVersionMetadataResponse#latest_version #latest_version} => Boolean
    #   * {Types::RemoveSchemaVersionMetadataResponse#version_number #version_number} => Integer
    #   * {Types::RemoveSchemaVersionMetadataResponse#schema_version_id #schema_version_id} => String
    #   * {Types::RemoveSchemaVersionMetadataResponse#metadata_key #metadata_key} => String
    #   * {Types::RemoveSchemaVersionMetadataResponse#metadata_value #metadata_value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_schema_version_metadata({
    #     schema_id: {
    #       schema_arn: "GlueResourceArn",
    #       schema_name: "SchemaRegistryNameString",
    #       registry_name: "SchemaRegistryNameString",
    #     },
    #     schema_version_number: {
    #       latest_version: false,
    #       version_number: 1,
    #     },
    #     schema_version_id: "SchemaVersionIdString",
    #     metadata_key_value: { # required
    #       metadata_key: "MetadataKeyString",
    #       metadata_value: "MetadataValueString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_arn #=> String
    #   resp.schema_name #=> String
    #   resp.registry_name #=> String
    #   resp.latest_version #=> Boolean
    #   resp.version_number #=> Integer
    #   resp.schema_version_id #=> String
    #   resp.metadata_key #=> String
    #   resp.metadata_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RemoveSchemaVersionMetadata AWS API Documentation
    #
    # @overload remove_schema_version_metadata(params = {})
    # @param [Hash] params ({})
    def remove_schema_version_metadata(params = {}, options = {})
      req = build_request(:remove_schema_version_metadata, params)
      req.send_request(options)
    end

    # Resets a bookmark entry.
    #
    # For more information about enabling and using job bookmarks, see:
    #
    # * [Tracking processed data using job bookmarks][1]
    #
    # * [Job parameters used by Glue][2]
    #
    # * [Job structure][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-continuations.html
    # [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    # [3]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html#aws-glue-api-jobs-job-Job
    #
    # @option params [required, String] :job_name
    #   The name of the job in question.
    #
    # @option params [String] :run_id
    #   The unique run identifier associated with this job run.
    #
    # @return [Types::ResetJobBookmarkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetJobBookmarkResponse#job_bookmark_entry #job_bookmark_entry} => Types::JobBookmarkEntry
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_job_bookmark({
    #     job_name: "JobName", # required
    #     run_id: "RunId",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_bookmark_entry.job_name #=> String
    #   resp.job_bookmark_entry.version #=> Integer
    #   resp.job_bookmark_entry.run #=> Integer
    #   resp.job_bookmark_entry.attempt #=> Integer
    #   resp.job_bookmark_entry.previous_run_id #=> String
    #   resp.job_bookmark_entry.run_id #=> String
    #   resp.job_bookmark_entry.job_bookmark #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResetJobBookmark AWS API Documentation
    #
    # @overload reset_job_bookmark(params = {})
    # @param [Hash] params ({})
    def reset_job_bookmark(params = {}, options = {})
      req = build_request(:reset_job_bookmark, params)
      req.send_request(options)
    end

    # Restarts selected nodes of a previous partially completed workflow run
    # and resumes the workflow run. The selected nodes and all nodes that
    # are downstream from the selected nodes are run.
    #
    # @option params [required, String] :name
    #   The name of the workflow to resume.
    #
    # @option params [required, String] :run_id
    #   The ID of the workflow run to resume.
    #
    # @option params [required, Array<String>] :node_ids
    #   A list of the node IDs for the nodes you want to restart. The nodes
    #   that are to be restarted must have a run attempt in the original run.
    #
    # @return [Types::ResumeWorkflowRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResumeWorkflowRunResponse#run_id #run_id} => String
    #   * {Types::ResumeWorkflowRunResponse#node_ids #node_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_workflow_run({
    #     name: "NameString", # required
    #     run_id: "IdString", # required
    #     node_ids: ["NameString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.run_id #=> String
    #   resp.node_ids #=> Array
    #   resp.node_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResumeWorkflowRun AWS API Documentation
    #
    # @overload resume_workflow_run(params = {})
    # @param [Hash] params ({})
    def resume_workflow_run(params = {}, options = {})
      req = build_request(:resume_workflow_run, params)
      req.send_request(options)
    end

    # Executes the statement.
    #
    # @option params [required, String] :session_id
    #   The Session Id of the statement to be run.
    #
    # @option params [required, String] :code
    #   The statement code to be run.
    #
    # @option params [String] :request_origin
    #   The origin of the request.
    #
    # @return [Types::RunStatementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RunStatementResponse#id #id} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.run_statement({
    #     session_id: "NameString", # required
    #     code: "OrchestrationStatementCodeString", # required
    #     request_origin: "OrchestrationNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/RunStatement AWS API Documentation
    #
    # @overload run_statement(params = {})
    # @param [Hash] params ({})
    def run_statement(params = {}, options = {})
      req = build_request(:run_statement, params)
      req.send_request(options)
    end

    # Searches a set of tables based on properties in the table metadata as
    # well as on the parent database. You can search against text or filter
    # conditions.
    #
    # You can only get tables that you have access to based on the security
    # policies defined in Lake Formation. You need at least a read-only
    # access to the table for it to be returned. If you do not have access
    # to all the columns in the table, these columns will not be searched
    # against when returning the list of tables back to you. If you have
    # access to the columns but not the data in the columns, those columns
    # and the associated metadata for those columns will be included in the
    # search.
    #
    # @option params [String] :catalog_id
    #   A unique identifier, consisting of ` account_id `.
    #
    # @option params [String] :next_token
    #   A continuation token, included if this is a continuation call.
    #
    # @option params [Array<Types::PropertyPredicate>] :filters
    #   A list of key-value pairs, and a comparator used to filter the search
    #   results. Returns all entities matching the predicate.
    #
    #   The `Comparator` member of the `PropertyPredicate` struct is used only
    #   for time fields, and can be omitted for other field types. Also, when
    #   comparing string values, such as when `Key=Name`, a fuzzy match
    #   algorithm is used. The `Key` field (for example, the value of the
    #   `Name` field) is split on certain punctuation characters, for example,
    #   -, :, #, etc. into tokens. Then each token is exact-match compared
    #   with the `Value` member of `PropertyPredicate`. For example, if
    #   `Key=Name` and `Value=link`, tables named `customer-link` and
    #   `xx-link-yy` are returned, but `xxlinkyy` is not returned.
    #
    # @option params [String] :search_text
    #   A string used for a text search.
    #
    #   Specifying a value in quotes filters based on an exact match to the
    #   value.
    #
    # @option params [Array<Types::SortCriterion>] :sort_criteria
    #   A list of criteria for sorting the results by a field name, in an
    #   ascending or descending order.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tables to return in a single response.
    #
    # @option params [String] :resource_share_type
    #   Allows you to specify that you want to search the tables shared with
    #   your account. The allowable values are `FOREIGN` or `ALL`.
    #
    #   * If set to `FOREIGN`, will search the tables shared with your
    #     account.
    #
    #   * If set to `ALL`, will search the tables shared with your account, as
    #     well as the tables in yor local account.
    #
    # @return [Types::SearchTablesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchTablesResponse#next_token #next_token} => String
    #   * {Types::SearchTablesResponse#table_list #table_list} => Array&lt;Types::Table&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_tables({
    #     catalog_id: "CatalogIdString",
    #     next_token: "Token",
    #     filters: [
    #       {
    #         key: "ValueString",
    #         value: "ValueString",
    #         comparator: "EQUALS", # accepts EQUALS, GREATER_THAN, LESS_THAN, GREATER_THAN_EQUALS, LESS_THAN_EQUALS
    #       },
    #     ],
    #     search_text: "ValueString",
    #     sort_criteria: [
    #       {
    #         field_name: "ValueString",
    #         sort: "ASC", # accepts ASC, DESC
    #       },
    #     ],
    #     max_results: 1,
    #     resource_share_type: "FOREIGN", # accepts FOREIGN, ALL, FEDERATED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.table_list #=> Array
    #   resp.table_list[0].name #=> String
    #   resp.table_list[0].database_name #=> String
    #   resp.table_list[0].description #=> String
    #   resp.table_list[0].owner #=> String
    #   resp.table_list[0].create_time #=> Time
    #   resp.table_list[0].update_time #=> Time
    #   resp.table_list[0].last_access_time #=> Time
    #   resp.table_list[0].last_analyzed_time #=> Time
    #   resp.table_list[0].retention #=> Integer
    #   resp.table_list[0].storage_descriptor.columns #=> Array
    #   resp.table_list[0].storage_descriptor.columns[0].name #=> String
    #   resp.table_list[0].storage_descriptor.columns[0].type #=> String
    #   resp.table_list[0].storage_descriptor.columns[0].comment #=> String
    #   resp.table_list[0].storage_descriptor.columns[0].parameters #=> Hash
    #   resp.table_list[0].storage_descriptor.columns[0].parameters["KeyString"] #=> String
    #   resp.table_list[0].storage_descriptor.location #=> String
    #   resp.table_list[0].storage_descriptor.additional_locations #=> Array
    #   resp.table_list[0].storage_descriptor.additional_locations[0] #=> String
    #   resp.table_list[0].storage_descriptor.input_format #=> String
    #   resp.table_list[0].storage_descriptor.output_format #=> String
    #   resp.table_list[0].storage_descriptor.compressed #=> Boolean
    #   resp.table_list[0].storage_descriptor.number_of_buckets #=> Integer
    #   resp.table_list[0].storage_descriptor.serde_info.name #=> String
    #   resp.table_list[0].storage_descriptor.serde_info.serialization_library #=> String
    #   resp.table_list[0].storage_descriptor.serde_info.parameters #=> Hash
    #   resp.table_list[0].storage_descriptor.serde_info.parameters["KeyString"] #=> String
    #   resp.table_list[0].storage_descriptor.bucket_columns #=> Array
    #   resp.table_list[0].storage_descriptor.bucket_columns[0] #=> String
    #   resp.table_list[0].storage_descriptor.sort_columns #=> Array
    #   resp.table_list[0].storage_descriptor.sort_columns[0].column #=> String
    #   resp.table_list[0].storage_descriptor.sort_columns[0].sort_order #=> Integer
    #   resp.table_list[0].storage_descriptor.parameters #=> Hash
    #   resp.table_list[0].storage_descriptor.parameters["KeyString"] #=> String
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_names #=> Array
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_names[0] #=> String
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_values #=> Array
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_values[0] #=> String
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_value_location_maps #=> Hash
    #   resp.table_list[0].storage_descriptor.skewed_info.skewed_column_value_location_maps["ColumnValuesString"] #=> String
    #   resp.table_list[0].storage_descriptor.stored_as_sub_directories #=> Boolean
    #   resp.table_list[0].storage_descriptor.schema_reference.schema_id.schema_arn #=> String
    #   resp.table_list[0].storage_descriptor.schema_reference.schema_id.schema_name #=> String
    #   resp.table_list[0].storage_descriptor.schema_reference.schema_id.registry_name #=> String
    #   resp.table_list[0].storage_descriptor.schema_reference.schema_version_id #=> String
    #   resp.table_list[0].storage_descriptor.schema_reference.schema_version_number #=> Integer
    #   resp.table_list[0].partition_keys #=> Array
    #   resp.table_list[0].partition_keys[0].name #=> String
    #   resp.table_list[0].partition_keys[0].type #=> String
    #   resp.table_list[0].partition_keys[0].comment #=> String
    #   resp.table_list[0].partition_keys[0].parameters #=> Hash
    #   resp.table_list[0].partition_keys[0].parameters["KeyString"] #=> String
    #   resp.table_list[0].view_original_text #=> String
    #   resp.table_list[0].view_expanded_text #=> String
    #   resp.table_list[0].table_type #=> String
    #   resp.table_list[0].parameters #=> Hash
    #   resp.table_list[0].parameters["KeyString"] #=> String
    #   resp.table_list[0].created_by #=> String
    #   resp.table_list[0].is_registered_with_lake_formation #=> Boolean
    #   resp.table_list[0].target_table.catalog_id #=> String
    #   resp.table_list[0].target_table.database_name #=> String
    #   resp.table_list[0].target_table.name #=> String
    #   resp.table_list[0].target_table.region #=> String
    #   resp.table_list[0].catalog_id #=> String
    #   resp.table_list[0].version_id #=> String
    #   resp.table_list[0].federated_table.identifier #=> String
    #   resp.table_list[0].federated_table.database_identifier #=> String
    #   resp.table_list[0].federated_table.connection_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SearchTables AWS API Documentation
    #
    # @overload search_tables(params = {})
    # @param [Hash] params ({})
    def search_tables(params = {}, options = {})
      req = build_request(:search_tables, params)
      req.send_request(options)
    end

    # Starts a new run of the specified blueprint.
    #
    # @option params [required, String] :blueprint_name
    #   The name of the blueprint.
    #
    # @option params [String] :parameters
    #   Specifies the parameters as a `BlueprintParameters` object.
    #
    # @option params [required, String] :role_arn
    #   Specifies the IAM role used to create the workflow.
    #
    # @return [Types::StartBlueprintRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartBlueprintRunResponse#run_id #run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_blueprint_run({
    #     blueprint_name: "OrchestrationNameString", # required
    #     parameters: "BlueprintParameters",
    #     role_arn: "OrchestrationIAMRoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartBlueprintRun AWS API Documentation
    #
    # @overload start_blueprint_run(params = {})
    # @param [Hash] params ({})
    def start_blueprint_run(params = {}, options = {})
      req = build_request(:start_blueprint_run, params)
      req.send_request(options)
    end

    # Starts a crawl using the specified crawler, regardless of what is
    # scheduled. If the crawler is already running, returns a
    # [CrawlerRunningException][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException
    #
    # @option params [required, String] :name
    #   Name of the crawler to start.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_crawler({
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawler AWS API Documentation
    #
    # @overload start_crawler(params = {})
    # @param [Hash] params ({})
    def start_crawler(params = {}, options = {})
      req = build_request(:start_crawler, params)
      req.send_request(options)
    end

    # Changes the schedule state of the specified crawler to `SCHEDULED`,
    # unless the crawler is already running or the schedule state is already
    # `SCHEDULED`.
    #
    # @option params [required, String] :crawler_name
    #   Name of the crawler to schedule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_crawler_schedule({
    #     crawler_name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerSchedule AWS API Documentation
    #
    # @overload start_crawler_schedule(params = {})
    # @param [Hash] params ({})
    def start_crawler_schedule(params = {}, options = {})
      req = build_request(:start_crawler_schedule, params)
      req.send_request(options)
    end

    # Starts a recommendation run that is used to generate rules when you
    # don't know what rules to write. Glue Data Quality analyzes the data
    # and comes up with recommendations for a potential ruleset. You can
    # then triage the ruleset and modify the generated ruleset to your
    # liking.
    #
    # @option params [required, Types::DataSource] :data_source
    #   The data source (Glue table) associated with this run.
    #
    # @option params [required, String] :role
    #   An IAM role supplied to encrypt the results of the run.
    #
    # @option params [Integer] :number_of_workers
    #   The number of `G.1X` workers to be used in the run. The default is 5.
    #
    # @option params [Integer] :timeout
    #   The timeout for a run in minutes. This is the maximum time that a run
    #   can consume resources before it is terminated and enters `TIMEOUT`
    #   status. The default is 2,880 minutes (48 hours).
    #
    # @option params [String] :created_ruleset_name
    #   A name for the ruleset.
    #
    # @option params [String] :client_token
    #   Used for idempotency and is recommended to be set to a random ID (such
    #   as a UUID) to avoid creating or starting multiple instances of the
    #   same resource.
    #
    # @return [Types::StartDataQualityRuleRecommendationRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDataQualityRuleRecommendationRunResponse#run_id #run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_data_quality_rule_recommendation_run({
    #     data_source: { # required
    #       glue_table: { # required
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         catalog_id: "NameString",
    #         connection_name: "NameString",
    #         additional_options: {
    #           "NameString" => "DescriptionString",
    #         },
    #       },
    #     },
    #     role: "RoleString", # required
    #     number_of_workers: 1,
    #     timeout: 1,
    #     created_ruleset_name: "NameString",
    #     client_token: "HashString",
    #   })
    #
    # @example Response structure
    #
    #   resp.run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartDataQualityRuleRecommendationRun AWS API Documentation
    #
    # @overload start_data_quality_rule_recommendation_run(params = {})
    # @param [Hash] params ({})
    def start_data_quality_rule_recommendation_run(params = {}, options = {})
      req = build_request(:start_data_quality_rule_recommendation_run, params)
      req.send_request(options)
    end

    # Once you have a ruleset definition (either recommended or your own),
    # you call this operation to evaluate the ruleset against a data source
    # (Glue table). The evaluation computes results which you can retrieve
    # with the `GetDataQualityResult` API.
    #
    # @option params [required, Types::DataSource] :data_source
    #   The data source (Glue table) associated with this run.
    #
    # @option params [required, String] :role
    #   An IAM role supplied to encrypt the results of the run.
    #
    # @option params [Integer] :number_of_workers
    #   The number of `G.1X` workers to be used in the run. The default is 5.
    #
    # @option params [Integer] :timeout
    #   The timeout for a run in minutes. This is the maximum time that a run
    #   can consume resources before it is terminated and enters `TIMEOUT`
    #   status. The default is 2,880 minutes (48 hours).
    #
    # @option params [String] :client_token
    #   Used for idempotency and is recommended to be set to a random ID (such
    #   as a UUID) to avoid creating or starting multiple instances of the
    #   same resource.
    #
    # @option params [Types::DataQualityEvaluationRunAdditionalRunOptions] :additional_run_options
    #   Additional run options you can specify for an evaluation run.
    #
    # @option params [required, Array<String>] :ruleset_names
    #   A list of ruleset names.
    #
    # @option params [Hash<String,Types::DataSource>] :additional_data_sources
    #   A map of reference strings to additional data sources you can specify
    #   for an evaluation run.
    #
    # @return [Types::StartDataQualityRulesetEvaluationRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDataQualityRulesetEvaluationRunResponse#run_id #run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_data_quality_ruleset_evaluation_run({
    #     data_source: { # required
    #       glue_table: { # required
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         catalog_id: "NameString",
    #         connection_name: "NameString",
    #         additional_options: {
    #           "NameString" => "DescriptionString",
    #         },
    #       },
    #     },
    #     role: "RoleString", # required
    #     number_of_workers: 1,
    #     timeout: 1,
    #     client_token: "HashString",
    #     additional_run_options: {
    #       cloud_watch_metrics_enabled: false,
    #       results_s3_prefix: "UriString",
    #     },
    #     ruleset_names: ["NameString"], # required
    #     additional_data_sources: {
    #       "NameString" => {
    #         glue_table: { # required
    #           database_name: "NameString", # required
    #           table_name: "NameString", # required
    #           catalog_id: "NameString",
    #           connection_name: "NameString",
    #           additional_options: {
    #             "NameString" => "DescriptionString",
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartDataQualityRulesetEvaluationRun AWS API Documentation
    #
    # @overload start_data_quality_ruleset_evaluation_run(params = {})
    # @param [Hash] params ({})
    def start_data_quality_ruleset_evaluation_run(params = {}, options = {})
      req = build_request(:start_data_quality_ruleset_evaluation_run, params)
      req.send_request(options)
    end

    # Begins an asynchronous task to export all labeled data for a
    # particular transform. This task is the only label-related API call
    # that is not part of the typical active learning workflow. You
    # typically use `StartExportLabelsTaskRun` when you want to work with
    # all of your existing labels at the same time, such as when you want to
    # remove or change labels that were previously submitted as truth. This
    # API operation accepts the `TransformId` whose labels you want to
    # export and an Amazon Simple Storage Service (Amazon S3) path to export
    # the labels to. The operation returns a `TaskRunId`. You can check on
    # the status of your task run by calling the `GetMLTaskRun` API.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @option params [required, String] :output_s3_path
    #   The Amazon S3 path where you export the labels.
    #
    # @return [Types::StartExportLabelsTaskRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartExportLabelsTaskRunResponse#task_run_id #task_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_export_labels_task_run({
    #     transform_id: "HashString", # required
    #     output_s3_path: "UriString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartExportLabelsTaskRun AWS API Documentation
    #
    # @overload start_export_labels_task_run(params = {})
    # @param [Hash] params ({})
    def start_export_labels_task_run(params = {}, options = {})
      req = build_request(:start_export_labels_task_run, params)
      req.send_request(options)
    end

    # Enables you to provide additional labels (examples of truth) to be
    # used to teach the machine learning transform and improve its quality.
    # This API operation is generally used as part of the active learning
    # workflow that starts with the `StartMLLabelingSetGenerationTaskRun`
    # call and that ultimately results in improving the quality of your
    # machine learning transform.
    #
    # After the `StartMLLabelingSetGenerationTaskRun` finishes, Glue machine
    # learning will have generated a series of questions for humans to
    # answer. (Answering these questions is often called 'labeling' in the
    # machine learning workflows). In the case of the `FindMatches`
    # transform, these questions are of the form, “What is the correct way
    # to group these rows together into groups composed entirely of matching
    # records?” After the labeling process is finished, users upload their
    # answers/labels with a call to `StartImportLabelsTaskRun`. After
    # `StartImportLabelsTaskRun` finishes, all future runs of the machine
    # learning transform use the new and improved labels and perform a
    # higher-quality transformation.
    #
    # By default, `StartMLLabelingSetGenerationTaskRun` continually learns
    # from and combines all labels that you upload unless you set `Replace`
    # to true. If you set `Replace` to true, `StartImportLabelsTaskRun`
    # deletes and forgets all previously uploaded labels and learns only
    # from the exact set that you upload. Replacing labels can be helpful if
    # you realize that you previously uploaded incorrect labels, and you
    # believe that they are having a negative effect on your transform
    # quality.
    #
    # You can check on the status of your task run by calling the
    # `GetMLTaskRun` operation.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @option params [required, String] :input_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path from where you
    #   import the labels.
    #
    # @option params [Boolean] :replace_all_labels
    #   Indicates whether to overwrite your existing labels.
    #
    # @return [Types::StartImportLabelsTaskRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImportLabelsTaskRunResponse#task_run_id #task_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import_labels_task_run({
    #     transform_id: "HashString", # required
    #     input_s3_path: "UriString", # required
    #     replace_all_labels: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.task_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartImportLabelsTaskRun AWS API Documentation
    #
    # @overload start_import_labels_task_run(params = {})
    # @param [Hash] params ({})
    def start_import_labels_task_run(params = {}, options = {})
      req = build_request(:start_import_labels_task_run, params)
      req.send_request(options)
    end

    # Starts a job run using a job definition.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition to use.
    #
    # @option params [String] :job_run_id
    #   The ID of a previous `JobRun` to retry.
    #
    # @option params [Hash<String,String>] :arguments
    #   The job arguments associated with this run. For this job run, they
    #   replace the default arguments set in the job definition itself.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that Glue itself consumes.
    #
    #   Job arguments may be logged. Do not pass plaintext secrets as
    #   arguments. Retrieve secrets from a Glue Connection, Secrets Manager or
    #   other secret management mechanism if you intend to keep them within
    #   the Job.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the arguments you can provide to this field when
    #   configuring Spark jobs, see the [Special Parameters Used by Glue][2]
    #   topic in the developer guide.
    #
    #   For information about the arguments you can provide to this field when
    #   configuring Ray jobs, see [Using job parameters in Ray jobs][3] in the
    #   developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   [3]: https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html
    #
    # @option params [Integer] :allocated_capacity
    #   This field is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of Glue data processing units (DPUs) to allocate to this
    #   JobRun. You can allocate a minimum of 2 DPUs; the default is 10. A DPU
    #   is a relative measure of processing power that consists of 4 vCPUs of
    #   compute capacity and 16 GB of memory. For more information, see the
    #   [Glue pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #
    # @option params [Integer] :timeout
    #   The `JobRun` timeout in minutes. This is the maximum time that a job
    #   run can consume resources before it is terminated and enters `TIMEOUT`
    #   status. This value overrides the timeout value set in the parent job.
    #
    #   Streaming jobs do not have a timeout. The default for non-streaming
    #   jobs is 2,880 minutes (48 hours).
    #
    # @option params [Float] :max_capacity
    #   For Glue version 1.0 or earlier jobs, using the standard worker type,
    #   the number of Glue data processing units (DPUs) that can be allocated
    #   when this job runs. A DPU is a relative measure of processing power
    #   that consists of 4 vCPUs of compute capacity and 16 GB of memory. For
    #   more information, see the [ Glue pricing page][1].
    #
    #   For Glue version 2.0+ jobs, you cannot specify a `Maximum capacity`.
    #   Instead, you should specify a `Worker type` and the `Number of
    #   workers`.
    #
    #   Do not set `MaxCapacity` if using `WorkerType` and `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job, an Apache Spark ETL job, or an
    #   Apache Spark streaming ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either 0.0625
    #     or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl") or Apache Spark streaming ETL job
    #     (`JobCommand.Name`="gluestreaming"), you can allocate from 2 to
    #     100 DPUs. The default is 10 DPUs. This job type cannot have a
    #     fractional DPU allocation.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #
    # @option params [String] :security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with this
    #   job run.
    #
    # @option params [Types::NotificationProperty] :notification_property
    #   Specifies configuration properties of a job run notification.
    #
    # @option params [String] :worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of Standard, G.1X, G.2X, or G.025X for Spark jobs.
    #   Accepts the value Z.2X for Ray jobs.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
    #     of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
    #     of memory, 128 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.025X` worker type, each worker maps to 0.25 DPU (2 vCPU,
    #     4 GB of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for low volume streaming jobs. This
    #     worker type is only available for Glue version 3.0 streaming jobs.
    #
    #   * For the `Z.2X` worker type, each worker maps to 2 DPU (8vCPU, 64 GB
    #     of m emory, 128 GB disk), and provides up to 8 Ray workers (one per
    #     vCPU) based on the autoscaler.
    #
    # @option params [Integer] :number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #
    # @option params [String] :execution_class
    #   Indicates whether the job is run with a standard or flexible execution
    #   class. The standard execution-class is ideal for time-sensitive
    #   workloads that require fast job startup and dedicated resources.
    #
    #   The flexible execution class is appropriate for time-insensitive jobs
    #   whose start and completion times may vary.
    #
    #   Only jobs with Glue version 3.0 and above and command type `glueetl`
    #   will be allowed to set `ExecutionClass` to `FLEX`. The flexible
    #   execution class is available for Spark jobs.
    #
    # @return [Types::StartJobRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartJobRunResponse#job_run_id #job_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_job_run({
    #     job_name: "NameString", # required
    #     job_run_id: "IdString",
    #     arguments: {
    #       "GenericString" => "GenericString",
    #     },
    #     allocated_capacity: 1,
    #     timeout: 1,
    #     max_capacity: 1.0,
    #     security_configuration: "NameString",
    #     notification_property: {
    #       notify_delay_after: 1,
    #     },
    #     worker_type: "Standard", # accepts Standard, G.1X, G.2X, G.025X, G.4X, G.8X, Z.2X
    #     number_of_workers: 1,
    #     execution_class: "FLEX", # accepts FLEX, STANDARD
    #   })
    #
    # @example Response structure
    #
    #   resp.job_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartJobRun AWS API Documentation
    #
    # @overload start_job_run(params = {})
    # @param [Hash] params ({})
    def start_job_run(params = {}, options = {})
      req = build_request(:start_job_run, params)
      req.send_request(options)
    end

    # Starts a task to estimate the quality of the transform.
    #
    # When you provide label sets as examples of truth, Glue machine
    # learning uses some of those examples to learn from them. The rest of
    # the labels are used as a test to estimate quality.
    #
    # Returns a unique identifier for the run. You can call `GetMLTaskRun`
    # to get more information about the stats of the `EvaluationTaskRun`.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @return [Types::StartMLEvaluationTaskRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMLEvaluationTaskRunResponse#task_run_id #task_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_ml_evaluation_task_run({
    #     transform_id: "HashString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartMLEvaluationTaskRun AWS API Documentation
    #
    # @overload start_ml_evaluation_task_run(params = {})
    # @param [Hash] params ({})
    def start_ml_evaluation_task_run(params = {}, options = {})
      req = build_request(:start_ml_evaluation_task_run, params)
      req.send_request(options)
    end

    # Starts the active learning workflow for your machine learning
    # transform to improve the transform's quality by generating label sets
    # and adding labels.
    #
    # When the `StartMLLabelingSetGenerationTaskRun` finishes, Glue will
    # have generated a "labeling set" or a set of questions for humans to
    # answer.
    #
    # In the case of the `FindMatches` transform, these questions are of the
    # form, “What is the correct way to group these rows together into
    # groups composed entirely of matching records?”
    #
    # After the labeling process is finished, you can upload your labels
    # with a call to `StartImportLabelsTaskRun`. After
    # `StartImportLabelsTaskRun` finishes, all future runs of the machine
    # learning transform will use the new and improved labels and perform a
    # higher-quality transformation.
    #
    # @option params [required, String] :transform_id
    #   The unique identifier of the machine learning transform.
    #
    # @option params [required, String] :output_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path where you generate
    #   the labeling set.
    #
    # @return [Types::StartMLLabelingSetGenerationTaskRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMLLabelingSetGenerationTaskRunResponse#task_run_id #task_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_ml_labeling_set_generation_task_run({
    #     transform_id: "HashString", # required
    #     output_s3_path: "UriString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartMLLabelingSetGenerationTaskRun AWS API Documentation
    #
    # @overload start_ml_labeling_set_generation_task_run(params = {})
    # @param [Hash] params ({})
    def start_ml_labeling_set_generation_task_run(params = {}, options = {})
      req = build_request(:start_ml_labeling_set_generation_task_run, params)
      req.send_request(options)
    end

    # Starts an existing trigger. See [Triggering Jobs][1] for information
    # about how different types of trigger are started.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/trigger-job.html
    #
    # @option params [required, String] :name
    #   The name of the trigger to start.
    #
    # @return [Types::StartTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTriggerResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_trigger({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartTrigger AWS API Documentation
    #
    # @overload start_trigger(params = {})
    # @param [Hash] params ({})
    def start_trigger(params = {}, options = {})
      req = build_request(:start_trigger, params)
      req.send_request(options)
    end

    # Starts a new run of the specified workflow.
    #
    # @option params [required, String] :name
    #   The name of the workflow to start.
    #
    # @option params [Hash<String,String>] :run_properties
    #   The workflow run properties for the new workflow run.
    #
    # @return [Types::StartWorkflowRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartWorkflowRunResponse#run_id #run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_workflow_run({
    #     name: "NameString", # required
    #     run_properties: {
    #       "IdString" => "GenericString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartWorkflowRun AWS API Documentation
    #
    # @overload start_workflow_run(params = {})
    # @param [Hash] params ({})
    def start_workflow_run(params = {}, options = {})
      req = build_request(:start_workflow_run, params)
      req.send_request(options)
    end

    # If the specified crawler is running, stops the crawl.
    #
    # @option params [required, String] :name
    #   Name of the crawler to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_crawler({
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawler AWS API Documentation
    #
    # @overload stop_crawler(params = {})
    # @param [Hash] params ({})
    def stop_crawler(params = {}, options = {})
      req = build_request(:stop_crawler, params)
      req.send_request(options)
    end

    # Sets the schedule state of the specified crawler to `NOT_SCHEDULED`,
    # but does not stop the crawler if it is already running.
    #
    # @option params [required, String] :crawler_name
    #   Name of the crawler whose schedule state to set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_crawler_schedule({
    #     crawler_name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerSchedule AWS API Documentation
    #
    # @overload stop_crawler_schedule(params = {})
    # @param [Hash] params ({})
    def stop_crawler_schedule(params = {}, options = {})
      req = build_request(:stop_crawler_schedule, params)
      req.send_request(options)
    end

    # Stops the session.
    #
    # @option params [required, String] :id
    #   The ID of the session to be stopped.
    #
    # @option params [String] :request_origin
    #   The origin of the request.
    #
    # @return [Types::StopSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopSessionResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_session({
    #     id: "NameString", # required
    #     request_origin: "OrchestrationNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopSession AWS API Documentation
    #
    # @overload stop_session(params = {})
    # @param [Hash] params ({})
    def stop_session(params = {}, options = {})
      req = build_request(:stop_session, params)
      req.send_request(options)
    end

    # Stops a specified trigger.
    #
    # @option params [required, String] :name
    #   The name of the trigger to stop.
    #
    # @return [Types::StopTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopTriggerResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_trigger({
    #     name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopTrigger AWS API Documentation
    #
    # @overload stop_trigger(params = {})
    # @param [Hash] params ({})
    def stop_trigger(params = {}, options = {})
      req = build_request(:stop_trigger, params)
      req.send_request(options)
    end

    # Stops the execution of the specified workflow run.
    #
    # @option params [required, String] :name
    #   The name of the workflow to stop.
    #
    # @option params [required, String] :run_id
    #   The ID of the workflow run to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_workflow_run({
    #     name: "NameString", # required
    #     run_id: "IdString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopWorkflowRun AWS API Documentation
    #
    # @overload stop_workflow_run(params = {})
    # @param [Hash] params ({})
    def stop_workflow_run(params = {}, options = {})
      req = build_request(:stop_workflow_run, params)
      req.send_request(options)
    end

    # Adds tags to a resource. A tag is a label you can assign to an Amazon
    # Web Services resource. In Glue, you can tag only certain resources.
    # For information about what resources you can tag, see [Amazon Web
    # Services Tags in Glue][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the Glue resource to which to add the tags. For more
    #   information about Glue resource ARNs, see the [Glue ARN string
    #   pattern][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id
    #
    # @option params [required, Hash<String,String>] :tags_to_add
    #   Tags to add to this resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "GlueResourceArn", # required
    #     tags_to_add: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   the tags.
    #
    # @option params [required, Array<String>] :tags_to_remove
    #   Tags to remove from this resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "GlueResourceArn", # required
    #     tags_to_remove: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a registered blueprint.
    #
    # @option params [required, String] :name
    #   The name of the blueprint.
    #
    # @option params [String] :description
    #   A description of the blueprint.
    #
    # @option params [required, String] :blueprint_location
    #   Specifies a path in Amazon S3 where the blueprint is published.
    #
    # @return [Types::UpdateBlueprintResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBlueprintResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_blueprint({
    #     name: "OrchestrationNameString", # required
    #     description: "Generic512CharString",
    #     blueprint_location: "OrchestrationS3Location", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateBlueprint AWS API Documentation
    #
    # @overload update_blueprint(params = {})
    # @param [Hash] params ({})
    def update_blueprint(params = {}, options = {})
      req = build_request(:update_blueprint, params)
      req.send_request(options)
    end

    # Modifies an existing classifier (a `GrokClassifier`, an
    # `XMLClassifier`, a `JsonClassifier`, or a `CsvClassifier`, depending
    # on which field is present).
    #
    # @option params [Types::UpdateGrokClassifierRequest] :grok_classifier
    #   A `GrokClassifier` object with updated fields.
    #
    # @option params [Types::UpdateXMLClassifierRequest] :xml_classifier
    #   An `XMLClassifier` object with updated fields.
    #
    # @option params [Types::UpdateJsonClassifierRequest] :json_classifier
    #   A `JsonClassifier` object with updated fields.
    #
    # @option params [Types::UpdateCsvClassifierRequest] :csv_classifier
    #   A `CsvClassifier` object with updated fields.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_classifier({
    #     grok_classifier: {
    #       name: "NameString", # required
    #       classification: "Classification",
    #       grok_pattern: "GrokPattern",
    #       custom_patterns: "CustomPatterns",
    #     },
    #     xml_classifier: {
    #       name: "NameString", # required
    #       classification: "Classification",
    #       row_tag: "RowTag",
    #     },
    #     json_classifier: {
    #       name: "NameString", # required
    #       json_path: "JsonPath",
    #     },
    #     csv_classifier: {
    #       name: "NameString", # required
    #       delimiter: "CsvColumnDelimiter",
    #       quote_symbol: "CsvQuoteSymbol",
    #       contains_header: "UNKNOWN", # accepts UNKNOWN, PRESENT, ABSENT
    #       header: ["NameString"],
    #       disable_value_trimming: false,
    #       allow_single_column: false,
    #       custom_datatype_configured: false,
    #       custom_datatypes: ["NameString"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateClassifier AWS API Documentation
    #
    # @overload update_classifier(params = {})
    # @param [Hash] params ({})
    def update_classifier(params = {}, options = {})
      req = build_request(:update_classifier, params)
      req.send_request(options)
    end

    # Creates or updates partition statistics of columns.
    #
    # The Identity and Access Management (IAM) permission required for this
    # operation is `UpdatePartition`.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partitions in question reside. If
    #   none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partitions reside.
    #
    # @option params [required, String] :table_name
    #   The name of the partitions' table.
    #
    # @option params [required, Array<String>] :partition_values
    #   A list of partition values identifying the partition.
    #
    # @option params [required, Array<Types::ColumnStatistics>] :column_statistics_list
    #   A list of the column statistics.
    #
    # @return [Types::UpdateColumnStatisticsForPartitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateColumnStatisticsForPartitionResponse#errors #errors} => Array&lt;Types::ColumnStatisticsError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_column_statistics_for_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_values: ["ValueString"], # required
    #     column_statistics_list: [ # required
    #       {
    #         column_name: "NameString", # required
    #         column_type: "TypeString", # required
    #         analyzed_time: Time.now, # required
    #         statistics_data: { # required
    #           type: "BOOLEAN", # required, accepts BOOLEAN, DATE, DECIMAL, DOUBLE, LONG, STRING, BINARY
    #           boolean_column_statistics_data: {
    #             number_of_trues: 1, # required
    #             number_of_falses: 1, # required
    #             number_of_nulls: 1, # required
    #           },
    #           date_column_statistics_data: {
    #             minimum_value: Time.now,
    #             maximum_value: Time.now,
    #             number_of_nulls: 1, # required
    #             number_of_distinct_values: 1, # required
    #           },
    #           decimal_column_statistics_data: {
    #             minimum_value: {
    #               unscaled_value: "data", # required
    #               scale: 1, # required
    #             },
    #             maximum_value: {
    #               unscaled_value: "data", # required
    #               scale: 1, # required
    #             },
    #             number_of_nulls: 1, # required
    #             number_of_distinct_values: 1, # required
    #           },
    #           double_column_statistics_data: {
    #             minimum_value: 1.0,
    #             maximum_value: 1.0,
    #             number_of_nulls: 1, # required
    #             number_of_distinct_values: 1, # required
    #           },
    #           long_column_statistics_data: {
    #             minimum_value: 1,
    #             maximum_value: 1,
    #             number_of_nulls: 1, # required
    #             number_of_distinct_values: 1, # required
    #           },
    #           string_column_statistics_data: {
    #             maximum_length: 1, # required
    #             average_length: 1.0, # required
    #             number_of_nulls: 1, # required
    #             number_of_distinct_values: 1, # required
    #           },
    #           binary_column_statistics_data: {
    #             maximum_length: 1, # required
    #             average_length: 1.0, # required
    #             number_of_nulls: 1, # required
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].column_statistics.column_name #=> String
    #   resp.errors[0].column_statistics.column_type #=> String
    #   resp.errors[0].column_statistics.analyzed_time #=> Time
    #   resp.errors[0].column_statistics.statistics_data.type #=> String, one of "BOOLEAN", "DATE", "DECIMAL", "DOUBLE", "LONG", "STRING", "BINARY"
    #   resp.errors[0].column_statistics.statistics_data.boolean_column_statistics_data.number_of_trues #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.boolean_column_statistics_data.number_of_falses #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.boolean_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.date_column_statistics_data.minimum_value #=> Time
    #   resp.errors[0].column_statistics.statistics_data.date_column_statistics_data.maximum_value #=> Time
    #   resp.errors[0].column_statistics.statistics_data.date_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.date_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.decimal_column_statistics_data.minimum_value.unscaled_value #=> String
    #   resp.errors[0].column_statistics.statistics_data.decimal_column_statistics_data.minimum_value.scale #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.decimal_column_statistics_data.maximum_value.unscaled_value #=> String
    #   resp.errors[0].column_statistics.statistics_data.decimal_column_statistics_data.maximum_value.scale #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.decimal_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.decimal_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.double_column_statistics_data.minimum_value #=> Float
    #   resp.errors[0].column_statistics.statistics_data.double_column_statistics_data.maximum_value #=> Float
    #   resp.errors[0].column_statistics.statistics_data.double_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.double_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.long_column_statistics_data.minimum_value #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.long_column_statistics_data.maximum_value #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.long_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.long_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.string_column_statistics_data.maximum_length #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.string_column_statistics_data.average_length #=> Float
    #   resp.errors[0].column_statistics.statistics_data.string_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.string_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.binary_column_statistics_data.maximum_length #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.binary_column_statistics_data.average_length #=> Float
    #   resp.errors[0].column_statistics.statistics_data.binary_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].error.error_code #=> String
    #   resp.errors[0].error.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateColumnStatisticsForPartition AWS API Documentation
    #
    # @overload update_column_statistics_for_partition(params = {})
    # @param [Hash] params ({})
    def update_column_statistics_for_partition(params = {}, options = {})
      req = build_request(:update_column_statistics_for_partition, params)
      req.send_request(options)
    end

    # Creates or updates table statistics of columns.
    #
    # The Identity and Access Management (IAM) permission required for this
    # operation is `UpdateTable`.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partitions in question reside. If
    #   none is supplied, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the partitions reside.
    #
    # @option params [required, String] :table_name
    #   The name of the partitions' table.
    #
    # @option params [required, Array<Types::ColumnStatistics>] :column_statistics_list
    #   A list of the column statistics.
    #
    # @return [Types::UpdateColumnStatisticsForTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateColumnStatisticsForTableResponse#errors #errors} => Array&lt;Types::ColumnStatisticsError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_column_statistics_for_table({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     column_statistics_list: [ # required
    #       {
    #         column_name: "NameString", # required
    #         column_type: "TypeString", # required
    #         analyzed_time: Time.now, # required
    #         statistics_data: { # required
    #           type: "BOOLEAN", # required, accepts BOOLEAN, DATE, DECIMAL, DOUBLE, LONG, STRING, BINARY
    #           boolean_column_statistics_data: {
    #             number_of_trues: 1, # required
    #             number_of_falses: 1, # required
    #             number_of_nulls: 1, # required
    #           },
    #           date_column_statistics_data: {
    #             minimum_value: Time.now,
    #             maximum_value: Time.now,
    #             number_of_nulls: 1, # required
    #             number_of_distinct_values: 1, # required
    #           },
    #           decimal_column_statistics_data: {
    #             minimum_value: {
    #               unscaled_value: "data", # required
    #               scale: 1, # required
    #             },
    #             maximum_value: {
    #               unscaled_value: "data", # required
    #               scale: 1, # required
    #             },
    #             number_of_nulls: 1, # required
    #             number_of_distinct_values: 1, # required
    #           },
    #           double_column_statistics_data: {
    #             minimum_value: 1.0,
    #             maximum_value: 1.0,
    #             number_of_nulls: 1, # required
    #             number_of_distinct_values: 1, # required
    #           },
    #           long_column_statistics_data: {
    #             minimum_value: 1,
    #             maximum_value: 1,
    #             number_of_nulls: 1, # required
    #             number_of_distinct_values: 1, # required
    #           },
    #           string_column_statistics_data: {
    #             maximum_length: 1, # required
    #             average_length: 1.0, # required
    #             number_of_nulls: 1, # required
    #             number_of_distinct_values: 1, # required
    #           },
    #           binary_column_statistics_data: {
    #             maximum_length: 1, # required
    #             average_length: 1.0, # required
    #             number_of_nulls: 1, # required
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].column_statistics.column_name #=> String
    #   resp.errors[0].column_statistics.column_type #=> String
    #   resp.errors[0].column_statistics.analyzed_time #=> Time
    #   resp.errors[0].column_statistics.statistics_data.type #=> String, one of "BOOLEAN", "DATE", "DECIMAL", "DOUBLE", "LONG", "STRING", "BINARY"
    #   resp.errors[0].column_statistics.statistics_data.boolean_column_statistics_data.number_of_trues #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.boolean_column_statistics_data.number_of_falses #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.boolean_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.date_column_statistics_data.minimum_value #=> Time
    #   resp.errors[0].column_statistics.statistics_data.date_column_statistics_data.maximum_value #=> Time
    #   resp.errors[0].column_statistics.statistics_data.date_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.date_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.decimal_column_statistics_data.minimum_value.unscaled_value #=> String
    #   resp.errors[0].column_statistics.statistics_data.decimal_column_statistics_data.minimum_value.scale #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.decimal_column_statistics_data.maximum_value.unscaled_value #=> String
    #   resp.errors[0].column_statistics.statistics_data.decimal_column_statistics_data.maximum_value.scale #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.decimal_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.decimal_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.double_column_statistics_data.minimum_value #=> Float
    #   resp.errors[0].column_statistics.statistics_data.double_column_statistics_data.maximum_value #=> Float
    #   resp.errors[0].column_statistics.statistics_data.double_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.double_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.long_column_statistics_data.minimum_value #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.long_column_statistics_data.maximum_value #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.long_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.long_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.string_column_statistics_data.maximum_length #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.string_column_statistics_data.average_length #=> Float
    #   resp.errors[0].column_statistics.statistics_data.string_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.string_column_statistics_data.number_of_distinct_values #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.binary_column_statistics_data.maximum_length #=> Integer
    #   resp.errors[0].column_statistics.statistics_data.binary_column_statistics_data.average_length #=> Float
    #   resp.errors[0].column_statistics.statistics_data.binary_column_statistics_data.number_of_nulls #=> Integer
    #   resp.errors[0].error.error_code #=> String
    #   resp.errors[0].error.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateColumnStatisticsForTable AWS API Documentation
    #
    # @overload update_column_statistics_for_table(params = {})
    # @param [Hash] params ({})
    def update_column_statistics_for_table(params = {}, options = {})
      req = build_request(:update_column_statistics_for_table, params)
      req.send_request(options)
    end

    # Updates a connection definition in the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :name
    #   The name of the connection definition to update.
    #
    # @option params [required, Types::ConnectionInput] :connection_input
    #   A `ConnectionInput` object that redefines the connection in question.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connection({
    #     catalog_id: "CatalogIdString",
    #     name: "NameString", # required
    #     connection_input: { # required
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       connection_type: "JDBC", # required, accepts JDBC, SFTP, MONGODB, KAFKA, NETWORK, MARKETPLACE, CUSTOM
    #       match_criteria: ["NameString"],
    #       connection_properties: { # required
    #         "HOST" => "ValueString",
    #       },
    #       physical_connection_requirements: {
    #         subnet_id: "NameString",
    #         security_group_id_list: ["NameString"],
    #         availability_zone: "NameString",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateConnection AWS API Documentation
    #
    # @overload update_connection(params = {})
    # @param [Hash] params ({})
    def update_connection(params = {}, options = {})
      req = build_request(:update_connection, params)
      req.send_request(options)
    end

    # Updates a crawler. If a crawler is running, you must stop it using
    # `StopCrawler` before updating it.
    #
    # @option params [required, String] :name
    #   Name of the new crawler.
    #
    # @option params [String] :role
    #   The IAM role or Amazon Resource Name (ARN) of an IAM role that is used
    #   by the new crawler to access customer resources.
    #
    # @option params [String] :database_name
    #   The Glue database where results are stored, such as:
    #   `arn:aws:daylight:us-east-1::database/sometable/*`.
    #
    # @option params [String] :description
    #   A description of the new crawler.
    #
    # @option params [Types::CrawlerTargets] :targets
    #   A list of targets to crawl.
    #
    # @option params [String] :schedule
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #
    # @option params [Array<String>] :classifiers
    #   A list of custom classifiers that the user has registered. By default,
    #   all built-in classifiers are included in a crawl, but these custom
    #   classifiers always override the default classifiers for a given
    #   classification.
    #
    # @option params [String] :table_prefix
    #   The table prefix used for catalog tables that are created.
    #
    # @option params [Types::SchemaChangePolicy] :schema_change_policy
    #   The policy for the crawler's update and deletion behavior.
    #
    # @option params [Types::RecrawlPolicy] :recrawl_policy
    #   A policy that specifies whether to crawl the entire dataset again, or
    #   to crawl only folders that were added since the last crawler run.
    #
    # @option params [Types::LineageConfiguration] :lineage_configuration
    #   Specifies data lineage configuration settings for the crawler.
    #
    # @option params [Types::LakeFormationConfiguration] :lake_formation_configuration
    #   Specifies Lake Formation configuration settings for the crawler.
    #
    # @option params [String] :configuration
    #   Crawler configuration information. This versioned JSON string allows
    #   users to specify aspects of a crawler's behavior. For more
    #   information, see [Setting crawler configuration options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html
    #
    # @option params [String] :crawler_security_configuration
    #   The name of the `SecurityConfiguration` structure to be used by this
    #   crawler.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_crawler({
    #     name: "NameString", # required
    #     role: "Role",
    #     database_name: "DatabaseName",
    #     description: "DescriptionStringRemovable",
    #     targets: {
    #       s3_targets: [
    #         {
    #           path: "Path",
    #           exclusions: ["Path"],
    #           connection_name: "ConnectionName",
    #           sample_size: 1,
    #           event_queue_arn: "EventQueueArn",
    #           dlq_event_queue_arn: "EventQueueArn",
    #         },
    #       ],
    #       jdbc_targets: [
    #         {
    #           connection_name: "ConnectionName",
    #           path: "Path",
    #           exclusions: ["Path"],
    #           enable_additional_metadata: ["COMMENTS"], # accepts COMMENTS, RAWTYPES
    #         },
    #       ],
    #       mongo_db_targets: [
    #         {
    #           connection_name: "ConnectionName",
    #           path: "Path",
    #           scan_all: false,
    #         },
    #       ],
    #       dynamo_db_targets: [
    #         {
    #           path: "Path",
    #           scan_all: false,
    #           scan_rate: 1.0,
    #         },
    #       ],
    #       catalog_targets: [
    #         {
    #           database_name: "NameString", # required
    #           tables: ["NameString"], # required
    #           connection_name: "ConnectionName",
    #           event_queue_arn: "EventQueueArn",
    #           dlq_event_queue_arn: "EventQueueArn",
    #         },
    #       ],
    #       delta_targets: [
    #         {
    #           delta_tables: ["Path"],
    #           connection_name: "ConnectionName",
    #           write_manifest: false,
    #           create_native_delta_table: false,
    #         },
    #       ],
    #       iceberg_targets: [
    #         {
    #           paths: ["Path"],
    #           connection_name: "ConnectionName",
    #           exclusions: ["Path"],
    #           maximum_traversal_depth: 1,
    #         },
    #       ],
    #     },
    #     schedule: "CronExpression",
    #     classifiers: ["NameString"],
    #     table_prefix: "TablePrefix",
    #     schema_change_policy: {
    #       update_behavior: "LOG", # accepts LOG, UPDATE_IN_DATABASE
    #       delete_behavior: "LOG", # accepts LOG, DELETE_FROM_DATABASE, DEPRECATE_IN_DATABASE
    #     },
    #     recrawl_policy: {
    #       recrawl_behavior: "CRAWL_EVERYTHING", # accepts CRAWL_EVERYTHING, CRAWL_NEW_FOLDERS_ONLY, CRAWL_EVENT_MODE
    #     },
    #     lineage_configuration: {
    #       crawler_lineage_settings: "ENABLE", # accepts ENABLE, DISABLE
    #     },
    #     lake_formation_configuration: {
    #       use_lake_formation_credentials: false,
    #       account_id: "AccountId",
    #     },
    #     configuration: "CrawlerConfiguration",
    #     crawler_security_configuration: "CrawlerSecurityConfiguration",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawler AWS API Documentation
    #
    # @overload update_crawler(params = {})
    # @param [Hash] params ({})
    def update_crawler(params = {}, options = {})
      req = build_request(:update_crawler, params)
      req.send_request(options)
    end

    # Updates the schedule of a crawler using a `cron` expression.
    #
    # @option params [required, String] :crawler_name
    #   The name of the crawler whose schedule to update.
    #
    # @option params [String] :schedule
    #   The updated `cron` expression used to specify the schedule (see
    #   [Time-Based Schedules for Jobs and Crawlers][1]. For example, to run
    #   something every day at 12:15 UTC, you would specify: `cron(15 12 * * ?
    #   *)`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_crawler_schedule({
    #     crawler_name: "NameString", # required
    #     schedule: "CronExpression",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerSchedule AWS API Documentation
    #
    # @overload update_crawler_schedule(params = {})
    # @param [Hash] params ({})
    def update_crawler_schedule(params = {}, options = {})
      req = build_request(:update_crawler_schedule, params)
      req.send_request(options)
    end

    # Updates the specified data quality ruleset.
    #
    # @option params [required, String] :name
    #   The name of the data quality ruleset.
    #
    # @option params [String] :description
    #   A description of the ruleset.
    #
    # @option params [String] :ruleset
    #   A Data Quality Definition Language (DQDL) ruleset. For more
    #   information, see the Glue developer guide.
    #
    # @return [Types::UpdateDataQualityRulesetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataQualityRulesetResponse#name #name} => String
    #   * {Types::UpdateDataQualityRulesetResponse#description #description} => String
    #   * {Types::UpdateDataQualityRulesetResponse#ruleset #ruleset} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_quality_ruleset({
    #     name: "NameString", # required
    #     description: "DescriptionString",
    #     ruleset: "DataQualityRulesetString",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.ruleset #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDataQualityRuleset AWS API Documentation
    #
    # @overload update_data_quality_ruleset(params = {})
    # @param [Hash] params ({})
    def update_data_quality_ruleset(params = {}, options = {})
      req = build_request(:update_data_quality_ruleset, params)
      req.send_request(options)
    end

    # Updates an existing database definition in a Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog in which the metadata database resides. If
    #   none is provided, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, String] :name
    #   The name of the database to update in the catalog. For Hive
    #   compatibility, this is folded to lowercase.
    #
    # @option params [required, Types::DatabaseInput] :database_input
    #   A `DatabaseInput` object specifying the new definition of the metadata
    #   database in the catalog.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_database({
    #     catalog_id: "CatalogIdString",
    #     name: "NameString", # required
    #     database_input: { # required
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       location_uri: "URI",
    #       parameters: {
    #         "KeyString" => "ParametersMapValue",
    #       },
    #       create_table_default_permissions: [
    #         {
    #           principal: {
    #             data_lake_principal_identifier: "DataLakePrincipalString",
    #           },
    #           permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #         },
    #       ],
    #       target_database: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         region: "NameString",
    #       },
    #       federated_database: {
    #         identifier: "FederationIdentifier",
    #         connection_name: "NameString",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDatabase AWS API Documentation
    #
    # @overload update_database(params = {})
    # @param [Hash] params ({})
    def update_database(params = {}, options = {})
      req = build_request(:update_database, params)
      req.send_request(options)
    end

    # Updates a specified development endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the `DevEndpoint` to be updated.
    #
    # @option params [String] :public_key
    #   The public key for the `DevEndpoint` to use.
    #
    # @option params [Array<String>] :add_public_keys
    #   The list of public keys for the `DevEndpoint` to use.
    #
    # @option params [Array<String>] :delete_public_keys
    #   The list of public keys to be deleted from the `DevEndpoint`.
    #
    # @option params [Types::DevEndpointCustomLibraries] :custom_libraries
    #   Custom Python or Java libraries to be loaded in the `DevEndpoint`.
    #
    # @option params [Boolean] :update_etl_libraries
    #   `True` if the list of custom libraries to be loaded in the development
    #   endpoint needs to be updated, or `False` if otherwise.
    #
    # @option params [Array<String>] :delete_arguments
    #   The list of argument keys to be deleted from the map of arguments used
    #   to configure the `DevEndpoint`.
    #
    # @option params [Hash<String,String>] :add_arguments
    #   The map of arguments to add the map of arguments used to configure the
    #   `DevEndpoint`.
    #
    #   Valid arguments are:
    #
    #   * `"--enable-glue-datacatalog": ""`
    #
    #   ^
    #
    #   You can specify a version of Python support for development endpoints
    #   by using the `Arguments` parameter in the `CreateDevEndpoint` or
    #   `UpdateDevEndpoint` APIs. If no arguments are provided, the version
    #   defaults to Python 2.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dev_endpoint({
    #     endpoint_name: "GenericString", # required
    #     public_key: "GenericString",
    #     add_public_keys: ["GenericString"],
    #     delete_public_keys: ["GenericString"],
    #     custom_libraries: {
    #       extra_python_libs_s3_path: "GenericString",
    #       extra_jars_s3_path: "GenericString",
    #     },
    #     update_etl_libraries: false,
    #     delete_arguments: ["GenericString"],
    #     add_arguments: {
    #       "GenericString" => "GenericString",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDevEndpoint AWS API Documentation
    #
    # @overload update_dev_endpoint(params = {})
    # @param [Hash] params ({})
    def update_dev_endpoint(params = {}, options = {})
      req = build_request(:update_dev_endpoint, params)
      req.send_request(options)
    end

    # Updates an existing job definition. The previous job definition is
    # completely overwritten by this information.
    #
    # @option params [required, String] :job_name
    #   The name of the job definition to update.
    #
    # @option params [required, Types::JobUpdate] :job_update
    #   Specifies the values with which to update the job definition.
    #   Unspecified configuration is removed or reset to default values.
    #
    # @return [Types::UpdateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJobResponse#job_name #job_name} => String
    #
    # @example Response structure
    #
    #   resp.job_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJob AWS API Documentation
    #
    # @overload update_job(params = {})
    # @param [Hash] params ({})
    def update_job(params = {}, options = {})
      req = build_request(:update_job, params)
      req.send_request(options)
    end

    # Synchronizes a job from the source control repository. This operation
    # takes the job artifacts that are located in the remote repository and
    # updates the Glue internal stores with these artifacts.
    #
    # This API supports optional parameters which take in the repository
    # information.
    #
    # @option params [String] :job_name
    #   The name of the Glue job to be synchronized to or from the remote
    #   repository.
    #
    # @option params [String] :provider
    #   The provider for the remote repository.
    #
    # @option params [String] :repository_name
    #   The name of the remote repository that contains the job artifacts.
    #
    # @option params [String] :repository_owner
    #   The owner of the remote repository that contains the job artifacts.
    #
    # @option params [String] :branch_name
    #   An optional branch in the remote repository.
    #
    # @option params [String] :folder
    #   An optional folder in the remote repository.
    #
    # @option params [String] :commit_id
    #   A commit ID for a commit in the remote repository.
    #
    # @option params [String] :auth_strategy
    #   The type of authentication, which can be an authentication token
    #   stored in Amazon Web Services Secrets Manager, or a personal access
    #   token.
    #
    # @option params [String] :auth_token
    #   The value of the authorization token.
    #
    # @return [Types::UpdateJobFromSourceControlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJobFromSourceControlResponse#job_name #job_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_from_source_control({
    #     job_name: "NameString",
    #     provider: "GITHUB", # accepts GITHUB, AWS_CODE_COMMIT
    #     repository_name: "NameString",
    #     repository_owner: "NameString",
    #     branch_name: "NameString",
    #     folder: "NameString",
    #     commit_id: "CommitIdString",
    #     auth_strategy: "PERSONAL_ACCESS_TOKEN", # accepts PERSONAL_ACCESS_TOKEN, AWS_SECRETS_MANAGER
    #     auth_token: "AuthTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJobFromSourceControl AWS API Documentation
    #
    # @overload update_job_from_source_control(params = {})
    # @param [Hash] params ({})
    def update_job_from_source_control(params = {}, options = {})
      req = build_request(:update_job_from_source_control, params)
      req.send_request(options)
    end

    # Updates an existing machine learning transform. Call this operation to
    # tune the algorithm parameters to achieve better results.
    #
    # After calling this operation, you can call the
    # `StartMLEvaluationTaskRun` operation to assess how well your new
    # parameters achieved your goals (such as improving the quality of your
    # machine learning transform, or making it more cost-effective).
    #
    # @option params [required, String] :transform_id
    #   A unique identifier that was generated when the transform was created.
    #
    # @option params [String] :name
    #   The unique name that you gave the transform when you created it.
    #
    # @option params [String] :description
    #   A description of the transform. The default is an empty string.
    #
    # @option params [Types::TransformParameters] :parameters
    #   The configuration parameters that are specific to the transform type
    #   (algorithm) used. Conditionally dependent on the transform type.
    #
    # @option params [String] :role
    #   The name or Amazon Resource Name (ARN) of the IAM role with the
    #   required permissions.
    #
    # @option params [String] :glue_version
    #   This value determines which version of Glue this machine learning
    #   transform is compatible with. Glue 1.0 is recommended for most
    #   customers. If the value is not set, the Glue compatibility defaults to
    #   Glue 0.9. For more information, see [Glue Versions][1] in the
    #   developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #
    # @option params [Float] :max_capacity
    #   The number of Glue data processing units (DPUs) that are allocated to
    #   task runs for this transform. You can allocate from 2 to 100 DPUs; the
    #   default is 10. A DPU is a relative measure of processing power that
    #   consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
    #   information, see the [Glue pricing page][1].
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #
    # @option params [String] :worker_type
    #   The type of predefined worker that is allocated when this task runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #
    # @option params [Integer] :number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when this task runs.
    #
    # @option params [Integer] :timeout
    #   The timeout for a task run for this transform in minutes. This is the
    #   maximum time that a task run for this transform can consume resources
    #   before it is terminated and enters `TIMEOUT` status. The default is
    #   2,880 minutes (48 hours).
    #
    # @option params [Integer] :max_retries
    #   The maximum number of times to retry a task for this transform after a
    #   task run fails.
    #
    # @return [Types::UpdateMLTransformResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMLTransformResponse#transform_id #transform_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ml_transform({
    #     transform_id: "HashString", # required
    #     name: "NameString",
    #     description: "DescriptionString",
    #     parameters: {
    #       transform_type: "FIND_MATCHES", # required, accepts FIND_MATCHES
    #       find_matches_parameters: {
    #         primary_key_column_name: "ColumnNameString",
    #         precision_recall_tradeoff: 1.0,
    #         accuracy_cost_tradeoff: 1.0,
    #         enforce_provided_labels: false,
    #       },
    #     },
    #     role: "RoleString",
    #     glue_version: "GlueVersionString",
    #     max_capacity: 1.0,
    #     worker_type: "Standard", # accepts Standard, G.1X, G.2X, G.025X, G.4X, G.8X, Z.2X
    #     number_of_workers: 1,
    #     timeout: 1,
    #     max_retries: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.transform_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateMLTransform AWS API Documentation
    #
    # @overload update_ml_transform(params = {})
    # @param [Hash] params ({})
    def update_ml_transform(params = {}, options = {})
      req = build_request(:update_ml_transform, params)
      req.send_request(options)
    end

    # Updates a partition.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the partition to be updated resides.
    #   If none is provided, the Amazon Web Services account ID is used by
    #   default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #
    # @option params [required, String] :table_name
    #   The name of the table in which the partition to be updated is located.
    #
    # @option params [required, Array<String>] :partition_value_list
    #   List of partition key values that define the partition to update.
    #
    # @option params [required, Types::PartitionInput] :partition_input
    #   The new partition object to update the partition to.
    #
    #   The `Values` property can't be changed. If you want to change the
    #   partition key values for a partition, delete and recreate the
    #   partition.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_partition({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #     partition_value_list: ["ValueString"], # required
    #     partition_input: { # required
    #       values: ["ValueString"],
    #       last_access_time: Time.now,
    #       storage_descriptor: {
    #         columns: [
    #           {
    #             name: "NameString", # required
    #             type: "ColumnTypeString",
    #             comment: "CommentString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #         ],
    #         location: "LocationString",
    #         additional_locations: ["LocationString"],
    #         input_format: "FormatString",
    #         output_format: "FormatString",
    #         compressed: false,
    #         number_of_buckets: 1,
    #         serde_info: {
    #           name: "NameString",
    #           serialization_library: "NameString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #         bucket_columns: ["NameString"],
    #         sort_columns: [
    #           {
    #             column: "NameString", # required
    #             sort_order: 1, # required
    #           },
    #         ],
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         skewed_info: {
    #           skewed_column_names: ["NameString"],
    #           skewed_column_values: ["ColumnValuesString"],
    #           skewed_column_value_location_maps: {
    #             "ColumnValuesString" => "ColumnValuesString",
    #           },
    #         },
    #         stored_as_sub_directories: false,
    #         schema_reference: {
    #           schema_id: {
    #             schema_arn: "GlueResourceArn",
    #             schema_name: "SchemaRegistryNameString",
    #             registry_name: "SchemaRegistryNameString",
    #           },
    #           schema_version_id: "SchemaVersionIdString",
    #           schema_version_number: 1,
    #         },
    #       },
    #       parameters: {
    #         "KeyString" => "ParametersMapValue",
    #       },
    #       last_analyzed_time: Time.now,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdatePartition AWS API Documentation
    #
    # @overload update_partition(params = {})
    # @param [Hash] params ({})
    def update_partition(params = {}, options = {})
      req = build_request(:update_partition, params)
      req.send_request(options)
    end

    # Updates an existing registry which is used to hold a collection of
    # schemas. The updated properties relate to the registry, and do not
    # modify any of the schemas within the registry.
    #
    # @option params [required, Types::RegistryId] :registry_id
    #   This is a wrapper structure that may contain the registry name and
    #   Amazon Resource Name (ARN).
    #
    # @option params [required, String] :description
    #   A description of the registry. If description is not provided, this
    #   field will not be updated.
    #
    # @return [Types::UpdateRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRegistryResponse#registry_name #registry_name} => String
    #   * {Types::UpdateRegistryResponse#registry_arn #registry_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_registry({
    #     registry_id: { # required
    #       registry_name: "SchemaRegistryNameString",
    #       registry_arn: "GlueResourceArn",
    #     },
    #     description: "DescriptionString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_name #=> String
    #   resp.registry_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateRegistry AWS API Documentation
    #
    # @overload update_registry(params = {})
    # @param [Hash] params ({})
    def update_registry(params = {}, options = {})
      req = build_request(:update_registry, params)
      req.send_request(options)
    end

    # Updates the description, compatibility setting, or version checkpoint
    # for a schema set.
    #
    # For updating the compatibility setting, the call will not validate
    # compatibility for the entire set of schema versions with the new
    # compatibility setting. If the value for `Compatibility` is provided,
    # the `VersionNumber` (a checkpoint) is also required. The API will
    # validate the checkpoint version number for consistency.
    #
    # If the value for the `VersionNumber` (checkpoint) is provided,
    # `Compatibility` is optional and this can be used to set/reset a
    # checkpoint for the schema.
    #
    # This update will happen only if the schema is in the AVAILABLE state.
    #
    # @option params [required, Types::SchemaId] :schema_id
    #   This is a wrapper structure to contain schema identity fields. The
    #   structure contains:
    #
    #   * SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
    #     One of `SchemaArn` or `SchemaName` has to be provided.
    #
    #   * SchemaId$SchemaName: The name of the schema. One of `SchemaArn` or
    #     `SchemaName` has to be provided.
    #
    # @option params [Types::SchemaVersionNumber] :schema_version_number
    #   Version number required for check pointing. One of `VersionNumber` or
    #   `Compatibility` has to be provided.
    #
    # @option params [String] :compatibility
    #   The new compatibility setting for the schema.
    #
    # @option params [String] :description
    #   The new description for the schema.
    #
    # @return [Types::UpdateSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSchemaResponse#schema_arn #schema_arn} => String
    #   * {Types::UpdateSchemaResponse#schema_name #schema_name} => String
    #   * {Types::UpdateSchemaResponse#registry_name #registry_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_schema({
    #     schema_id: { # required
    #       schema_arn: "GlueResourceArn",
    #       schema_name: "SchemaRegistryNameString",
    #       registry_name: "SchemaRegistryNameString",
    #     },
    #     schema_version_number: {
    #       latest_version: false,
    #       version_number: 1,
    #     },
    #     compatibility: "NONE", # accepts NONE, DISABLED, BACKWARD, BACKWARD_ALL, FORWARD, FORWARD_ALL, FULL, FULL_ALL
    #     description: "DescriptionString",
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_arn #=> String
    #   resp.schema_name #=> String
    #   resp.registry_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateSchema AWS API Documentation
    #
    # @overload update_schema(params = {})
    # @param [Hash] params ({})
    def update_schema(params = {}, options = {})
      req = build_request(:update_schema, params)
      req.send_request(options)
    end

    # Synchronizes a job to the source control repository. This operation
    # takes the job artifacts from the Glue internal stores and makes a
    # commit to the remote repository that is configured on the job.
    #
    # This API supports optional parameters which take in the repository
    # information.
    #
    # @option params [String] :job_name
    #   The name of the Glue job to be synchronized to or from the remote
    #   repository.
    #
    # @option params [String] :provider
    #   The provider for the remote repository.
    #
    # @option params [String] :repository_name
    #   The name of the remote repository that contains the job artifacts.
    #
    # @option params [String] :repository_owner
    #   The owner of the remote repository that contains the job artifacts.
    #
    # @option params [String] :branch_name
    #   An optional branch in the remote repository.
    #
    # @option params [String] :folder
    #   An optional folder in the remote repository.
    #
    # @option params [String] :commit_id
    #   A commit ID for a commit in the remote repository.
    #
    # @option params [String] :auth_strategy
    #   The type of authentication, which can be an authentication token
    #   stored in Amazon Web Services Secrets Manager, or a personal access
    #   token.
    #
    # @option params [String] :auth_token
    #   The value of the authorization token.
    #
    # @return [Types::UpdateSourceControlFromJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSourceControlFromJobResponse#job_name #job_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_source_control_from_job({
    #     job_name: "NameString",
    #     provider: "GITHUB", # accepts GITHUB, AWS_CODE_COMMIT
    #     repository_name: "NameString",
    #     repository_owner: "NameString",
    #     branch_name: "NameString",
    #     folder: "NameString",
    #     commit_id: "CommitIdString",
    #     auth_strategy: "PERSONAL_ACCESS_TOKEN", # accepts PERSONAL_ACCESS_TOKEN, AWS_SECRETS_MANAGER
    #     auth_token: "AuthTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateSourceControlFromJob AWS API Documentation
    #
    # @overload update_source_control_from_job(params = {})
    # @param [Hash] params ({})
    def update_source_control_from_job(params = {}, options = {})
      req = build_request(:update_source_control_from_job, params)
      req.send_request(options)
    end

    # Updates a metadata table in the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the Amazon Web Services account ID is used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #
    # @option params [required, Types::TableInput] :table_input
    #   An updated `TableInput` object to define the metadata table in the
    #   catalog.
    #
    # @option params [Boolean] :skip_archive
    #   By default, `UpdateTable` always creates an archived version of the
    #   table before updating it. However, if `skipArchive` is set to true,
    #   `UpdateTable` does not create the archived version.
    #
    # @option params [String] :transaction_id
    #   The transaction ID at which to update the table contents.
    #
    # @option params [String] :version_id
    #   The version ID at which to update the table contents.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     table_input: { # required
    #       name: "NameString", # required
    #       description: "DescriptionString",
    #       owner: "NameString",
    #       last_access_time: Time.now,
    #       last_analyzed_time: Time.now,
    #       retention: 1,
    #       storage_descriptor: {
    #         columns: [
    #           {
    #             name: "NameString", # required
    #             type: "ColumnTypeString",
    #             comment: "CommentString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #         ],
    #         location: "LocationString",
    #         additional_locations: ["LocationString"],
    #         input_format: "FormatString",
    #         output_format: "FormatString",
    #         compressed: false,
    #         number_of_buckets: 1,
    #         serde_info: {
    #           name: "NameString",
    #           serialization_library: "NameString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #         bucket_columns: ["NameString"],
    #         sort_columns: [
    #           {
    #             column: "NameString", # required
    #             sort_order: 1, # required
    #           },
    #         ],
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         skewed_info: {
    #           skewed_column_names: ["NameString"],
    #           skewed_column_values: ["ColumnValuesString"],
    #           skewed_column_value_location_maps: {
    #             "ColumnValuesString" => "ColumnValuesString",
    #           },
    #         },
    #         stored_as_sub_directories: false,
    #         schema_reference: {
    #           schema_id: {
    #             schema_arn: "GlueResourceArn",
    #             schema_name: "SchemaRegistryNameString",
    #             registry_name: "SchemaRegistryNameString",
    #           },
    #           schema_version_id: "SchemaVersionIdString",
    #           schema_version_number: 1,
    #         },
    #       },
    #       partition_keys: [
    #         {
    #           name: "NameString", # required
    #           type: "ColumnTypeString",
    #           comment: "CommentString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #       ],
    #       view_original_text: "ViewTextString",
    #       view_expanded_text: "ViewTextString",
    #       table_type: "TableTypeString",
    #       parameters: {
    #         "KeyString" => "ParametersMapValue",
    #       },
    #       target_table: {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         name: "NameString",
    #         region: "NameString",
    #       },
    #     },
    #     skip_archive: false,
    #     transaction_id: "TransactionIdString",
    #     version_id: "VersionString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTable AWS API Documentation
    #
    # @overload update_table(params = {})
    # @param [Hash] params ({})
    def update_table(params = {}, options = {})
      req = build_request(:update_table, params)
      req.send_request(options)
    end

    # Updates a trigger definition.
    #
    # @option params [required, String] :name
    #   The name of the trigger to update.
    #
    # @option params [required, Types::TriggerUpdate] :trigger_update
    #   The new values with which to update the trigger.
    #
    # @return [Types::UpdateTriggerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTriggerResponse#trigger #trigger} => Types::Trigger
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trigger({
    #     name: "NameString", # required
    #     trigger_update: { # required
    #       name: "NameString",
    #       description: "DescriptionString",
    #       schedule: "GenericString",
    #       actions: [
    #         {
    #           job_name: "NameString",
    #           arguments: {
    #             "GenericString" => "GenericString",
    #           },
    #           timeout: 1,
    #           security_configuration: "NameString",
    #           notification_property: {
    #             notify_delay_after: 1,
    #           },
    #           crawler_name: "NameString",
    #         },
    #       ],
    #       predicate: {
    #         logical: "AND", # accepts AND, ANY
    #         conditions: [
    #           {
    #             logical_operator: "EQUALS", # accepts EQUALS
    #             job_name: "NameString",
    #             state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT, ERROR, WAITING
    #             crawler_name: "NameString",
    #             crawl_state: "RUNNING", # accepts RUNNING, CANCELLING, CANCELLED, SUCCEEDED, FAILED, ERROR
    #           },
    #         ],
    #       },
    #       event_batching_condition: {
    #         batch_size: 1, # required
    #         batch_window: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.trigger.name #=> String
    #   resp.trigger.workflow_name #=> String
    #   resp.trigger.id #=> String
    #   resp.trigger.type #=> String, one of "SCHEDULED", "CONDITIONAL", "ON_DEMAND", "EVENT"
    #   resp.trigger.state #=> String, one of "CREATING", "CREATED", "ACTIVATING", "ACTIVATED", "DEACTIVATING", "DEACTIVATED", "DELETING", "UPDATING"
    #   resp.trigger.description #=> String
    #   resp.trigger.schedule #=> String
    #   resp.trigger.actions #=> Array
    #   resp.trigger.actions[0].job_name #=> String
    #   resp.trigger.actions[0].arguments #=> Hash
    #   resp.trigger.actions[0].arguments["GenericString"] #=> String
    #   resp.trigger.actions[0].timeout #=> Integer
    #   resp.trigger.actions[0].security_configuration #=> String
    #   resp.trigger.actions[0].notification_property.notify_delay_after #=> Integer
    #   resp.trigger.actions[0].crawler_name #=> String
    #   resp.trigger.predicate.logical #=> String, one of "AND", "ANY"
    #   resp.trigger.predicate.conditions #=> Array
    #   resp.trigger.predicate.conditions[0].logical_operator #=> String, one of "EQUALS"
    #   resp.trigger.predicate.conditions[0].job_name #=> String
    #   resp.trigger.predicate.conditions[0].state #=> String, one of "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT", "ERROR", "WAITING"
    #   resp.trigger.predicate.conditions[0].crawler_name #=> String
    #   resp.trigger.predicate.conditions[0].crawl_state #=> String, one of "RUNNING", "CANCELLING", "CANCELLED", "SUCCEEDED", "FAILED", "ERROR"
    #   resp.trigger.event_batching_condition.batch_size #=> Integer
    #   resp.trigger.event_batching_condition.batch_window #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTrigger AWS API Documentation
    #
    # @overload update_trigger(params = {})
    # @param [Hash] params ({})
    def update_trigger(params = {}, options = {})
      req = build_request(:update_trigger, params)
      req.send_request(options)
    end

    # Updates an existing function definition in the Data Catalog.
    #
    # @option params [String] :catalog_id
    #   The ID of the Data Catalog where the function to be updated is
    #   located. If none is provided, the Amazon Web Services account ID is
    #   used by default.
    #
    # @option params [required, String] :database_name
    #   The name of the catalog database where the function to be updated is
    #   located.
    #
    # @option params [required, String] :function_name
    #   The name of the function.
    #
    # @option params [required, Types::UserDefinedFunctionInput] :function_input
    #   A `FunctionInput` object that redefines the function in the Data
    #   Catalog.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_defined_function({
    #     catalog_id: "CatalogIdString",
    #     database_name: "NameString", # required
    #     function_name: "NameString", # required
    #     function_input: { # required
    #       function_name: "NameString",
    #       class_name: "NameString",
    #       owner_name: "NameString",
    #       owner_type: "USER", # accepts USER, ROLE, GROUP
    #       resource_uris: [
    #         {
    #           resource_type: "JAR", # accepts JAR, FILE, ARCHIVE
    #           uri: "URI",
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateUserDefinedFunction AWS API Documentation
    #
    # @overload update_user_defined_function(params = {})
    # @param [Hash] params ({})
    def update_user_defined_function(params = {}, options = {})
      req = build_request(:update_user_defined_function, params)
      req.send_request(options)
    end

    # Updates an existing workflow.
    #
    # @option params [required, String] :name
    #   Name of the workflow to be updated.
    #
    # @option params [String] :description
    #   The description of the workflow.
    #
    # @option params [Hash<String,String>] :default_run_properties
    #   A collection of properties to be used as part of each execution of the
    #   workflow.
    #
    # @option params [Integer] :max_concurrent_runs
    #   You can use this parameter to prevent unwanted multiple updates to
    #   data, to control costs, or in some cases, to prevent exceeding the
    #   maximum number of concurrent runs of any of the component jobs. If you
    #   leave this parameter blank, there is no limit to the number of
    #   concurrent workflow runs.
    #
    # @return [Types::UpdateWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkflowResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workflow({
    #     name: "NameString", # required
    #     description: "GenericString",
    #     default_run_properties: {
    #       "IdString" => "GenericString",
    #     },
    #     max_concurrent_runs: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateWorkflow AWS API Documentation
    #
    # @overload update_workflow(params = {})
    # @param [Hash] params ({})
    def update_workflow(params = {}, options = {})
      req = build_request(:update_workflow, params)
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
      context[:gem_name] = 'aws-sdk-glue'
      context[:gem_version] = '1.149.0'
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
