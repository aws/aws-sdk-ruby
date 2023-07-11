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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:honeycode)

module Aws::Honeycode
  # An API client for Honeycode.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Honeycode::Client.new(
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

    @identifier = :honeycode

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
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Honeycode::Plugins::Endpoints)

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
    #   @option options [Aws::Honeycode::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Honeycode::EndpointParameters`
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

    # The BatchCreateTableRows API allows you to create one or more rows at
    # the end of a table in a workbook. The API allows you to specify the
    # values to set in some or all of the columns in the new rows.
    #
    # If a column is not explicitly set in a specific row, then the column
    # level formula specified in the table will be applied to the new row.
    # If there is no column level formula but the last row of the table has
    # a formula, then that formula will be copied down to the new row. If
    # there is no column level formula and no formula in the last row of the
    # table, then that column will be left blank for the new rows.
    #
    # @option params [required, String] :workbook_id
    #   The ID of the workbook where the new rows are being added.
    #
    #   If a workbook with the specified ID could not be found, this API
    #   throws ResourceNotFoundException.
    #
    # @option params [required, String] :table_id
    #   The ID of the table where the new rows are being added.
    #
    #   If a table with the specified ID could not be found, this API throws
    #   ResourceNotFoundException.
    #
    # @option params [required, Array<Types::CreateRowData>] :rows_to_create
    #   The list of rows to create at the end of the table. Each item in this
    #   list needs to have a batch item id to uniquely identify the element in
    #   the request and the cells to create for that row. You need to specify
    #   at least one item in this list.
    #
    #   Note that if one of the column ids in any of the rows in the request
    #   does not exist in the table, then the request fails and no updates are
    #   made to the table.
    #
    # @option params [String] :client_request_token
    #   The request token for performing the batch create operation. Request
    #   tokens help to identify duplicate requests. If a call times out or
    #   fails due to a transient error like a failed network connection, you
    #   can retry the call with the same request token. The service ensures
    #   that if the first call using that request token is successfully
    #   performed, the second call will not perform the operation again.
    #
    #   Note that request tokens are valid only for a few minutes. You cannot
    #   use request tokens to dedupe requests spanning hours or days.
    #
    # @return [Types::BatchCreateTableRowsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateTableRowsResult#workbook_cursor #workbook_cursor} => Integer
    #   * {Types::BatchCreateTableRowsResult#created_rows #created_rows} => Hash&lt;String,String&gt;
    #   * {Types::BatchCreateTableRowsResult#failed_batch_items #failed_batch_items} => Array&lt;Types::FailedBatchItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_table_rows({
    #     workbook_id: "ResourceId", # required
    #     table_id: "ResourceId", # required
    #     rows_to_create: [ # required
    #       {
    #         batch_item_id: "BatchItemId", # required
    #         cells_to_create: { # required
    #           "ResourceId" => {
    #             fact: "Fact",
    #             facts: ["Fact"],
    #           },
    #         },
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.workbook_cursor #=> Integer
    #   resp.created_rows #=> Hash
    #   resp.created_rows["BatchItemId"] #=> String
    #   resp.failed_batch_items #=> Array
    #   resp.failed_batch_items[0].id #=> String
    #   resp.failed_batch_items[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/BatchCreateTableRows AWS API Documentation
    #
    # @overload batch_create_table_rows(params = {})
    # @param [Hash] params ({})
    def batch_create_table_rows(params = {}, options = {})
      req = build_request(:batch_create_table_rows, params)
      req.send_request(options)
    end

    # The BatchDeleteTableRows API allows you to delete one or more rows
    # from a table in a workbook. You need to specify the ids of the rows
    # that you want to delete from the table.
    #
    # @option params [required, String] :workbook_id
    #   The ID of the workbook where the rows are being deleted.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #
    # @option params [required, String] :table_id
    #   The ID of the table where the rows are being deleted.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #
    # @option params [required, Array<String>] :row_ids
    #   The list of row ids to delete from the table. You need to specify at
    #   least one row id in this list.
    #
    #   Note that if one of the row ids provided in the request does not exist
    #   in the table, then the request fails and no rows are deleted from the
    #   table.
    #
    # @option params [String] :client_request_token
    #   The request token for performing the delete action. Request tokens
    #   help to identify duplicate requests. If a call times out or fails due
    #   to a transient error like a failed network connection, you can retry
    #   the call with the same request token. The service ensures that if the
    #   first call using that request token is successfully performed, the
    #   second call will not perform the action again.
    #
    #   Note that request tokens are valid only for a few minutes. You cannot
    #   use request tokens to dedupe requests spanning hours or days.
    #
    # @return [Types::BatchDeleteTableRowsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteTableRowsResult#workbook_cursor #workbook_cursor} => Integer
    #   * {Types::BatchDeleteTableRowsResult#failed_batch_items #failed_batch_items} => Array&lt;Types::FailedBatchItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_table_rows({
    #     workbook_id: "ResourceId", # required
    #     table_id: "ResourceId", # required
    #     row_ids: ["RowId"], # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.workbook_cursor #=> Integer
    #   resp.failed_batch_items #=> Array
    #   resp.failed_batch_items[0].id #=> String
    #   resp.failed_batch_items[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/BatchDeleteTableRows AWS API Documentation
    #
    # @overload batch_delete_table_rows(params = {})
    # @param [Hash] params ({})
    def batch_delete_table_rows(params = {}, options = {})
      req = build_request(:batch_delete_table_rows, params)
      req.send_request(options)
    end

    # The BatchUpdateTableRows API allows you to update one or more rows in
    # a table in a workbook.
    #
    # You can specify the values to set in some or all of the columns in the
    # table for the specified rows. If a column is not explicitly specified
    # in a particular row, then that column will not be updated for that
    # row. To clear out the data in a specific cell, you need to set the
    # value as an empty string ("").
    #
    # @option params [required, String] :workbook_id
    #   The ID of the workbook where the rows are being updated.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #
    # @option params [required, String] :table_id
    #   The ID of the table where the rows are being updated.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #
    # @option params [required, Array<Types::UpdateRowData>] :rows_to_update
    #   The list of rows to update in the table. Each item in this list needs
    #   to contain the row id to update along with the map of column id to
    #   cell values for each column in that row that needs to be updated. You
    #   need to specify at least one row in this list, and for each row, you
    #   need to specify at least one column to update.
    #
    #   Note that if one of the row or column ids in the request does not
    #   exist in the table, then the request fails and no updates are made to
    #   the table.
    #
    # @option params [String] :client_request_token
    #   The request token for performing the update action. Request tokens
    #   help to identify duplicate requests. If a call times out or fails due
    #   to a transient error like a failed network connection, you can retry
    #   the call with the same request token. The service ensures that if the
    #   first call using that request token is successfully performed, the
    #   second call will not perform the action again.
    #
    #   Note that request tokens are valid only for a few minutes. You cannot
    #   use request tokens to dedupe requests spanning hours or days.
    #
    # @return [Types::BatchUpdateTableRowsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateTableRowsResult#workbook_cursor #workbook_cursor} => Integer
    #   * {Types::BatchUpdateTableRowsResult#failed_batch_items #failed_batch_items} => Array&lt;Types::FailedBatchItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_table_rows({
    #     workbook_id: "ResourceId", # required
    #     table_id: "ResourceId", # required
    #     rows_to_update: [ # required
    #       {
    #         row_id: "RowId", # required
    #         cells_to_update: { # required
    #           "ResourceId" => {
    #             fact: "Fact",
    #             facts: ["Fact"],
    #           },
    #         },
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.workbook_cursor #=> Integer
    #   resp.failed_batch_items #=> Array
    #   resp.failed_batch_items[0].id #=> String
    #   resp.failed_batch_items[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/BatchUpdateTableRows AWS API Documentation
    #
    # @overload batch_update_table_rows(params = {})
    # @param [Hash] params ({})
    def batch_update_table_rows(params = {}, options = {})
      req = build_request(:batch_update_table_rows, params)
      req.send_request(options)
    end

    # The BatchUpsertTableRows API allows you to upsert one or more rows in
    # a table. The upsert operation takes a filter expression as input and
    # evaluates it to find matching rows on the destination table. If
    # matching rows are found, it will update the cells in the matching rows
    # to new values specified in the request. If no matching rows are found,
    # a new row is added at the end of the table and the cells in that row
    # are set to the new values specified in the request.
    #
    # You can specify the values to set in some or all of the columns in the
    # table for the matching or newly appended rows. If a column is not
    # explicitly specified for a particular row, then that column will not
    # be updated for that row. To clear out the data in a specific cell, you
    # need to set the value as an empty string ("").
    #
    # @option params [required, String] :workbook_id
    #   The ID of the workbook where the rows are being upserted.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #
    # @option params [required, String] :table_id
    #   The ID of the table where the rows are being upserted.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #
    # @option params [required, Array<Types::UpsertRowData>] :rows_to_upsert
    #   The list of rows to upsert in the table. Each item in this list needs
    #   to have a batch item id to uniquely identify the element in the
    #   request, a filter expression to find the rows to update for that
    #   element and the cell values to set for each column in the upserted
    #   rows. You need to specify at least one item in this list.
    #
    #   Note that if one of the filter formulas in the request fails to
    #   evaluate because of an error or one of the column ids in any of the
    #   rows does not exist in the table, then the request fails and no
    #   updates are made to the table.
    #
    # @option params [String] :client_request_token
    #   The request token for performing the update action. Request tokens
    #   help to identify duplicate requests. If a call times out or fails due
    #   to a transient error like a failed network connection, you can retry
    #   the call with the same request token. The service ensures that if the
    #   first call using that request token is successfully performed, the
    #   second call will not perform the action again.
    #
    #   Note that request tokens are valid only for a few minutes. You cannot
    #   use request tokens to dedupe requests spanning hours or days.
    #
    # @return [Types::BatchUpsertTableRowsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpsertTableRowsResult#rows #rows} => Hash&lt;String,Types::UpsertRowsResult&gt;
    #   * {Types::BatchUpsertTableRowsResult#workbook_cursor #workbook_cursor} => Integer
    #   * {Types::BatchUpsertTableRowsResult#failed_batch_items #failed_batch_items} => Array&lt;Types::FailedBatchItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_upsert_table_rows({
    #     workbook_id: "ResourceId", # required
    #     table_id: "ResourceId", # required
    #     rows_to_upsert: [ # required
    #       {
    #         batch_item_id: "BatchItemId", # required
    #         filter: { # required
    #           formula: "Formula", # required
    #           context_row_id: "RowId",
    #         },
    #         cells_to_update: { # required
    #           "ResourceId" => {
    #             fact: "Fact",
    #             facts: ["Fact"],
    #           },
    #         },
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rows #=> Hash
    #   resp.rows["BatchItemId"].row_ids #=> Array
    #   resp.rows["BatchItemId"].row_ids[0] #=> String
    #   resp.rows["BatchItemId"].upsert_action #=> String, one of "UPDATED", "APPENDED"
    #   resp.workbook_cursor #=> Integer
    #   resp.failed_batch_items #=> Array
    #   resp.failed_batch_items[0].id #=> String
    #   resp.failed_batch_items[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/BatchUpsertTableRows AWS API Documentation
    #
    # @overload batch_upsert_table_rows(params = {})
    # @param [Hash] params ({})
    def batch_upsert_table_rows(params = {}, options = {})
      req = build_request(:batch_upsert_table_rows, params)
      req.send_request(options)
    end

    # The DescribeTableDataImportJob API allows you to retrieve the status
    # and details of a table data import job.
    #
    # @option params [required, String] :workbook_id
    #   The ID of the workbook into which data was imported.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #
    # @option params [required, String] :table_id
    #   The ID of the table into which data was imported.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #
    # @option params [required, String] :job_id
    #   The ID of the job that was returned by the StartTableDataImportJob
    #   request.
    #
    #   If a job with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #
    # @return [Types::DescribeTableDataImportJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTableDataImportJobResult#job_status #job_status} => String
    #   * {Types::DescribeTableDataImportJobResult#message #message} => String
    #   * {Types::DescribeTableDataImportJobResult#job_metadata #job_metadata} => Types::TableDataImportJobMetadata
    #   * {Types::DescribeTableDataImportJobResult#error_code #error_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table_data_import_job({
    #     workbook_id: "ResourceId", # required
    #     table_id: "ResourceId", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.message #=> String
    #   resp.job_metadata.submitter.email #=> String
    #   resp.job_metadata.submitter.user_arn #=> String
    #   resp.job_metadata.submit_time #=> Time
    #   resp.job_metadata.import_options.destination_options.column_map #=> Hash
    #   resp.job_metadata.import_options.destination_options.column_map["ResourceId"].column_index #=> Integer
    #   resp.job_metadata.import_options.delimited_text_options.delimiter #=> String
    #   resp.job_metadata.import_options.delimited_text_options.has_header_row #=> Boolean
    #   resp.job_metadata.import_options.delimited_text_options.ignore_empty_rows #=> Boolean
    #   resp.job_metadata.import_options.delimited_text_options.data_character_encoding #=> String, one of "UTF-8", "US-ASCII", "ISO-8859-1", "UTF-16BE", "UTF-16LE", "UTF-16"
    #   resp.job_metadata.data_source.data_source_config.data_source_url #=> String
    #   resp.error_code #=> String, one of "ACCESS_DENIED", "INVALID_URL_ERROR", "INVALID_IMPORT_OPTIONS_ERROR", "INVALID_TABLE_ID_ERROR", "INVALID_TABLE_COLUMN_ID_ERROR", "TABLE_NOT_FOUND_ERROR", "FILE_EMPTY_ERROR", "INVALID_FILE_TYPE_ERROR", "FILE_PARSING_ERROR", "FILE_SIZE_LIMIT_ERROR", "FILE_NOT_FOUND_ERROR", "UNKNOWN_ERROR", "RESOURCE_NOT_FOUND_ERROR", "SYSTEM_LIMIT_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/DescribeTableDataImportJob AWS API Documentation
    #
    # @overload describe_table_data_import_job(params = {})
    # @param [Hash] params ({})
    def describe_table_data_import_job(params = {}, options = {})
      req = build_request(:describe_table_data_import_job, params)
      req.send_request(options)
    end

    # The GetScreenData API allows retrieval of data from a screen in a
    # Honeycode app. The API allows setting local variables in the screen to
    # filter, sort or otherwise affect what will be displayed on the screen.
    #
    # @option params [required, String] :workbook_id
    #   The ID of the workbook that contains the screen.
    #
    # @option params [required, String] :app_id
    #   The ID of the app that contains the screen.
    #
    # @option params [required, String] :screen_id
    #   The ID of the screen.
    #
    # @option params [Hash<String,Types::VariableValue>] :variables
    #   Variables are optional and are needed only if the screen requires them
    #   to render correctly. Variables are specified as a map where the key is
    #   the name of the variable as defined on the screen. The value is an
    #   object which currently has only one property, rawValue, which holds
    #   the value of the variable to be passed to the screen.
    #
    # @option params [Integer] :max_results
    #   The number of results to be returned on a single page. Specify a
    #   number between 1 and 100. The maximum value is 100.
    #
    #   This parameter is optional. If you don't specify this parameter, the
    #   default page size is 100.
    #
    # @option params [String] :next_token
    #   This parameter is optional. If a nextToken is not specified, the API
    #   returns the first page of data.
    #
    #   Pagination tokens expire after 1 hour. If you use a token that was
    #   returned more than an hour back, the API will throw
    #   ValidationException.
    #
    # @return [Types::GetScreenDataResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetScreenDataResult#results #results} => Hash&lt;String,Types::ResultSet&gt;
    #   * {Types::GetScreenDataResult#workbook_cursor #workbook_cursor} => Integer
    #   * {Types::GetScreenDataResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_screen_data({
    #     workbook_id: "ResourceId", # required
    #     app_id: "ResourceId", # required
    #     screen_id: "ResourceId", # required
    #     variables: {
    #       "VariableName" => {
    #         raw_value: "RawValue", # required
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Hash
    #   resp.results["Name"].headers #=> Array
    #   resp.results["Name"].headers[0].name #=> String
    #   resp.results["Name"].headers[0].format #=> String, one of "AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"
    #   resp.results["Name"].rows #=> Array
    #   resp.results["Name"].rows[0].row_id #=> String
    #   resp.results["Name"].rows[0].data_items #=> Array
    #   resp.results["Name"].rows[0].data_items[0].override_format #=> String, one of "AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"
    #   resp.results["Name"].rows[0].data_items[0].raw_value #=> String
    #   resp.results["Name"].rows[0].data_items[0].formatted_value #=> String
    #   resp.workbook_cursor #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/GetScreenData AWS API Documentation
    #
    # @overload get_screen_data(params = {})
    # @param [Hash] params ({})
    def get_screen_data(params = {}, options = {})
      req = build_request(:get_screen_data, params)
      req.send_request(options)
    end

    # The InvokeScreenAutomation API allows invoking an action defined in a
    # screen in a Honeycode app. The API allows setting local variables,
    # which can then be used in the automation being invoked. This allows
    # automating the Honeycode app interactions to write, update or delete
    # data in the workbook.
    #
    # @option params [required, String] :workbook_id
    #   The ID of the workbook that contains the screen automation.
    #
    # @option params [required, String] :app_id
    #   The ID of the app that contains the screen automation.
    #
    # @option params [required, String] :screen_id
    #   The ID of the screen that contains the screen automation.
    #
    # @option params [required, String] :screen_automation_id
    #   The ID of the automation action to be performed.
    #
    # @option params [Hash<String,Types::VariableValue>] :variables
    #   Variables are specified as a map where the key is the name of the
    #   variable as defined on the screen. The value is an object which
    #   currently has only one property, rawValue, which holds the value of
    #   the variable to be passed to the screen. Any variables defined in a
    #   screen are required to be passed in the call.
    #
    # @option params [String] :row_id
    #   The row ID for the automation if the automation is defined inside a
    #   block with source or list.
    #
    # @option params [String] :client_request_token
    #   The request token for performing the automation action. Request tokens
    #   help to identify duplicate requests. If a call times out or fails due
    #   to a transient error like a failed network connection, you can retry
    #   the call with the same request token. The service ensures that if the
    #   first call using that request token is successfully performed, the
    #   second call will return the response of the previous call rather than
    #   performing the action again.
    #
    #   Note that request tokens are valid only for a few minutes. You cannot
    #   use request tokens to dedupe requests spanning hours or days.
    #
    # @return [Types::InvokeScreenAutomationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeScreenAutomationResult#workbook_cursor #workbook_cursor} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_screen_automation({
    #     workbook_id: "ResourceId", # required
    #     app_id: "ResourceId", # required
    #     screen_id: "ResourceId", # required
    #     screen_automation_id: "ResourceId", # required
    #     variables: {
    #       "VariableName" => {
    #         raw_value: "RawValue", # required
    #       },
    #     },
    #     row_id: "RowId",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.workbook_cursor #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/InvokeScreenAutomation AWS API Documentation
    #
    # @overload invoke_screen_automation(params = {})
    # @param [Hash] params ({})
    def invoke_screen_automation(params = {}, options = {})
      req = build_request(:invoke_screen_automation, params)
      req.send_request(options)
    end

    # The ListTableColumns API allows you to retrieve a list of all the
    # columns in a table in a workbook.
    #
    # @option params [required, String] :workbook_id
    #   The ID of the workbook that contains the table whose columns are being
    #   retrieved.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #
    # @option params [required, String] :table_id
    #   The ID of the table whose columns are being retrieved.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #
    # @option params [String] :next_token
    #   This parameter is optional. If a nextToken is not specified, the API
    #   returns the first page of data.
    #
    #   Pagination tokens expire after 1 hour. If you use a token that was
    #   returned more than an hour back, the API will throw
    #   ValidationException.
    #
    # @return [Types::ListTableColumnsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTableColumnsResult#table_columns #table_columns} => Array&lt;Types::TableColumn&gt;
    #   * {Types::ListTableColumnsResult#next_token #next_token} => String
    #   * {Types::ListTableColumnsResult#workbook_cursor #workbook_cursor} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_table_columns({
    #     workbook_id: "ResourceId", # required
    #     table_id: "ResourceId", # required
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.table_columns #=> Array
    #   resp.table_columns[0].table_column_id #=> String
    #   resp.table_columns[0].table_column_name #=> String
    #   resp.table_columns[0].format #=> String, one of "AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"
    #   resp.next_token #=> String
    #   resp.workbook_cursor #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ListTableColumns AWS API Documentation
    #
    # @overload list_table_columns(params = {})
    # @param [Hash] params ({})
    def list_table_columns(params = {}, options = {})
      req = build_request(:list_table_columns, params)
      req.send_request(options)
    end

    # The ListTableRows API allows you to retrieve a list of all the rows in
    # a table in a workbook.
    #
    # @option params [required, String] :workbook_id
    #   The ID of the workbook that contains the table whose rows are being
    #   retrieved.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #
    # @option params [required, String] :table_id
    #   The ID of the table whose rows are being retrieved.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #
    # @option params [Array<String>] :row_ids
    #   This parameter is optional. If one or more row ids are specified in
    #   this list, then only the specified row ids are returned in the result.
    #   If no row ids are specified here, then all the rows in the table are
    #   returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of rows to return in each page of the results.
    #
    # @option params [String] :next_token
    #   This parameter is optional. If a nextToken is not specified, the API
    #   returns the first page of data.
    #
    #   Pagination tokens expire after 1 hour. If you use a token that was
    #   returned more than an hour back, the API will throw
    #   ValidationException.
    #
    # @return [Types::ListTableRowsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTableRowsResult#column_ids #column_ids} => Array&lt;String&gt;
    #   * {Types::ListTableRowsResult#rows #rows} => Array&lt;Types::TableRow&gt;
    #   * {Types::ListTableRowsResult#row_ids_not_found #row_ids_not_found} => Array&lt;String&gt;
    #   * {Types::ListTableRowsResult#next_token #next_token} => String
    #   * {Types::ListTableRowsResult#workbook_cursor #workbook_cursor} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_table_rows({
    #     workbook_id: "ResourceId", # required
    #     table_id: "ResourceId", # required
    #     row_ids: ["RowId"],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.column_ids #=> Array
    #   resp.column_ids[0] #=> String
    #   resp.rows #=> Array
    #   resp.rows[0].row_id #=> String
    #   resp.rows[0].cells #=> Array
    #   resp.rows[0].cells[0].formula #=> String
    #   resp.rows[0].cells[0].format #=> String, one of "AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"
    #   resp.rows[0].cells[0].raw_value #=> String
    #   resp.rows[0].cells[0].formatted_value #=> String
    #   resp.rows[0].cells[0].formatted_values #=> Array
    #   resp.rows[0].cells[0].formatted_values[0] #=> String
    #   resp.row_ids_not_found #=> Array
    #   resp.row_ids_not_found[0] #=> String
    #   resp.next_token #=> String
    #   resp.workbook_cursor #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ListTableRows AWS API Documentation
    #
    # @overload list_table_rows(params = {})
    # @param [Hash] params ({})
    def list_table_rows(params = {}, options = {})
      req = build_request(:list_table_rows, params)
      req.send_request(options)
    end

    # The ListTables API allows you to retrieve a list of all the tables in
    # a workbook.
    #
    # @option params [required, String] :workbook_id
    #   The ID of the workbook whose tables are being retrieved.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tables to return in each page of the results.
    #
    # @option params [String] :next_token
    #   This parameter is optional. If a nextToken is not specified, the API
    #   returns the first page of data.
    #
    #   Pagination tokens expire after 1 hour. If you use a token that was
    #   returned more than an hour back, the API will throw
    #   ValidationException.
    #
    # @return [Types::ListTablesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTablesResult#tables #tables} => Array&lt;Types::Table&gt;
    #   * {Types::ListTablesResult#next_token #next_token} => String
    #   * {Types::ListTablesResult#workbook_cursor #workbook_cursor} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables({
    #     workbook_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tables #=> Array
    #   resp.tables[0].table_id #=> String
    #   resp.tables[0].table_name #=> String
    #   resp.next_token #=> String
    #   resp.workbook_cursor #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ListTables AWS API Documentation
    #
    # @overload list_tables(params = {})
    # @param [Hash] params ({})
    def list_tables(params = {}, options = {})
      req = build_request(:list_tables, params)
      req.send_request(options)
    end

    # The ListTagsForResource API allows you to return a resource's tags.
    #
    # @option params [required, String] :resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #
    # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResult#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # The QueryTableRows API allows you to use a filter formula to query for
    # specific rows in a table.
    #
    # @option params [required, String] :workbook_id
    #   The ID of the workbook whose table rows are being queried.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #
    # @option params [required, String] :table_id
    #   The ID of the table whose rows are being queried.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #
    # @option params [required, Types::Filter] :filter_formula
    #   An object that represents a filter formula along with the id of the
    #   context row under which the filter function needs to evaluate.
    #
    # @option params [Integer] :max_results
    #   The maximum number of rows to return in each page of the results.
    #
    # @option params [String] :next_token
    #   This parameter is optional. If a nextToken is not specified, the API
    #   returns the first page of data.
    #
    #   Pagination tokens expire after 1 hour. If you use a token that was
    #   returned more than an hour back, the API will throw
    #   ValidationException.
    #
    # @return [Types::QueryTableRowsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::QueryTableRowsResult#column_ids #column_ids} => Array&lt;String&gt;
    #   * {Types::QueryTableRowsResult#rows #rows} => Array&lt;Types::TableRow&gt;
    #   * {Types::QueryTableRowsResult#next_token #next_token} => String
    #   * {Types::QueryTableRowsResult#workbook_cursor #workbook_cursor} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query_table_rows({
    #     workbook_id: "ResourceId", # required
    #     table_id: "ResourceId", # required
    #     filter_formula: { # required
    #       formula: "Formula", # required
    #       context_row_id: "RowId",
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.column_ids #=> Array
    #   resp.column_ids[0] #=> String
    #   resp.rows #=> Array
    #   resp.rows[0].row_id #=> String
    #   resp.rows[0].cells #=> Array
    #   resp.rows[0].cells[0].formula #=> String
    #   resp.rows[0].cells[0].format #=> String, one of "AUTO", "NUMBER", "CURRENCY", "DATE", "TIME", "DATE_TIME", "PERCENTAGE", "TEXT", "ACCOUNTING", "CONTACT", "ROWLINK", "ROWSET"
    #   resp.rows[0].cells[0].raw_value #=> String
    #   resp.rows[0].cells[0].formatted_value #=> String
    #   resp.rows[0].cells[0].formatted_values #=> Array
    #   resp.rows[0].cells[0].formatted_values[0] #=> String
    #   resp.next_token #=> String
    #   resp.workbook_cursor #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/QueryTableRows AWS API Documentation
    #
    # @overload query_table_rows(params = {})
    # @param [Hash] params ({})
    def query_table_rows(params = {}, options = {})
      req = build_request(:query_table_rows, params)
      req.send_request(options)
    end

    # The StartTableDataImportJob API allows you to start an import job on a
    # table. This API will only return the id of the job that was started.
    # To find out the status of the import request, you need to call the
    # DescribeTableDataImportJob API.
    #
    # @option params [required, String] :workbook_id
    #   The ID of the workbook where the rows are being imported.
    #
    #   If a workbook with the specified id could not be found, this API
    #   throws ResourceNotFoundException.
    #
    # @option params [required, Types::ImportDataSource] :data_source
    #   The source of the data that is being imported. The size of source must
    #   be no larger than 100 MB. Source must have no more than 100,000 cells
    #   and no more than 1,000 rows.
    #
    # @option params [required, String] :data_format
    #   The format of the data that is being imported. Currently the only
    #   option supported is "DELIMITED\_TEXT".
    #
    # @option params [required, String] :destination_table_id
    #   The ID of the table where the rows are being imported.
    #
    #   If a table with the specified id could not be found, this API throws
    #   ResourceNotFoundException.
    #
    # @option params [required, Types::ImportOptions] :import_options
    #   The options for customizing this import request.
    #
    # @option params [required, String] :client_request_token
    #   The request token for performing the update action. Request tokens
    #   help to identify duplicate requests. If a call times out or fails due
    #   to a transient error like a failed network connection, you can retry
    #   the call with the same request token. The service ensures that if the
    #   first call using that request token is successfully performed, the
    #   second call will not perform the action again.
    #
    #   Note that request tokens are valid only for a few minutes. You cannot
    #   use request tokens to dedupe requests spanning hours or days.
    #
    # @return [Types::StartTableDataImportJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTableDataImportJobResult#job_id #job_id} => String
    #   * {Types::StartTableDataImportJobResult#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_table_data_import_job({
    #     workbook_id: "ResourceId", # required
    #     data_source: { # required
    #       data_source_config: { # required
    #         data_source_url: "SecureURL",
    #       },
    #     },
    #     data_format: "DELIMITED_TEXT", # required, accepts DELIMITED_TEXT
    #     destination_table_id: "ResourceId", # required
    #     import_options: { # required
    #       destination_options: {
    #         column_map: {
    #           "ResourceId" => {
    #             column_index: 1,
    #           },
    #         },
    #       },
    #       delimited_text_options: {
    #         delimiter: "DelimitedTextDelimiter", # required
    #         has_header_row: false,
    #         ignore_empty_rows: false,
    #         data_character_encoding: "UTF-8", # accepts UTF-8, US-ASCII, ISO-8859-1, UTF-16BE, UTF-16LE, UTF-16
    #       },
    #     },
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/StartTableDataImportJob AWS API Documentation
    #
    # @overload start_table_data_import_job(params = {})
    # @param [Hash] params ({})
    def start_table_data_import_job(params = {}, options = {})
      req = build_request(:start_table_data_import_job, params)
      req.send_request(options)
    end

    # The TagResource API allows you to add tags to an ARN-able resource.
    # Resource includes workbook, table, screen and screen-automation.
    #
    # @option params [required, String] :resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of tags to apply to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # The UntagResource API allows you to removes tags from an ARN-able
    # resource. Resource includes workbook, table, screen and
    # screen-automation.
    #
    # @option params [required, String] :resource_arn
    #   The resource's Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/honeycode-2020-03-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-honeycode'
      context[:gem_version] = '1.24.0'
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
