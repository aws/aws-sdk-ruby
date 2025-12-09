# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length'
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/endpoint_discovery'
require 'aws-sdk-core/plugins/endpoint_pattern'
require 'aws-sdk-core/plugins/response_paging'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/client_metrics_plugin'
require 'aws-sdk-core/plugins/client_metrics_send_plugin'
require 'aws-sdk-core/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/json_rpc'

module Aws::CloudTrail
  # An API client for CloudTrail.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudTrail::Client.new(
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

    @identifier = :cloudtrail

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
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::CloudTrail::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be any class that includes and implements
    #     `Aws::CredentialProvider`, or instance of any one of the following classes:
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
    #     When `:credentials` are not configured directly, the following locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #
    #     * `ENV['AWS_ACCESS_KEY_ID']`, `ENV['AWS_SECRET_ACCESS_KEY']`,
    #       `ENV['AWS_SESSION_TOKEN']`, and `ENV['AWS_ACCOUNT_ID']`.
    #
    #     * `~/.aws/credentials`
    #
    #     * `~/.aws/config`
    #
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts are very aggressive.
    #       Construct and pass an instance of `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential fetching can be disabled by
    #       setting `ENV['AWS_EC2_METADATA_DISABLED']` to `true`.
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
    #   @option options [String] :account_id
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
    #   @option options [Array<String>] :auth_scheme_preference
    #     A list of preferred authentication schemes to use when making a request. Supported values are:
    #     `sigv4`, `sigv4a`, `httpBearerAuth`, and `noAuth`. When set using `ENV['AWS_AUTH_SCHEME_PREFERENCE']` or in
    #     shared config as `auth_scheme_preference`, the value should be a comma-separated list.
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
    #     When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
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
    #     Used when loading credentials from the shared credentials file at `HOME/.aws/credentials`.
    #     When not specified, 'default' is used.
    #
    #   @option options [String] :request_checksum_calculation ("when_supported")
    #     Determines when a checksum will be calculated for request payloads. Values are:
    #
    #     * `when_supported` - (default) When set, a checksum will be
    #       calculated for all request payloads of operations modeled with the
    #       `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
    #       `requestAlgorithmMember` is modeled.
    #     * `when_required` - When set, a checksum will only be calculated for
    #       request payloads of operations modeled with the  `httpChecksum` trait where
    #       `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
    #       is modeled and supplied.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [String] :response_checksum_validation ("when_supported")
    #     Determines when checksum validation will be performed on response payloads. Values are:
    #
    #     * `when_supported` - (default) When set, checksum validation is performed on all
    #       response payloads of operations modeled with the `httpChecksum` trait where
    #       `responseAlgorithms` is modeled, except when no modeled checksum algorithms
    #       are supported.
    #     * `when_required` - When set, checksum validation is not performed on
    #       response payloads of operations unless the checksum algorithm is supported and
    #       the `requestValidationModeMember` member is set to `ENABLED`.
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disables response data type conversions. The request parameters
    #     hash must be formatted exactly as the API expects.This option is useful
    #     when you want to ensure the highest level of performance by avoiding
    #     overhead of walking request parameters and response data structures.
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
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     Your Bearer token used for authentication. This can be any class that includes and implements
    #     `Aws::TokenProvider`, or instance of any one of the following classes:
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
    #   @option options [Aws::CloudTrail::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CloudTrail::EndpointParameters`.
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [OpenSSL::X509::Certificate] :ssl_cert
    #     Sets a client certificate when creating http connections.
    #
    #   @option options [OpenSSL::PKey] :ssl_key
    #     Sets a client key when creating http connections.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds one or more tags to a trail, event data store, dashboard, or
    # channel, up to a limit of 50. Overwrites an existing tag's value when
    # a new value is specified for an existing tag key. Tag key names must
    # be unique; you cannot have two keys with the same name but different
    # values. If you specify a key without a value, the tag will be created
    # with the specified key and a value of null. You can tag a trail or
    # event data store that applies to all Amazon Web Services Regions only
    # from the Region in which the trail or event data store was created
    # (also known as its home Region).
    #
    # @option params [required, String] :resource_id
    #   Specifies the ARN of the trail, event data store, dashboard, or
    #   channel to which one or more tags will be added.
    #
    #   The format of a trail ARN is:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    #   The format of an event data store ARN is:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE`
    #
    #   The format of a dashboard ARN is:
    #   `arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash`
    #
    #   The format of a channel ARN is:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890`
    #
    # @option params [required, Array<Types::Tag>] :tags_list
    #   Contains a list of tags, up to a limit of 50
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     resource_id: "String", # required
    #     tags_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AddTags AWS API Documentation
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Cancels a query if the query is not in a terminated state, such as
    # `CANCELLED`, `FAILED`, `TIMED_OUT`, or `FINISHED`. You must specify an
    # ARN value for `EventDataStore`. The ID of the query that you want to
    # cancel is also required. When you run `CancelQuery`, the query status
    # might show as `CANCELLED` even if the operation is not yet finished.
    #
    # @option params [String] :event_data_store
    #   The ARN (or the ID suffix of the ARN) of an event data store on which
    #   the specified query is running.
    #
    # @option params [required, String] :query_id
    #   The ID of the query that you want to cancel. The `QueryId` comes from
    #   the response of a `StartQuery` operation.
    #
    # @option params [String] :event_data_store_owner_account_id
    #   The account ID of the event data store owner.
    #
    # @return [Types::CancelQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelQueryResponse#query_id #query_id} => String
    #   * {Types::CancelQueryResponse#query_status #query_status} => String
    #   * {Types::CancelQueryResponse#event_data_store_owner_account_id #event_data_store_owner_account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_query({
    #     event_data_store: "EventDataStoreArn",
    #     query_id: "UUID", # required
    #     event_data_store_owner_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #   resp.query_status #=> String, one of "QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"
    #   resp.event_data_store_owner_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CancelQuery AWS API Documentation
    #
    # @overload cancel_query(params = {})
    # @param [Hash] params ({})
    def cancel_query(params = {}, options = {})
      req = build_request(:cancel_query, params)
      req.send_request(options)
    end

    # Creates a channel for CloudTrail to ingest events from a partner or
    # external source. After you create a channel, a CloudTrail Lake event
    # data store can log events from the partner or source that you specify.
    #
    # @option params [required, String] :name
    #   The name of the channel.
    #
    # @option params [required, String] :source
    #   The name of the partner or external event source. You cannot change
    #   this name after you create the channel. A maximum of one channel is
    #   allowed per source.
    #
    #   A source can be either `Custom` for all valid non-Amazon Web Services
    #   events, or the name of a partner event source. For information about
    #   the source names for available partners, see [Additional information
    #   about integration partners][1] in the CloudTrail User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-event-data-store-integration.html#cloudtrail-lake-partner-information
    #
    # @option params [required, Array<Types::Destination>] :destinations
    #   One or more event data stores to which events arriving through a
    #   channel will be logged.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags.
    #
    # @return [Types::CreateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelResponse#channel_arn #channel_arn} => String
    #   * {Types::CreateChannelResponse#name #name} => String
    #   * {Types::CreateChannelResponse#source #source} => String
    #   * {Types::CreateChannelResponse#destinations #destinations} => Array&lt;Types::Destination&gt;
    #   * {Types::CreateChannelResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel({
    #     name: "ChannelName", # required
    #     source: "Source", # required
    #     destinations: [ # required
    #       {
    #         type: "EVENT_DATA_STORE", # required, accepts EVENT_DATA_STORE, AWS_SERVICE
    #         location: "Location", # required
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.name #=> String
    #   resp.source #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].type #=> String, one of "EVENT_DATA_STORE", "AWS_SERVICE"
    #   resp.destinations[0].location #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateChannel AWS API Documentation
    #
    # @overload create_channel(params = {})
    # @param [Hash] params ({})
    def create_channel(params = {}, options = {})
      req = build_request(:create_channel, params)
      req.send_request(options)
    end

    # Creates a custom dashboard or the Highlights dashboard.
    #
    # * **Custom dashboards** - Custom dashboards allow you to query events
    #   in any event data store type. You can add up to 10 widgets to a
    #   custom dashboard. You can manually refresh a custom dashboard, or
    #   you can set a refresh schedule.
    #
    # * **Highlights dashboard** - You can create the Highlights dashboard
    #   to see a summary of key user activities and API usage across all
    #   your event data stores. CloudTrail Lake manages the Highlights
    #   dashboard and refreshes the dashboard every 6 hours. To create the
    #   Highlights dashboard, you must set and enable a refresh schedule.
    #
    # CloudTrail runs queries to populate the dashboard's widgets during a
    # manual or scheduled refresh. CloudTrail must be granted permissions to
    # run the `StartQuery` operation on your behalf. To provide permissions,
    # run the `PutResourcePolicy` operation to attach a resource-based
    # policy to each event data store. For more information, see [Example:
    # Allow CloudTrail to run queries to populate a dashboard][1] in the
    # *CloudTrail User Guide*.
    #
    # To set a refresh schedule, CloudTrail must be granted permissions to
    # run the `StartDashboardRefresh` operation to refresh the dashboard on
    # your behalf. To provide permissions, run the `PutResourcePolicy`
    # operation to attach a resource-based policy to the dashboard. For more
    # information, see [ Resource-based policy example for a dashboard][2]
    # in the *CloudTrail User Guide*.
    #
    # For more information about dashboards, see [CloudTrail Lake
    # dashboards][3] in the *CloudTrail User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard
    # [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-dashboards
    # [3]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-dashboard.html
    #
    # @option params [required, String] :name
    #   The name of the dashboard. The name must be unique to your account.
    #
    #   To create the Highlights dashboard, the name must be
    #   `AWSCloudTrail-Highlights`.
    #
    # @option params [Types::RefreshSchedule] :refresh_schedule
    #   The refresh schedule configuration for the dashboard.
    #
    #   To create the Highlights dashboard, you must set a refresh schedule
    #   and set the `Status` to `ENABLED`. The `Unit` for the refresh schedule
    #   must be `HOURS` and the `Value` must be `6`.
    #
    # @option params [Array<Types::Tag>] :tags_list
    #   A list of tags.
    #
    # @option params [Boolean] :termination_protection_enabled
    #   Specifies whether termination protection is enabled for the dashboard.
    #   If termination protection is enabled, you cannot delete the dashboard
    #   until termination protection is disabled.
    #
    # @option params [Array<Types::RequestWidget>] :widgets
    #   An array of widgets for a custom dashboard. A custom dashboard can
    #   have a maximum of ten widgets.
    #
    #   You do not need to specify widgets for the Highlights dashboard.
    #
    # @return [Types::CreateDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDashboardResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::CreateDashboardResponse#name #name} => String
    #   * {Types::CreateDashboardResponse#type #type} => String
    #   * {Types::CreateDashboardResponse#widgets #widgets} => Array&lt;Types::Widget&gt;
    #   * {Types::CreateDashboardResponse#tags_list #tags_list} => Array&lt;Types::Tag&gt;
    #   * {Types::CreateDashboardResponse#refresh_schedule #refresh_schedule} => Types::RefreshSchedule
    #   * {Types::CreateDashboardResponse#termination_protection_enabled #termination_protection_enabled} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dashboard({
    #     name: "DashboardName", # required
    #     refresh_schedule: {
    #       frequency: {
    #         unit: "HOURS", # accepts HOURS, DAYS
    #         value: 1,
    #       },
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #       time_of_day: "TimeOfDay",
    #     },
    #     tags_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     termination_protection_enabled: false,
    #     widgets: [
    #       {
    #         query_statement: "QueryStatement", # required
    #         query_parameters: ["QueryParameter"],
    #         view_properties: { # required
    #           "ViewPropertiesKey" => "ViewPropertiesValue",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_arn #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "MANAGED", "CUSTOM"
    #   resp.widgets #=> Array
    #   resp.widgets[0].query_alias #=> String
    #   resp.widgets[0].query_statement #=> String
    #   resp.widgets[0].query_parameters #=> Array
    #   resp.widgets[0].query_parameters[0] #=> String
    #   resp.widgets[0].view_properties #=> Hash
    #   resp.widgets[0].view_properties["ViewPropertiesKey"] #=> String
    #   resp.tags_list #=> Array
    #   resp.tags_list[0].key #=> String
    #   resp.tags_list[0].value #=> String
    #   resp.refresh_schedule.frequency.unit #=> String, one of "HOURS", "DAYS"
    #   resp.refresh_schedule.frequency.value #=> Integer
    #   resp.refresh_schedule.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.refresh_schedule.time_of_day #=> String
    #   resp.termination_protection_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateDashboard AWS API Documentation
    #
    # @overload create_dashboard(params = {})
    # @param [Hash] params ({})
    def create_dashboard(params = {}, options = {})
      req = build_request(:create_dashboard, params)
      req.send_request(options)
    end

    # Creates a new event data store.
    #
    # @option params [required, String] :name
    #   The name of the event data store.
    #
    # @option params [Array<Types::AdvancedEventSelector>] :advanced_event_selectors
    #   The advanced event selectors to use to select the events for the data
    #   store. You can configure up to five advanced event selectors for each
    #   event data store.
    #
    #   For more information about how to use advanced event selectors to log
    #   CloudTrail events, see [Log events by using advanced event
    #   selectors][1] in the CloudTrail User Guide.
    #
    #   For more information about how to use advanced event selectors to
    #   include Config configuration items in your event data store, see
    #   [Create an event data store for Config configuration items][2] in the
    #   CloudTrail User Guide.
    #
    #   For more information about how to use advanced event selectors to
    #   include events outside of Amazon Web Services events in your event
    #   data store, see [Create an integration to log events from outside
    #   Amazon Web Services][3] in the CloudTrail User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced
    #   [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-eds-cli.html#lake-cli-create-eds-config
    #   [3]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-integrations-cli.html#lake-cli-create-integration
    #
    # @option params [Boolean] :multi_region_enabled
    #   Specifies whether the event data store includes events from all
    #   Regions, or only from the Region in which the event data store is
    #   created.
    #
    # @option params [Boolean] :organization_enabled
    #   Specifies whether an event data store collects events logged for an
    #   organization in Organizations.
    #
    # @option params [Integer] :retention_period
    #   The retention period of the event data store, in days. If
    #   `BillingMode` is set to `EXTENDABLE_RETENTION_PRICING`, you can set a
    #   retention period of up to 3653 days, the equivalent of 10 years. If
    #   `BillingMode` is set to `FIXED_RETENTION_PRICING`, you can set a
    #   retention period of up to 2557 days, the equivalent of seven years.
    #
    #   CloudTrail Lake determines whether to retain an event by checking if
    #   the `eventTime` of the event is within the specified retention period.
    #   For example, if you set a retention period of 90 days, CloudTrail will
    #   remove events when the `eventTime` is older than 90 days.
    #
    #   <note markdown="1"> If you plan to copy trail events to this event data store, we
    #   recommend that you consider both the age of the events that you want
    #   to copy as well as how long you want to keep the copied events in your
    #   event data store. For example, if you copy trail events that are 5
    #   years old and specify a retention period of 7 years, the event data
    #   store will retain those events for two years.
    #
    #    </note>
    #
    # @option params [Boolean] :termination_protection_enabled
    #   Specifies whether termination protection is enabled for the event data
    #   store. If termination protection is enabled, you cannot delete the
    #   event data store until termination protection is disabled.
    #
    # @option params [Array<Types::Tag>] :tags_list
    #   A list of tags.
    #
    # @option params [String] :kms_key_id
    #   Specifies the KMS key ID to use to encrypt the events delivered by
    #   CloudTrail. The value can be an alias name prefixed by `alias/`, a
    #   fully specified ARN to an alias, a fully specified ARN to a key, or a
    #   globally unique identifier.
    #
    #   Disabling or deleting the KMS key, or removing CloudTrail permissions
    #   on the key, prevents CloudTrail from logging events to the event data
    #   store, and prevents users from querying the data in the event data
    #   store that was encrypted with the key. After you associate an event
    #   data store with a KMS key, the KMS key cannot be removed or changed.
    #   Before you disable or delete a KMS key that you are using with an
    #   event data store, delete or back up your event data store.
    #
    #   CloudTrail also supports KMS multi-Region keys. For more information
    #   about multi-Region keys, see [Using multi-Region keys][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #   Examples:
    #
    #   * `alias/MyAliasName`
    #
    #   * `arn:aws:kms:us-east-2:123456789012:alias/MyAliasName`
    #
    #   * `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #
    #   * `12345678-1234-1234-1234-123456789012`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    #
    # @option params [Boolean] :start_ingestion
    #   Specifies whether the event data store should start ingesting live
    #   events. The default is true.
    #
    # @option params [String] :billing_mode
    #   The billing mode for the event data store determines the cost for
    #   ingesting events and the default and maximum retention period for the
    #   event data store.
    #
    #   The following are the possible values:
    #
    #   * `EXTENDABLE_RETENTION_PRICING` - This billing mode is generally
    #     recommended if you want a flexible retention period of up to 3653
    #     days (about 10 years). The default retention period for this billing
    #     mode is 366 days.
    #
    #   * `FIXED_RETENTION_PRICING` - This billing mode is recommended if you
    #     expect to ingest more than 25 TB of event data per month and need a
    #     retention period of up to 2557 days (about 7 years). The default
    #     retention period for this billing mode is 2557 days.
    #
    #   The default value is `EXTENDABLE_RETENTION_PRICING`.
    #
    #   For more information about CloudTrail pricing, see [CloudTrail
    #   Pricing][1] and [Managing CloudTrail Lake costs][2].
    #
    #
    #
    #   [1]: http://aws.amazon.com/cloudtrail/pricing/
    #   [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-manage-costs.html
    #
    # @return [Types::CreateEventDataStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventDataStoreResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::CreateEventDataStoreResponse#name #name} => String
    #   * {Types::CreateEventDataStoreResponse#status #status} => String
    #   * {Types::CreateEventDataStoreResponse#advanced_event_selectors #advanced_event_selectors} => Array&lt;Types::AdvancedEventSelector&gt;
    #   * {Types::CreateEventDataStoreResponse#multi_region_enabled #multi_region_enabled} => Boolean
    #   * {Types::CreateEventDataStoreResponse#organization_enabled #organization_enabled} => Boolean
    #   * {Types::CreateEventDataStoreResponse#retention_period #retention_period} => Integer
    #   * {Types::CreateEventDataStoreResponse#termination_protection_enabled #termination_protection_enabled} => Boolean
    #   * {Types::CreateEventDataStoreResponse#tags_list #tags_list} => Array&lt;Types::Tag&gt;
    #   * {Types::CreateEventDataStoreResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::CreateEventDataStoreResponse#updated_timestamp #updated_timestamp} => Time
    #   * {Types::CreateEventDataStoreResponse#kms_key_id #kms_key_id} => String
    #   * {Types::CreateEventDataStoreResponse#billing_mode #billing_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_data_store({
    #     name: "EventDataStoreName", # required
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"],
    #           },
    #         ],
    #       },
    #     ],
    #     multi_region_enabled: false,
    #     organization_enabled: false,
    #     retention_period: 1,
    #     termination_protection_enabled: false,
    #     tags_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     kms_key_id: "EventDataStoreKmsKeyId",
    #     start_ingestion: false,
    #     billing_mode: "EXTENDABLE_RETENTION_PRICING", # accepts EXTENDABLE_RETENTION_PRICING, FIXED_RETENTION_PRICING
    #   })
    #
    # @example Response structure
    #
    #   resp.event_data_store_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATED", "ENABLED", "PENDING_DELETION", "STARTING_INGESTION", "STOPPING_INGESTION", "STOPPED_INGESTION"
    #   resp.advanced_event_selectors #=> Array
    #   resp.advanced_event_selectors[0].name #=> String
    #   resp.advanced_event_selectors[0].field_selectors #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #   resp.multi_region_enabled #=> Boolean
    #   resp.organization_enabled #=> Boolean
    #   resp.retention_period #=> Integer
    #   resp.termination_protection_enabled #=> Boolean
    #   resp.tags_list #=> Array
    #   resp.tags_list[0].key #=> String
    #   resp.tags_list[0].value #=> String
    #   resp.created_timestamp #=> Time
    #   resp.updated_timestamp #=> Time
    #   resp.kms_key_id #=> String
    #   resp.billing_mode #=> String, one of "EXTENDABLE_RETENTION_PRICING", "FIXED_RETENTION_PRICING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateEventDataStore AWS API Documentation
    #
    # @overload create_event_data_store(params = {})
    # @param [Hash] params ({})
    def create_event_data_store(params = {}, options = {})
      req = build_request(:create_event_data_store, params)
      req.send_request(options)
    end

    # Creates a trail that specifies the settings for delivery of log data
    # to an Amazon S3 bucket.
    #
    # @option params [required, String] :name
    #   Specifies the name of the trail. The name must meet the following
    #   requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    # @option params [required, String] :s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files. For information about bucket naming rules, see [Bucket
    #   naming rules][1] in the *Amazon Simple Storage Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html
    #
    # @option params [String] :s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
    #   length is 200 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files
    #
    # @option params [String] :sns_topic_name
    #   Specifies the name or ARN of the Amazon SNS topic defined for
    #   notification of log file delivery. The maximum length is 256
    #   characters.
    #
    # @option params [Boolean] :include_global_service_events
    #   Specifies whether the trail is publishing events from global services
    #   such as IAM to the log files.
    #
    # @option params [Boolean] :is_multi_region_trail
    #   Specifies whether the trail is created in the current Region or in all
    #   Regions. The default is false, which creates a trail only in the
    #   Region where you are signed in. As a best practice, consider creating
    #   trails that log events in all Regions.
    #
    # @option params [Boolean] :enable_log_file_validation
    #   Specifies whether log file integrity validation is enabled. The
    #   default is false.
    #
    #   <note markdown="1"> When you disable log file integrity validation, the chain of digest
    #   files is broken after one hour. CloudTrail does not create digest
    #   files for log files that were delivered during a period in which log
    #   file integrity validation was disabled. For example, if you enable log
    #   file integrity validation at noon on January 1, disable it at noon on
    #   January 2, and re-enable it at noon on January 10, digest files will
    #   not be created for the log files delivered from noon on January 2 to
    #   noon on January 10. The same applies whenever you stop CloudTrail
    #   logging or delete a trail.
    #
    #    </note>
    #
    # @option params [String] :cloud_watch_logs_log_group_arn
    #   Specifies a log group name using an Amazon Resource Name (ARN), a
    #   unique identifier that represents the log group to which CloudTrail
    #   logs will be delivered. You must use a log group that exists in your
    #   account.
    #
    #   Not required unless you specify `CloudWatchLogsRoleArn`.
    #
    # @option params [String] :cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to write
    #   to a user's log group. You must use a role that exists in your
    #   account.
    #
    # @option params [String] :kms_key_id
    #   Specifies the KMS key ID to use to encrypt the logs and digest files
    #   delivered by CloudTrail. The value can be an alias name prefixed by
    #   `alias/`, a fully specified ARN to an alias, a fully specified ARN to
    #   a key, or a globally unique identifier.
    #
    #   CloudTrail also supports KMS multi-Region keys. For more information
    #   about multi-Region keys, see [Using multi-Region keys][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #   Examples:
    #
    #   * `alias/MyAliasName`
    #
    #   * `arn:aws:kms:us-east-2:123456789012:alias/MyAliasName`
    #
    #   * `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #
    #   * `12345678-1234-1234-1234-123456789012`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    #
    # @option params [Boolean] :is_organization_trail
    #   Specifies whether the trail is created for all accounts in an
    #   organization in Organizations, or only for the current Amazon Web
    #   Services account. The default is false, and cannot be true unless the
    #   call is made on behalf of an Amazon Web Services account that is the
    #   management account or delegated administrator account for an
    #   organization in Organizations.
    #
    # @option params [Array<Types::Tag>] :tags_list
    #   A list of tags.
    #
    # @return [Types::CreateTrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrailResponse#name #name} => String
    #   * {Types::CreateTrailResponse#s3_bucket_name #s3_bucket_name} => String
    #   * {Types::CreateTrailResponse#s3_key_prefix #s3_key_prefix} => String
    #   * {Types::CreateTrailResponse#sns_topic_name #sns_topic_name} => String
    #   * {Types::CreateTrailResponse#sns_topic_arn #sns_topic_arn} => String
    #   * {Types::CreateTrailResponse#include_global_service_events #include_global_service_events} => Boolean
    #   * {Types::CreateTrailResponse#is_multi_region_trail #is_multi_region_trail} => Boolean
    #   * {Types::CreateTrailResponse#trail_arn #trail_arn} => String
    #   * {Types::CreateTrailResponse#log_file_validation_enabled #log_file_validation_enabled} => Boolean
    #   * {Types::CreateTrailResponse#cloud_watch_logs_log_group_arn #cloud_watch_logs_log_group_arn} => String
    #   * {Types::CreateTrailResponse#cloud_watch_logs_role_arn #cloud_watch_logs_role_arn} => String
    #   * {Types::CreateTrailResponse#kms_key_id #kms_key_id} => String
    #   * {Types::CreateTrailResponse#is_organization_trail #is_organization_trail} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trail({
    #     name: "String", # required
    #     s3_bucket_name: "String", # required
    #     s3_key_prefix: "String",
    #     sns_topic_name: "String",
    #     include_global_service_events: false,
    #     is_multi_region_trail: false,
    #     enable_log_file_validation: false,
    #     cloud_watch_logs_log_group_arn: "String",
    #     cloud_watch_logs_role_arn: "String",
    #     kms_key_id: "String",
    #     is_organization_trail: false,
    #     tags_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.s3_bucket_name #=> String
    #   resp.s3_key_prefix #=> String
    #   resp.sns_topic_name #=> String
    #   resp.sns_topic_arn #=> String
    #   resp.include_global_service_events #=> Boolean
    #   resp.is_multi_region_trail #=> Boolean
    #   resp.trail_arn #=> String
    #   resp.log_file_validation_enabled #=> Boolean
    #   resp.cloud_watch_logs_log_group_arn #=> String
    #   resp.cloud_watch_logs_role_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.is_organization_trail #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateTrail AWS API Documentation
    #
    # @overload create_trail(params = {})
    # @param [Hash] params ({})
    def create_trail(params = {}, options = {})
      req = build_request(:create_trail, params)
      req.send_request(options)
    end

    # Deletes a channel.
    #
    # @option params [required, String] :channel
    #   The ARN or the `UUID` value of the channel that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel({
    #     channel: "ChannelArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteChannel AWS API Documentation
    #
    # @overload delete_channel(params = {})
    # @param [Hash] params ({})
    def delete_channel(params = {}, options = {})
      req = build_request(:delete_channel, params)
      req.send_request(options)
    end

    # Deletes the specified dashboard. You cannot delete a dashboard that
    # has termination protection enabled.
    #
    # @option params [required, String] :dashboard_id
    #   The name or ARN for the dashboard.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dashboard({
    #     dashboard_id: "DashboardArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteDashboard AWS API Documentation
    #
    # @overload delete_dashboard(params = {})
    # @param [Hash] params ({})
    def delete_dashboard(params = {}, options = {})
      req = build_request(:delete_dashboard, params)
      req.send_request(options)
    end

    # Disables the event data store specified by `EventDataStore`, which
    # accepts an event data store ARN. After you run `DeleteEventDataStore`,
    # the event data store enters a `PENDING_DELETION` state, and is
    # automatically deleted after a wait period of seven days.
    # `TerminationProtectionEnabled` must be set to `False` on the event
    # data store and the `FederationStatus` must be `DISABLED`. You cannot
    # delete an event data store if `TerminationProtectionEnabled` is `True`
    # or the `FederationStatus` is `ENABLED`.
    #
    # After you run `DeleteEventDataStore` on an event data store, you
    # cannot run `ListQueries`, `DescribeQuery`, or `GetQueryResults` on
    # queries that are using an event data store in a `PENDING_DELETION`
    # state. An event data store in the `PENDING_DELETION` state does not
    # incur costs.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or the ID suffix of the ARN) of the event data store to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_data_store({
    #     event_data_store: "EventDataStoreArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteEventDataStore AWS API Documentation
    #
    # @overload delete_event_data_store(params = {})
    # @param [Hash] params ({})
    def delete_event_data_store(params = {}, options = {})
      req = build_request(:delete_event_data_store, params)
      req.send_request(options)
    end

    # Deletes the resource-based policy attached to the CloudTrail event
    # data store, dashboard, or channel.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the CloudTrail event data store,
    #   dashboard, or channel you're deleting the resource-based policy from.
    #
    #   Example event data store ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE`
    #
    #   Example dashboard ARN format:
    #   `arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash`
    #
    #   Example channel ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes a trail. This operation must be called from the Region in
    # which the trail was created. `DeleteTrail` cannot be called on the
    # shadow trails (replicated trails in other Regions) of a trail that is
    # enabled in all Regions.
    #
    # While deleting a CloudTrail trail is an irreversible action,
    # CloudTrail does not delete log files in the Amazon S3 bucket for that
    # trail, the Amazon S3 bucket itself, or the CloudWatchlog group to
    # which the trail delivers events. Deleting a multi-Region trail will
    # stop logging of events in all Amazon Web Services Regions enabled in
    # your Amazon Web Services account. Deleting a single-Region trail will
    # stop logging of events in that Region only. It will not stop logging
    # of events in other Regions even if the trails in those other Regions
    # have identical names to the deleted trail.
    #
    #  For information about account closure and deletion of CloudTrail
    # trails, see
    # [https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-account-closure.html][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-account-closure.html
    #
    # @option params [required, String] :name
    #   Specifies the name or the CloudTrail ARN of the trail to be deleted.
    #   The following is the format of a trail ARN.
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trail({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteTrail AWS API Documentation
    #
    # @overload delete_trail(params = {})
    # @param [Hash] params ({})
    def delete_trail(params = {}, options = {})
      req = build_request(:delete_trail, params)
      req.send_request(options)
    end

    # Removes CloudTrail delegated administrator permissions from a member
    # account in an organization.
    #
    # @option params [required, String] :delegated_admin_account_id
    #   A delegated administrator account ID. This is a member account in an
    #   organization that is currently designated as a delegated
    #   administrator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_organization_delegated_admin({
    #     delegated_admin_account_id: "AccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeregisterOrganizationDelegatedAdmin AWS API Documentation
    #
    # @overload deregister_organization_delegated_admin(params = {})
    # @param [Hash] params ({})
    def deregister_organization_delegated_admin(params = {}, options = {})
      req = build_request(:deregister_organization_delegated_admin, params)
      req.send_request(options)
    end

    # Returns metadata about a query, including query run time in
    # milliseconds, number of events scanned and matched, and query status.
    # If the query results were delivered to an S3 bucket, the response also
    # provides the S3 URI and the delivery status.
    #
    # You must specify either `QueryId` or `QueryAlias`. Specifying the
    # `QueryAlias` parameter returns information about the last query run
    # for the alias. You can provide `RefreshId` along with `QueryAlias` to
    # view the query results of a dashboard query for the specified
    # `RefreshId`.
    #
    # @option params [String] :event_data_store
    #   The ARN (or the ID suffix of the ARN) of an event data store on which
    #   the specified query was run.
    #
    # @option params [String] :query_id
    #   The query ID.
    #
    # @option params [String] :query_alias
    #   The alias that identifies a query template.
    #
    # @option params [String] :refresh_id
    #   The ID of the dashboard refresh.
    #
    # @option params [String] :event_data_store_owner_account_id
    #   The account ID of the event data store owner.
    #
    # @return [Types::DescribeQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQueryResponse#query_id #query_id} => String
    #   * {Types::DescribeQueryResponse#query_string #query_string} => String
    #   * {Types::DescribeQueryResponse#query_status #query_status} => String
    #   * {Types::DescribeQueryResponse#query_statistics #query_statistics} => Types::QueryStatisticsForDescribeQuery
    #   * {Types::DescribeQueryResponse#error_message #error_message} => String
    #   * {Types::DescribeQueryResponse#delivery_s3_uri #delivery_s3_uri} => String
    #   * {Types::DescribeQueryResponse#delivery_status #delivery_status} => String
    #   * {Types::DescribeQueryResponse#prompt #prompt} => String
    #   * {Types::DescribeQueryResponse#event_data_store_owner_account_id #event_data_store_owner_account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_query({
    #     event_data_store: "EventDataStoreArn",
    #     query_id: "UUID",
    #     query_alias: "QueryAlias",
    #     refresh_id: "RefreshId",
    #     event_data_store_owner_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #   resp.query_string #=> String
    #   resp.query_status #=> String, one of "QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"
    #   resp.query_statistics.events_matched #=> Integer
    #   resp.query_statistics.events_scanned #=> Integer
    #   resp.query_statistics.bytes_scanned #=> Integer
    #   resp.query_statistics.execution_time_in_millis #=> Integer
    #   resp.query_statistics.creation_time #=> Time
    #   resp.error_message #=> String
    #   resp.delivery_s3_uri #=> String
    #   resp.delivery_status #=> String, one of "SUCCESS", "FAILED", "FAILED_SIGNING_FILE", "PENDING", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "ACCESS_DENIED_SIGNING_FILE", "CANCELLED", "UNKNOWN"
    #   resp.prompt #=> String
    #   resp.event_data_store_owner_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DescribeQuery AWS API Documentation
    #
    # @overload describe_query(params = {})
    # @param [Hash] params ({})
    def describe_query(params = {}, options = {})
      req = build_request(:describe_query, params)
      req.send_request(options)
    end

    # Retrieves settings for one or more trails associated with the current
    # Region for your account.
    #
    # @option params [Array<String>] :trail_name_list
    #   Specifies a list of trail names, trail ARNs, or both, of the trails to
    #   describe. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    #   If an empty list is specified, information for the trail in the
    #   current Region is returned.
    #
    #   * If an empty list is specified and `IncludeShadowTrails` is false,
    #     then information for all trails in the current Region is returned.
    #
    #   * If an empty list is specified and IncludeShadowTrails is null or
    #     true, then information for all trails in the current Region and any
    #     associated shadow trails in other Regions is returned.
    #
    #   <note markdown="1"> If one or more trail names are specified, information is returned only
    #   if the names match the names of trails belonging only to the current
    #   Region and current account. To return information about a trail in
    #   another Region, you must specify its trail ARN.
    #
    #    </note>
    #
    # @option params [Boolean] :include_shadow_trails
    #   Specifies whether to include shadow trails in the response. A shadow
    #   trail is the replication in a Region of a trail that was created in a
    #   different Region, or in the case of an organization trail, the
    #   replication of an organization trail in member accounts. If you do not
    #   include shadow trails, organization trails in a member account and
    #   Region replication trails will not be returned. The default is true.
    #
    # @return [Types::DescribeTrailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrailsResponse#trail_list #trail_list} => Array&lt;Types::Trail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trails({
    #     trail_name_list: ["String"],
    #     include_shadow_trails: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_list #=> Array
    #   resp.trail_list[0].name #=> String
    #   resp.trail_list[0].s3_bucket_name #=> String
    #   resp.trail_list[0].s3_key_prefix #=> String
    #   resp.trail_list[0].sns_topic_name #=> String
    #   resp.trail_list[0].sns_topic_arn #=> String
    #   resp.trail_list[0].include_global_service_events #=> Boolean
    #   resp.trail_list[0].is_multi_region_trail #=> Boolean
    #   resp.trail_list[0].home_region #=> String
    #   resp.trail_list[0].trail_arn #=> String
    #   resp.trail_list[0].log_file_validation_enabled #=> Boolean
    #   resp.trail_list[0].cloud_watch_logs_log_group_arn #=> String
    #   resp.trail_list[0].cloud_watch_logs_role_arn #=> String
    #   resp.trail_list[0].kms_key_id #=> String
    #   resp.trail_list[0].has_custom_event_selectors #=> Boolean
    #   resp.trail_list[0].has_insight_selectors #=> Boolean
    #   resp.trail_list[0].is_organization_trail #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DescribeTrails AWS API Documentation
    #
    # @overload describe_trails(params = {})
    # @param [Hash] params ({})
    def describe_trails(params = {}, options = {})
      req = build_request(:describe_trails, params)
      req.send_request(options)
    end

    # Disables Lake query federation on the specified event data store. When
    # you disable federation, CloudTrail disables the integration with Glue,
    # Lake Formation, and Amazon Athena. After disabling Lake query
    # federation, you can no longer query your event data in Amazon Athena.
    #
    # No CloudTrail Lake data is deleted when you disable federation and you
    # can continue to run queries in CloudTrail Lake.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or ID suffix of the ARN) of the event data store for which
    #   you want to disable Lake query federation.
    #
    # @return [Types::DisableFederationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableFederationResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::DisableFederationResponse#federation_status #federation_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_federation({
    #     event_data_store: "EventDataStoreArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_data_store_arn #=> String
    #   resp.federation_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DisableFederation AWS API Documentation
    #
    # @overload disable_federation(params = {})
    # @param [Hash] params ({})
    def disable_federation(params = {}, options = {})
      req = build_request(:disable_federation, params)
      req.send_request(options)
    end

    # Enables Lake query federation on the specified event data store.
    # Federating an event data store lets you view the metadata associated
    # with the event data store in the Glue [Data Catalog][1] and run SQL
    # queries against your event data using Amazon Athena. The table
    # metadata stored in the Glue Data Catalog lets the Athena query engine
    # know how to find, read, and process the data that you want to query.
    #
    # When you enable Lake query federation, CloudTrail creates a managed
    # database named `aws:cloudtrail` (if the database doesn't already
    # exist) and a managed federated table in the Glue Data Catalog. The
    # event data store ID is used for the table name. CloudTrail registers
    # the role ARN and event data store in [Lake Formation][2], the service
    # responsible for allowing fine-grained access control of the federated
    # resources in the Glue Data Catalog.
    #
    # For more information about Lake query federation, see [Federate an
    # event data store][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/glue/latest/dg/components-overview.html#data-catalog-intro
    # [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation-lake-formation.html
    # [3]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or ID suffix of the ARN) of the event data store for which
    #   you want to enable Lake query federation.
    #
    # @option params [required, String] :federation_role_arn
    #   The ARN of the federation role to use for the event data store. Amazon
    #   Web Services services like Lake Formation use this federation role to
    #   access data for the federated event data store. The federation role
    #   must exist in your account and provide the [required minimum
    #   permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html#query-federation-permissions-role
    #
    # @return [Types::EnableFederationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableFederationResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::EnableFederationResponse#federation_status #federation_status} => String
    #   * {Types::EnableFederationResponse#federation_role_arn #federation_role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_federation({
    #     event_data_store: "EventDataStoreArn", # required
    #     federation_role_arn: "FederationRoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_data_store_arn #=> String
    #   resp.federation_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED"
    #   resp.federation_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/EnableFederation AWS API Documentation
    #
    # @overload enable_federation(params = {})
    # @param [Hash] params ({})
    def enable_federation(params = {}, options = {})
      req = build_request(:enable_federation, params)
      req.send_request(options)
    end

    # Generates a query from a natural language prompt. This operation uses
    # generative artificial intelligence (generative AI) to produce a
    # ready-to-use SQL query from the prompt.
    #
    # The prompt can be a question or a statement about the event data in
    # your event data store. For example, you can enter prompts like "What
    # are my top errors in the past month?" and “Give me a list of users
    # that used SNS.”
    #
    # The prompt must be in English. For information about limitations,
    # permissions, and supported Regions, see [Create CloudTrail Lake
    # queries from natural language prompts][1] in the <i>CloudTrail </i>
    # user guide.
    #
    # <note markdown="1"> Do not include any personally identifying, confidential, or sensitive
    # information in your prompts.
    #
    #  This feature uses generative AI large language models (LLMs); we
    # recommend double-checking the LLM response.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-query-generator.html
    #
    # @option params [required, Array<String>] :event_data_stores
    #   The ARN (or ID suffix of the ARN) of the event data store that you
    #   want to query. You can only specify one event data store.
    #
    # @option params [required, String] :prompt
    #   The prompt that you want to use to generate the query. The prompt must
    #   be in English. For example prompts, see [Example prompts][1] in the
    #   <i>CloudTrail </i> user guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-query-generator.html#lake-query-generator-examples
    #
    # @return [Types::GenerateQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateQueryResponse#query_statement #query_statement} => String
    #   * {Types::GenerateQueryResponse#query_alias #query_alias} => String
    #   * {Types::GenerateQueryResponse#event_data_store_owner_account_id #event_data_store_owner_account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_query({
    #     event_data_stores: ["EventDataStoreArn"], # required
    #     prompt: "Prompt", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.query_statement #=> String
    #   resp.query_alias #=> String
    #   resp.event_data_store_owner_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GenerateQuery AWS API Documentation
    #
    # @overload generate_query(params = {})
    # @param [Hash] params ({})
    def generate_query(params = {}, options = {})
      req = build_request(:generate_query, params)
      req.send_request(options)
    end

    # Returns information about a specific channel.
    #
    # @option params [required, String] :channel
    #   The ARN or `UUID` of a channel.
    #
    # @return [Types::GetChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelResponse#channel_arn #channel_arn} => String
    #   * {Types::GetChannelResponse#name #name} => String
    #   * {Types::GetChannelResponse#source #source} => String
    #   * {Types::GetChannelResponse#source_config #source_config} => Types::SourceConfig
    #   * {Types::GetChannelResponse#destinations #destinations} => Array&lt;Types::Destination&gt;
    #   * {Types::GetChannelResponse#ingestion_status #ingestion_status} => Types::IngestionStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel({
    #     channel: "ChannelArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.name #=> String
    #   resp.source #=> String
    #   resp.source_config.apply_to_all_regions #=> Boolean
    #   resp.source_config.advanced_event_selectors #=> Array
    #   resp.source_config.advanced_event_selectors[0].name #=> String
    #   resp.source_config.advanced_event_selectors[0].field_selectors #=> Array
    #   resp.source_config.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.source_config.advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.source_config.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.source_config.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.source_config.advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.source_config.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.source_config.advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.source_config.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.source_config.advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.source_config.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.source_config.advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.source_config.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.source_config.advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].type #=> String, one of "EVENT_DATA_STORE", "AWS_SERVICE"
    #   resp.destinations[0].location #=> String
    #   resp.ingestion_status.latest_ingestion_success_time #=> Time
    #   resp.ingestion_status.latest_ingestion_success_event_id #=> String
    #   resp.ingestion_status.latest_ingestion_error_code #=> String
    #   resp.ingestion_status.latest_ingestion_attempt_time #=> Time
    #   resp.ingestion_status.latest_ingestion_attempt_event_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetChannel AWS API Documentation
    #
    # @overload get_channel(params = {})
    # @param [Hash] params ({})
    def get_channel(params = {}, options = {})
      req = build_request(:get_channel, params)
      req.send_request(options)
    end

    # Returns the specified dashboard.
    #
    # @option params [required, String] :dashboard_id
    #   The name or ARN for the dashboard.
    #
    # @return [Types::GetDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDashboardResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::GetDashboardResponse#type #type} => String
    #   * {Types::GetDashboardResponse#status #status} => String
    #   * {Types::GetDashboardResponse#widgets #widgets} => Array&lt;Types::Widget&gt;
    #   * {Types::GetDashboardResponse#refresh_schedule #refresh_schedule} => Types::RefreshSchedule
    #   * {Types::GetDashboardResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetDashboardResponse#updated_timestamp #updated_timestamp} => Time
    #   * {Types::GetDashboardResponse#last_refresh_id #last_refresh_id} => String
    #   * {Types::GetDashboardResponse#last_refresh_failure_reason #last_refresh_failure_reason} => String
    #   * {Types::GetDashboardResponse#termination_protection_enabled #termination_protection_enabled} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dashboard({
    #     dashboard_id: "DashboardArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_arn #=> String
    #   resp.type #=> String, one of "MANAGED", "CUSTOM"
    #   resp.status #=> String, one of "CREATING", "CREATED", "UPDATING", "UPDATED", "DELETING"
    #   resp.widgets #=> Array
    #   resp.widgets[0].query_alias #=> String
    #   resp.widgets[0].query_statement #=> String
    #   resp.widgets[0].query_parameters #=> Array
    #   resp.widgets[0].query_parameters[0] #=> String
    #   resp.widgets[0].view_properties #=> Hash
    #   resp.widgets[0].view_properties["ViewPropertiesKey"] #=> String
    #   resp.refresh_schedule.frequency.unit #=> String, one of "HOURS", "DAYS"
    #   resp.refresh_schedule.frequency.value #=> Integer
    #   resp.refresh_schedule.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.refresh_schedule.time_of_day #=> String
    #   resp.created_timestamp #=> Time
    #   resp.updated_timestamp #=> Time
    #   resp.last_refresh_id #=> String
    #   resp.last_refresh_failure_reason #=> String
    #   resp.termination_protection_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetDashboard AWS API Documentation
    #
    # @overload get_dashboard(params = {})
    # @param [Hash] params ({})
    def get_dashboard(params = {}, options = {})
      req = build_request(:get_dashboard, params)
      req.send_request(options)
    end

    # Retrieves the current event configuration settings for the specified
    # event data store or trail. The response includes maximum event size
    # configuration, the context key selectors configured for the event data
    # store, and any aggregation settings configured for the trail.
    #
    # @option params [String] :trail_name
    #   The name of the trail for which you want to retrieve event
    #   configuration settings.
    #
    # @option params [String] :event_data_store
    #   The Amazon Resource Name (ARN) or ID suffix of the ARN of the event
    #   data store for which you want to retrieve event configuration
    #   settings.
    #
    # @return [Types::GetEventConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventConfigurationResponse#trail_arn #trail_arn} => String
    #   * {Types::GetEventConfigurationResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::GetEventConfigurationResponse#max_event_size #max_event_size} => String
    #   * {Types::GetEventConfigurationResponse#context_key_selectors #context_key_selectors} => Array&lt;Types::ContextKeySelector&gt;
    #   * {Types::GetEventConfigurationResponse#aggregation_configurations #aggregation_configurations} => Array&lt;Types::AggregationConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_configuration({
    #     trail_name: "String",
    #     event_data_store: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_arn #=> String
    #   resp.event_data_store_arn #=> String
    #   resp.max_event_size #=> String, one of "Standard", "Large"
    #   resp.context_key_selectors #=> Array
    #   resp.context_key_selectors[0].type #=> String, one of "TagContext", "RequestContext"
    #   resp.context_key_selectors[0].equals #=> Array
    #   resp.context_key_selectors[0].equals[0] #=> String
    #   resp.aggregation_configurations #=> Array
    #   resp.aggregation_configurations[0].templates #=> Array
    #   resp.aggregation_configurations[0].templates[0] #=> String, one of "API_ACTIVITY", "RESOURCE_ACCESS", "USER_ACTIONS"
    #   resp.aggregation_configurations[0].event_category #=> String, one of "Data"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetEventConfiguration AWS API Documentation
    #
    # @overload get_event_configuration(params = {})
    # @param [Hash] params ({})
    def get_event_configuration(params = {}, options = {})
      req = build_request(:get_event_configuration, params)
      req.send_request(options)
    end

    # Returns information about an event data store specified as either an
    # ARN or the ID portion of the ARN.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or ID suffix of the ARN) of the event data store about which
    #   you want information.
    #
    # @return [Types::GetEventDataStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventDataStoreResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::GetEventDataStoreResponse#name #name} => String
    #   * {Types::GetEventDataStoreResponse#status #status} => String
    #   * {Types::GetEventDataStoreResponse#advanced_event_selectors #advanced_event_selectors} => Array&lt;Types::AdvancedEventSelector&gt;
    #   * {Types::GetEventDataStoreResponse#multi_region_enabled #multi_region_enabled} => Boolean
    #   * {Types::GetEventDataStoreResponse#organization_enabled #organization_enabled} => Boolean
    #   * {Types::GetEventDataStoreResponse#retention_period #retention_period} => Integer
    #   * {Types::GetEventDataStoreResponse#termination_protection_enabled #termination_protection_enabled} => Boolean
    #   * {Types::GetEventDataStoreResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetEventDataStoreResponse#updated_timestamp #updated_timestamp} => Time
    #   * {Types::GetEventDataStoreResponse#kms_key_id #kms_key_id} => String
    #   * {Types::GetEventDataStoreResponse#billing_mode #billing_mode} => String
    #   * {Types::GetEventDataStoreResponse#federation_status #federation_status} => String
    #   * {Types::GetEventDataStoreResponse#federation_role_arn #federation_role_arn} => String
    #   * {Types::GetEventDataStoreResponse#partition_keys #partition_keys} => Array&lt;Types::PartitionKey&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_data_store({
    #     event_data_store: "EventDataStoreArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_data_store_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATED", "ENABLED", "PENDING_DELETION", "STARTING_INGESTION", "STOPPING_INGESTION", "STOPPED_INGESTION"
    #   resp.advanced_event_selectors #=> Array
    #   resp.advanced_event_selectors[0].name #=> String
    #   resp.advanced_event_selectors[0].field_selectors #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #   resp.multi_region_enabled #=> Boolean
    #   resp.organization_enabled #=> Boolean
    #   resp.retention_period #=> Integer
    #   resp.termination_protection_enabled #=> Boolean
    #   resp.created_timestamp #=> Time
    #   resp.updated_timestamp #=> Time
    #   resp.kms_key_id #=> String
    #   resp.billing_mode #=> String, one of "EXTENDABLE_RETENTION_PRICING", "FIXED_RETENTION_PRICING"
    #   resp.federation_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED"
    #   resp.federation_role_arn #=> String
    #   resp.partition_keys #=> Array
    #   resp.partition_keys[0].name #=> String
    #   resp.partition_keys[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetEventDataStore AWS API Documentation
    #
    # @overload get_event_data_store(params = {})
    # @param [Hash] params ({})
    def get_event_data_store(params = {}, options = {})
      req = build_request(:get_event_data_store, params)
      req.send_request(options)
    end

    # Describes the settings for the event selectors that you configured for
    # your trail. The information returned for your event selectors includes
    # the following:
    #
    # * If your event selector includes read-only events, write-only events,
    #   or all events. This applies to management events, data events, and
    #   network activity events.
    #
    # * If your event selector includes management events.
    #
    # * If your event selector includes network activity events, the event
    #   sources for which you are logging network activity events.
    #
    # * If your event selector includes data events, the resources on which
    #   you are logging data events.
    #
    # For more information about logging management, data, and network
    # activity events, see the following topics in the *CloudTrail User
    # Guide*:
    #
    # * [Logging management events][1]
    #
    # * [Logging data events][2]
    #
    # * [Logging network activity events][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html
    # [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html
    # [3]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html
    #
    # @option params [required, String] :trail_name
    #   Specifies the name of the trail or trail ARN. If you specify a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If you specify a trail ARN, it must be in the format:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @return [Types::GetEventSelectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventSelectorsResponse#trail_arn #trail_arn} => String
    #   * {Types::GetEventSelectorsResponse#event_selectors #event_selectors} => Array&lt;Types::EventSelector&gt;
    #   * {Types::GetEventSelectorsResponse#advanced_event_selectors #advanced_event_selectors} => Array&lt;Types::AdvancedEventSelector&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_selectors({
    #     trail_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_arn #=> String
    #   resp.event_selectors #=> Array
    #   resp.event_selectors[0].read_write_type #=> String, one of "ReadOnly", "WriteOnly", "All"
    #   resp.event_selectors[0].include_management_events #=> Boolean
    #   resp.event_selectors[0].data_resources #=> Array
    #   resp.event_selectors[0].data_resources[0].type #=> String
    #   resp.event_selectors[0].data_resources[0].values #=> Array
    #   resp.event_selectors[0].data_resources[0].values[0] #=> String
    #   resp.event_selectors[0].exclude_management_event_sources #=> Array
    #   resp.event_selectors[0].exclude_management_event_sources[0] #=> String
    #   resp.advanced_event_selectors #=> Array
    #   resp.advanced_event_selectors[0].name #=> String
    #   resp.advanced_event_selectors[0].field_selectors #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetEventSelectors AWS API Documentation
    #
    # @overload get_event_selectors(params = {})
    # @param [Hash] params ({})
    def get_event_selectors(params = {}, options = {})
      req = build_request(:get_event_selectors, params)
      req.send_request(options)
    end

    # Returns information about a specific import.
    #
    # @option params [required, String] :import_id
    #   The ID for the import.
    #
    # @return [Types::GetImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImportResponse#import_id #import_id} => String
    #   * {Types::GetImportResponse#destinations #destinations} => Array&lt;String&gt;
    #   * {Types::GetImportResponse#import_source #import_source} => Types::ImportSource
    #   * {Types::GetImportResponse#start_event_time #start_event_time} => Time
    #   * {Types::GetImportResponse#end_event_time #end_event_time} => Time
    #   * {Types::GetImportResponse#import_status #import_status} => String
    #   * {Types::GetImportResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetImportResponse#updated_timestamp #updated_timestamp} => Time
    #   * {Types::GetImportResponse#import_statistics #import_statistics} => Types::ImportStatistics
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import({
    #     import_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_id #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0] #=> String
    #   resp.import_source.s3.s3_location_uri #=> String
    #   resp.import_source.s3.s3_bucket_region #=> String
    #   resp.import_source.s3.s3_bucket_access_role_arn #=> String
    #   resp.start_event_time #=> Time
    #   resp.end_event_time #=> Time
    #   resp.import_status #=> String, one of "INITIALIZING", "IN_PROGRESS", "FAILED", "STOPPED", "COMPLETED"
    #   resp.created_timestamp #=> Time
    #   resp.updated_timestamp #=> Time
    #   resp.import_statistics.prefixes_found #=> Integer
    #   resp.import_statistics.prefixes_completed #=> Integer
    #   resp.import_statistics.files_completed #=> Integer
    #   resp.import_statistics.events_completed #=> Integer
    #   resp.import_statistics.failed_entries #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetImport AWS API Documentation
    #
    # @overload get_import(params = {})
    # @param [Hash] params ({})
    def get_import(params = {}, options = {})
      req = build_request(:get_import, params)
      req.send_request(options)
    end

    # Describes the settings for the Insights event selectors that you
    # configured for your trail or event data store. `GetInsightSelectors`
    # shows if CloudTrail Insights logging is enabled and which Insights
    # types are configured with corresponding event categories. If you run
    # `GetInsightSelectors` on a trail or event data store that does not
    # have Insights events enabled, the operation throws the exception
    # `InsightNotEnabledException`
    #
    # Specify either the `EventDataStore` parameter to get Insights event
    # selectors for an event data store, or the `TrailName` parameter to the
    # get Insights event selectors for a trail. You cannot specify these
    # parameters together.
    #
    # For more information, see [Working with CloudTrail Insights][1] in the
    # *CloudTrail User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html
    #
    # @option params [String] :trail_name
    #   Specifies the name of the trail or trail ARN. If you specify a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If you specify a trail ARN, it must be in the format:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    #   You cannot use this parameter with the `EventDataStore` parameter.
    #
    # @option params [String] :event_data_store
    #   Specifies the ARN (or ID suffix of the ARN) of the event data store
    #   for which you want to get Insights selectors.
    #
    #   You cannot use this parameter with the `TrailName` parameter.
    #
    # @return [Types::GetInsightSelectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInsightSelectorsResponse#trail_arn #trail_arn} => String
    #   * {Types::GetInsightSelectorsResponse#insight_selectors #insight_selectors} => Array&lt;Types::InsightSelector&gt;
    #   * {Types::GetInsightSelectorsResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::GetInsightSelectorsResponse#insights_destination #insights_destination} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight_selectors({
    #     trail_name: "String",
    #     event_data_store: "EventDataStoreArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_arn #=> String
    #   resp.insight_selectors #=> Array
    #   resp.insight_selectors[0].insight_type #=> String, one of "ApiCallRateInsight", "ApiErrorRateInsight"
    #   resp.insight_selectors[0].event_categories #=> Array
    #   resp.insight_selectors[0].event_categories[0] #=> String, one of "Management", "Data"
    #   resp.event_data_store_arn #=> String
    #   resp.insights_destination #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetInsightSelectors AWS API Documentation
    #
    # @overload get_insight_selectors(params = {})
    # @param [Hash] params ({})
    def get_insight_selectors(params = {}, options = {})
      req = build_request(:get_insight_selectors, params)
      req.send_request(options)
    end

    # Gets event data results of a query. You must specify the `QueryID`
    # value returned by the `StartQuery` operation.
    #
    # @option params [String] :event_data_store
    #   The ARN (or ID suffix of the ARN) of the event data store against
    #   which the query was run.
    #
    # @option params [required, String] :query_id
    #   The ID of the query for which you want to get results.
    #
    # @option params [String] :next_token
    #   A token you can use to get the next page of query results.
    #
    # @option params [Integer] :max_query_results
    #   The maximum number of query results to display on a single page.
    #
    # @option params [String] :event_data_store_owner_account_id
    #   The account ID of the event data store owner.
    #
    # @return [Types::GetQueryResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryResultsResponse#query_status #query_status} => String
    #   * {Types::GetQueryResultsResponse#query_statistics #query_statistics} => Types::QueryStatistics
    #   * {Types::GetQueryResultsResponse#query_result_rows #query_result_rows} => Array&lt;Array&lt;Hash&lt;String,String&gt;&gt;&gt;
    #   * {Types::GetQueryResultsResponse#next_token #next_token} => String
    #   * {Types::GetQueryResultsResponse#error_message #error_message} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_results({
    #     event_data_store: "EventDataStoreArn",
    #     query_id: "UUID", # required
    #     next_token: "PaginationToken",
    #     max_query_results: 1,
    #     event_data_store_owner_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.query_status #=> String, one of "QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"
    #   resp.query_statistics.results_count #=> Integer
    #   resp.query_statistics.total_results_count #=> Integer
    #   resp.query_statistics.bytes_scanned #=> Integer
    #   resp.query_result_rows #=> Array
    #   resp.query_result_rows[0] #=> Array
    #   resp.query_result_rows[0][0] #=> Hash
    #   resp.query_result_rows[0][0]["QueryResultKey"] #=> String
    #   resp.next_token #=> String
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetQueryResults AWS API Documentation
    #
    # @overload get_query_results(params = {})
    # @param [Hash] params ({})
    def get_query_results(params = {}, options = {})
      req = build_request(:get_query_results, params)
      req.send_request(options)
    end

    # Retrieves the JSON text of the resource-based policy document attached
    # to the CloudTrail event data store, dashboard, or channel.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the CloudTrail event data store,
    #   dashboard, or channel attached to the resource-based policy.
    #
    #   Example event data store ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE`
    #
    #   Example dashboard ARN format:
    #   `arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash`
    #
    #   Example channel ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890`
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#resource_arn #resource_arn} => String
    #   * {Types::GetResourcePolicyResponse#resource_policy #resource_policy} => String
    #   * {Types::GetResourcePolicyResponse#delegated_admin_resource_policy #delegated_admin_resource_policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.resource_policy #=> String
    #   resp.delegated_admin_resource_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Returns settings information for a specified trail.
    #
    # @option params [required, String] :name
    #   The name or the Amazon Resource Name (ARN) of the trail for which you
    #   want to retrieve settings information.
    #
    # @return [Types::GetTrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrailResponse#trail #trail} => Types::Trail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trail({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trail.name #=> String
    #   resp.trail.s3_bucket_name #=> String
    #   resp.trail.s3_key_prefix #=> String
    #   resp.trail.sns_topic_name #=> String
    #   resp.trail.sns_topic_arn #=> String
    #   resp.trail.include_global_service_events #=> Boolean
    #   resp.trail.is_multi_region_trail #=> Boolean
    #   resp.trail.home_region #=> String
    #   resp.trail.trail_arn #=> String
    #   resp.trail.log_file_validation_enabled #=> Boolean
    #   resp.trail.cloud_watch_logs_log_group_arn #=> String
    #   resp.trail.cloud_watch_logs_role_arn #=> String
    #   resp.trail.kms_key_id #=> String
    #   resp.trail.has_custom_event_selectors #=> Boolean
    #   resp.trail.has_insight_selectors #=> Boolean
    #   resp.trail.is_organization_trail #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrail AWS API Documentation
    #
    # @overload get_trail(params = {})
    # @param [Hash] params ({})
    def get_trail(params = {}, options = {})
      req = build_request(:get_trail, params)
      req.send_request(options)
    end

    # Returns a JSON-formatted list of information about the specified
    # trail. Fields include information on delivery errors, Amazon SNS and
    # Amazon S3 errors, and start and stop logging times for each trail.
    # This operation returns trail status from a single Region. To return
    # trail status from all Regions, you must call the operation on each
    # Region.
    #
    # @option params [required, String] :name
    #   Specifies the name or the CloudTrail ARN of the trail for which you
    #   are requesting status. To get the status of a shadow trail (a
    #   replication of the trail in another Region), you must specify its ARN.
    #
    #   The following is the format of a trail ARN:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    #   <note markdown="1"> If the trail is an organization trail and you are a member account in
    #   the organization in Organizations, you must provide the full ARN of
    #   that trail, and not just the name.
    #
    #    </note>
    #
    # @return [Types::GetTrailStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrailStatusResponse#is_logging #is_logging} => Boolean
    #   * {Types::GetTrailStatusResponse#latest_delivery_error #latest_delivery_error} => String
    #   * {Types::GetTrailStatusResponse#latest_notification_error #latest_notification_error} => String
    #   * {Types::GetTrailStatusResponse#latest_delivery_time #latest_delivery_time} => Time
    #   * {Types::GetTrailStatusResponse#latest_notification_time #latest_notification_time} => Time
    #   * {Types::GetTrailStatusResponse#start_logging_time #start_logging_time} => Time
    #   * {Types::GetTrailStatusResponse#stop_logging_time #stop_logging_time} => Time
    #   * {Types::GetTrailStatusResponse#latest_cloud_watch_logs_delivery_error #latest_cloud_watch_logs_delivery_error} => String
    #   * {Types::GetTrailStatusResponse#latest_cloud_watch_logs_delivery_time #latest_cloud_watch_logs_delivery_time} => Time
    #   * {Types::GetTrailStatusResponse#latest_digest_delivery_time #latest_digest_delivery_time} => Time
    #   * {Types::GetTrailStatusResponse#latest_digest_delivery_error #latest_digest_delivery_error} => String
    #   * {Types::GetTrailStatusResponse#latest_delivery_attempt_time #latest_delivery_attempt_time} => String
    #   * {Types::GetTrailStatusResponse#latest_notification_attempt_time #latest_notification_attempt_time} => String
    #   * {Types::GetTrailStatusResponse#latest_notification_attempt_succeeded #latest_notification_attempt_succeeded} => String
    #   * {Types::GetTrailStatusResponse#latest_delivery_attempt_succeeded #latest_delivery_attempt_succeeded} => String
    #   * {Types::GetTrailStatusResponse#time_logging_started #time_logging_started} => String
    #   * {Types::GetTrailStatusResponse#time_logging_stopped #time_logging_stopped} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trail_status({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.is_logging #=> Boolean
    #   resp.latest_delivery_error #=> String
    #   resp.latest_notification_error #=> String
    #   resp.latest_delivery_time #=> Time
    #   resp.latest_notification_time #=> Time
    #   resp.start_logging_time #=> Time
    #   resp.stop_logging_time #=> Time
    #   resp.latest_cloud_watch_logs_delivery_error #=> String
    #   resp.latest_cloud_watch_logs_delivery_time #=> Time
    #   resp.latest_digest_delivery_time #=> Time
    #   resp.latest_digest_delivery_error #=> String
    #   resp.latest_delivery_attempt_time #=> String
    #   resp.latest_notification_attempt_time #=> String
    #   resp.latest_notification_attempt_succeeded #=> String
    #   resp.latest_delivery_attempt_succeeded #=> String
    #   resp.time_logging_started #=> String
    #   resp.time_logging_stopped #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrailStatus AWS API Documentation
    #
    # @overload get_trail_status(params = {})
    # @param [Hash] params ({})
    def get_trail_status(params = {}, options = {})
      req = build_request(:get_trail_status, params)
      req.send_request(options)
    end

    # Lists the channels in the current account, and their source names.
    #
    # @option params [Integer] :max_results
    #   The maximum number of CloudTrail channels to display on a single page.
    #
    # @option params [String] :next_token
    #   The token to use to get the next page of results after a previous API
    #   call. This token must be passed in with the same parameters that were
    #   specified in the original call. For example, if the original call
    #   specified an AttributeKey of 'Username' with a value of 'root',
    #   the call with NextToken should include those same parameters.
    #
    # @return [Types::ListChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsResponse#channels #channels} => Array&lt;Types::Channel&gt;
    #   * {Types::ListChannelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].channel_arn #=> String
    #   resp.channels[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListChannels AWS API Documentation
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # Returns information about all dashboards in the account, in the
    # current Region.
    #
    # @option params [String] :name_prefix
    #   Specify a name prefix to filter on.
    #
    # @option params [String] :type
    #   Specify a dashboard type to filter on: `CUSTOM` or `MANAGED`.
    #
    # @option params [String] :next_token
    #   A token you can use to get the next page of dashboard results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of dashboards to display on a single page.
    #
    # @return [Types::ListDashboardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDashboardsResponse#dashboards #dashboards} => Array&lt;Types::DashboardDetail&gt;
    #   * {Types::ListDashboardsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dashboards({
    #     name_prefix: "DashboardName",
    #     type: "MANAGED", # accepts MANAGED, CUSTOM
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboards #=> Array
    #   resp.dashboards[0].dashboard_arn #=> String
    #   resp.dashboards[0].type #=> String, one of "MANAGED", "CUSTOM"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListDashboards AWS API Documentation
    #
    # @overload list_dashboards(params = {})
    # @param [Hash] params ({})
    def list_dashboards(params = {}, options = {})
      req = build_request(:list_dashboards, params)
      req.send_request(options)
    end

    # Returns information about all event data stores in the account, in the
    # current Region.
    #
    # @option params [String] :next_token
    #   A token you can use to get the next page of event data store results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of event data stores to display on a single page.
    #
    # @return [Types::ListEventDataStoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventDataStoresResponse#event_data_stores #event_data_stores} => Array&lt;Types::EventDataStore&gt;
    #   * {Types::ListEventDataStoresResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_data_stores({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_data_stores #=> Array
    #   resp.event_data_stores[0].event_data_store_arn #=> String
    #   resp.event_data_stores[0].name #=> String
    #   resp.event_data_stores[0].termination_protection_enabled #=> Boolean
    #   resp.event_data_stores[0].status #=> String, one of "CREATED", "ENABLED", "PENDING_DELETION", "STARTING_INGESTION", "STOPPING_INGESTION", "STOPPED_INGESTION"
    #   resp.event_data_stores[0].advanced_event_selectors #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].name #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #   resp.event_data_stores[0].multi_region_enabled #=> Boolean
    #   resp.event_data_stores[0].organization_enabled #=> Boolean
    #   resp.event_data_stores[0].retention_period #=> Integer
    #   resp.event_data_stores[0].created_timestamp #=> Time
    #   resp.event_data_stores[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListEventDataStores AWS API Documentation
    #
    # @overload list_event_data_stores(params = {})
    # @param [Hash] params ({})
    def list_event_data_stores(params = {}, options = {})
      req = build_request(:list_event_data_stores, params)
      req.send_request(options)
    end

    # Returns a list of failures for the specified import.
    #
    # @option params [required, String] :import_id
    #   The ID of the import.
    #
    # @option params [Integer] :max_results
    #   The maximum number of failures to display on a single page.
    #
    # @option params [String] :next_token
    #   A token you can use to get the next page of import failures.
    #
    # @return [Types::ListImportFailuresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportFailuresResponse#failures #failures} => Array&lt;Types::ImportFailureListItem&gt;
    #   * {Types::ListImportFailuresResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_import_failures({
    #     import_id: "UUID", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.failures #=> Array
    #   resp.failures[0].location #=> String
    #   resp.failures[0].status #=> String, one of "FAILED", "RETRY", "SUCCEEDED"
    #   resp.failures[0].error_type #=> String
    #   resp.failures[0].error_message #=> String
    #   resp.failures[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListImportFailures AWS API Documentation
    #
    # @overload list_import_failures(params = {})
    # @param [Hash] params ({})
    def list_import_failures(params = {}, options = {})
      req = build_request(:list_import_failures, params)
      req.send_request(options)
    end

    # Returns information on all imports, or a select set of imports by
    # `ImportStatus` or `Destination`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of imports to display on a single page.
    #
    # @option params [String] :destination
    #   The ARN of the destination event data store.
    #
    # @option params [String] :import_status
    #   The status of the import.
    #
    # @option params [String] :next_token
    #   A token you can use to get the next page of import results.
    #
    # @return [Types::ListImportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportsResponse#imports #imports} => Array&lt;Types::ImportsListItem&gt;
    #   * {Types::ListImportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_imports({
    #     max_results: 1,
    #     destination: "EventDataStoreArn",
    #     import_status: "INITIALIZING", # accepts INITIALIZING, IN_PROGRESS, FAILED, STOPPED, COMPLETED
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.imports #=> Array
    #   resp.imports[0].import_id #=> String
    #   resp.imports[0].import_status #=> String, one of "INITIALIZING", "IN_PROGRESS", "FAILED", "STOPPED", "COMPLETED"
    #   resp.imports[0].destinations #=> Array
    #   resp.imports[0].destinations[0] #=> String
    #   resp.imports[0].created_timestamp #=> Time
    #   resp.imports[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListImports AWS API Documentation
    #
    # @overload list_imports(params = {})
    # @param [Hash] params ({})
    def list_imports(params = {}, options = {})
      req = build_request(:list_imports, params)
      req.send_request(options)
    end

    # Returns Insights events generated on a trail that logs data events.
    # You can list Insights events that occurred in a Region within the last
    # 90 days.
    #
    # ListInsightsData supports the following Dimensions for Insights
    # events:
    #
    # * Event ID
    #
    # * Event name
    #
    # * Event source
    #
    # All dimensions are optional. The default number of results returned is
    # 50, with a maximum of 50 possible. The response includes a token that
    # you can use to get the next page of results.
    #
    # The rate of ListInsightsData requests is limited to two per second,
    # per account, per Region. If this limit is exceeded, a throttling error
    # occurs.
    #
    # @option params [required, String] :insight_source
    #   The Amazon Resource Name(ARN) of the trail for which you want to
    #   retrieve Insights events.
    #
    # @option params [required, String] :data_type
    #   Specifies the category of events returned. To fetch Insights events,
    #   specify `InsightsEvents` as the value of `DataType`
    #
    # @option params [Hash<String,String>] :dimensions
    #   Contains a map of dimensions. Currently the map can contain only one
    #   item.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Specifies that only events that occur after or at the specified time
    #   are returned. If the specified start time is after the specified end
    #   time, an error is returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Specifies that only events that occur before or at the specified time
    #   are returned. If the specified end time is before the specified start
    #   time, an error is returned.
    #
    # @option params [Integer] :max_results
    #   The number of events to return. Possible values are 1 through 50. The
    #   default is 50.
    #
    # @option params [String] :next_token
    #   The token to use to get the next page of results after a previous API
    #   call. This token must be passed in with the same parameters that were
    #   specified in the original call. For example, if the original call
    #   specified a EventName as a dimension with `PutObject` as a value, the
    #   call with NextToken should include those same parameters.
    #
    # @return [Types::ListInsightsDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInsightsDataResponse#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::ListInsightsDataResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_insights_data({
    #     insight_source: "ResourceArn", # required
    #     data_type: "InsightsEvents", # required, accepts InsightsEvents
    #     dimensions: {
    #       "EventId" => "ListInsightsDataDimensionValue",
    #     },
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].event_id #=> String
    #   resp.events[0].event_name #=> String
    #   resp.events[0].read_only #=> String
    #   resp.events[0].access_key_id #=> String
    #   resp.events[0].event_time #=> Time
    #   resp.events[0].event_source #=> String
    #   resp.events[0].username #=> String
    #   resp.events[0].resources #=> Array
    #   resp.events[0].resources[0].resource_type #=> String
    #   resp.events[0].resources[0].resource_name #=> String
    #   resp.events[0].cloud_trail_event #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListInsightsData AWS API Documentation
    #
    # @overload list_insights_data(params = {})
    # @param [Hash] params ({})
    def list_insights_data(params = {}, options = {})
      req = build_request(:list_insights_data, params)
      req.send_request(options)
    end

    # Returns Insights metrics data for trails that have enabled Insights.
    # The request must include the `EventSource`, `EventName`, and
    # `InsightType` parameters.
    #
    # If the `InsightType` is set to `ApiErrorRateInsight`, the request must
    # also include the `ErrorCode` parameter.
    #
    # The following are the available time periods for
    # `ListInsightsMetricData`. Each cutoff is inclusive.
    #
    # * Data points with a period of 60 seconds (1-minute) are available for
    #   15 days.
    #
    # * Data points with a period of 300 seconds (5-minute) are available
    #   for 63 days.
    #
    # * Data points with a period of 3600 seconds (1 hour) are available for
    #   90 days.
    #
    # To use `ListInsightsMetricData` operation, you must have the following
    # permissions:
    #
    # * If `ListInsightsMetricData` is invoked with `TrailName` parameter,
    #   access to the `ListInsightsMetricData` API operation is linked to
    #   the `cloudtrail:LookupEvents` action and
    #   `cloudtrail:ListInsightsData`. To use this operation, you must have
    #   permissions to perform the `cloudtrail:LookupEvents` and
    #   `cloudtrail:ListInsightsData` action on the specific trail.
    #
    # * If `ListInsightsMetricData` is invoked without `TrailName`
    #   parameter, access to the `ListInsightsMetricData` API operation is
    #   linked to the `cloudtrail:LookupEvents` action only. To use this
    #   operation, you must have permissions to perform the
    #   `cloudtrail:LookupEvents` action.
    #
    # @option params [String] :trail_name
    #   The Amazon Resource Name(ARN) or name of the trail for which you want
    #   to retrieve Insights metrics data. This parameter should only be
    #   provided to fetch Insights metrics data generated on trails logging
    #   data events. This parameter is not required for Insights metric data
    #   generated on trails logging management events.
    #
    # @option params [required, String] :event_source
    #   The Amazon Web Services service to which the request was made, such as
    #   `iam.amazonaws.com` or `s3.amazonaws.com`.
    #
    # @option params [required, String] :event_name
    #   The name of the event, typically the Amazon Web Services API on which
    #   unusual levels of activity were recorded.
    #
    # @option params [required, String] :insight_type
    #   The type of CloudTrail Insights event, which is either
    #   `ApiCallRateInsight` or `ApiErrorRateInsight`. The
    #   `ApiCallRateInsight` Insights type analyzes write-only management API
    #   calls that are aggregated per minute against a baseline API call
    #   volume. The `ApiErrorRateInsight` Insights type analyzes management
    #   API calls that result in error codes.
    #
    # @option params [String] :error_code
    #   Conditionally required if the `InsightType` parameter is set to
    #   `ApiErrorRateInsight`.
    #
    #   If returning metrics for the `ApiErrorRateInsight` Insights type, this
    #   is the error to retrieve data for. For example, `AccessDenied`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Specifies, in UTC, the start time for time-series data. The value
    #   specified is inclusive; results include data points with the specified
    #   time stamp.
    #
    #   The default is 90 days before the time of request.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Specifies, in UTC, the end time for time-series data. The value
    #   specified is exclusive; results include data points up to the
    #   specified time stamp.
    #
    #   The default is the time of request.
    #
    # @option params [Integer] :period
    #   Granularity of data to retrieve, in seconds. Valid values are `60`,
    #   `300`, and `3600`. If you specify any other value, you will get an
    #   error. The default is 3600 seconds.
    #
    # @option params [String] :data_type
    #   Type of data points to return. Valid values are `NonZeroData` and
    #   `FillWithZeros`. The default is `NonZeroData`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of data points to return. Valid values are integers
    #   from 1 to 21600. The default value is 21600.
    #
    # @option params [String] :next_token
    #   Returned if all datapoints can't be returned in a single call. For
    #   example, due to reaching `MaxResults`.
    #
    #   Add this parameter to the request to continue retrieving results
    #   starting from the last evaluated point.
    #
    # @return [Types::ListInsightsMetricDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInsightsMetricDataResponse#trail_arn #trail_arn} => String
    #   * {Types::ListInsightsMetricDataResponse#event_source #event_source} => String
    #   * {Types::ListInsightsMetricDataResponse#event_name #event_name} => String
    #   * {Types::ListInsightsMetricDataResponse#insight_type #insight_type} => String
    #   * {Types::ListInsightsMetricDataResponse#error_code #error_code} => String
    #   * {Types::ListInsightsMetricDataResponse#timestamps #timestamps} => Array&lt;Time&gt;
    #   * {Types::ListInsightsMetricDataResponse#values #values} => Array&lt;Float&gt;
    #   * {Types::ListInsightsMetricDataResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_insights_metric_data({
    #     trail_name: "String",
    #     event_source: "EventSource", # required
    #     event_name: "EventName", # required
    #     insight_type: "ApiCallRateInsight", # required, accepts ApiCallRateInsight, ApiErrorRateInsight
    #     error_code: "ErrorCode",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     period: 1,
    #     data_type: "FillWithZeros", # accepts FillWithZeros, NonZeroData
    #     max_results: 1,
    #     next_token: "InsightsMetricNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_arn #=> String
    #   resp.event_source #=> String
    #   resp.event_name #=> String
    #   resp.insight_type #=> String, one of "ApiCallRateInsight", "ApiErrorRateInsight"
    #   resp.error_code #=> String
    #   resp.timestamps #=> Array
    #   resp.timestamps[0] #=> Time
    #   resp.values #=> Array
    #   resp.values[0] #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListInsightsMetricData AWS API Documentation
    #
    # @overload list_insights_metric_data(params = {})
    # @param [Hash] params ({})
    def list_insights_metric_data(params = {}, options = {})
      req = build_request(:list_insights_metric_data, params)
      req.send_request(options)
    end

    # Returns all public keys whose private keys were used to sign the
    # digest files within the specified time range. The public key is needed
    # to validate digest files that were signed with its corresponding
    # private key.
    #
    # <note markdown="1"> CloudTrail uses different private and public key pairs per Region.
    # Each digest file is signed with a private key unique to its Region.
    # When you validate a digest file from a specific Region, you must look
    # in the same Region for its corresponding public key.
    #
    #  </note>
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Optionally specifies, in UTC, the start of the time range to look up
    #   public keys for CloudTrail digest files. If not specified, the current
    #   time is used, and the current public key is returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Optionally specifies, in UTC, the end of the time range to look up
    #   public keys for CloudTrail digest files. If not specified, the current
    #   time is used.
    #
    # @option params [String] :next_token
    #   Reserved for future use.
    #
    # @return [Types::ListPublicKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPublicKeysResponse#public_key_list #public_key_list} => Array&lt;Types::PublicKey&gt;
    #   * {Types::ListPublicKeysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_public_keys({
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key_list #=> Array
    #   resp.public_key_list[0].value #=> String
    #   resp.public_key_list[0].validity_start_time #=> Time
    #   resp.public_key_list[0].validity_end_time #=> Time
    #   resp.public_key_list[0].fingerprint #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListPublicKeys AWS API Documentation
    #
    # @overload list_public_keys(params = {})
    # @param [Hash] params ({})
    def list_public_keys(params = {}, options = {})
      req = build_request(:list_public_keys, params)
      req.send_request(options)
    end

    # Returns a list of queries and query statuses for the past seven days.
    # You must specify an ARN value for `EventDataStore`. Optionally, to
    # shorten the list of results, you can specify a time range, formatted
    # as timestamps, by adding `StartTime` and `EndTime` parameters, and a
    # `QueryStatus` value. Valid values for `QueryStatus` include `QUEUED`,
    # `RUNNING`, `FINISHED`, `FAILED`, `TIMED_OUT`, or `CANCELLED`.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or the ID suffix of the ARN) of an event data store on which
    #   queries were run.
    #
    # @option params [String] :next_token
    #   A token you can use to get the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of queries to show on a page.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Use with `EndTime` to bound a `ListQueries` request, and limit its
    #   results to only those queries run within a specified time period.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Use with `StartTime` to bound a `ListQueries` request, and limit its
    #   results to only those queries run within a specified time period.
    #
    # @option params [String] :query_status
    #   The status of queries that you want to return in results. Valid values
    #   for `QueryStatus` include `QUEUED`, `RUNNING`, `FINISHED`, `FAILED`,
    #   `TIMED_OUT`, or `CANCELLED`.
    #
    # @return [Types::ListQueriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueriesResponse#queries #queries} => Array&lt;Types::Query&gt;
    #   * {Types::ListQueriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queries({
    #     event_data_store: "EventDataStoreArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     query_status: "QUEUED", # accepts QUEUED, RUNNING, FINISHED, FAILED, CANCELLED, TIMED_OUT
    #   })
    #
    # @example Response structure
    #
    #   resp.queries #=> Array
    #   resp.queries[0].query_id #=> String
    #   resp.queries[0].query_status #=> String, one of "QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"
    #   resp.queries[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListQueries AWS API Documentation
    #
    # @overload list_queries(params = {})
    # @param [Hash] params ({})
    def list_queries(params = {}, options = {})
      req = build_request(:list_queries, params)
      req.send_request(options)
    end

    # Lists the tags for the specified trails, event data stores,
    # dashboards, or channels in the current Region.
    #
    # @option params [required, Array<String>] :resource_id_list
    #   Specifies a list of trail, event data store, dashboard, or channel
    #   ARNs whose tags will be listed. The list has a limit of 20 ARNs.
    #
    #   Example trail ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    #   Example event data store ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE`
    #
    #   Example dashboard ARN format:
    #   `arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash`
    #
    #   Example channel ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890`
    #
    # @option params [String] :next_token
    #   Reserved for future use.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#resource_tag_list #resource_tag_list} => Array&lt;Types::ResourceTag&gt;
    #   * {Types::ListTagsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource_id_list: ["String"], # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_tag_list #=> Array
    #   resp.resource_tag_list[0].resource_id #=> String
    #   resp.resource_tag_list[0].tags_list #=> Array
    #   resp.resource_tag_list[0].tags_list[0].key #=> String
    #   resp.resource_tag_list[0].tags_list[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Lists trails that are in the current account.
    #
    # @option params [String] :next_token
    #   The token to use to get the next page of results after a previous API
    #   call. This token must be passed in with the same parameters that were
    #   specified in the original call. For example, if the original call
    #   specified an AttributeKey of 'Username' with a value of 'root',
    #   the call with NextToken should include those same parameters.
    #
    # @return [Types::ListTrailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrailsResponse#trails #trails} => Array&lt;Types::TrailInfo&gt;
    #   * {Types::ListTrailsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trails({
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.trails #=> Array
    #   resp.trails[0].trail_arn #=> String
    #   resp.trails[0].name #=> String
    #   resp.trails[0].home_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTrails AWS API Documentation
    #
    # @overload list_trails(params = {})
    # @param [Hash] params ({})
    def list_trails(params = {}, options = {})
      req = build_request(:list_trails, params)
      req.send_request(options)
    end

    # Looks up [management events][1] or [CloudTrail Insights events][2]
    # that are captured by CloudTrail. You can look up events that occurred
    # in a Region within the last 90 days.
    #
    # <note markdown="1"> `LookupEvents` returns recent Insights events for trails that enable
    # Insights. To view Insights events for an event data store, you can run
    # queries on your Insights event data store, and you can also view the
    # Lake dashboard for Insights.
    #
    #  </note>
    #
    # Lookup supports the following attributes for management events:
    #
    # * Amazon Web Services access key
    #
    # * Event ID
    #
    # * Event name
    #
    # * Event source
    #
    # * Read only
    #
    # * Resource name
    #
    # * Resource type
    #
    # * User name
    #
    # Lookup supports the following attributes for Insights events:
    #
    # * Event ID
    #
    # * Event name
    #
    # * Event source
    #
    # All attributes are optional. The default number of results returned is
    # 50, with a maximum of 50 possible. The response includes a token that
    # you can use to get the next page of results.
    #
    # The rate of lookup requests is limited to two per second, per account,
    # per Region. If this limit is exceeded, a throttling error occurs.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events
    # [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-insights-events
    #
    # @option params [Array<Types::LookupAttribute>] :lookup_attributes
    #   Contains a list of lookup attributes. Currently the list can contain
    #   only one item.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Specifies that only events that occur after or at the specified time
    #   are returned. If the specified start time is after the specified end
    #   time, an error is returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Specifies that only events that occur before or at the specified time
    #   are returned. If the specified end time is before the specified start
    #   time, an error is returned.
    #
    # @option params [String] :event_category
    #   Specifies the event category. If you do not specify an event category,
    #   events of the category are not returned in the response. For example,
    #   if you do not specify `insight` as the value of `EventCategory`, no
    #   Insights events are returned.
    #
    # @option params [Integer] :max_results
    #   The number of events to return. Possible values are 1 through 50. The
    #   default is 50.
    #
    # @option params [String] :next_token
    #   The token to use to get the next page of results after a previous API
    #   call. This token must be passed in with the same parameters that were
    #   specified in the original call. For example, if the original call
    #   specified an AttributeKey of 'Username' with a value of 'root',
    #   the call with NextToken should include those same parameters.
    #
    # @return [Types::LookupEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LookupEventsResponse#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::LookupEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.lookup_events({
    #     lookup_attributes: [
    #       {
    #         attribute_key: "EventId", # required, accepts EventId, EventName, ReadOnly, Username, ResourceType, ResourceName, EventSource, AccessKeyId
    #         attribute_value: "LookupAttributeValue", # required
    #       },
    #     ],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     event_category: "insight", # accepts insight
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].event_id #=> String
    #   resp.events[0].event_name #=> String
    #   resp.events[0].read_only #=> String
    #   resp.events[0].access_key_id #=> String
    #   resp.events[0].event_time #=> Time
    #   resp.events[0].event_source #=> String
    #   resp.events[0].username #=> String
    #   resp.events[0].resources #=> Array
    #   resp.events[0].resources[0].resource_type #=> String
    #   resp.events[0].resources[0].resource_name #=> String
    #   resp.events[0].cloud_trail_event #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/LookupEvents AWS API Documentation
    #
    # @overload lookup_events(params = {})
    # @param [Hash] params ({})
    def lookup_events(params = {}, options = {})
      req = build_request(:lookup_events, params)
      req.send_request(options)
    end

    # Updates the event configuration settings for the specified event data
    # store or trail. This operation supports updating the maximum event
    # size, adding or modifying context key selectors for event data store,
    # and configuring aggregation settings for the trail.
    #
    # @option params [String] :trail_name
    #   The name of the trail for which you want to update event configuration
    #   settings.
    #
    # @option params [String] :event_data_store
    #   The Amazon Resource Name (ARN) or ID suffix of the ARN of the event
    #   data store for which event configuration settings are updated.
    #
    # @option params [String] :max_event_size
    #   The maximum allowed size for events to be stored in the specified
    #   event data store. If you are using context key selectors, MaxEventSize
    #   must be set to Large.
    #
    # @option params [Array<Types::ContextKeySelector>] :context_key_selectors
    #   A list of context key selectors that will be included to provide
    #   enriched event data.
    #
    # @option params [Array<Types::AggregationConfiguration>] :aggregation_configurations
    #   The list of aggregation configurations that you want to configure for
    #   the trail.
    #
    # @return [Types::PutEventConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEventConfigurationResponse#trail_arn #trail_arn} => String
    #   * {Types::PutEventConfigurationResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::PutEventConfigurationResponse#max_event_size #max_event_size} => String
    #   * {Types::PutEventConfigurationResponse#context_key_selectors #context_key_selectors} => Array&lt;Types::ContextKeySelector&gt;
    #   * {Types::PutEventConfigurationResponse#aggregation_configurations #aggregation_configurations} => Array&lt;Types::AggregationConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_event_configuration({
    #     trail_name: "String",
    #     event_data_store: "String",
    #     max_event_size: "Standard", # accepts Standard, Large
    #     context_key_selectors: [
    #       {
    #         type: "TagContext", # required, accepts TagContext, RequestContext
    #         equals: ["OperatorTargetListMember"], # required
    #       },
    #     ],
    #     aggregation_configurations: [
    #       {
    #         templates: ["API_ACTIVITY"], # required, accepts API_ACTIVITY, RESOURCE_ACCESS, USER_ACTIONS
    #         event_category: "Data", # required, accepts Data
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_arn #=> String
    #   resp.event_data_store_arn #=> String
    #   resp.max_event_size #=> String, one of "Standard", "Large"
    #   resp.context_key_selectors #=> Array
    #   resp.context_key_selectors[0].type #=> String, one of "TagContext", "RequestContext"
    #   resp.context_key_selectors[0].equals #=> Array
    #   resp.context_key_selectors[0].equals[0] #=> String
    #   resp.aggregation_configurations #=> Array
    #   resp.aggregation_configurations[0].templates #=> Array
    #   resp.aggregation_configurations[0].templates[0] #=> String, one of "API_ACTIVITY", "RESOURCE_ACCESS", "USER_ACTIONS"
    #   resp.aggregation_configurations[0].event_category #=> String, one of "Data"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutEventConfiguration AWS API Documentation
    #
    # @overload put_event_configuration(params = {})
    # @param [Hash] params ({})
    def put_event_configuration(params = {}, options = {})
      req = build_request(:put_event_configuration, params)
      req.send_request(options)
    end

    # Configures event selectors (also referred to as *basic event
    # selectors*) or advanced event selectors for your trail. You can use
    # either `AdvancedEventSelectors` or `EventSelectors`, but not both. If
    # you apply `AdvancedEventSelectors` to a trail, any existing
    # `EventSelectors` are overwritten.
    #
    # You can use `AdvancedEventSelectors` to log management events, data
    # events for all resource types, and network activity events.
    #
    # You can use `EventSelectors` to log management events and data events
    # for the following resource types:
    #
    # * `AWS::DynamoDB::Table`
    #
    # * `AWS::Lambda::Function`
    #
    # * `AWS::S3::Object`
    #
    # You can't use `EventSelectors` to log network activity events.
    #
    # If you want your trail to log Insights events, be sure the event
    # selector or advanced event selector enables logging of the Insights
    # event types you want configured for your trail. For more information
    # about logging Insights events, see [Working with CloudTrail
    # Insights][1] in the *CloudTrail User Guide*. By default, trails
    # created without specific event selectors are configured to log all
    # read and write management events, and no data events or network
    # activity events.
    #
    # When an event occurs in your account, CloudTrail evaluates the event
    # selectors or advanced event selectors in all trails. For each trail,
    # if the event matches any event selector, the trail processes and logs
    # the event. If the event doesn't match any event selector, the trail
    # doesn't log the event.
    #
    # Example
    #
    # 1.  You create an event selector for a trail and specify that you want
    #     to log write-only events.
    #
    # 2.  The EC2 `GetConsoleOutput` and `RunInstances` API operations occur
    #     in your account.
    #
    # 3.  CloudTrail evaluates whether the events match your event
    #     selectors.
    #
    # 4.  The `RunInstances` is a write-only event and it matches your event
    #     selector. The trail logs the event.
    #
    # 5.  The `GetConsoleOutput` is a read-only event that doesn't match
    #     your event selector. The trail doesn't log the event.
    #
    # The `PutEventSelectors` operation must be called from the Region in
    # which the trail was created; otherwise, an
    # `InvalidHomeRegionException` exception is thrown.
    #
    # You can configure up to five event selectors for each trail.
    #
    # You can add advanced event selectors, and conditions for your advanced
    # event selectors, up to a maximum of 500 values for all conditions and
    # selectors on a trail. For more information, see [Logging management
    # events][2], [Logging data events][3], [Logging network activity
    # events][4], and [Quotas in CloudTrail][5] in the *CloudTrail User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html
    # [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html
    # [3]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html
    # [4]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html
    # [5]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html
    #
    # @option params [required, String] :trail_name
    #   Specifies the name of the trail or trail ARN. If you specify a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If you specify a trail ARN, it must be in the following format.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @option params [Array<Types::EventSelector>] :event_selectors
    #   Specifies the settings for your event selectors. You can use event
    #   selectors to log management events and data events for the following
    #   resource types:
    #
    #   * `AWS::DynamoDB::Table`
    #
    #   * `AWS::Lambda::Function`
    #
    #   * `AWS::S3::Object`
    #
    #   You can't use event selectors to log network activity events.
    #
    #   You can configure up to five event selectors for a trail. You can use
    #   either `EventSelectors` or `AdvancedEventSelectors` in a
    #   `PutEventSelectors` request, but not both. If you apply
    #   `EventSelectors` to a trail, any existing `AdvancedEventSelectors` are
    #   overwritten.
    #
    # @option params [Array<Types::AdvancedEventSelector>] :advanced_event_selectors
    #   Specifies the settings for advanced event selectors. You can use
    #   advanced event selectors to log management events, data events for all
    #   resource types, and network activity events.
    #
    #   You can add advanced event selectors, and conditions for your advanced
    #   event selectors, up to a maximum of 500 values for all conditions and
    #   selectors on a trail. You can use either `AdvancedEventSelectors` or
    #   `EventSelectors`, but not both. If you apply `AdvancedEventSelectors`
    #   to a trail, any existing `EventSelectors` are overwritten. For more
    #   information about advanced event selectors, see [Logging data
    #   events][1] and [Logging network activity events][2] in the *CloudTrail
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html
    #   [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html
    #
    # @return [Types::PutEventSelectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEventSelectorsResponse#trail_arn #trail_arn} => String
    #   * {Types::PutEventSelectorsResponse#event_selectors #event_selectors} => Array&lt;Types::EventSelector&gt;
    #   * {Types::PutEventSelectorsResponse#advanced_event_selectors #advanced_event_selectors} => Array&lt;Types::AdvancedEventSelector&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_event_selectors({
    #     trail_name: "String", # required
    #     event_selectors: [
    #       {
    #         read_write_type: "ReadOnly", # accepts ReadOnly, WriteOnly, All
    #         include_management_events: false,
    #         data_resources: [
    #           {
    #             type: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         exclude_management_event_sources: ["String"],
    #       },
    #     ],
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"],
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_arn #=> String
    #   resp.event_selectors #=> Array
    #   resp.event_selectors[0].read_write_type #=> String, one of "ReadOnly", "WriteOnly", "All"
    #   resp.event_selectors[0].include_management_events #=> Boolean
    #   resp.event_selectors[0].data_resources #=> Array
    #   resp.event_selectors[0].data_resources[0].type #=> String
    #   resp.event_selectors[0].data_resources[0].values #=> Array
    #   resp.event_selectors[0].data_resources[0].values[0] #=> String
    #   resp.event_selectors[0].exclude_management_event_sources #=> Array
    #   resp.event_selectors[0].exclude_management_event_sources[0] #=> String
    #   resp.advanced_event_selectors #=> Array
    #   resp.advanced_event_selectors[0].name #=> String
    #   resp.advanced_event_selectors[0].field_selectors #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutEventSelectors AWS API Documentation
    #
    # @overload put_event_selectors(params = {})
    # @param [Hash] params ({})
    def put_event_selectors(params = {}, options = {})
      req = build_request(:put_event_selectors, params)
      req.send_request(options)
    end

    # Lets you enable Insights event logging on specific event categories by
    # specifying the Insights selectors that you want to enable on an
    # existing trail or event data store. You also use `PutInsightSelectors`
    # to turn off Insights event logging, by passing an empty list of
    # Insights types. The valid Insights event types are
    # `ApiErrorRateInsight` and `ApiCallRateInsight`, and valid
    # EventCategories are `Management` and `Data`.
    #
    # <note markdown="1"> Insights on data events are not supported on event data stores. For
    # event data stores, you can only enable Insights on management events.
    #
    #  </note>
    #
    # To enable Insights on an event data store, you must specify the ARNs
    # (or ID suffix of the ARNs) for the source event data store
    # (`EventDataStore`) and the destination event data store
    # (`InsightsDestination`). The source event data store logs management
    # events and enables Insights. The destination event data store logs
    # Insights events based upon the management event activity of the source
    # event data store. The source and destination event data stores must
    # belong to the same Amazon Web Services account.
    #
    # To log Insights events for a trail, you must specify the name
    # (`TrailName`) of the CloudTrail trail for which you want to change or
    # add Insights selectors.
    #
    # * For Management events Insights: To log CloudTrail Insights on the
    #   API call rate, the trail or event data store must log `write`
    #   management events. To log CloudTrail Insights on the API error rate,
    #   the trail or event data store must log `read` or `write` management
    #   events.
    #
    # * For Data events Insights: To log CloudTrail Insights on the API call
    #   rate or API error rate, the trail must log `read` or `write` data
    #   events. Data events Insights are not supported on event data store.
    #
    # To log CloudTrail Insights events on API call volume, the trail or
    # event data store must log `write` management events. To log CloudTrail
    # Insights events on API error rate, the trail or event data store must
    # log `read` or `write` management events. You can call
    # `GetEventSelectors` on a trail to check whether the trail logs
    # management events. You can call `GetEventDataStore` on an event data
    # store to check whether the event data store logs management events.
    #
    # For more information, see [Working with CloudTrail Insights][1] in the
    # *CloudTrail User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html
    #
    # @option params [String] :trail_name
    #   The name of the CloudTrail trail for which you want to change or add
    #   Insights selectors.
    #
    #   You cannot use this parameter with the `EventDataStore` and
    #   `InsightsDestination` parameters.
    #
    # @option params [required, Array<Types::InsightSelector>] :insight_selectors
    #   Contains the Insights types you want to log on a specific category of
    #   events on a trail or event data store. `ApiCallRateInsight` and
    #   `ApiErrorRateInsight` are valid Insight types.The EventCategory field
    #   can specify `Management` or `Data` events or both. For event data
    #   store, you can log Insights for management events only.
    #
    #   The `ApiCallRateInsight` Insights type analyzes write-only management
    #   API calls or read and write data API calls that are aggregated per
    #   minute against a baseline API call volume.
    #
    #   The `ApiErrorRateInsight` Insights type analyzes management and data
    #   API calls that result in error codes. The error is shown if the API
    #   call is unsuccessful.
    #
    # @option params [String] :event_data_store
    #   The ARN (or ID suffix of the ARN) of the source event data store for
    #   which you want to change or add Insights selectors. To enable Insights
    #   on an event data store, you must provide both the `EventDataStore` and
    #   `InsightsDestination` parameters.
    #
    #   You cannot use this parameter with the `TrailName` parameter.
    #
    # @option params [String] :insights_destination
    #   The ARN (or ID suffix of the ARN) of the destination event data store
    #   that logs Insights events. To enable Insights on an event data store,
    #   you must provide both the `EventDataStore` and `InsightsDestination`
    #   parameters.
    #
    #   You cannot use this parameter with the `TrailName` parameter.
    #
    # @return [Types::PutInsightSelectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutInsightSelectorsResponse#trail_arn #trail_arn} => String
    #   * {Types::PutInsightSelectorsResponse#insight_selectors #insight_selectors} => Array&lt;Types::InsightSelector&gt;
    #   * {Types::PutInsightSelectorsResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::PutInsightSelectorsResponse#insights_destination #insights_destination} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_insight_selectors({
    #     trail_name: "String",
    #     insight_selectors: [ # required
    #       {
    #         insight_type: "ApiCallRateInsight", # accepts ApiCallRateInsight, ApiErrorRateInsight
    #         event_categories: ["Management"], # accepts Management, Data
    #       },
    #     ],
    #     event_data_store: "EventDataStoreArn",
    #     insights_destination: "EventDataStoreArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_arn #=> String
    #   resp.insight_selectors #=> Array
    #   resp.insight_selectors[0].insight_type #=> String, one of "ApiCallRateInsight", "ApiErrorRateInsight"
    #   resp.insight_selectors[0].event_categories #=> Array
    #   resp.insight_selectors[0].event_categories[0] #=> String, one of "Management", "Data"
    #   resp.event_data_store_arn #=> String
    #   resp.insights_destination #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutInsightSelectors AWS API Documentation
    #
    # @overload put_insight_selectors(params = {})
    # @param [Hash] params ({})
    def put_insight_selectors(params = {}, options = {})
      req = build_request(:put_insight_selectors, params)
      req.send_request(options)
    end

    # Attaches a resource-based permission policy to a CloudTrail event data
    # store, dashboard, or channel. For more information about
    # resource-based policies, see [CloudTrail resource-based policy
    # examples][1] in the *CloudTrail User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the CloudTrail event data store,
    #   dashboard, or channel attached to the resource-based policy.
    #
    #   Example event data store ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE`
    #
    #   Example dashboard ARN format:
    #   `arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash`
    #
    #   Example channel ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890`
    #
    # @option params [required, String] :resource_policy
    #   A JSON-formatted string for an Amazon Web Services resource-based
    #   policy.
    #
    #   For example resource-based policies, see [CloudTrail resource-based
    #   policy examples][1] in the *CloudTrail User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#resource_arn #resource_arn} => String
    #   * {Types::PutResourcePolicyResponse#resource_policy #resource_policy} => String
    #   * {Types::PutResourcePolicyResponse#delegated_admin_resource_policy #delegated_admin_resource_policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #     resource_policy: "ResourcePolicy", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.resource_policy #=> String
    #   resp.delegated_admin_resource_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Registers an organization’s member account as the CloudTrail
    # [delegated administrator][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-delegated-administrator.html
    #
    # @option params [required, String] :member_account_id
    #   An organization member account ID that you want to designate as a
    #   delegated administrator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_organization_delegated_admin({
    #     member_account_id: "AccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RegisterOrganizationDelegatedAdmin AWS API Documentation
    #
    # @overload register_organization_delegated_admin(params = {})
    # @param [Hash] params ({})
    def register_organization_delegated_admin(params = {}, options = {})
      req = build_request(:register_organization_delegated_admin, params)
      req.send_request(options)
    end

    # Removes the specified tags from a trail, event data store, dashboard,
    # or channel.
    #
    # @option params [required, String] :resource_id
    #   Specifies the ARN of the trail, event data store, dashboard, or
    #   channel from which tags should be removed.
    #
    #   Example trail ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    #   Example event data store ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE`
    #
    #   Example dashboard ARN format:
    #   `arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash`
    #
    #   Example channel ARN format:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890`
    #
    # @option params [required, Array<Types::Tag>] :tags_list
    #   Specifies a list of tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags({
    #     resource_id: "String", # required
    #     tags_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RemoveTags AWS API Documentation
    #
    # @overload remove_tags(params = {})
    # @param [Hash] params ({})
    def remove_tags(params = {}, options = {})
      req = build_request(:remove_tags, params)
      req.send_request(options)
    end

    # Restores a deleted event data store specified by `EventDataStore`,
    # which accepts an event data store ARN. You can only restore a deleted
    # event data store within the seven-day wait period after deletion.
    # Restoring an event data store can take several minutes, depending on
    # the size of the event data store.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or the ID suffix of the ARN) of the event data store that you
    #   want to restore.
    #
    # @return [Types::RestoreEventDataStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreEventDataStoreResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::RestoreEventDataStoreResponse#name #name} => String
    #   * {Types::RestoreEventDataStoreResponse#status #status} => String
    #   * {Types::RestoreEventDataStoreResponse#advanced_event_selectors #advanced_event_selectors} => Array&lt;Types::AdvancedEventSelector&gt;
    #   * {Types::RestoreEventDataStoreResponse#multi_region_enabled #multi_region_enabled} => Boolean
    #   * {Types::RestoreEventDataStoreResponse#organization_enabled #organization_enabled} => Boolean
    #   * {Types::RestoreEventDataStoreResponse#retention_period #retention_period} => Integer
    #   * {Types::RestoreEventDataStoreResponse#termination_protection_enabled #termination_protection_enabled} => Boolean
    #   * {Types::RestoreEventDataStoreResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::RestoreEventDataStoreResponse#updated_timestamp #updated_timestamp} => Time
    #   * {Types::RestoreEventDataStoreResponse#kms_key_id #kms_key_id} => String
    #   * {Types::RestoreEventDataStoreResponse#billing_mode #billing_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_event_data_store({
    #     event_data_store: "EventDataStoreArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_data_store_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATED", "ENABLED", "PENDING_DELETION", "STARTING_INGESTION", "STOPPING_INGESTION", "STOPPED_INGESTION"
    #   resp.advanced_event_selectors #=> Array
    #   resp.advanced_event_selectors[0].name #=> String
    #   resp.advanced_event_selectors[0].field_selectors #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #   resp.multi_region_enabled #=> Boolean
    #   resp.organization_enabled #=> Boolean
    #   resp.retention_period #=> Integer
    #   resp.termination_protection_enabled #=> Boolean
    #   resp.created_timestamp #=> Time
    #   resp.updated_timestamp #=> Time
    #   resp.kms_key_id #=> String
    #   resp.billing_mode #=> String, one of "EXTENDABLE_RETENTION_PRICING", "FIXED_RETENTION_PRICING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RestoreEventDataStore AWS API Documentation
    #
    # @overload restore_event_data_store(params = {})
    # @param [Hash] params ({})
    def restore_event_data_store(params = {}, options = {})
      req = build_request(:restore_event_data_store, params)
      req.send_request(options)
    end

    # Searches sample queries and returns a list of sample queries that are
    # sorted by relevance. To search for sample queries, provide a natural
    # language `SearchPhrase` in English.
    #
    # @option params [required, String] :search_phrase
    #   The natural language phrase to use for the semantic search. The phrase
    #   must be in English. The length constraint is in characters, not words.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return on a single page. The default
    #   value is 10.
    #
    # @option params [String] :next_token
    #   A token you can use to get the next page of results. The length
    #   constraint is in characters, not words.
    #
    # @return [Types::SearchSampleQueriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchSampleQueriesResponse#search_results #search_results} => Array&lt;Types::SearchSampleQueriesSearchResult&gt;
    #   * {Types::SearchSampleQueriesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_sample_queries({
    #     search_phrase: "SearchSampleQueriesSearchPhrase", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.search_results #=> Array
    #   resp.search_results[0].name #=> String
    #   resp.search_results[0].description #=> String
    #   resp.search_results[0].sql #=> String
    #   resp.search_results[0].relevance #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/SearchSampleQueries AWS API Documentation
    #
    # @overload search_sample_queries(params = {})
    # @param [Hash] params ({})
    def search_sample_queries(params = {}, options = {})
      req = build_request(:search_sample_queries, params)
      req.send_request(options)
    end

    # Starts a refresh of the specified dashboard.
    #
    # Each time a dashboard is refreshed, CloudTrail runs queries to
    # populate the dashboard's widgets. CloudTrail must be granted
    # permissions to run the `StartQuery` operation on your behalf. To
    # provide permissions, run the `PutResourcePolicy` operation to attach a
    # resource-based policy to each event data store. For more information,
    # see [Example: Allow CloudTrail to run queries to populate a
    # dashboard][1] in the *CloudTrail User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard
    #
    # @option params [required, String] :dashboard_id
    #   The name or ARN of the dashboard.
    #
    # @option params [Hash<String,String>] :query_parameter_values
    #   The query parameter values for the dashboard
    #
    #   For custom dashboards, the following query parameters are valid:
    #   `$StartTime$`, `$EndTime$`, and `$Period$`.
    #
    #   For managed dashboards, the following query parameters are valid:
    #   `$StartTime$`, `$EndTime$`, `$Period$`, and `$EventDataStoreId$`. The
    #   `$EventDataStoreId$` query parameter is required.
    #
    # @return [Types::StartDashboardRefreshResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDashboardRefreshResponse#refresh_id #refresh_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_dashboard_refresh({
    #     dashboard_id: "DashboardArn", # required
    #     query_parameter_values: {
    #       "QueryParameterKey" => "QueryParameterValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.refresh_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartDashboardRefresh AWS API Documentation
    #
    # @overload start_dashboard_refresh(params = {})
    # @param [Hash] params ({})
    def start_dashboard_refresh(params = {}, options = {})
      req = build_request(:start_dashboard_refresh, params)
      req.send_request(options)
    end

    # Starts the ingestion of live events on an event data store specified
    # as either an ARN or the ID portion of the ARN. To start ingestion, the
    # event data store `Status` must be `STOPPED_INGESTION` and the
    # `eventCategory` must be `Management`, `Data`, `NetworkActivity`, or
    # `ConfigurationItem`.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or ID suffix of the ARN) of the event data store for which
    #   you want to start ingestion.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_event_data_store_ingestion({
    #     event_data_store: "EventDataStoreArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartEventDataStoreIngestion AWS API Documentation
    #
    # @overload start_event_data_store_ingestion(params = {})
    # @param [Hash] params ({})
    def start_event_data_store_ingestion(params = {}, options = {})
      req = build_request(:start_event_data_store_ingestion, params)
      req.send_request(options)
    end

    # Starts an import of logged trail events from a source S3 bucket to a
    # destination event data store. By default, CloudTrail only imports
    # events contained in the S3 bucket's `CloudTrail` prefix and the
    # prefixes inside the `CloudTrail` prefix, and does not check prefixes
    # for other Amazon Web Services services. If you want to import
    # CloudTrail events contained in another prefix, you must include the
    # prefix in the `S3LocationUri`. For more considerations about importing
    # trail events, see [Considerations for copying trail events][1] in the
    # *CloudTrail User Guide*.
    #
    # When you start a new import, the `Destinations` and `ImportSource`
    # parameters are required. Before starting a new import, disable any
    # access control lists (ACLs) attached to the source S3 bucket. For more
    # information about disabling ACLs, see [Controlling ownership of
    # objects and disabling ACLs for your bucket][2].
    #
    # When you retry an import, the `ImportID` parameter is required.
    #
    # <note markdown="1"> If the destination event data store is for an organization, you must
    # use the management account to import trail events. You cannot use the
    # delegated administrator account for the organization.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-copy-trail-to-lake.html#cloudtrail-trail-copy-considerations
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html
    #
    # @option params [Array<String>] :destinations
    #   The ARN of the destination event data store. Use this parameter for a
    #   new import.
    #
    # @option params [Types::ImportSource] :import_source
    #   The source S3 bucket for the import. Use this parameter for a new
    #   import.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_event_time
    #   Use with `EndEventTime` to bound a `StartImport` request, and limit
    #   imported trail events to only those events logged within a specified
    #   time period. When you specify a time range, CloudTrail checks the
    #   prefix and log file names to verify the names contain a date between
    #   the specified `StartEventTime` and `EndEventTime` before attempting to
    #   import events.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_event_time
    #   Use with `StartEventTime` to bound a `StartImport` request, and limit
    #   imported trail events to only those events logged within a specified
    #   time period. When you specify a time range, CloudTrail checks the
    #   prefix and log file names to verify the names contain a date between
    #   the specified `StartEventTime` and `EndEventTime` before attempting to
    #   import events.
    #
    # @option params [String] :import_id
    #   The ID of the import. Use this parameter when you are retrying an
    #   import.
    #
    # @return [Types::StartImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImportResponse#import_id #import_id} => String
    #   * {Types::StartImportResponse#destinations #destinations} => Array&lt;String&gt;
    #   * {Types::StartImportResponse#import_source #import_source} => Types::ImportSource
    #   * {Types::StartImportResponse#start_event_time #start_event_time} => Time
    #   * {Types::StartImportResponse#end_event_time #end_event_time} => Time
    #   * {Types::StartImportResponse#import_status #import_status} => String
    #   * {Types::StartImportResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::StartImportResponse#updated_timestamp #updated_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import({
    #     destinations: ["EventDataStoreArn"],
    #     import_source: {
    #       s3: { # required
    #         s3_location_uri: "String", # required
    #         s3_bucket_region: "String", # required
    #         s3_bucket_access_role_arn: "String", # required
    #       },
    #     },
    #     start_event_time: Time.now,
    #     end_event_time: Time.now,
    #     import_id: "UUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.import_id #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0] #=> String
    #   resp.import_source.s3.s3_location_uri #=> String
    #   resp.import_source.s3.s3_bucket_region #=> String
    #   resp.import_source.s3.s3_bucket_access_role_arn #=> String
    #   resp.start_event_time #=> Time
    #   resp.end_event_time #=> Time
    #   resp.import_status #=> String, one of "INITIALIZING", "IN_PROGRESS", "FAILED", "STOPPED", "COMPLETED"
    #   resp.created_timestamp #=> Time
    #   resp.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartImport AWS API Documentation
    #
    # @overload start_import(params = {})
    # @param [Hash] params ({})
    def start_import(params = {}, options = {})
      req = build_request(:start_import, params)
      req.send_request(options)
    end

    # Starts the recording of Amazon Web Services API calls and log file
    # delivery for a trail. For a trail that is enabled in all Regions, this
    # operation must be called from the Region in which the trail was
    # created. This operation cannot be called on the shadow trails
    # (replicated trails in other Regions) of a trail that is enabled in all
    # Regions.
    #
    # @option params [required, String] :name
    #   Specifies the name or the CloudTrail ARN of the trail for which
    #   CloudTrail logs Amazon Web Services API calls. The following is the
    #   format of a trail ARN.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_logging({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartLogging AWS API Documentation
    #
    # @overload start_logging(params = {})
    # @param [Hash] params ({})
    def start_logging(params = {}, options = {})
      req = build_request(:start_logging, params)
      req.send_request(options)
    end

    # Starts a CloudTrail Lake query. Use the `QueryStatement` parameter to
    # provide your SQL query, enclosed in single quotation marks. Use the
    # optional `DeliveryS3Uri` parameter to deliver the query results to an
    # S3 bucket.
    #
    # `StartQuery` requires you specify either the `QueryStatement`
    # parameter, or a `QueryAlias` and any `QueryParameters`. In the current
    # release, the `QueryAlias` and `QueryParameters` parameters are used
    # only for the queries that populate the CloudTrail Lake dashboards.
    #
    # @option params [String] :query_statement
    #   The SQL code of your query.
    #
    # @option params [String] :delivery_s3_uri
    #   The URI for the S3 bucket where CloudTrail delivers the query results.
    #
    # @option params [String] :query_alias
    #   The alias that identifies a query template.
    #
    # @option params [Array<String>] :query_parameters
    #   The query parameters for the specified `QueryAlias`.
    #
    # @option params [String] :event_data_store_owner_account_id
    #   The account ID of the event data store owner.
    #
    # @return [Types::StartQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartQueryResponse#query_id #query_id} => String
    #   * {Types::StartQueryResponse#event_data_store_owner_account_id #event_data_store_owner_account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query({
    #     query_statement: "QueryStatement",
    #     delivery_s3_uri: "DeliveryS3Uri",
    #     query_alias: "QueryAlias",
    #     query_parameters: ["QueryParameter"],
    #     event_data_store_owner_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #   resp.event_data_store_owner_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartQuery AWS API Documentation
    #
    # @overload start_query(params = {})
    # @param [Hash] params ({})
    def start_query(params = {}, options = {})
      req = build_request(:start_query, params)
      req.send_request(options)
    end

    # Stops the ingestion of live events on an event data store specified as
    # either an ARN or the ID portion of the ARN. To stop ingestion, the
    # event data store `Status` must be `ENABLED` and the `eventCategory`
    # must be `Management`, `Data`, `NetworkActivity`, or
    # `ConfigurationItem`.
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or ID suffix of the ARN) of the event data store for which
    #   you want to stop ingestion.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_event_data_store_ingestion({
    #     event_data_store: "EventDataStoreArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopEventDataStoreIngestion AWS API Documentation
    #
    # @overload stop_event_data_store_ingestion(params = {})
    # @param [Hash] params ({})
    def stop_event_data_store_ingestion(params = {}, options = {})
      req = build_request(:stop_event_data_store_ingestion, params)
      req.send_request(options)
    end

    # Stops a specified import.
    #
    # @option params [required, String] :import_id
    #   The ID of the import.
    #
    # @return [Types::StopImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopImportResponse#import_id #import_id} => String
    #   * {Types::StopImportResponse#import_source #import_source} => Types::ImportSource
    #   * {Types::StopImportResponse#destinations #destinations} => Array&lt;String&gt;
    #   * {Types::StopImportResponse#import_status #import_status} => String
    #   * {Types::StopImportResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::StopImportResponse#updated_timestamp #updated_timestamp} => Time
    #   * {Types::StopImportResponse#start_event_time #start_event_time} => Time
    #   * {Types::StopImportResponse#end_event_time #end_event_time} => Time
    #   * {Types::StopImportResponse#import_statistics #import_statistics} => Types::ImportStatistics
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_import({
    #     import_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_id #=> String
    #   resp.import_source.s3.s3_location_uri #=> String
    #   resp.import_source.s3.s3_bucket_region #=> String
    #   resp.import_source.s3.s3_bucket_access_role_arn #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0] #=> String
    #   resp.import_status #=> String, one of "INITIALIZING", "IN_PROGRESS", "FAILED", "STOPPED", "COMPLETED"
    #   resp.created_timestamp #=> Time
    #   resp.updated_timestamp #=> Time
    #   resp.start_event_time #=> Time
    #   resp.end_event_time #=> Time
    #   resp.import_statistics.prefixes_found #=> Integer
    #   resp.import_statistics.prefixes_completed #=> Integer
    #   resp.import_statistics.files_completed #=> Integer
    #   resp.import_statistics.events_completed #=> Integer
    #   resp.import_statistics.failed_entries #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopImport AWS API Documentation
    #
    # @overload stop_import(params = {})
    # @param [Hash] params ({})
    def stop_import(params = {}, options = {})
      req = build_request(:stop_import, params)
      req.send_request(options)
    end

    # Suspends the recording of Amazon Web Services API calls and log file
    # delivery for the specified trail. Under most circumstances, there is
    # no need to use this action. You can update a trail without stopping it
    # first. This action is the only way to stop recording. For a trail
    # enabled in all Regions, this operation must be called from the Region
    # in which the trail was created, or an `InvalidHomeRegionException`
    # will occur. This operation cannot be called on the shadow trails
    # (replicated trails in other Regions) of a trail enabled in all
    # Regions.
    #
    # @option params [required, String] :name
    #   Specifies the name or the CloudTrail ARN of the trail for which
    #   CloudTrail will stop logging Amazon Web Services API calls. The
    #   following is the format of a trail ARN.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_logging({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopLogging AWS API Documentation
    #
    # @overload stop_logging(params = {})
    # @param [Hash] params ({})
    def stop_logging(params = {}, options = {})
      req = build_request(:stop_logging, params)
      req.send_request(options)
    end

    # Updates a channel specified by a required channel ARN or UUID.
    #
    # @option params [required, String] :channel
    #   The ARN or ID (the ARN suffix) of the channel that you want to update.
    #
    # @option params [Array<Types::Destination>] :destinations
    #   The ARNs of event data stores that you want to log events arriving
    #   through the channel.
    #
    # @option params [String] :name
    #   Changes the name of the channel.
    #
    # @return [Types::UpdateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelResponse#channel_arn #channel_arn} => String
    #   * {Types::UpdateChannelResponse#name #name} => String
    #   * {Types::UpdateChannelResponse#source #source} => String
    #   * {Types::UpdateChannelResponse#destinations #destinations} => Array&lt;Types::Destination&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel({
    #     channel: "ChannelArn", # required
    #     destinations: [
    #       {
    #         type: "EVENT_DATA_STORE", # required, accepts EVENT_DATA_STORE, AWS_SERVICE
    #         location: "Location", # required
    #       },
    #     ],
    #     name: "ChannelName",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.name #=> String
    #   resp.source #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].type #=> String, one of "EVENT_DATA_STORE", "AWS_SERVICE"
    #   resp.destinations[0].location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateChannel AWS API Documentation
    #
    # @overload update_channel(params = {})
    # @param [Hash] params ({})
    def update_channel(params = {}, options = {})
      req = build_request(:update_channel, params)
      req.send_request(options)
    end

    # Updates the specified dashboard.
    #
    # To set a refresh schedule, CloudTrail must be granted permissions to
    # run the `StartDashboardRefresh` operation to refresh the dashboard on
    # your behalf. To provide permissions, run the `PutResourcePolicy`
    # operation to attach a resource-based policy to the dashboard. For more
    # information, see [ Resource-based policy example for a dashboard][1]
    # in the *CloudTrail User Guide*.
    #
    # CloudTrail runs queries to populate the dashboard's widgets during a
    # manual or scheduled refresh. CloudTrail must be granted permissions to
    # run the `StartQuery` operation on your behalf. To provide permissions,
    # run the `PutResourcePolicy` operation to attach a resource-based
    # policy to each event data store. For more information, see [Example:
    # Allow CloudTrail to run queries to populate a dashboard][2] in the
    # *CloudTrail User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-dashboards
    # [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard
    #
    # @option params [required, String] :dashboard_id
    #   The name or ARN of the dashboard.
    #
    # @option params [Array<Types::RequestWidget>] :widgets
    #   An array of widgets for the dashboard. A custom dashboard can have a
    #   maximum of 10 widgets.
    #
    #   To add new widgets, pass in an array that includes the existing
    #   widgets along with any new widgets. Run the `GetDashboard` operation
    #   to get the list of widgets for the dashboard.
    #
    #   To remove widgets, pass in an array that includes the existing widgets
    #   minus the widgets you want removed.
    #
    # @option params [Types::RefreshSchedule] :refresh_schedule
    #   The refresh schedule configuration for the dashboard.
    #
    # @option params [Boolean] :termination_protection_enabled
    #   Specifies whether termination protection is enabled for the dashboard.
    #   If termination protection is enabled, you cannot delete the dashboard
    #   until termination protection is disabled.
    #
    # @return [Types::UpdateDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDashboardResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::UpdateDashboardResponse#name #name} => String
    #   * {Types::UpdateDashboardResponse#type #type} => String
    #   * {Types::UpdateDashboardResponse#widgets #widgets} => Array&lt;Types::Widget&gt;
    #   * {Types::UpdateDashboardResponse#refresh_schedule #refresh_schedule} => Types::RefreshSchedule
    #   * {Types::UpdateDashboardResponse#termination_protection_enabled #termination_protection_enabled} => Boolean
    #   * {Types::UpdateDashboardResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::UpdateDashboardResponse#updated_timestamp #updated_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard({
    #     dashboard_id: "DashboardArn", # required
    #     widgets: [
    #       {
    #         query_statement: "QueryStatement", # required
    #         query_parameters: ["QueryParameter"],
    #         view_properties: { # required
    #           "ViewPropertiesKey" => "ViewPropertiesValue",
    #         },
    #       },
    #     ],
    #     refresh_schedule: {
    #       frequency: {
    #         unit: "HOURS", # accepts HOURS, DAYS
    #         value: 1,
    #       },
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #       time_of_day: "TimeOfDay",
    #     },
    #     termination_protection_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_arn #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "MANAGED", "CUSTOM"
    #   resp.widgets #=> Array
    #   resp.widgets[0].query_alias #=> String
    #   resp.widgets[0].query_statement #=> String
    #   resp.widgets[0].query_parameters #=> Array
    #   resp.widgets[0].query_parameters[0] #=> String
    #   resp.widgets[0].view_properties #=> Hash
    #   resp.widgets[0].view_properties["ViewPropertiesKey"] #=> String
    #   resp.refresh_schedule.frequency.unit #=> String, one of "HOURS", "DAYS"
    #   resp.refresh_schedule.frequency.value #=> Integer
    #   resp.refresh_schedule.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.refresh_schedule.time_of_day #=> String
    #   resp.termination_protection_enabled #=> Boolean
    #   resp.created_timestamp #=> Time
    #   resp.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateDashboard AWS API Documentation
    #
    # @overload update_dashboard(params = {})
    # @param [Hash] params ({})
    def update_dashboard(params = {}, options = {})
      req = build_request(:update_dashboard, params)
      req.send_request(options)
    end

    # Updates an event data store. The required `EventDataStore` value is an
    # ARN or the ID portion of the ARN. Other parameters are optional, but
    # at least one optional parameter must be specified, or CloudTrail
    # throws an error. `RetentionPeriod` is in days, and valid values are
    # integers between 7 and 3653 if the `BillingMode` is set to
    # `EXTENDABLE_RETENTION_PRICING`, or between 7 and 2557 if `BillingMode`
    # is set to `FIXED_RETENTION_PRICING`. By default,
    # `TerminationProtection` is enabled.
    #
    # For event data stores for CloudTrail events, `AdvancedEventSelectors`
    # includes or excludes management, data, or network activity events in
    # your event data store. For more information about
    # `AdvancedEventSelectors`, see [AdvancedEventSelectors][1].
    #
    # For event data stores for CloudTrail Insights events, Config
    # configuration items, Audit Manager evidence, or non-Amazon Web
    # Services events, `AdvancedEventSelectors` includes events of that type
    # in your event data store.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedEventSelector.html
    #
    # @option params [required, String] :event_data_store
    #   The ARN (or the ID suffix of the ARN) of the event data store that you
    #   want to update.
    #
    # @option params [String] :name
    #   The event data store name.
    #
    # @option params [Array<Types::AdvancedEventSelector>] :advanced_event_selectors
    #   The advanced event selectors used to select events for the event data
    #   store. You can configure up to five advanced event selectors for each
    #   event data store.
    #
    # @option params [Boolean] :multi_region_enabled
    #   Specifies whether an event data store collects events from all
    #   Regions, or only from the Region in which it was created.
    #
    # @option params [Boolean] :organization_enabled
    #   Specifies whether an event data store collects events logged for an
    #   organization in Organizations.
    #
    #   <note markdown="1"> Only the management account for the organization can convert an
    #   organization event data store to a non-organization event data store,
    #   or convert a non-organization event data store to an organization
    #   event data store.
    #
    #    </note>
    #
    # @option params [Integer] :retention_period
    #   The retention period of the event data store, in days. If
    #   `BillingMode` is set to `EXTENDABLE_RETENTION_PRICING`, you can set a
    #   retention period of up to 3653 days, the equivalent of 10 years. If
    #   `BillingMode` is set to `FIXED_RETENTION_PRICING`, you can set a
    #   retention period of up to 2557 days, the equivalent of seven years.
    #
    #   CloudTrail Lake determines whether to retain an event by checking if
    #   the `eventTime` of the event is within the specified retention period.
    #   For example, if you set a retention period of 90 days, CloudTrail will
    #   remove events when the `eventTime` is older than 90 days.
    #
    #   <note markdown="1"> If you decrease the retention period of an event data store,
    #   CloudTrail will remove any events with an `eventTime` older than the
    #   new retention period. For example, if the previous retention period
    #   was 365 days and you decrease it to 100 days, CloudTrail will remove
    #   events with an `eventTime` older than 100 days.
    #
    #    </note>
    #
    # @option params [Boolean] :termination_protection_enabled
    #   Indicates that termination protection is enabled and the event data
    #   store cannot be automatically deleted.
    #
    # @option params [String] :kms_key_id
    #   Specifies the KMS key ID to use to encrypt the events delivered by
    #   CloudTrail. The value can be an alias name prefixed by `alias/`, a
    #   fully specified ARN to an alias, a fully specified ARN to a key, or a
    #   globally unique identifier.
    #
    #   Disabling or deleting the KMS key, or removing CloudTrail permissions
    #   on the key, prevents CloudTrail from logging events to the event data
    #   store, and prevents users from querying the data in the event data
    #   store that was encrypted with the key. After you associate an event
    #   data store with a KMS key, the KMS key cannot be removed or changed.
    #   Before you disable or delete a KMS key that you are using with an
    #   event data store, delete or back up your event data store.
    #
    #   CloudTrail also supports KMS multi-Region keys. For more information
    #   about multi-Region keys, see [Using multi-Region keys][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #   Examples:
    #
    #   * `alias/MyAliasName`
    #
    #   * `arn:aws:kms:us-east-2:123456789012:alias/MyAliasName`
    #
    #   * `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #
    #   * `12345678-1234-1234-1234-123456789012`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    #
    # @option params [String] :billing_mode
    #   <note markdown="1"> You can't change the billing mode from `EXTENDABLE_RETENTION_PRICING`
    #   to `FIXED_RETENTION_PRICING`. If `BillingMode` is set to
    #   `EXTENDABLE_RETENTION_PRICING` and you want to use
    #   `FIXED_RETENTION_PRICING` instead, you'll need to stop ingestion on
    #   the event data store and create a new event data store that uses
    #   `FIXED_RETENTION_PRICING`.
    #
    #    </note>
    #
    #   The billing mode for the event data store determines the cost for
    #   ingesting events and the default and maximum retention period for the
    #   event data store.
    #
    #   The following are the possible values:
    #
    #   * `EXTENDABLE_RETENTION_PRICING` - This billing mode is generally
    #     recommended if you want a flexible retention period of up to 3653
    #     days (about 10 years). The default retention period for this billing
    #     mode is 366 days.
    #
    #   * `FIXED_RETENTION_PRICING` - This billing mode is recommended if you
    #     expect to ingest more than 25 TB of event data per month and need a
    #     retention period of up to 2557 days (about 7 years). The default
    #     retention period for this billing mode is 2557 days.
    #
    #   For more information about CloudTrail pricing, see [CloudTrail
    #   Pricing][1] and [Managing CloudTrail Lake costs][2].
    #
    #
    #
    #   [1]: http://aws.amazon.com/cloudtrail/pricing/
    #   [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-manage-costs.html
    #
    # @return [Types::UpdateEventDataStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEventDataStoreResponse#event_data_store_arn #event_data_store_arn} => String
    #   * {Types::UpdateEventDataStoreResponse#name #name} => String
    #   * {Types::UpdateEventDataStoreResponse#status #status} => String
    #   * {Types::UpdateEventDataStoreResponse#advanced_event_selectors #advanced_event_selectors} => Array&lt;Types::AdvancedEventSelector&gt;
    #   * {Types::UpdateEventDataStoreResponse#multi_region_enabled #multi_region_enabled} => Boolean
    #   * {Types::UpdateEventDataStoreResponse#organization_enabled #organization_enabled} => Boolean
    #   * {Types::UpdateEventDataStoreResponse#retention_period #retention_period} => Integer
    #   * {Types::UpdateEventDataStoreResponse#termination_protection_enabled #termination_protection_enabled} => Boolean
    #   * {Types::UpdateEventDataStoreResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::UpdateEventDataStoreResponse#updated_timestamp #updated_timestamp} => Time
    #   * {Types::UpdateEventDataStoreResponse#kms_key_id #kms_key_id} => String
    #   * {Types::UpdateEventDataStoreResponse#billing_mode #billing_mode} => String
    #   * {Types::UpdateEventDataStoreResponse#federation_status #federation_status} => String
    #   * {Types::UpdateEventDataStoreResponse#federation_role_arn #federation_role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_data_store({
    #     event_data_store: "EventDataStoreArn", # required
    #     name: "EventDataStoreName",
    #     advanced_event_selectors: [
    #       {
    #         name: "SelectorName",
    #         field_selectors: [ # required
    #           {
    #             field: "SelectorField", # required
    #             equals: ["OperatorValue"],
    #             starts_with: ["OperatorValue"],
    #             ends_with: ["OperatorValue"],
    #             not_equals: ["OperatorValue"],
    #             not_starts_with: ["OperatorValue"],
    #             not_ends_with: ["OperatorValue"],
    #           },
    #         ],
    #       },
    #     ],
    #     multi_region_enabled: false,
    #     organization_enabled: false,
    #     retention_period: 1,
    #     termination_protection_enabled: false,
    #     kms_key_id: "EventDataStoreKmsKeyId",
    #     billing_mode: "EXTENDABLE_RETENTION_PRICING", # accepts EXTENDABLE_RETENTION_PRICING, FIXED_RETENTION_PRICING
    #   })
    #
    # @example Response structure
    #
    #   resp.event_data_store_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATED", "ENABLED", "PENDING_DELETION", "STARTING_INGESTION", "STOPPING_INGESTION", "STOPPED_INGESTION"
    #   resp.advanced_event_selectors #=> Array
    #   resp.advanced_event_selectors[0].name #=> String
    #   resp.advanced_event_selectors[0].field_selectors #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].ends_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_equals[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_starts_with[0] #=> String
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array
    #   resp.advanced_event_selectors[0].field_selectors[0].not_ends_with[0] #=> String
    #   resp.multi_region_enabled #=> Boolean
    #   resp.organization_enabled #=> Boolean
    #   resp.retention_period #=> Integer
    #   resp.termination_protection_enabled #=> Boolean
    #   resp.created_timestamp #=> Time
    #   resp.updated_timestamp #=> Time
    #   resp.kms_key_id #=> String
    #   resp.billing_mode #=> String, one of "EXTENDABLE_RETENTION_PRICING", "FIXED_RETENTION_PRICING"
    #   resp.federation_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED"
    #   resp.federation_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateEventDataStore AWS API Documentation
    #
    # @overload update_event_data_store(params = {})
    # @param [Hash] params ({})
    def update_event_data_store(params = {}, options = {})
      req = build_request(:update_event_data_store, params)
      req.send_request(options)
    end

    # Updates trail settings that control what events you are logging, and
    # how to handle log files. Changes to a trail do not require stopping
    # the CloudTrail service. Use this action to designate an existing
    # bucket for log delivery. If the existing bucket has previously been a
    # target for CloudTrail log files, an IAM policy exists for the bucket.
    # `UpdateTrail` must be called from the Region in which the trail was
    # created; otherwise, an `InvalidHomeRegionException` is thrown.
    #
    # @option params [required, String] :name
    #   Specifies the name of the trail or trail ARN. If `Name` is a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If `Name` is a trail ARN, it must be in the following format.
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @option params [String] :s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files. See [Amazon S3 Bucket naming rules][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html
    #
    # @option params [String] :s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
    #   length is 200 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/get-and-view-cloudtrail-log-files.html#cloudtrail-find-log-files
    #
    # @option params [String] :sns_topic_name
    #   Specifies the name or ARN of the Amazon SNS topic defined for
    #   notification of log file delivery. The maximum length is 256
    #   characters.
    #
    # @option params [Boolean] :include_global_service_events
    #   Specifies whether the trail is publishing events from global services
    #   such as IAM to the log files.
    #
    # @option params [Boolean] :is_multi_region_trail
    #   Specifies whether the trail applies only to the current Region or to
    #   all Regions. The default is false. If the trail exists only in the
    #   current Region and this value is set to true, shadow trails
    #   (replications of the trail) will be created in the other Regions. If
    #   the trail exists in all Regions and this value is set to false, the
    #   trail will remain in the Region where it was created, and its shadow
    #   trails in other Regions will be deleted. As a best practice, consider
    #   using trails that log events in all Regions.
    #
    # @option params [Boolean] :enable_log_file_validation
    #   Specifies whether log file validation is enabled. The default is
    #   false.
    #
    #   <note markdown="1"> When you disable log file integrity validation, the chain of digest
    #   files is broken after one hour. CloudTrail does not create digest
    #   files for log files that were delivered during a period in which log
    #   file integrity validation was disabled. For example, if you enable log
    #   file integrity validation at noon on January 1, disable it at noon on
    #   January 2, and re-enable it at noon on January 10, digest files will
    #   not be created for the log files delivered from noon on January 2 to
    #   noon on January 10. The same applies whenever you stop CloudTrail
    #   logging or delete a trail.
    #
    #    </note>
    #
    # @option params [String] :cloud_watch_logs_log_group_arn
    #   Specifies a log group name using an Amazon Resource Name (ARN), a
    #   unique identifier that represents the log group to which CloudTrail
    #   logs are delivered. You must use a log group that exists in your
    #   account.
    #
    #   Not required unless you specify `CloudWatchLogsRoleArn`.
    #
    # @option params [String] :cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to write
    #   to a user's log group. You must use a role that exists in your
    #   account.
    #
    # @option params [String] :kms_key_id
    #   Specifies the KMS key ID to use to encrypt the logs and digest files
    #   delivered by CloudTrail. The value can be an alias name prefixed by
    #   "alias/", a fully specified ARN to an alias, a fully specified ARN
    #   to a key, or a globally unique identifier.
    #
    #   CloudTrail also supports KMS multi-Region keys. For more information
    #   about multi-Region keys, see [Using multi-Region keys][1] in the *Key
    #   Management Service Developer Guide*.
    #
    #   Examples:
    #
    #   * alias/MyAliasName
    #
    #   * arn:aws:kms:us-east-2:123456789012:alias/MyAliasName
    #
    #   * arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012
    #
    #   * 12345678-1234-1234-1234-123456789012
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html
    #
    # @option params [Boolean] :is_organization_trail
    #   Specifies whether the trail is applied to all accounts in an
    #   organization in Organizations, or only for the current Amazon Web
    #   Services account. The default is false, and cannot be true unless the
    #   call is made on behalf of an Amazon Web Services account that is the
    #   management account for an organization in Organizations. If the trail
    #   is not an organization trail and this is set to `true`, the trail will
    #   be created in all Amazon Web Services accounts that belong to the
    #   organization. If the trail is an organization trail and this is set to
    #   `false`, the trail will remain in the current Amazon Web Services
    #   account but be deleted from all member accounts in the organization.
    #
    #   <note markdown="1"> Only the management account for the organization can convert an
    #   organization trail to a non-organization trail, or convert a
    #   non-organization trail to an organization trail.
    #
    #    </note>
    #
    # @return [Types::UpdateTrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTrailResponse#name #name} => String
    #   * {Types::UpdateTrailResponse#s3_bucket_name #s3_bucket_name} => String
    #   * {Types::UpdateTrailResponse#s3_key_prefix #s3_key_prefix} => String
    #   * {Types::UpdateTrailResponse#sns_topic_name #sns_topic_name} => String
    #   * {Types::UpdateTrailResponse#sns_topic_arn #sns_topic_arn} => String
    #   * {Types::UpdateTrailResponse#include_global_service_events #include_global_service_events} => Boolean
    #   * {Types::UpdateTrailResponse#is_multi_region_trail #is_multi_region_trail} => Boolean
    #   * {Types::UpdateTrailResponse#trail_arn #trail_arn} => String
    #   * {Types::UpdateTrailResponse#log_file_validation_enabled #log_file_validation_enabled} => Boolean
    #   * {Types::UpdateTrailResponse#cloud_watch_logs_log_group_arn #cloud_watch_logs_log_group_arn} => String
    #   * {Types::UpdateTrailResponse#cloud_watch_logs_role_arn #cloud_watch_logs_role_arn} => String
    #   * {Types::UpdateTrailResponse#kms_key_id #kms_key_id} => String
    #   * {Types::UpdateTrailResponse#is_organization_trail #is_organization_trail} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trail({
    #     name: "String", # required
    #     s3_bucket_name: "String",
    #     s3_key_prefix: "String",
    #     sns_topic_name: "String",
    #     include_global_service_events: false,
    #     is_multi_region_trail: false,
    #     enable_log_file_validation: false,
    #     cloud_watch_logs_log_group_arn: "String",
    #     cloud_watch_logs_role_arn: "String",
    #     kms_key_id: "String",
    #     is_organization_trail: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.s3_bucket_name #=> String
    #   resp.s3_key_prefix #=> String
    #   resp.sns_topic_name #=> String
    #   resp.sns_topic_arn #=> String
    #   resp.include_global_service_events #=> Boolean
    #   resp.is_multi_region_trail #=> Boolean
    #   resp.trail_arn #=> String
    #   resp.log_file_validation_enabled #=> Boolean
    #   resp.cloud_watch_logs_log_group_arn #=> String
    #   resp.cloud_watch_logs_role_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.is_organization_trail #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateTrail AWS API Documentation
    #
    # @overload update_trail(params = {})
    # @param [Hash] params ({})
    def update_trail(params = {}, options = {})
      req = build_request(:update_trail, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CloudTrail')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-cloudtrail'
      context[:gem_version] = '1.116.0'
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
