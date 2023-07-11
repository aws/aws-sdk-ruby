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

Aws::Plugins::GlobalConfiguration.add_identifier(:qldb)

module Aws::QLDB
  # An API client for QLDB.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::QLDB::Client.new(
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

    @identifier = :qldb

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
    add_plugin(Aws::QLDB::Plugins::Endpoints)

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
    #   @option options [Aws::QLDB::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::QLDB::EndpointParameters`
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

    # Ends a given Amazon QLDB journal stream. Before a stream can be
    # canceled, its current status must be `ACTIVE`.
    #
    # You can't restart a stream after you cancel it. Canceled QLDB stream
    # resources are subject to a 7-day retention period, so they are
    # automatically deleted after this limit expires.
    #
    # @option params [required, String] :ledger_name
    #   The name of the ledger.
    #
    # @option params [required, String] :stream_id
    #   The UUID (represented in Base62-encoded text) of the QLDB journal
    #   stream to be canceled.
    #
    # @return [Types::CancelJournalKinesisStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelJournalKinesisStreamResponse#stream_id #stream_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_journal_kinesis_stream({
    #     ledger_name: "LedgerName", # required
    #     stream_id: "UniqueId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/CancelJournalKinesisStream AWS API Documentation
    #
    # @overload cancel_journal_kinesis_stream(params = {})
    # @param [Hash] params ({})
    def cancel_journal_kinesis_stream(params = {}, options = {})
      req = build_request(:cancel_journal_kinesis_stream, params)
      req.send_request(options)
    end

    # Creates a new ledger in your Amazon Web Services account in the
    # current Region.
    #
    # @option params [required, String] :name
    #   The name of the ledger that you want to create. The name must be
    #   unique among all of the ledgers in your Amazon Web Services account in
    #   the current Region.
    #
    #   Naming constraints for ledger names are defined in [Quotas in Amazon
    #   QLDB][1] in the *Amazon QLDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming
    #
    # @option params [Hash<String,String>] :tags
    #   The key-value pairs to add as tags to the ledger that you want to
    #   create. Tag keys are case sensitive. Tag values are case sensitive and
    #   can be null.
    #
    # @option params [required, String] :permissions_mode
    #   The permissions mode to assign to the ledger that you want to create.
    #   This parameter can have one of the following values:
    #
    #   * `ALLOW_ALL`: A legacy permissions mode that enables access control
    #     with API-level granularity for ledgers.
    #
    #     This mode allows users who have the `SendCommand` API permission for
    #     this ledger to run all PartiQL commands (hence, `ALLOW_ALL`) on any
    #     tables in the specified ledger. This mode disregards any table-level
    #     or command-level IAM permissions policies that you create for the
    #     ledger.
    #
    #   * `STANDARD`: (*Recommended*) A permissions mode that enables access
    #     control with finer granularity for ledgers, tables, and PartiQL
    #     commands.
    #
    #     By default, this mode denies all user requests to run any PartiQL
    #     commands on any tables in this ledger. To allow PartiQL commands to
    #     run, you must create IAM permissions policies for specific table
    #     resources and PartiQL actions, in addition to the `SendCommand` API
    #     permission for the ledger. For information, see [Getting started
    #     with the standard permissions mode][1] in the *Amazon QLDB Developer
    #     Guide*.
    #
    #   <note markdown="1"> We strongly recommend using the `STANDARD` permissions mode to
    #   maximize the security of your ledger data.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html
    #
    # @option params [Boolean] :deletion_protection
    #   Specifies whether the ledger is protected from being deleted by any
    #   user. If not defined during ledger creation, this feature is enabled
    #   (`true`) by default.
    #
    #   If deletion protection is enabled, you must first disable it before
    #   you can delete the ledger. You can disable it by calling the
    #   `UpdateLedger` operation to set this parameter to `false`.
    #
    # @option params [String] :kms_key
    #   The key in Key Management Service (KMS) to use for encryption of data
    #   at rest in the ledger. For more information, see [Encryption at
    #   rest][1] in the *Amazon QLDB Developer Guide*.
    #
    #   Use one of the following options to specify this parameter:
    #
    #   * `AWS_OWNED_KMS_KEY`: Use an KMS key that is owned and managed by
    #     Amazon Web Services on your behalf.
    #
    #   * **Undefined**: By default, use an Amazon Web Services owned KMS key.
    #
    #   * **A valid symmetric customer managed KMS key**: Use the specified
    #     symmetric encryption KMS key in your account that you create, own,
    #     and manage.
    #
    #     Amazon QLDB does not support asymmetric keys. For more information,
    #     see [Using symmetric and asymmetric keys][2] in the *Key Management
    #     Service Developer Guide*.
    #
    #   To specify a customer managed KMS key, you can use its key ID, Amazon
    #   Resource Name (ARN), alias name, or alias ARN. When using an alias
    #   name, prefix it with `"alias/"`. To specify a key in a different
    #   Amazon Web Services account, you must use the key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   For more information, see [Key identifiers (KeyId)][3] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id
    #
    # @return [Types::CreateLedgerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLedgerResponse#name #name} => String
    #   * {Types::CreateLedgerResponse#arn #arn} => String
    #   * {Types::CreateLedgerResponse#state #state} => String
    #   * {Types::CreateLedgerResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::CreateLedgerResponse#permissions_mode #permissions_mode} => String
    #   * {Types::CreateLedgerResponse#deletion_protection #deletion_protection} => Boolean
    #   * {Types::CreateLedgerResponse#kms_key_arn #kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ledger({
    #     name: "LedgerName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     permissions_mode: "ALLOW_ALL", # required, accepts ALLOW_ALL, STANDARD
    #     deletion_protection: false,
    #     kms_key: "KmsKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.creation_date_time #=> Time
    #   resp.permissions_mode #=> String, one of "ALLOW_ALL", "STANDARD"
    #   resp.deletion_protection #=> Boolean
    #   resp.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/CreateLedger AWS API Documentation
    #
    # @overload create_ledger(params = {})
    # @param [Hash] params ({})
    def create_ledger(params = {}, options = {})
      req = build_request(:create_ledger, params)
      req.send_request(options)
    end

    # Deletes a ledger and all of its contents. This action is irreversible.
    #
    # If deletion protection is enabled, you must first disable it before
    # you can delete the ledger. You can disable it by calling the
    # `UpdateLedger` operation to set this parameter to `false`.
    #
    # @option params [required, String] :name
    #   The name of the ledger that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ledger({
    #     name: "LedgerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DeleteLedger AWS API Documentation
    #
    # @overload delete_ledger(params = {})
    # @param [Hash] params ({})
    def delete_ledger(params = {}, options = {})
      req = build_request(:delete_ledger, params)
      req.send_request(options)
    end

    # Returns detailed information about a given Amazon QLDB journal stream.
    # The output includes the Amazon Resource Name (ARN), stream name,
    # current status, creation time, and the parameters of the original
    # stream creation request.
    #
    # This action does not return any expired journal streams. For more
    # information, see [Expiration for terminal streams][1] in the *Amazon
    # QLDB Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration
    #
    # @option params [required, String] :ledger_name
    #   The name of the ledger.
    #
    # @option params [required, String] :stream_id
    #   The UUID (represented in Base62-encoded text) of the QLDB journal
    #   stream to describe.
    #
    # @return [Types::DescribeJournalKinesisStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJournalKinesisStreamResponse#stream #stream} => Types::JournalKinesisStreamDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_journal_kinesis_stream({
    #     ledger_name: "LedgerName", # required
    #     stream_id: "UniqueId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream.ledger_name #=> String
    #   resp.stream.creation_time #=> Time
    #   resp.stream.inclusive_start_time #=> Time
    #   resp.stream.exclusive_end_time #=> Time
    #   resp.stream.role_arn #=> String
    #   resp.stream.stream_id #=> String
    #   resp.stream.arn #=> String
    #   resp.stream.status #=> String, one of "ACTIVE", "COMPLETED", "CANCELED", "FAILED", "IMPAIRED"
    #   resp.stream.kinesis_configuration.stream_arn #=> String
    #   resp.stream.kinesis_configuration.aggregation_enabled #=> Boolean
    #   resp.stream.error_cause #=> String, one of "KINESIS_STREAM_NOT_FOUND", "IAM_PERMISSION_REVOKED"
    #   resp.stream.stream_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DescribeJournalKinesisStream AWS API Documentation
    #
    # @overload describe_journal_kinesis_stream(params = {})
    # @param [Hash] params ({})
    def describe_journal_kinesis_stream(params = {}, options = {})
      req = build_request(:describe_journal_kinesis_stream, params)
      req.send_request(options)
    end

    # Returns information about a journal export job, including the ledger
    # name, export ID, creation time, current status, and the parameters of
    # the original export creation request.
    #
    # This action does not return any expired export jobs. For more
    # information, see [Export job expiration][1] in the *Amazon QLDB
    # Developer Guide*.
    #
    # If the export job with the given `ExportId` doesn't exist, then
    # throws `ResourceNotFoundException`.
    #
    # If the ledger with the given `Name` doesn't exist, then throws
    # `ResourceNotFoundException`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @option params [required, String] :export_id
    #   The UUID (represented in Base62-encoded text) of the journal export
    #   job to describe.
    #
    # @return [Types::DescribeJournalS3ExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJournalS3ExportResponse#export_description #export_description} => Types::JournalS3ExportDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_journal_s3_export({
    #     name: "LedgerName", # required
    #     export_id: "UniqueId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.export_description.ledger_name #=> String
    #   resp.export_description.export_id #=> String
    #   resp.export_description.export_creation_time #=> Time
    #   resp.export_description.status #=> String, one of "IN_PROGRESS", "COMPLETED", "CANCELLED"
    #   resp.export_description.inclusive_start_time #=> Time
    #   resp.export_description.exclusive_end_time #=> Time
    #   resp.export_description.s3_export_configuration.bucket #=> String
    #   resp.export_description.s3_export_configuration.prefix #=> String
    #   resp.export_description.s3_export_configuration.encryption_configuration.object_encryption_type #=> String, one of "SSE_KMS", "SSE_S3", "NO_ENCRYPTION"
    #   resp.export_description.s3_export_configuration.encryption_configuration.kms_key_arn #=> String
    #   resp.export_description.role_arn #=> String
    #   resp.export_description.output_format #=> String, one of "ION_BINARY", "ION_TEXT", "JSON"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DescribeJournalS3Export AWS API Documentation
    #
    # @overload describe_journal_s3_export(params = {})
    # @param [Hash] params ({})
    def describe_journal_s3_export(params = {}, options = {})
      req = build_request(:describe_journal_s3_export, params)
      req.send_request(options)
    end

    # Returns information about a ledger, including its state, permissions
    # mode, encryption at rest settings, and when it was created.
    #
    # @option params [required, String] :name
    #   The name of the ledger that you want to describe.
    #
    # @return [Types::DescribeLedgerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLedgerResponse#name #name} => String
    #   * {Types::DescribeLedgerResponse#arn #arn} => String
    #   * {Types::DescribeLedgerResponse#state #state} => String
    #   * {Types::DescribeLedgerResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeLedgerResponse#permissions_mode #permissions_mode} => String
    #   * {Types::DescribeLedgerResponse#deletion_protection #deletion_protection} => Boolean
    #   * {Types::DescribeLedgerResponse#encryption_description #encryption_description} => Types::LedgerEncryptionDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ledger({
    #     name: "LedgerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.creation_date_time #=> Time
    #   resp.permissions_mode #=> String, one of "ALLOW_ALL", "STANDARD"
    #   resp.deletion_protection #=> Boolean
    #   resp.encryption_description.kms_key_arn #=> String
    #   resp.encryption_description.encryption_status #=> String, one of "ENABLED", "UPDATING", "KMS_KEY_INACCESSIBLE"
    #   resp.encryption_description.inaccessible_kms_key_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DescribeLedger AWS API Documentation
    #
    # @overload describe_ledger(params = {})
    # @param [Hash] params ({})
    def describe_ledger(params = {}, options = {})
      req = build_request(:describe_ledger, params)
      req.send_request(options)
    end

    # Exports journal contents within a date and time range from a ledger
    # into a specified Amazon Simple Storage Service (Amazon S3) bucket. A
    # journal export job can write the data objects in either the text or
    # binary representation of Amazon Ion format, or in *JSON Lines* text
    # format.
    #
    # If the ledger with the given `Name` doesn't exist, then throws
    # `ResourceNotFoundException`.
    #
    # If the ledger with the given `Name` is in `CREATING` status, then
    # throws `ResourcePreconditionNotMetException`.
    #
    # You can initiate up to two concurrent journal export requests for each
    # ledger. Beyond this limit, journal export requests throw
    # `LimitExceededException`.
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :inclusive_start_time
    #   The inclusive start date and time for the range of journal contents to
    #   export.
    #
    #   The `InclusiveStartTime` must be in `ISO 8601` date and time format
    #   and in Universal Coordinated Time (UTC). For example:
    #   `2019-06-13T21:36:34Z`.
    #
    #   The `InclusiveStartTime` must be before `ExclusiveEndTime`.
    #
    #   If you provide an `InclusiveStartTime` that is before the ledger's
    #   `CreationDateTime`, Amazon QLDB defaults it to the ledger's
    #   `CreationDateTime`.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :exclusive_end_time
    #   The exclusive end date and time for the range of journal contents to
    #   export.
    #
    #   The `ExclusiveEndTime` must be in `ISO 8601` date and time format and
    #   in Universal Coordinated Time (UTC). For example:
    #   `2019-06-13T21:36:34Z`.
    #
    #   The `ExclusiveEndTime` must be less than or equal to the current UTC
    #   date and time.
    #
    # @option params [required, Types::S3ExportConfiguration] :s3_export_configuration
    #   The configuration settings of the Amazon S3 bucket destination for
    #   your export request.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants QLDB
    #   permissions for a journal export job to do the following:
    #
    #   * Write objects into your Amazon S3 bucket.
    #
    #   * (Optional) Use your customer managed key in Key Management Service
    #     (KMS) for server-side encryption of your exported data.
    #
    #   To pass a role to QLDB when requesting a journal export, you must have
    #   permissions to perform the `iam:PassRole` action on the IAM role
    #   resource. This is required for all journal export requests.
    #
    # @option params [String] :output_format
    #   The output format of your exported journal data. A journal export job
    #   can write the data objects in either the text or binary representation
    #   of [Amazon Ion][1] format, or in [JSON Lines][2] text format.
    #
    #   Default: `ION_TEXT`
    #
    #   In JSON Lines format, each journal block in an exported data object is
    #   a valid JSON object that is delimited by a newline. You can use this
    #   format to directly integrate JSON exports with analytics tools such as
    #   Amazon Athena and Glue because these services can parse
    #   newline-delimited JSON automatically.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/ion.html
    #   [2]: https://jsonlines.org/
    #
    # @return [Types::ExportJournalToS3Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportJournalToS3Response#export_id #export_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_journal_to_s3({
    #     name: "LedgerName", # required
    #     inclusive_start_time: Time.now, # required
    #     exclusive_end_time: Time.now, # required
    #     s3_export_configuration: { # required
    #       bucket: "S3Bucket", # required
    #       prefix: "S3Prefix", # required
    #       encryption_configuration: { # required
    #         object_encryption_type: "SSE_KMS", # required, accepts SSE_KMS, SSE_S3, NO_ENCRYPTION
    #         kms_key_arn: "Arn",
    #       },
    #     },
    #     role_arn: "Arn", # required
    #     output_format: "ION_BINARY", # accepts ION_BINARY, ION_TEXT, JSON
    #   })
    #
    # @example Response structure
    #
    #   resp.export_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ExportJournalToS3 AWS API Documentation
    #
    # @overload export_journal_to_s3(params = {})
    # @param [Hash] params ({})
    def export_journal_to_s3(params = {}, options = {})
      req = build_request(:export_journal_to_s3, params)
      req.send_request(options)
    end

    # Returns a block object at a specified address in a journal. Also
    # returns a proof of the specified block for verification if
    # `DigestTipAddress` is provided.
    #
    # For information about the data contents in a block, see [Journal
    # contents][1] in the *Amazon QLDB Developer Guide*.
    #
    # If the specified ledger doesn't exist or is in `DELETING` status,
    # then throws `ResourceNotFoundException`.
    #
    # If the specified ledger is in `CREATING` status, then throws
    # `ResourcePreconditionNotMetException`.
    #
    # If no block exists with the specified address, then throws
    # `InvalidParameterException`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/journal-contents.html
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @option params [required, Types::ValueHolder] :block_address
    #   The location of the block that you want to request. An address is an
    #   Amazon Ion structure that has two fields: `strandId` and `sequenceNo`.
    #
    #   For example: `\{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14\}`.
    #
    # @option params [Types::ValueHolder] :digest_tip_address
    #   The latest block location covered by the digest for which to request a
    #   proof. An address is an Amazon Ion structure that has two fields:
    #   `strandId` and `sequenceNo`.
    #
    #   For example: `\{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49\}`.
    #
    # @return [Types::GetBlockResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBlockResponse#block #block} => Types::ValueHolder
    #   * {Types::GetBlockResponse#proof #proof} => Types::ValueHolder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_block({
    #     name: "LedgerName", # required
    #     block_address: { # required
    #       ion_text: "IonText",
    #     },
    #     digest_tip_address: {
    #       ion_text: "IonText",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.block.ion_text #=> String
    #   resp.proof.ion_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/GetBlock AWS API Documentation
    #
    # @overload get_block(params = {})
    # @param [Hash] params ({})
    def get_block(params = {}, options = {})
      req = build_request(:get_block, params)
      req.send_request(options)
    end

    # Returns the digest of a ledger at the latest committed block in the
    # journal. The response includes a 256-bit hash value and a block
    # address.
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @return [Types::GetDigestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDigestResponse#digest #digest} => String
    #   * {Types::GetDigestResponse#digest_tip_address #digest_tip_address} => Types::ValueHolder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_digest({
    #     name: "LedgerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.digest #=> String
    #   resp.digest_tip_address.ion_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/GetDigest AWS API Documentation
    #
    # @overload get_digest(params = {})
    # @param [Hash] params ({})
    def get_digest(params = {}, options = {})
      req = build_request(:get_digest, params)
      req.send_request(options)
    end

    # Returns a revision data object for a specified document ID and block
    # address. Also returns a proof of the specified revision for
    # verification if `DigestTipAddress` is provided.
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @option params [required, Types::ValueHolder] :block_address
    #   The block location of the document revision to be verified. An address
    #   is an Amazon Ion structure that has two fields: `strandId` and
    #   `sequenceNo`.
    #
    #   For example: `\{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14\}`.
    #
    # @option params [required, String] :document_id
    #   The UUID (represented in Base62-encoded text) of the document to be
    #   verified.
    #
    # @option params [Types::ValueHolder] :digest_tip_address
    #   The latest block location covered by the digest for which to request a
    #   proof. An address is an Amazon Ion structure that has two fields:
    #   `strandId` and `sequenceNo`.
    #
    #   For example: `\{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49\}`.
    #
    # @return [Types::GetRevisionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRevisionResponse#proof #proof} => Types::ValueHolder
    #   * {Types::GetRevisionResponse#revision #revision} => Types::ValueHolder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_revision({
    #     name: "LedgerName", # required
    #     block_address: { # required
    #       ion_text: "IonText",
    #     },
    #     document_id: "UniqueId", # required
    #     digest_tip_address: {
    #       ion_text: "IonText",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.proof.ion_text #=> String
    #   resp.revision.ion_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/GetRevision AWS API Documentation
    #
    # @overload get_revision(params = {})
    # @param [Hash] params ({})
    def get_revision(params = {}, options = {})
      req = build_request(:get_revision, params)
      req.send_request(options)
    end

    # Returns all Amazon QLDB journal streams for a given ledger.
    #
    # This action does not return any expired journal streams. For more
    # information, see [Expiration for terminal streams][1] in the *Amazon
    # QLDB Developer Guide*.
    #
    # This action returns a maximum of `MaxResults` items. It is paginated
    # so that you can retrieve all the items by calling
    # `ListJournalKinesisStreamsForLedger` multiple times.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration
    #
    # @option params [required, String] :ledger_name
    #   The name of the ledger.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single
    #   `ListJournalKinesisStreamsForLedger` request. (The actual number of
    #   results returned might be fewer.)
    #
    # @option params [String] :next_token
    #   A pagination token, indicating that you want to retrieve the next page
    #   of results. If you received a value for `NextToken` in the response
    #   from a previous `ListJournalKinesisStreamsForLedger` call, you should
    #   use that value as input here.
    #
    # @return [Types::ListJournalKinesisStreamsForLedgerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJournalKinesisStreamsForLedgerResponse#streams #streams} => Array&lt;Types::JournalKinesisStreamDescription&gt;
    #   * {Types::ListJournalKinesisStreamsForLedgerResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_journal_kinesis_streams_for_ledger({
    #     ledger_name: "LedgerName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.streams #=> Array
    #   resp.streams[0].ledger_name #=> String
    #   resp.streams[0].creation_time #=> Time
    #   resp.streams[0].inclusive_start_time #=> Time
    #   resp.streams[0].exclusive_end_time #=> Time
    #   resp.streams[0].role_arn #=> String
    #   resp.streams[0].stream_id #=> String
    #   resp.streams[0].arn #=> String
    #   resp.streams[0].status #=> String, one of "ACTIVE", "COMPLETED", "CANCELED", "FAILED", "IMPAIRED"
    #   resp.streams[0].kinesis_configuration.stream_arn #=> String
    #   resp.streams[0].kinesis_configuration.aggregation_enabled #=> Boolean
    #   resp.streams[0].error_cause #=> String, one of "KINESIS_STREAM_NOT_FOUND", "IAM_PERMISSION_REVOKED"
    #   resp.streams[0].stream_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListJournalKinesisStreamsForLedger AWS API Documentation
    #
    # @overload list_journal_kinesis_streams_for_ledger(params = {})
    # @param [Hash] params ({})
    def list_journal_kinesis_streams_for_ledger(params = {}, options = {})
      req = build_request(:list_journal_kinesis_streams_for_ledger, params)
      req.send_request(options)
    end

    # Returns all journal export jobs for all ledgers that are associated
    # with the current Amazon Web Services account and Region.
    #
    # This action returns a maximum of `MaxResults` items, and is paginated
    # so that you can retrieve all the items by calling
    # `ListJournalS3Exports` multiple times.
    #
    # This action does not return any expired export jobs. For more
    # information, see [Export job expiration][1] in the *Amazon QLDB
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single
    #   `ListJournalS3Exports` request. (The actual number of results returned
    #   might be fewer.)
    #
    # @option params [String] :next_token
    #   A pagination token, indicating that you want to retrieve the next page
    #   of results. If you received a value for `NextToken` in the response
    #   from a previous `ListJournalS3Exports` call, then you should use that
    #   value as input here.
    #
    # @return [Types::ListJournalS3ExportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJournalS3ExportsResponse#journal_s3_exports #journal_s3_exports} => Array&lt;Types::JournalS3ExportDescription&gt;
    #   * {Types::ListJournalS3ExportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_journal_s3_exports({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.journal_s3_exports #=> Array
    #   resp.journal_s3_exports[0].ledger_name #=> String
    #   resp.journal_s3_exports[0].export_id #=> String
    #   resp.journal_s3_exports[0].export_creation_time #=> Time
    #   resp.journal_s3_exports[0].status #=> String, one of "IN_PROGRESS", "COMPLETED", "CANCELLED"
    #   resp.journal_s3_exports[0].inclusive_start_time #=> Time
    #   resp.journal_s3_exports[0].exclusive_end_time #=> Time
    #   resp.journal_s3_exports[0].s3_export_configuration.bucket #=> String
    #   resp.journal_s3_exports[0].s3_export_configuration.prefix #=> String
    #   resp.journal_s3_exports[0].s3_export_configuration.encryption_configuration.object_encryption_type #=> String, one of "SSE_KMS", "SSE_S3", "NO_ENCRYPTION"
    #   resp.journal_s3_exports[0].s3_export_configuration.encryption_configuration.kms_key_arn #=> String
    #   resp.journal_s3_exports[0].role_arn #=> String
    #   resp.journal_s3_exports[0].output_format #=> String, one of "ION_BINARY", "ION_TEXT", "JSON"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListJournalS3Exports AWS API Documentation
    #
    # @overload list_journal_s3_exports(params = {})
    # @param [Hash] params ({})
    def list_journal_s3_exports(params = {}, options = {})
      req = build_request(:list_journal_s3_exports, params)
      req.send_request(options)
    end

    # Returns all journal export jobs for a specified ledger.
    #
    # This action returns a maximum of `MaxResults` items, and is paginated
    # so that you can retrieve all the items by calling
    # `ListJournalS3ExportsForLedger` multiple times.
    #
    # This action does not return any expired export jobs. For more
    # information, see [Export job expiration][1] in the *Amazon QLDB
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single
    #   `ListJournalS3ExportsForLedger` request. (The actual number of results
    #   returned might be fewer.)
    #
    # @option params [String] :next_token
    #   A pagination token, indicating that you want to retrieve the next page
    #   of results. If you received a value for `NextToken` in the response
    #   from a previous `ListJournalS3ExportsForLedger` call, then you should
    #   use that value as input here.
    #
    # @return [Types::ListJournalS3ExportsForLedgerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJournalS3ExportsForLedgerResponse#journal_s3_exports #journal_s3_exports} => Array&lt;Types::JournalS3ExportDescription&gt;
    #   * {Types::ListJournalS3ExportsForLedgerResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_journal_s3_exports_for_ledger({
    #     name: "LedgerName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.journal_s3_exports #=> Array
    #   resp.journal_s3_exports[0].ledger_name #=> String
    #   resp.journal_s3_exports[0].export_id #=> String
    #   resp.journal_s3_exports[0].export_creation_time #=> Time
    #   resp.journal_s3_exports[0].status #=> String, one of "IN_PROGRESS", "COMPLETED", "CANCELLED"
    #   resp.journal_s3_exports[0].inclusive_start_time #=> Time
    #   resp.journal_s3_exports[0].exclusive_end_time #=> Time
    #   resp.journal_s3_exports[0].s3_export_configuration.bucket #=> String
    #   resp.journal_s3_exports[0].s3_export_configuration.prefix #=> String
    #   resp.journal_s3_exports[0].s3_export_configuration.encryption_configuration.object_encryption_type #=> String, one of "SSE_KMS", "SSE_S3", "NO_ENCRYPTION"
    #   resp.journal_s3_exports[0].s3_export_configuration.encryption_configuration.kms_key_arn #=> String
    #   resp.journal_s3_exports[0].role_arn #=> String
    #   resp.journal_s3_exports[0].output_format #=> String, one of "ION_BINARY", "ION_TEXT", "JSON"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListJournalS3ExportsForLedger AWS API Documentation
    #
    # @overload list_journal_s3_exports_for_ledger(params = {})
    # @param [Hash] params ({})
    def list_journal_s3_exports_for_ledger(params = {}, options = {})
      req = build_request(:list_journal_s3_exports_for_ledger, params)
      req.send_request(options)
    end

    # Returns all ledgers that are associated with the current Amazon Web
    # Services account and Region.
    #
    # This action returns a maximum of `MaxResults` items and is paginated
    # so that you can retrieve all the items by calling `ListLedgers`
    # multiple times.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single `ListLedgers`
    #   request. (The actual number of results returned might be fewer.)
    #
    # @option params [String] :next_token
    #   A pagination token, indicating that you want to retrieve the next page
    #   of results. If you received a value for `NextToken` in the response
    #   from a previous `ListLedgers` call, then you should use that value as
    #   input here.
    #
    # @return [Types::ListLedgersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLedgersResponse#ledgers #ledgers} => Array&lt;Types::LedgerSummary&gt;
    #   * {Types::ListLedgersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ledgers({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.ledgers #=> Array
    #   resp.ledgers[0].name #=> String
    #   resp.ledgers[0].state #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.ledgers[0].creation_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListLedgers AWS API Documentation
    #
    # @overload list_ledgers(params = {})
    # @param [Hash] params ({})
    def list_ledgers(params = {}, options = {})
      req = build_request(:list_ledgers, params)
      req.send_request(options)
    end

    # Returns all tags for a specified Amazon QLDB resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for which to list the tags. For
    #   example:
    #
    #   `arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger`
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates a journal stream for a given Amazon QLDB ledger. The stream
    # captures every document revision that is committed to the ledger's
    # journal and delivers the data to a specified Amazon Kinesis Data
    # Streams resource.
    #
    # @option params [required, String] :ledger_name
    #   The name of the ledger.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants QLDB
    #   permissions for a journal stream to write data records to a Kinesis
    #   Data Streams resource.
    #
    #   To pass a role to QLDB when requesting a journal stream, you must have
    #   permissions to perform the `iam:PassRole` action on the IAM role
    #   resource. This is required for all journal stream requests.
    #
    # @option params [Hash<String,String>] :tags
    #   The key-value pairs to add as tags to the stream that you want to
    #   create. Tag keys are case sensitive. Tag values are case sensitive and
    #   can be null.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :inclusive_start_time
    #   The inclusive start date and time from which to start streaming
    #   journal data. This parameter must be in `ISO 8601` date and time
    #   format and in Universal Coordinated Time (UTC). For example:
    #   `2019-06-13T21:36:34Z`.
    #
    #   The `InclusiveStartTime` cannot be in the future and must be before
    #   `ExclusiveEndTime`.
    #
    #   If you provide an `InclusiveStartTime` that is before the ledger's
    #   `CreationDateTime`, QLDB effectively defaults it to the ledger's
    #   `CreationDateTime`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :exclusive_end_time
    #   The exclusive date and time that specifies when the stream ends. If
    #   you don't define this parameter, the stream runs indefinitely until
    #   you cancel it.
    #
    #   The `ExclusiveEndTime` must be in `ISO 8601` date and time format and
    #   in Universal Coordinated Time (UTC). For example:
    #   `2019-06-13T21:36:34Z`.
    #
    # @option params [required, Types::KinesisConfiguration] :kinesis_configuration
    #   The configuration settings of the Kinesis Data Streams destination for
    #   your stream request.
    #
    # @option params [required, String] :stream_name
    #   The name that you want to assign to the QLDB journal stream.
    #   User-defined names can help identify and indicate the purpose of a
    #   stream.
    #
    #   Your stream name must be unique among other *active* streams for a
    #   given ledger. Stream names have the same naming constraints as ledger
    #   names, as defined in [Quotas in Amazon QLDB][1] in the *Amazon QLDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming
    #
    # @return [Types::StreamJournalToKinesisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StreamJournalToKinesisResponse#stream_id #stream_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stream_journal_to_kinesis({
    #     ledger_name: "LedgerName", # required
    #     role_arn: "Arn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     inclusive_start_time: Time.now, # required
    #     exclusive_end_time: Time.now,
    #     kinesis_configuration: { # required
    #       stream_arn: "Arn", # required
    #       aggregation_enabled: false,
    #     },
    #     stream_name: "StreamName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/StreamJournalToKinesis AWS API Documentation
    #
    # @overload stream_journal_to_kinesis(params = {})
    # @param [Hash] params ({})
    def stream_journal_to_kinesis(params = {}, options = {})
      req = build_request(:stream_journal_to_kinesis, params)
      req.send_request(options)
    end

    # Adds one or more tags to a specified Amazon QLDB resource.
    #
    # A resource can have up to 50 tags. If you try to create more than 50
    # tags for a resource, your request fails and returns an error.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) to which you want to add the tags. For
    #   example:
    #
    #   `arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger`
    #
    # @option params [required, Hash<String,String>] :tags
    #   The key-value pairs to add as tags to the specified QLDB resource. Tag
    #   keys are case sensitive. If you specify a key that already exists for
    #   the resource, your request fails and returns an error. Tag values are
    #   case sensitive and can be null.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a specified Amazon QLDB resource. You
    # can specify up to 50 tag keys to remove.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) from which to remove the tags. For
    #   example:
    #
    #   `arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger`
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates properties on a ledger.
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @option params [Boolean] :deletion_protection
    #   Specifies whether the ledger is protected from being deleted by any
    #   user. If not defined during ledger creation, this feature is enabled
    #   (`true`) by default.
    #
    #   If deletion protection is enabled, you must first disable it before
    #   you can delete the ledger. You can disable it by calling the
    #   `UpdateLedger` operation to set this parameter to `false`.
    #
    # @option params [String] :kms_key
    #   The key in Key Management Service (KMS) to use for encryption of data
    #   at rest in the ledger. For more information, see [Encryption at
    #   rest][1] in the *Amazon QLDB Developer Guide*.
    #
    #   Use one of the following options to specify this parameter:
    #
    #   * `AWS_OWNED_KMS_KEY`: Use an KMS key that is owned and managed by
    #     Amazon Web Services on your behalf.
    #
    #   * **Undefined**: Make no changes to the KMS key of the ledger.
    #
    #   * **A valid symmetric customer managed KMS key**: Use the specified
    #     symmetric encryption KMS key in your account that you create, own,
    #     and manage.
    #
    #     Amazon QLDB does not support asymmetric keys. For more information,
    #     see [Using symmetric and asymmetric keys][2] in the *Key Management
    #     Service Developer Guide*.
    #
    #   To specify a customer managed KMS key, you can use its key ID, Amazon
    #   Resource Name (ARN), alias name, or alias ARN. When using an alias
    #   name, prefix it with `"alias/"`. To specify a key in a different
    #   Amazon Web Services account, you must use the key ARN or alias ARN.
    #
    #   For example:
    #
    #   * Key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Key ARN:
    #     `arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
    #
    #   * Alias name: `alias/ExampleAlias`
    #
    #   * Alias ARN: `arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias`
    #
    #   For more information, see [Key identifiers (KeyId)][3] in the *Key
    #   Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id
    #
    # @return [Types::UpdateLedgerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLedgerResponse#name #name} => String
    #   * {Types::UpdateLedgerResponse#arn #arn} => String
    #   * {Types::UpdateLedgerResponse#state #state} => String
    #   * {Types::UpdateLedgerResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::UpdateLedgerResponse#deletion_protection #deletion_protection} => Boolean
    #   * {Types::UpdateLedgerResponse#encryption_description #encryption_description} => Types::LedgerEncryptionDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ledger({
    #     name: "LedgerName", # required
    #     deletion_protection: false,
    #     kms_key: "KmsKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.creation_date_time #=> Time
    #   resp.deletion_protection #=> Boolean
    #   resp.encryption_description.kms_key_arn #=> String
    #   resp.encryption_description.encryption_status #=> String, one of "ENABLED", "UPDATING", "KMS_KEY_INACCESSIBLE"
    #   resp.encryption_description.inaccessible_kms_key_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/UpdateLedger AWS API Documentation
    #
    # @overload update_ledger(params = {})
    # @param [Hash] params ({})
    def update_ledger(params = {}, options = {})
      req = build_request(:update_ledger, params)
      req.send_request(options)
    end

    # Updates the permissions mode of a ledger.
    #
    # Before you switch to the `STANDARD` permissions mode, you must first
    # create all required IAM policies and table tags to avoid disruption to
    # your users. To learn more, see [Migrating to the standard permissions
    # mode][1] in the *Amazon QLDB Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/ledger-management.basics.html#ledger-mgmt.basics.update-permissions.migrating
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @option params [required, String] :permissions_mode
    #   The permissions mode to assign to the ledger. This parameter can have
    #   one of the following values:
    #
    #   * `ALLOW_ALL`: A legacy permissions mode that enables access control
    #     with API-level granularity for ledgers.
    #
    #     This mode allows users who have the `SendCommand` API permission for
    #     this ledger to run all PartiQL commands (hence, `ALLOW_ALL`) on any
    #     tables in the specified ledger. This mode disregards any table-level
    #     or command-level IAM permissions policies that you create for the
    #     ledger.
    #
    #   * `STANDARD`: (*Recommended*) A permissions mode that enables access
    #     control with finer granularity for ledgers, tables, and PartiQL
    #     commands.
    #
    #     By default, this mode denies all user requests to run any PartiQL
    #     commands on any tables in this ledger. To allow PartiQL commands to
    #     run, you must create IAM permissions policies for specific table
    #     resources and PartiQL actions, in addition to the `SendCommand` API
    #     permission for the ledger. For information, see [Getting started
    #     with the standard permissions mode][1] in the *Amazon QLDB Developer
    #     Guide*.
    #
    #   <note markdown="1"> We strongly recommend using the `STANDARD` permissions mode to
    #   maximize the security of your ledger data.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html
    #
    # @return [Types::UpdateLedgerPermissionsModeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLedgerPermissionsModeResponse#name #name} => String
    #   * {Types::UpdateLedgerPermissionsModeResponse#arn #arn} => String
    #   * {Types::UpdateLedgerPermissionsModeResponse#permissions_mode #permissions_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ledger_permissions_mode({
    #     name: "LedgerName", # required
    #     permissions_mode: "ALLOW_ALL", # required, accepts ALLOW_ALL, STANDARD
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.permissions_mode #=> String, one of "ALLOW_ALL", "STANDARD"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/UpdateLedgerPermissionsMode AWS API Documentation
    #
    # @overload update_ledger_permissions_mode(params = {})
    # @param [Hash] params ({})
    def update_ledger_permissions_mode(params = {}, options = {})
      req = build_request(:update_ledger_permissions_mode, params)
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
      context[:gem_name] = 'aws-sdk-qldb'
      context[:gem_version] = '1.33.0'
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
