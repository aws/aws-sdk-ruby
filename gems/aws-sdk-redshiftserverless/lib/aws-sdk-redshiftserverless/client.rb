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
require 'aws-sdk-core/plugins/invocation_id.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/telemetry.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

module Aws::RedshiftServerless
  # An API client for RedshiftServerless.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::RedshiftServerless::Client.new(
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

    @identifier = :redshiftserverless

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
    add_plugin(Aws::RedshiftServerless::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
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
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'],
    #       ENV['AWS_SESSION_TOKEN'], and ENV['AWS_ACCOUNT_ID']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
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
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
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
    #   @option options [Aws::RedshiftServerless::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::RedshiftServerless::EndpointParameters`.
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

    # Converts a recovery point to a snapshot. For more information about
    # recovery points and snapshots, see [Working with snapshots and
    # recovery points][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery.html
    #
    # @option params [required, String] :recovery_point_id
    #   The unique identifier of the recovery point.
    #
    # @option params [Integer] :retention_period
    #   How long to retain the snapshot.
    #
    # @option params [required, String] :snapshot_name
    #   The name of the snapshot.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of [Tag objects][1] to associate with the created snapshot.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html
    #
    # @return [Types::ConvertRecoveryPointToSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConvertRecoveryPointToSnapshotResponse#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.convert_recovery_point_to_snapshot({
    #     recovery_point_id: "String", # required
    #     retention_period: 1,
    #     snapshot_name: "String", # required
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
    #   resp.snapshot.accounts_with_provisioned_restore_access #=> Array
    #   resp.snapshot.accounts_with_provisioned_restore_access[0] #=> String
    #   resp.snapshot.accounts_with_restore_access #=> Array
    #   resp.snapshot.accounts_with_restore_access[0] #=> String
    #   resp.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.admin_password_secret_arn #=> String
    #   resp.snapshot.admin_password_secret_kms_key_id #=> String
    #   resp.snapshot.admin_username #=> String
    #   resp.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.namespace_arn #=> String
    #   resp.snapshot.namespace_name #=> String
    #   resp.snapshot.owner_account #=> String
    #   resp.snapshot.snapshot_arn #=> String
    #   resp.snapshot.snapshot_create_time #=> Time
    #   resp.snapshot.snapshot_name #=> String
    #   resp.snapshot.snapshot_remaining_days #=> Integer
    #   resp.snapshot.snapshot_retention_period #=> Integer
    #   resp.snapshot.snapshot_retention_start_time #=> Time
    #   resp.snapshot.status #=> String, one of "AVAILABLE", "CREATING", "DELETED", "CANCELLED", "FAILED", "COPYING"
    #   resp.snapshot.total_backup_size_in_mega_bytes #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ConvertRecoveryPointToSnapshot AWS API Documentation
    #
    # @overload convert_recovery_point_to_snapshot(params = {})
    # @param [Hash] params ({})
    def convert_recovery_point_to_snapshot(params = {}, options = {})
      req = build_request(:convert_recovery_point_to_snapshot, params)
      req.send_request(options)
    end

    # Creates a custom domain association for Amazon Redshift Serverless.
    #
    # @option params [required, String] :custom_domain_certificate_arn
    #   The custom domain name’s certificate Amazon resource name (ARN).
    #
    # @option params [required, String] :custom_domain_name
    #   The custom domain name to associate with the workgroup.
    #
    # @option params [required, String] :workgroup_name
    #   The name of the workgroup associated with the database.
    #
    # @return [Types::CreateCustomDomainAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomDomainAssociationResponse#custom_domain_certificate_arn #custom_domain_certificate_arn} => String
    #   * {Types::CreateCustomDomainAssociationResponse#custom_domain_certificate_expiry_time #custom_domain_certificate_expiry_time} => Time
    #   * {Types::CreateCustomDomainAssociationResponse#custom_domain_name #custom_domain_name} => String
    #   * {Types::CreateCustomDomainAssociationResponse#workgroup_name #workgroup_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_domain_association({
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString", # required
    #     custom_domain_name: "CustomDomainName", # required
    #     workgroup_name: "WorkgroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_domain_certificate_arn #=> String
    #   resp.custom_domain_certificate_expiry_time #=> Time
    #   resp.custom_domain_name #=> String
    #   resp.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateCustomDomainAssociation AWS API Documentation
    #
    # @overload create_custom_domain_association(params = {})
    # @param [Hash] params ({})
    def create_custom_domain_association(params = {}, options = {})
      req = build_request(:create_custom_domain_association, params)
      req.send_request(options)
    end

    # Creates an Amazon Redshift Serverless managed VPC endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the VPC endpoint. An endpoint name must contain 1-30
    #   characters. Valid characters are A-Z, a-z, 0-9, and hyphen(-). The
    #   first character must be a letter. The name can't contain two
    #   consecutive hyphens or end with a hyphen.
    #
    # @option params [String] :owner_account
    #   The owner Amazon Web Services account for the Amazon Redshift
    #   Serverless workgroup.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The unique identifers of subnets from which Amazon Redshift Serverless
    #   chooses one to deploy a VPC endpoint.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   The unique identifiers of the security group that defines the ports,
    #   protocols, and sources for inbound traffic that you are authorizing
    #   into your endpoint.
    #
    # @option params [required, String] :workgroup_name
    #   The name of the workgroup to associate with the VPC endpoint.
    #
    # @return [Types::CreateEndpointAccessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEndpointAccessResponse#endpoint #endpoint} => Types::EndpointAccess
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint_access({
    #     endpoint_name: "String", # required
    #     owner_account: "OwnerAccount",
    #     subnet_ids: ["SubnetId"], # required
    #     vpc_security_group_ids: ["VpcSecurityGroupId"],
    #     workgroup_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.address #=> String
    #   resp.endpoint.endpoint_arn #=> String
    #   resp.endpoint.endpoint_create_time #=> Time
    #   resp.endpoint.endpoint_name #=> String
    #   resp.endpoint.endpoint_status #=> String
    #   resp.endpoint.port #=> Integer
    #   resp.endpoint.subnet_ids #=> Array
    #   resp.endpoint.subnet_ids[0] #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces #=> Array
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].availability_zone #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].ipv6_address #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].network_interface_id #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].private_ip_address #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].subnet_id #=> String
    #   resp.endpoint.vpc_endpoint.vpc_endpoint_id #=> String
    #   resp.endpoint.vpc_endpoint.vpc_id #=> String
    #   resp.endpoint.vpc_security_groups #=> Array
    #   resp.endpoint.vpc_security_groups[0].status #=> String
    #   resp.endpoint.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.endpoint.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateEndpointAccess AWS API Documentation
    #
    # @overload create_endpoint_access(params = {})
    # @param [Hash] params ({})
    def create_endpoint_access(params = {}, options = {})
      req = build_request(:create_endpoint_access, params)
      req.send_request(options)
    end

    # Creates a namespace in Amazon Redshift Serverless.
    #
    # @option params [String] :admin_password_secret_kms_key_id
    #   The ID of the Key Management Service (KMS) key used to encrypt and
    #   store the namespace's admin credentials secret. You can only use this
    #   parameter if `manageAdminPassword` is true.
    #
    # @option params [String] :admin_user_password
    #   The password of the administrator for the first database created in
    #   the namespace.
    #
    #   You can't use `adminUserPassword` if `manageAdminPassword` is true.
    #
    # @option params [String] :admin_username
    #   The username of the administrator for the first database created in
    #   the namespace.
    #
    # @option params [String] :db_name
    #   The name of the first database created in the namespace.
    #
    # @option params [String] :default_iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to set as a default in
    #   the namespace.
    #
    # @option params [Array<String>] :iam_roles
    #   A list of IAM roles to associate with the namespace.
    #
    # @option params [String] :kms_key_id
    #   The ID of the Amazon Web Services Key Management Service key used to
    #   encrypt your data.
    #
    # @option params [Array<String>] :log_exports
    #   The types of logs the namespace can export. Available export types are
    #   `userlog`, `connectionlog`, and `useractivitylog`.
    #
    # @option params [Boolean] :manage_admin_password
    #   If `true`, Amazon Redshift uses Secrets Manager to manage the
    #   namespace's admin credentials. You can't use `adminUserPassword` if
    #   `manageAdminPassword` is true. If `manageAdminPassword` is false or
    #   not set, Amazon Redshift uses `adminUserPassword` for the admin user
    #   account's password.
    #
    # @option params [required, String] :namespace_name
    #   The name of the namespace.
    #
    # @option params [String] :redshift_idc_application_arn
    #   The ARN for the Redshift application that integrates with IAM Identity
    #   Center.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag instances.
    #
    # @return [Types::CreateNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNamespaceResponse#namespace #namespace} => Types::Namespace
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_namespace({
    #     admin_password_secret_kms_key_id: "KmsKeyId",
    #     admin_user_password: "DbPassword",
    #     admin_username: "DbUser",
    #     db_name: "String",
    #     default_iam_role_arn: "String",
    #     iam_roles: ["IamRoleArn"],
    #     kms_key_id: "String",
    #     log_exports: ["useractivitylog"], # accepts useractivitylog, userlog, connectionlog
    #     manage_admin_password: false,
    #     namespace_name: "NamespaceName", # required
    #     redshift_idc_application_arn: "RedshiftIdcApplicationArn",
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
    #   resp.namespace.admin_password_secret_arn #=> String
    #   resp.namespace.admin_password_secret_kms_key_id #=> String
    #   resp.namespace.admin_username #=> String
    #   resp.namespace.creation_date #=> Time
    #   resp.namespace.db_name #=> String
    #   resp.namespace.default_iam_role_arn #=> String
    #   resp.namespace.iam_roles #=> Array
    #   resp.namespace.iam_roles[0] #=> String
    #   resp.namespace.kms_key_id #=> String
    #   resp.namespace.log_exports #=> Array
    #   resp.namespace.log_exports[0] #=> String, one of "useractivitylog", "userlog", "connectionlog"
    #   resp.namespace.namespace_arn #=> String
    #   resp.namespace.namespace_id #=> String
    #   resp.namespace.namespace_name #=> String
    #   resp.namespace.status #=> String, one of "AVAILABLE", "MODIFYING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateNamespace AWS API Documentation
    #
    # @overload create_namespace(params = {})
    # @param [Hash] params ({})
    def create_namespace(params = {}, options = {})
      req = build_request(:create_namespace, params)
      req.send_request(options)
    end

    # Creates a scheduled action. A scheduled action contains a schedule and
    # an Amazon Redshift API action. For example, you can create a schedule
    # of when to run the `CreateSnapshot` API operation.
    #
    # @option params [Boolean] :enabled
    #   Indicates whether the schedule is enabled. If false, the scheduled
    #   action does not trigger. For more information about `state` of the
    #   scheduled action, see [ScheduledAction][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_ScheduledAction.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time in UTC when the schedule is no longer active. After this
    #   time, the scheduled action does not trigger.
    #
    # @option params [required, String] :namespace_name
    #   The name of the namespace for which to create a scheduled action.
    #
    # @option params [required, String] :role_arn
    #   The ARN of the IAM role to assume to run the scheduled action. This
    #   IAM role must have permission to run the Amazon Redshift Serverless
    #   API operation in the scheduled action. This IAM role must allow the
    #   Amazon Redshift scheduler to schedule creating snapshots. (Principal
    #   scheduler.redshift.amazonaws.com) to assume permissions on your
    #   behalf. For more information about the IAM role to use with the Amazon
    #   Redshift scheduler, see [Using Identity-Based Policies for Amazon
    #   Redshift][1] in the Amazon Redshift Management Guide
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html
    #
    # @option params [required, Types::Schedule] :schedule
    #   The schedule for a one-time (at timestamp format) or recurring (cron
    #   format) scheduled action. Schedule invocations must be separated by at
    #   least one hour. Times are in UTC.
    #
    #   * Format of at timestamp is `yyyy-mm-ddThh:mm:ss`. For example,
    #     `2016-03-04T17:27:00`.
    #
    #   * Format of cron expression is `(Minutes Hours Day-of-month Month
    #     Day-of-week Year)`. For example, `"(0 10 ? * MON *)"`. For more
    #     information, see [Cron Expressions][1] in the *Amazon CloudWatch
    #     Events User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions
    #
    # @option params [String] :scheduled_action_description
    #   The description of the scheduled action.
    #
    # @option params [required, String] :scheduled_action_name
    #   The name of the scheduled action.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time in UTC when the schedule is active. Before this time,
    #   the scheduled action does not trigger.
    #
    # @option params [required, Types::TargetAction] :target_action
    #   A JSON format string of the Amazon Redshift Serverless API operation
    #   with input parameters. The following is an example of a target action.
    #
    #   `"{"CreateSnapshot": {"NamespaceName":
    #   "sampleNamespace","SnapshotName": "sampleSnapshot", "retentionPeriod":
    #   "1"}}"`
    #
    # @return [Types::CreateScheduledActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScheduledActionResponse#scheduled_action #scheduled_action} => Types::ScheduledActionResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scheduled_action({
    #     enabled: false,
    #     end_time: Time.now,
    #     namespace_name: "NamespaceName", # required
    #     role_arn: "IamRoleArn", # required
    #     schedule: { # required
    #       at: Time.now,
    #       cron: "String",
    #     },
    #     scheduled_action_description: "String",
    #     scheduled_action_name: "ScheduledActionName", # required
    #     start_time: Time.now,
    #     target_action: { # required
    #       create_snapshot: {
    #         namespace_name: "NamespaceName", # required
    #         retention_period: 1,
    #         snapshot_name_prefix: "SnapshotNamePrefix", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_action.end_time #=> Time
    #   resp.scheduled_action.namespace_name #=> String
    #   resp.scheduled_action.next_invocations #=> Array
    #   resp.scheduled_action.next_invocations[0] #=> Time
    #   resp.scheduled_action.role_arn #=> String
    #   resp.scheduled_action.schedule.at #=> Time
    #   resp.scheduled_action.schedule.cron #=> String
    #   resp.scheduled_action.scheduled_action_description #=> String
    #   resp.scheduled_action.scheduled_action_name #=> String
    #   resp.scheduled_action.scheduled_action_uuid #=> String
    #   resp.scheduled_action.start_time #=> Time
    #   resp.scheduled_action.state #=> String, one of "ACTIVE", "DISABLED"
    #   resp.scheduled_action.target_action.create_snapshot.namespace_name #=> String
    #   resp.scheduled_action.target_action.create_snapshot.retention_period #=> Integer
    #   resp.scheduled_action.target_action.create_snapshot.snapshot_name_prefix #=> String
    #   resp.scheduled_action.target_action.create_snapshot.tags #=> Array
    #   resp.scheduled_action.target_action.create_snapshot.tags[0].key #=> String
    #   resp.scheduled_action.target_action.create_snapshot.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateScheduledAction AWS API Documentation
    #
    # @overload create_scheduled_action(params = {})
    # @param [Hash] params ({})
    def create_scheduled_action(params = {}, options = {})
      req = build_request(:create_scheduled_action, params)
      req.send_request(options)
    end

    # Creates a snapshot of all databases in a namespace. For more
    # information about snapshots, see [ Working with snapshots and recovery
    # points][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery.html
    #
    # @option params [required, String] :namespace_name
    #   The namespace to create a snapshot for.
    #
    # @option params [Integer] :retention_period
    #   How long to retain the created snapshot.
    #
    # @option params [required, String] :snapshot_name
    #   The name of the snapshot.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of [Tag objects][1] to associate with the snapshot.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html
    #
    # @return [Types::CreateSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSnapshotResponse#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot({
    #     namespace_name: "String", # required
    #     retention_period: 1,
    #     snapshot_name: "String", # required
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
    #   resp.snapshot.accounts_with_provisioned_restore_access #=> Array
    #   resp.snapshot.accounts_with_provisioned_restore_access[0] #=> String
    #   resp.snapshot.accounts_with_restore_access #=> Array
    #   resp.snapshot.accounts_with_restore_access[0] #=> String
    #   resp.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.admin_password_secret_arn #=> String
    #   resp.snapshot.admin_password_secret_kms_key_id #=> String
    #   resp.snapshot.admin_username #=> String
    #   resp.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.namespace_arn #=> String
    #   resp.snapshot.namespace_name #=> String
    #   resp.snapshot.owner_account #=> String
    #   resp.snapshot.snapshot_arn #=> String
    #   resp.snapshot.snapshot_create_time #=> Time
    #   resp.snapshot.snapshot_name #=> String
    #   resp.snapshot.snapshot_remaining_days #=> Integer
    #   resp.snapshot.snapshot_retention_period #=> Integer
    #   resp.snapshot.snapshot_retention_start_time #=> Time
    #   resp.snapshot.status #=> String, one of "AVAILABLE", "CREATING", "DELETED", "CANCELLED", "FAILED", "COPYING"
    #   resp.snapshot.total_backup_size_in_mega_bytes #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateSnapshot AWS API Documentation
    #
    # @overload create_snapshot(params = {})
    # @param [Hash] params ({})
    def create_snapshot(params = {}, options = {})
      req = build_request(:create_snapshot, params)
      req.send_request(options)
    end

    # Creates a snapshot copy configuration that lets you copy snapshots to
    # another Amazon Web Services Region.
    #
    # @option params [String] :destination_kms_key_id
    #   The KMS key to use to encrypt your snapshots in the destination Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :destination_region
    #   The destination Amazon Web Services Region that you want to copy
    #   snapshots to.
    #
    # @option params [required, String] :namespace_name
    #   The name of the namespace to copy snapshots from.
    #
    # @option params [Integer] :snapshot_retention_period
    #   The retention period of the snapshots that you copy to the destination
    #   Amazon Web Services Region.
    #
    # @return [Types::CreateSnapshotCopyConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSnapshotCopyConfigurationResponse#snapshot_copy_configuration #snapshot_copy_configuration} => Types::SnapshotCopyConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot_copy_configuration({
    #     destination_kms_key_id: "KmsKeyId",
    #     destination_region: "String", # required
    #     namespace_name: "NamespaceName", # required
    #     snapshot_retention_period: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_copy_configuration.destination_kms_key_id #=> String
    #   resp.snapshot_copy_configuration.destination_region #=> String
    #   resp.snapshot_copy_configuration.namespace_name #=> String
    #   resp.snapshot_copy_configuration.snapshot_copy_configuration_arn #=> String
    #   resp.snapshot_copy_configuration.snapshot_copy_configuration_id #=> String
    #   resp.snapshot_copy_configuration.snapshot_retention_period #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateSnapshotCopyConfiguration AWS API Documentation
    #
    # @overload create_snapshot_copy_configuration(params = {})
    # @param [Hash] params ({})
    def create_snapshot_copy_configuration(params = {}, options = {})
      req = build_request(:create_snapshot_copy_configuration, params)
      req.send_request(options)
    end

    # Creates a usage limit for a specified Amazon Redshift Serverless usage
    # type. The usage limit is identified by the returned usage limit
    # identifier.
    #
    # @option params [required, Integer] :amount
    #   The limit amount. If time-based, this amount is in Redshift Processing
    #   Units (RPU) consumed per hour. If data-based, this amount is in
    #   terabytes (TB) of data transferred between Regions in cross-account
    #   sharing. The value must be a positive number.
    #
    # @option params [String] :breach_action
    #   The action that Amazon Redshift Serverless takes when the limit is
    #   reached. The default is log.
    #
    # @option params [String] :period
    #   The time period that the amount applies to. A weekly period begins on
    #   Sunday. The default is monthly.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Redshift Serverless
    #   resource to create the usage limit for.
    #
    # @option params [required, String] :usage_type
    #   The type of Amazon Redshift Serverless usage to create a usage limit
    #   for.
    #
    # @return [Types::CreateUsageLimitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUsageLimitResponse#usage_limit #usage_limit} => Types::UsageLimit
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_usage_limit({
    #     amount: 1, # required
    #     breach_action: "log", # accepts log, emit-metric, deactivate
    #     period: "daily", # accepts daily, weekly, monthly
    #     resource_arn: "String", # required
    #     usage_type: "serverless-compute", # required, accepts serverless-compute, cross-region-datasharing
    #   })
    #
    # @example Response structure
    #
    #   resp.usage_limit.amount #=> Integer
    #   resp.usage_limit.breach_action #=> String, one of "log", "emit-metric", "deactivate"
    #   resp.usage_limit.period #=> String, one of "daily", "weekly", "monthly"
    #   resp.usage_limit.resource_arn #=> String
    #   resp.usage_limit.usage_limit_arn #=> String
    #   resp.usage_limit.usage_limit_id #=> String
    #   resp.usage_limit.usage_type #=> String, one of "serverless-compute", "cross-region-datasharing"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateUsageLimit AWS API Documentation
    #
    # @overload create_usage_limit(params = {})
    # @param [Hash] params ({})
    def create_usage_limit(params = {}, options = {})
      req = build_request(:create_usage_limit, params)
      req.send_request(options)
    end

    # Creates an workgroup in Amazon Redshift Serverless.
    #
    # VPC Block Public Access (BPA) enables you to block resources in VPCs
    # and subnets that you own in a Region from reaching or being reached
    # from the internet through internet gateways and egress-only internet
    # gateways. If a workgroup is in an account with VPC BPA turned on, the
    # following capabilities are blocked:
    #
    # * Creating a public access workgroup
    #
    # * Modifying a private workgroup to public
    #
    # * Adding a subnet with VPC BPA turned on to the workgroup when the
    #   workgroup is public
    #
    # For more information about VPC BPA, see [Block public access to VPCs
    # and subnets][1] in the *Amazon VPC User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html
    #
    # @option params [Integer] :base_capacity
    #   The base data warehouse capacity of the workgroup in Redshift
    #   Processing Units (RPUs).
    #
    # @option params [Array<Types::ConfigParameter>] :config_parameters
    #   An array of parameters to set for advanced control over a database.
    #   The options are `auto_mv`, `datestyle`,
    #   `enable_case_sensitive_identifier`, `enable_user_activity_logging`,
    #   `query_group`, `search_path`, `require_ssl`, `use_fips_ssl`, and query
    #   monitoring metrics that let you define performance boundaries. For
    #   more information about query monitoring rules and available metrics,
    #   see [ Query monitoring metrics for Amazon Redshift Serverless][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless
    #
    # @option params [Boolean] :enhanced_vpc_routing
    #   The value that specifies whether to turn on enhanced virtual private
    #   cloud (VPC) routing, which forces Amazon Redshift Serverless to route
    #   traffic through your VPC instead of over the internet.
    #
    # @option params [String] :ip_address_type
    #   The IP address type that the workgroup supports. Possible values are
    #   `ipv4` and `dualstack`.
    #
    # @option params [Integer] :max_capacity
    #   The maximum data-warehouse capacity Amazon Redshift Serverless uses to
    #   serve queries. The max capacity is specified in RPUs.
    #
    # @option params [required, String] :namespace_name
    #   The name of the namespace to associate with the workgroup.
    #
    # @option params [Integer] :port
    #   The custom port to use when connecting to a workgroup. Valid port
    #   ranges are 5431-5455 and 8191-8215. The default is 5439.
    #
    # @option params [Types::PerformanceTarget] :price_performance_target
    #   An object that represents the price performance target settings for
    #   the workgroup.
    #
    # @option params [Boolean] :publicly_accessible
    #   A value that specifies whether the workgroup can be accessed from a
    #   public network.
    #
    # @option params [Array<String>] :security_group_ids
    #   An array of security group IDs to associate with the workgroup.
    #
    # @option params [Array<String>] :subnet_ids
    #   An array of VPC subnet IDs to associate with the workgroup.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A array of tag instances.
    #
    # @option params [required, String] :workgroup_name
    #   The name of the created workgroup.
    #
    # @return [Types::CreateWorkgroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkgroupResponse#workgroup #workgroup} => Types::Workgroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workgroup({
    #     base_capacity: 1,
    #     config_parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #       },
    #     ],
    #     enhanced_vpc_routing: false,
    #     ip_address_type: "IpAddressType",
    #     max_capacity: 1,
    #     namespace_name: "NamespaceName", # required
    #     port: 1,
    #     price_performance_target: {
    #       level: 1,
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     publicly_accessible: false,
    #     security_group_ids: ["SecurityGroupId"],
    #     subnet_ids: ["SubnetId"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     workgroup_name: "WorkgroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workgroup.base_capacity #=> Integer
    #   resp.workgroup.config_parameters #=> Array
    #   resp.workgroup.config_parameters[0].parameter_key #=> String
    #   resp.workgroup.config_parameters[0].parameter_value #=> String
    #   resp.workgroup.creation_date #=> Time
    #   resp.workgroup.cross_account_vpcs #=> Array
    #   resp.workgroup.cross_account_vpcs[0] #=> String
    #   resp.workgroup.custom_domain_certificate_arn #=> String
    #   resp.workgroup.custom_domain_certificate_expiry_time #=> Time
    #   resp.workgroup.custom_domain_name #=> String
    #   resp.workgroup.endpoint.address #=> String
    #   resp.workgroup.endpoint.port #=> Integer
    #   resp.workgroup.endpoint.vpc_endpoints #=> Array
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces #=> Array
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].ipv6_address #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.workgroup.enhanced_vpc_routing #=> Boolean
    #   resp.workgroup.ip_address_type #=> String
    #   resp.workgroup.max_capacity #=> Integer
    #   resp.workgroup.namespace_name #=> String
    #   resp.workgroup.patch_version #=> String
    #   resp.workgroup.port #=> Integer
    #   resp.workgroup.price_performance_target.level #=> Integer
    #   resp.workgroup.price_performance_target.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.workgroup.publicly_accessible #=> Boolean
    #   resp.workgroup.security_group_ids #=> Array
    #   resp.workgroup.security_group_ids[0] #=> String
    #   resp.workgroup.status #=> String, one of "CREATING", "AVAILABLE", "MODIFYING", "DELETING"
    #   resp.workgroup.subnet_ids #=> Array
    #   resp.workgroup.subnet_ids[0] #=> String
    #   resp.workgroup.workgroup_arn #=> String
    #   resp.workgroup.workgroup_id #=> String
    #   resp.workgroup.workgroup_name #=> String
    #   resp.workgroup.workgroup_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/CreateWorkgroup AWS API Documentation
    #
    # @overload create_workgroup(params = {})
    # @param [Hash] params ({})
    def create_workgroup(params = {}, options = {})
      req = build_request(:create_workgroup, params)
      req.send_request(options)
    end

    # Deletes a custom domain association for Amazon Redshift Serverless.
    #
    # @option params [required, String] :custom_domain_name
    #   The custom domain name associated with the workgroup.
    #
    # @option params [required, String] :workgroup_name
    #   The name of the workgroup associated with the database.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_domain_association({
    #     custom_domain_name: "CustomDomainName", # required
    #     workgroup_name: "WorkgroupName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteCustomDomainAssociation AWS API Documentation
    #
    # @overload delete_custom_domain_association(params = {})
    # @param [Hash] params ({})
    def delete_custom_domain_association(params = {}, options = {})
      req = build_request(:delete_custom_domain_association, params)
      req.send_request(options)
    end

    # Deletes an Amazon Redshift Serverless managed VPC endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the VPC endpoint to delete.
    #
    # @return [Types::DeleteEndpointAccessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEndpointAccessResponse#endpoint #endpoint} => Types::EndpointAccess
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint_access({
    #     endpoint_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.address #=> String
    #   resp.endpoint.endpoint_arn #=> String
    #   resp.endpoint.endpoint_create_time #=> Time
    #   resp.endpoint.endpoint_name #=> String
    #   resp.endpoint.endpoint_status #=> String
    #   resp.endpoint.port #=> Integer
    #   resp.endpoint.subnet_ids #=> Array
    #   resp.endpoint.subnet_ids[0] #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces #=> Array
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].availability_zone #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].ipv6_address #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].network_interface_id #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].private_ip_address #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].subnet_id #=> String
    #   resp.endpoint.vpc_endpoint.vpc_endpoint_id #=> String
    #   resp.endpoint.vpc_endpoint.vpc_id #=> String
    #   resp.endpoint.vpc_security_groups #=> Array
    #   resp.endpoint.vpc_security_groups[0].status #=> String
    #   resp.endpoint.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.endpoint.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteEndpointAccess AWS API Documentation
    #
    # @overload delete_endpoint_access(params = {})
    # @param [Hash] params ({})
    def delete_endpoint_access(params = {}, options = {})
      req = build_request(:delete_endpoint_access, params)
      req.send_request(options)
    end

    # Deletes a namespace from Amazon Redshift Serverless. Before you delete
    # the namespace, you can create a final snapshot that has all of the
    # data within the namespace.
    #
    # @option params [String] :final_snapshot_name
    #   The name of the snapshot to be created before the namespace is
    #   deleted.
    #
    # @option params [Integer] :final_snapshot_retention_period
    #   How long to retain the final snapshot.
    #
    # @option params [required, String] :namespace_name
    #   The name of the namespace to delete.
    #
    # @return [Types::DeleteNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNamespaceResponse#namespace #namespace} => Types::Namespace
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_namespace({
    #     final_snapshot_name: "String",
    #     final_snapshot_retention_period: 1,
    #     namespace_name: "NamespaceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.namespace.admin_password_secret_arn #=> String
    #   resp.namespace.admin_password_secret_kms_key_id #=> String
    #   resp.namespace.admin_username #=> String
    #   resp.namespace.creation_date #=> Time
    #   resp.namespace.db_name #=> String
    #   resp.namespace.default_iam_role_arn #=> String
    #   resp.namespace.iam_roles #=> Array
    #   resp.namespace.iam_roles[0] #=> String
    #   resp.namespace.kms_key_id #=> String
    #   resp.namespace.log_exports #=> Array
    #   resp.namespace.log_exports[0] #=> String, one of "useractivitylog", "userlog", "connectionlog"
    #   resp.namespace.namespace_arn #=> String
    #   resp.namespace.namespace_id #=> String
    #   resp.namespace.namespace_name #=> String
    #   resp.namespace.status #=> String, one of "AVAILABLE", "MODIFYING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteNamespace AWS API Documentation
    #
    # @overload delete_namespace(params = {})
    # @param [Hash] params ({})
    def delete_namespace(params = {}, options = {})
      req = build_request(:delete_namespace, params)
      req.send_request(options)
    end

    # Deletes the specified resource policy.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the policy to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes a scheduled action.
    #
    # @option params [required, String] :scheduled_action_name
    #   The name of the scheduled action to delete.
    #
    # @return [Types::DeleteScheduledActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteScheduledActionResponse#scheduled_action #scheduled_action} => Types::ScheduledActionResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduled_action({
    #     scheduled_action_name: "ScheduledActionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_action.end_time #=> Time
    #   resp.scheduled_action.namespace_name #=> String
    #   resp.scheduled_action.next_invocations #=> Array
    #   resp.scheduled_action.next_invocations[0] #=> Time
    #   resp.scheduled_action.role_arn #=> String
    #   resp.scheduled_action.schedule.at #=> Time
    #   resp.scheduled_action.schedule.cron #=> String
    #   resp.scheduled_action.scheduled_action_description #=> String
    #   resp.scheduled_action.scheduled_action_name #=> String
    #   resp.scheduled_action.scheduled_action_uuid #=> String
    #   resp.scheduled_action.start_time #=> Time
    #   resp.scheduled_action.state #=> String, one of "ACTIVE", "DISABLED"
    #   resp.scheduled_action.target_action.create_snapshot.namespace_name #=> String
    #   resp.scheduled_action.target_action.create_snapshot.retention_period #=> Integer
    #   resp.scheduled_action.target_action.create_snapshot.snapshot_name_prefix #=> String
    #   resp.scheduled_action.target_action.create_snapshot.tags #=> Array
    #   resp.scheduled_action.target_action.create_snapshot.tags[0].key #=> String
    #   resp.scheduled_action.target_action.create_snapshot.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteScheduledAction AWS API Documentation
    #
    # @overload delete_scheduled_action(params = {})
    # @param [Hash] params ({})
    def delete_scheduled_action(params = {}, options = {})
      req = build_request(:delete_scheduled_action, params)
      req.send_request(options)
    end

    # Deletes a snapshot from Amazon Redshift Serverless.
    #
    # @option params [required, String] :snapshot_name
    #   The name of the snapshot to be deleted.
    #
    # @return [Types::DeleteSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSnapshotResponse#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot({
    #     snapshot_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.accounts_with_provisioned_restore_access #=> Array
    #   resp.snapshot.accounts_with_provisioned_restore_access[0] #=> String
    #   resp.snapshot.accounts_with_restore_access #=> Array
    #   resp.snapshot.accounts_with_restore_access[0] #=> String
    #   resp.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.admin_password_secret_arn #=> String
    #   resp.snapshot.admin_password_secret_kms_key_id #=> String
    #   resp.snapshot.admin_username #=> String
    #   resp.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.namespace_arn #=> String
    #   resp.snapshot.namespace_name #=> String
    #   resp.snapshot.owner_account #=> String
    #   resp.snapshot.snapshot_arn #=> String
    #   resp.snapshot.snapshot_create_time #=> Time
    #   resp.snapshot.snapshot_name #=> String
    #   resp.snapshot.snapshot_remaining_days #=> Integer
    #   resp.snapshot.snapshot_retention_period #=> Integer
    #   resp.snapshot.snapshot_retention_start_time #=> Time
    #   resp.snapshot.status #=> String, one of "AVAILABLE", "CREATING", "DELETED", "CANCELLED", "FAILED", "COPYING"
    #   resp.snapshot.total_backup_size_in_mega_bytes #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteSnapshot AWS API Documentation
    #
    # @overload delete_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_snapshot(params = {}, options = {})
      req = build_request(:delete_snapshot, params)
      req.send_request(options)
    end

    # Deletes a snapshot copy configuration
    #
    # @option params [required, String] :snapshot_copy_configuration_id
    #   The ID of the snapshot copy configuration to delete.
    #
    # @return [Types::DeleteSnapshotCopyConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSnapshotCopyConfigurationResponse#snapshot_copy_configuration #snapshot_copy_configuration} => Types::SnapshotCopyConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot_copy_configuration({
    #     snapshot_copy_configuration_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_copy_configuration.destination_kms_key_id #=> String
    #   resp.snapshot_copy_configuration.destination_region #=> String
    #   resp.snapshot_copy_configuration.namespace_name #=> String
    #   resp.snapshot_copy_configuration.snapshot_copy_configuration_arn #=> String
    #   resp.snapshot_copy_configuration.snapshot_copy_configuration_id #=> String
    #   resp.snapshot_copy_configuration.snapshot_retention_period #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteSnapshotCopyConfiguration AWS API Documentation
    #
    # @overload delete_snapshot_copy_configuration(params = {})
    # @param [Hash] params ({})
    def delete_snapshot_copy_configuration(params = {}, options = {})
      req = build_request(:delete_snapshot_copy_configuration, params)
      req.send_request(options)
    end

    # Deletes a usage limit from Amazon Redshift Serverless.
    #
    # @option params [required, String] :usage_limit_id
    #   The unique identifier of the usage limit to delete.
    #
    # @return [Types::DeleteUsageLimitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteUsageLimitResponse#usage_limit #usage_limit} => Types::UsageLimit
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_usage_limit({
    #     usage_limit_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.usage_limit.amount #=> Integer
    #   resp.usage_limit.breach_action #=> String, one of "log", "emit-metric", "deactivate"
    #   resp.usage_limit.period #=> String, one of "daily", "weekly", "monthly"
    #   resp.usage_limit.resource_arn #=> String
    #   resp.usage_limit.usage_limit_arn #=> String
    #   resp.usage_limit.usage_limit_id #=> String
    #   resp.usage_limit.usage_type #=> String, one of "serverless-compute", "cross-region-datasharing"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteUsageLimit AWS API Documentation
    #
    # @overload delete_usage_limit(params = {})
    # @param [Hash] params ({})
    def delete_usage_limit(params = {}, options = {})
      req = build_request(:delete_usage_limit, params)
      req.send_request(options)
    end

    # Deletes a workgroup.
    #
    # @option params [required, String] :workgroup_name
    #   The name of the workgroup to be deleted.
    #
    # @return [Types::DeleteWorkgroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWorkgroupResponse#workgroup #workgroup} => Types::Workgroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workgroup({
    #     workgroup_name: "WorkgroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workgroup.base_capacity #=> Integer
    #   resp.workgroup.config_parameters #=> Array
    #   resp.workgroup.config_parameters[0].parameter_key #=> String
    #   resp.workgroup.config_parameters[0].parameter_value #=> String
    #   resp.workgroup.creation_date #=> Time
    #   resp.workgroup.cross_account_vpcs #=> Array
    #   resp.workgroup.cross_account_vpcs[0] #=> String
    #   resp.workgroup.custom_domain_certificate_arn #=> String
    #   resp.workgroup.custom_domain_certificate_expiry_time #=> Time
    #   resp.workgroup.custom_domain_name #=> String
    #   resp.workgroup.endpoint.address #=> String
    #   resp.workgroup.endpoint.port #=> Integer
    #   resp.workgroup.endpoint.vpc_endpoints #=> Array
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces #=> Array
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].ipv6_address #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.workgroup.enhanced_vpc_routing #=> Boolean
    #   resp.workgroup.ip_address_type #=> String
    #   resp.workgroup.max_capacity #=> Integer
    #   resp.workgroup.namespace_name #=> String
    #   resp.workgroup.patch_version #=> String
    #   resp.workgroup.port #=> Integer
    #   resp.workgroup.price_performance_target.level #=> Integer
    #   resp.workgroup.price_performance_target.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.workgroup.publicly_accessible #=> Boolean
    #   resp.workgroup.security_group_ids #=> Array
    #   resp.workgroup.security_group_ids[0] #=> String
    #   resp.workgroup.status #=> String, one of "CREATING", "AVAILABLE", "MODIFYING", "DELETING"
    #   resp.workgroup.subnet_ids #=> Array
    #   resp.workgroup.subnet_ids[0] #=> String
    #   resp.workgroup.workgroup_arn #=> String
    #   resp.workgroup.workgroup_id #=> String
    #   resp.workgroup.workgroup_name #=> String
    #   resp.workgroup.workgroup_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/DeleteWorkgroup AWS API Documentation
    #
    # @overload delete_workgroup(params = {})
    # @param [Hash] params ({})
    def delete_workgroup(params = {}, options = {})
      req = build_request(:delete_workgroup, params)
      req.send_request(options)
    end

    # Returns a database user name and temporary password with temporary
    # authorization to log in to Amazon Redshift Serverless.
    #
    # By default, the temporary credentials expire in 900 seconds. You can
    # optionally specify a duration between 900 seconds (15 minutes) and
    # 3600 seconds (60 minutes).
    #
    # The Identity and Access Management (IAM) user or role that runs
    # GetCredentials must have an IAM policy attached that allows access to
    # all necessary actions and resources.
    #
    # If the `DbName` parameter is specified, the IAM policy must allow
    # access to the resource dbname for the specified database name.
    #
    # @option params [String] :custom_domain_name
    #   The custom domain name associated with the workgroup. The custom
    #   domain name or the workgroup name must be included in the request.
    #
    # @option params [String] :db_name
    #   The name of the database to get temporary authorization to log on to.
    #
    #   Constraints:
    #
    #   * Must be 1 to 64 alphanumeric characters or hyphens.
    #
    #   * Must contain only uppercase or lowercase letters, numbers,
    #     underscore, plus sign, period (dot), at symbol (@), or hyphen.
    #
    #   * The first character must be a letter.
    #
    #   * Must not contain a colon ( : ) or slash ( / ).
    #
    #   * Cannot be a reserved word. A list of reserved words can be found in
    #     [Reserved Words ][1] in the Amazon Redshift Database Developer Guide
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html
    #
    # @option params [Integer] :duration_seconds
    #   The number of seconds until the returned temporary password expires.
    #   The minimum is 900 seconds, and the maximum is 3600 seconds.
    #
    # @option params [String] :workgroup_name
    #   The name of the workgroup associated with the database.
    #
    # @return [Types::GetCredentialsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCredentialsResponse#db_password #db_password} => String
    #   * {Types::GetCredentialsResponse#db_user #db_user} => String
    #   * {Types::GetCredentialsResponse#expiration #expiration} => Time
    #   * {Types::GetCredentialsResponse#next_refresh_time #next_refresh_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_credentials({
    #     custom_domain_name: "CustomDomainName",
    #     db_name: "DbName",
    #     duration_seconds: 1,
    #     workgroup_name: "WorkgroupName",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_password #=> String
    #   resp.db_user #=> String
    #   resp.expiration #=> Time
    #   resp.next_refresh_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetCredentials AWS API Documentation
    #
    # @overload get_credentials(params = {})
    # @param [Hash] params ({})
    def get_credentials(params = {}, options = {})
      req = build_request(:get_credentials, params)
      req.send_request(options)
    end

    # Gets information about a specific custom domain association.
    #
    # @option params [required, String] :custom_domain_name
    #   The custom domain name associated with the workgroup.
    #
    # @option params [required, String] :workgroup_name
    #   The name of the workgroup associated with the database.
    #
    # @return [Types::GetCustomDomainAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCustomDomainAssociationResponse#custom_domain_certificate_arn #custom_domain_certificate_arn} => String
    #   * {Types::GetCustomDomainAssociationResponse#custom_domain_certificate_expiry_time #custom_domain_certificate_expiry_time} => Time
    #   * {Types::GetCustomDomainAssociationResponse#custom_domain_name #custom_domain_name} => String
    #   * {Types::GetCustomDomainAssociationResponse#workgroup_name #workgroup_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_custom_domain_association({
    #     custom_domain_name: "CustomDomainName", # required
    #     workgroup_name: "WorkgroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_domain_certificate_arn #=> String
    #   resp.custom_domain_certificate_expiry_time #=> Time
    #   resp.custom_domain_name #=> String
    #   resp.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetCustomDomainAssociation AWS API Documentation
    #
    # @overload get_custom_domain_association(params = {})
    # @param [Hash] params ({})
    def get_custom_domain_association(params = {}, options = {})
      req = build_request(:get_custom_domain_association, params)
      req.send_request(options)
    end

    # Returns information, such as the name, about a VPC endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the VPC endpoint to return information for.
    #
    # @return [Types::GetEndpointAccessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEndpointAccessResponse#endpoint #endpoint} => Types::EndpointAccess
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_endpoint_access({
    #     endpoint_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.address #=> String
    #   resp.endpoint.endpoint_arn #=> String
    #   resp.endpoint.endpoint_create_time #=> Time
    #   resp.endpoint.endpoint_name #=> String
    #   resp.endpoint.endpoint_status #=> String
    #   resp.endpoint.port #=> Integer
    #   resp.endpoint.subnet_ids #=> Array
    #   resp.endpoint.subnet_ids[0] #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces #=> Array
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].availability_zone #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].ipv6_address #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].network_interface_id #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].private_ip_address #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].subnet_id #=> String
    #   resp.endpoint.vpc_endpoint.vpc_endpoint_id #=> String
    #   resp.endpoint.vpc_endpoint.vpc_id #=> String
    #   resp.endpoint.vpc_security_groups #=> Array
    #   resp.endpoint.vpc_security_groups[0].status #=> String
    #   resp.endpoint.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.endpoint.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetEndpointAccess AWS API Documentation
    #
    # @overload get_endpoint_access(params = {})
    # @param [Hash] params ({})
    def get_endpoint_access(params = {}, options = {})
      req = build_request(:get_endpoint_access, params)
      req.send_request(options)
    end

    # Returns information about a namespace in Amazon Redshift Serverless.
    #
    # @option params [required, String] :namespace_name
    #   The name of the namespace to retrieve information for.
    #
    # @return [Types::GetNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNamespaceResponse#namespace #namespace} => Types::Namespace
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_namespace({
    #     namespace_name: "NamespaceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.namespace.admin_password_secret_arn #=> String
    #   resp.namespace.admin_password_secret_kms_key_id #=> String
    #   resp.namespace.admin_username #=> String
    #   resp.namespace.creation_date #=> Time
    #   resp.namespace.db_name #=> String
    #   resp.namespace.default_iam_role_arn #=> String
    #   resp.namespace.iam_roles #=> Array
    #   resp.namespace.iam_roles[0] #=> String
    #   resp.namespace.kms_key_id #=> String
    #   resp.namespace.log_exports #=> Array
    #   resp.namespace.log_exports[0] #=> String, one of "useractivitylog", "userlog", "connectionlog"
    #   resp.namespace.namespace_arn #=> String
    #   resp.namespace.namespace_id #=> String
    #   resp.namespace.namespace_name #=> String
    #   resp.namespace.status #=> String, one of "AVAILABLE", "MODIFYING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetNamespace AWS API Documentation
    #
    # @overload get_namespace(params = {})
    # @param [Hash] params ({})
    def get_namespace(params = {}, options = {})
      req = build_request(:get_namespace, params)
      req.send_request(options)
    end

    # Returns information about a recovery point.
    #
    # @option params [required, String] :recovery_point_id
    #   The unique identifier of the recovery point to return information for.
    #
    # @return [Types::GetRecoveryPointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecoveryPointResponse#recovery_point #recovery_point} => Types::RecoveryPoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recovery_point({
    #     recovery_point_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recovery_point.namespace_arn #=> String
    #   resp.recovery_point.namespace_name #=> String
    #   resp.recovery_point.recovery_point_create_time #=> Time
    #   resp.recovery_point.recovery_point_id #=> String
    #   resp.recovery_point.total_size_in_mega_bytes #=> Float
    #   resp.recovery_point.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetRecoveryPoint AWS API Documentation
    #
    # @overload get_recovery_point(params = {})
    # @param [Hash] params ({})
    def get_recovery_point(params = {}, options = {})
      req = build_request(:get_recovery_point, params)
      req.send_request(options)
    end

    # Returns a resource policy.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to return.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#resource_policy #resource_policy} => Types::ResourcePolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_policy.policy #=> String
    #   resp.resource_policy.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Returns information about a scheduled action.
    #
    # @option params [required, String] :scheduled_action_name
    #   The name of the scheduled action.
    #
    # @return [Types::GetScheduledActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetScheduledActionResponse#scheduled_action #scheduled_action} => Types::ScheduledActionResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_scheduled_action({
    #     scheduled_action_name: "ScheduledActionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_action.end_time #=> Time
    #   resp.scheduled_action.namespace_name #=> String
    #   resp.scheduled_action.next_invocations #=> Array
    #   resp.scheduled_action.next_invocations[0] #=> Time
    #   resp.scheduled_action.role_arn #=> String
    #   resp.scheduled_action.schedule.at #=> Time
    #   resp.scheduled_action.schedule.cron #=> String
    #   resp.scheduled_action.scheduled_action_description #=> String
    #   resp.scheduled_action.scheduled_action_name #=> String
    #   resp.scheduled_action.scheduled_action_uuid #=> String
    #   resp.scheduled_action.start_time #=> Time
    #   resp.scheduled_action.state #=> String, one of "ACTIVE", "DISABLED"
    #   resp.scheduled_action.target_action.create_snapshot.namespace_name #=> String
    #   resp.scheduled_action.target_action.create_snapshot.retention_period #=> Integer
    #   resp.scheduled_action.target_action.create_snapshot.snapshot_name_prefix #=> String
    #   resp.scheduled_action.target_action.create_snapshot.tags #=> Array
    #   resp.scheduled_action.target_action.create_snapshot.tags[0].key #=> String
    #   resp.scheduled_action.target_action.create_snapshot.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetScheduledAction AWS API Documentation
    #
    # @overload get_scheduled_action(params = {})
    # @param [Hash] params ({})
    def get_scheduled_action(params = {}, options = {})
      req = build_request(:get_scheduled_action, params)
      req.send_request(options)
    end

    # Returns information about a specific snapshot.
    #
    # @option params [String] :owner_account
    #   The owner Amazon Web Services account of a snapshot shared with
    #   another user.
    #
    # @option params [String] :snapshot_arn
    #   The Amazon Resource Name (ARN) of the snapshot to return.
    #
    # @option params [String] :snapshot_name
    #   The name of the snapshot to return.
    #
    # @return [Types::GetSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSnapshotResponse#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_snapshot({
    #     owner_account: "String",
    #     snapshot_arn: "String",
    #     snapshot_name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.accounts_with_provisioned_restore_access #=> Array
    #   resp.snapshot.accounts_with_provisioned_restore_access[0] #=> String
    #   resp.snapshot.accounts_with_restore_access #=> Array
    #   resp.snapshot.accounts_with_restore_access[0] #=> String
    #   resp.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.admin_password_secret_arn #=> String
    #   resp.snapshot.admin_password_secret_kms_key_id #=> String
    #   resp.snapshot.admin_username #=> String
    #   resp.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.namespace_arn #=> String
    #   resp.snapshot.namespace_name #=> String
    #   resp.snapshot.owner_account #=> String
    #   resp.snapshot.snapshot_arn #=> String
    #   resp.snapshot.snapshot_create_time #=> Time
    #   resp.snapshot.snapshot_name #=> String
    #   resp.snapshot.snapshot_remaining_days #=> Integer
    #   resp.snapshot.snapshot_retention_period #=> Integer
    #   resp.snapshot.snapshot_retention_start_time #=> Time
    #   resp.snapshot.status #=> String, one of "AVAILABLE", "CREATING", "DELETED", "CANCELLED", "FAILED", "COPYING"
    #   resp.snapshot.total_backup_size_in_mega_bytes #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetSnapshot AWS API Documentation
    #
    # @overload get_snapshot(params = {})
    # @param [Hash] params ({})
    def get_snapshot(params = {}, options = {})
      req = build_request(:get_snapshot, params)
      req.send_request(options)
    end

    # Returns information about a `TableRestoreStatus` object.
    #
    # @option params [required, String] :table_restore_request_id
    #   The ID of the `RestoreTableFromSnapshot` request to return status for.
    #
    # @return [Types::GetTableRestoreStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableRestoreStatusResponse#table_restore_status #table_restore_status} => Types::TableRestoreStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_restore_status({
    #     table_restore_request_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table_restore_status.message #=> String
    #   resp.table_restore_status.namespace_name #=> String
    #   resp.table_restore_status.new_table_name #=> String
    #   resp.table_restore_status.progress_in_mega_bytes #=> Integer
    #   resp.table_restore_status.recovery_point_id #=> String
    #   resp.table_restore_status.request_time #=> Time
    #   resp.table_restore_status.snapshot_name #=> String
    #   resp.table_restore_status.source_database_name #=> String
    #   resp.table_restore_status.source_schema_name #=> String
    #   resp.table_restore_status.source_table_name #=> String
    #   resp.table_restore_status.status #=> String
    #   resp.table_restore_status.table_restore_request_id #=> String
    #   resp.table_restore_status.target_database_name #=> String
    #   resp.table_restore_status.target_schema_name #=> String
    #   resp.table_restore_status.total_data_in_mega_bytes #=> Integer
    #   resp.table_restore_status.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetTableRestoreStatus AWS API Documentation
    #
    # @overload get_table_restore_status(params = {})
    # @param [Hash] params ({})
    def get_table_restore_status(params = {}, options = {})
      req = build_request(:get_table_restore_status, params)
      req.send_request(options)
    end

    # Returns information about a usage limit.
    #
    # @option params [required, String] :usage_limit_id
    #   The unique identifier of the usage limit to return information for.
    #
    # @return [Types::GetUsageLimitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUsageLimitResponse#usage_limit #usage_limit} => Types::UsageLimit
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_limit({
    #     usage_limit_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.usage_limit.amount #=> Integer
    #   resp.usage_limit.breach_action #=> String, one of "log", "emit-metric", "deactivate"
    #   resp.usage_limit.period #=> String, one of "daily", "weekly", "monthly"
    #   resp.usage_limit.resource_arn #=> String
    #   resp.usage_limit.usage_limit_arn #=> String
    #   resp.usage_limit.usage_limit_id #=> String
    #   resp.usage_limit.usage_type #=> String, one of "serverless-compute", "cross-region-datasharing"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetUsageLimit AWS API Documentation
    #
    # @overload get_usage_limit(params = {})
    # @param [Hash] params ({})
    def get_usage_limit(params = {}, options = {})
      req = build_request(:get_usage_limit, params)
      req.send_request(options)
    end

    # Returns information about a specific workgroup.
    #
    # @option params [required, String] :workgroup_name
    #   The name of the workgroup to return information for.
    #
    # @return [Types::GetWorkgroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkgroupResponse#workgroup #workgroup} => Types::Workgroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workgroup({
    #     workgroup_name: "WorkgroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workgroup.base_capacity #=> Integer
    #   resp.workgroup.config_parameters #=> Array
    #   resp.workgroup.config_parameters[0].parameter_key #=> String
    #   resp.workgroup.config_parameters[0].parameter_value #=> String
    #   resp.workgroup.creation_date #=> Time
    #   resp.workgroup.cross_account_vpcs #=> Array
    #   resp.workgroup.cross_account_vpcs[0] #=> String
    #   resp.workgroup.custom_domain_certificate_arn #=> String
    #   resp.workgroup.custom_domain_certificate_expiry_time #=> Time
    #   resp.workgroup.custom_domain_name #=> String
    #   resp.workgroup.endpoint.address #=> String
    #   resp.workgroup.endpoint.port #=> Integer
    #   resp.workgroup.endpoint.vpc_endpoints #=> Array
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces #=> Array
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].ipv6_address #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.workgroup.enhanced_vpc_routing #=> Boolean
    #   resp.workgroup.ip_address_type #=> String
    #   resp.workgroup.max_capacity #=> Integer
    #   resp.workgroup.namespace_name #=> String
    #   resp.workgroup.patch_version #=> String
    #   resp.workgroup.port #=> Integer
    #   resp.workgroup.price_performance_target.level #=> Integer
    #   resp.workgroup.price_performance_target.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.workgroup.publicly_accessible #=> Boolean
    #   resp.workgroup.security_group_ids #=> Array
    #   resp.workgroup.security_group_ids[0] #=> String
    #   resp.workgroup.status #=> String, one of "CREATING", "AVAILABLE", "MODIFYING", "DELETING"
    #   resp.workgroup.subnet_ids #=> Array
    #   resp.workgroup.subnet_ids[0] #=> String
    #   resp.workgroup.workgroup_arn #=> String
    #   resp.workgroup.workgroup_id #=> String
    #   resp.workgroup.workgroup_name #=> String
    #   resp.workgroup.workgroup_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/GetWorkgroup AWS API Documentation
    #
    # @overload get_workgroup(params = {})
    # @param [Hash] params ({})
    def get_workgroup(params = {}, options = {})
      req = build_request(:get_workgroup, params)
      req.send_request(options)
    end

    # Lists custom domain associations for Amazon Redshift Serverless.
    #
    # @option params [String] :custom_domain_certificate_arn
    #   The custom domain name’s certificate Amazon resource name (ARN).
    #
    # @option params [String] :custom_domain_name
    #   The custom domain name associated with the workgroup.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to display the next page of results.
    #
    # @option params [String] :next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #
    # @return [Types::ListCustomDomainAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomDomainAssociationsResponse#associations #associations} => Array&lt;Types::Association&gt;
    #   * {Types::ListCustomDomainAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_domain_associations({
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString",
    #     custom_domain_name: "CustomDomainName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.associations #=> Array
    #   resp.associations[0].custom_domain_certificate_arn #=> String
    #   resp.associations[0].custom_domain_certificate_expiry_time #=> Time
    #   resp.associations[0].custom_domain_name #=> String
    #   resp.associations[0].workgroup_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListCustomDomainAssociations AWS API Documentation
    #
    # @overload list_custom_domain_associations(params = {})
    # @param [Hash] params ({})
    def list_custom_domain_associations(params = {}, options = {})
      req = build_request(:list_custom_domain_associations, params)
      req.send_request(options)
    end

    # Returns an array of `EndpointAccess` objects and relevant information.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to display the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `ListEndpointAccess` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in following
    #   `ListEndpointAccess` operations, which returns results in the next
    #   page.
    #
    # @option params [String] :owner_account
    #   The owner Amazon Web Services account for the Amazon Redshift
    #   Serverless workgroup.
    #
    # @option params [String] :vpc_id
    #   The unique identifier of the virtual private cloud with access to
    #   Amazon Redshift Serverless.
    #
    # @option params [String] :workgroup_name
    #   The name of the workgroup associated with the VPC endpoint to return.
    #
    # @return [Types::ListEndpointAccessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEndpointAccessResponse#endpoints #endpoints} => Array&lt;Types::EndpointAccess&gt;
    #   * {Types::ListEndpointAccessResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoint_access({
    #     max_results: 1,
    #     next_token: "String",
    #     owner_account: "OwnerAccount",
    #     vpc_id: "String",
    #     workgroup_name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].address #=> String
    #   resp.endpoints[0].endpoint_arn #=> String
    #   resp.endpoints[0].endpoint_create_time #=> Time
    #   resp.endpoints[0].endpoint_name #=> String
    #   resp.endpoints[0].endpoint_status #=> String
    #   resp.endpoints[0].port #=> Integer
    #   resp.endpoints[0].subnet_ids #=> Array
    #   resp.endpoints[0].subnet_ids[0] #=> String
    #   resp.endpoints[0].vpc_endpoint.network_interfaces #=> Array
    #   resp.endpoints[0].vpc_endpoint.network_interfaces[0].availability_zone #=> String
    #   resp.endpoints[0].vpc_endpoint.network_interfaces[0].ipv6_address #=> String
    #   resp.endpoints[0].vpc_endpoint.network_interfaces[0].network_interface_id #=> String
    #   resp.endpoints[0].vpc_endpoint.network_interfaces[0].private_ip_address #=> String
    #   resp.endpoints[0].vpc_endpoint.network_interfaces[0].subnet_id #=> String
    #   resp.endpoints[0].vpc_endpoint.vpc_endpoint_id #=> String
    #   resp.endpoints[0].vpc_endpoint.vpc_id #=> String
    #   resp.endpoints[0].vpc_security_groups #=> Array
    #   resp.endpoints[0].vpc_security_groups[0].status #=> String
    #   resp.endpoints[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.endpoints[0].workgroup_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListEndpointAccess AWS API Documentation
    #
    # @overload list_endpoint_access(params = {})
    # @param [Hash] params ({})
    def list_endpoint_access(params = {}, options = {})
      req = build_request(:list_endpoint_access, params)
      req.send_request(options)
    end

    # Returns information about a list of specified managed workgroups in
    # your account.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use nextToken to display the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial ListManagedWorkgroups operation returns a nextToken,
    #   you can include the returned nextToken in following
    #   ListManagedWorkgroups operations, which returns results in the next
    #   page.
    #
    # @option params [String] :source_arn
    #   The Amazon Resource Name (ARN) for the managed workgroup in the AWS
    #   Glue Data Catalog.
    #
    # @return [Types::ListManagedWorkgroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedWorkgroupsResponse#managed_workgroups #managed_workgroups} => Array&lt;Types::ManagedWorkgroupListItem&gt;
    #   * {Types::ListManagedWorkgroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_workgroups({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     source_arn: "SourceArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_workgroups #=> Array
    #   resp.managed_workgroups[0].creation_date #=> Time
    #   resp.managed_workgroups[0].managed_workgroup_id #=> String
    #   resp.managed_workgroups[0].managed_workgroup_name #=> String
    #   resp.managed_workgroups[0].source_arn #=> String
    #   resp.managed_workgroups[0].status #=> String, one of "CREATING", "DELETING", "MODIFYING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListManagedWorkgroups AWS API Documentation
    #
    # @overload list_managed_workgroups(params = {})
    # @param [Hash] params ({})
    def list_managed_workgroups(params = {}, options = {})
      req = build_request(:list_managed_workgroups, params)
      req.send_request(options)
    end

    # Returns information about a list of specified namespaces.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to display the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial `ListNamespaces` operation returns a `nextToken`, you
    #   can include the returned `nextToken` in following `ListNamespaces`
    #   operations, which returns results in the next page.
    #
    # @return [Types::ListNamespacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNamespacesResponse#namespaces #namespaces} => Array&lt;Types::Namespace&gt;
    #   * {Types::ListNamespacesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_namespaces({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.namespaces #=> Array
    #   resp.namespaces[0].admin_password_secret_arn #=> String
    #   resp.namespaces[0].admin_password_secret_kms_key_id #=> String
    #   resp.namespaces[0].admin_username #=> String
    #   resp.namespaces[0].creation_date #=> Time
    #   resp.namespaces[0].db_name #=> String
    #   resp.namespaces[0].default_iam_role_arn #=> String
    #   resp.namespaces[0].iam_roles #=> Array
    #   resp.namespaces[0].iam_roles[0] #=> String
    #   resp.namespaces[0].kms_key_id #=> String
    #   resp.namespaces[0].log_exports #=> Array
    #   resp.namespaces[0].log_exports[0] #=> String, one of "useractivitylog", "userlog", "connectionlog"
    #   resp.namespaces[0].namespace_arn #=> String
    #   resp.namespaces[0].namespace_id #=> String
    #   resp.namespaces[0].namespace_name #=> String
    #   resp.namespaces[0].status #=> String, one of "AVAILABLE", "MODIFYING", "DELETING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListNamespaces AWS API Documentation
    #
    # @overload list_namespaces(params = {})
    # @param [Hash] params ({})
    def list_namespaces(params = {}, options = {})
      req = build_request(:list_namespaces, params)
      req.send_request(options)
    end

    # Returns an array of recovery points.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The time when creation of the recovery point finished.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to display the next page of results.
    #
    # @option params [String] :namespace_arn
    #   The Amazon Resource Name (ARN) of the namespace from which to list
    #   recovery points.
    #
    # @option params [String] :namespace_name
    #   The name of the namespace to list recovery points for.
    #
    # @option params [String] :next_token
    #   If your initial `ListRecoveryPoints` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in following
    #   `ListRecoveryPoints` operations, which returns results in the next
    #   page.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The time when the recovery point's creation was initiated.
    #
    # @return [Types::ListRecoveryPointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecoveryPointsResponse#next_token #next_token} => String
    #   * {Types::ListRecoveryPointsResponse#recovery_points #recovery_points} => Array&lt;Types::RecoveryPoint&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recovery_points({
    #     end_time: Time.now,
    #     max_results: 1,
    #     namespace_arn: "String",
    #     namespace_name: "NamespaceName",
    #     next_token: "String",
    #     start_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.recovery_points #=> Array
    #   resp.recovery_points[0].namespace_arn #=> String
    #   resp.recovery_points[0].namespace_name #=> String
    #   resp.recovery_points[0].recovery_point_create_time #=> Time
    #   resp.recovery_points[0].recovery_point_id #=> String
    #   resp.recovery_points[0].total_size_in_mega_bytes #=> Float
    #   resp.recovery_points[0].workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListRecoveryPoints AWS API Documentation
    #
    # @overload list_recovery_points(params = {})
    # @param [Hash] params ({})
    def list_recovery_points(params = {}, options = {})
      req = build_request(:list_recovery_points, params)
      req.send_request(options)
    end

    # Returns a list of scheduled actions. You can use the flags to filter
    # the list of returned scheduled actions.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. Use `nextToken` to display the next page of results.
    #
    # @option params [String] :namespace_name
    #   The name of namespace associated with the scheduled action to
    #   retrieve.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #
    # @return [Types::ListScheduledActionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScheduledActionsResponse#next_token #next_token} => String
    #   * {Types::ListScheduledActionsResponse#scheduled_actions #scheduled_actions} => Array&lt;Types::ScheduledActionAssociation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scheduled_actions({
    #     max_results: 1,
    #     namespace_name: "NamespaceName",
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.scheduled_actions #=> Array
    #   resp.scheduled_actions[0].namespace_name #=> String
    #   resp.scheduled_actions[0].scheduled_action_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListScheduledActions AWS API Documentation
    #
    # @overload list_scheduled_actions(params = {})
    # @param [Hash] params ({})
    def list_scheduled_actions(params = {}, options = {})
      req = build_request(:list_scheduled_actions, params)
      req.send_request(options)
    end

    # Returns a list of snapshot copy configurations.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to display the next page of results.
    #
    # @option params [String] :namespace_name
    #   The namespace from which to list all snapshot copy configurations.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #
    # @return [Types::ListSnapshotCopyConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSnapshotCopyConfigurationsResponse#next_token #next_token} => String
    #   * {Types::ListSnapshotCopyConfigurationsResponse#snapshot_copy_configurations #snapshot_copy_configurations} => Array&lt;Types::SnapshotCopyConfiguration&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_snapshot_copy_configurations({
    #     max_results: 1,
    #     namespace_name: "NamespaceName",
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.snapshot_copy_configurations #=> Array
    #   resp.snapshot_copy_configurations[0].destination_kms_key_id #=> String
    #   resp.snapshot_copy_configurations[0].destination_region #=> String
    #   resp.snapshot_copy_configurations[0].namespace_name #=> String
    #   resp.snapshot_copy_configurations[0].snapshot_copy_configuration_arn #=> String
    #   resp.snapshot_copy_configurations[0].snapshot_copy_configuration_id #=> String
    #   resp.snapshot_copy_configurations[0].snapshot_retention_period #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListSnapshotCopyConfigurations AWS API Documentation
    #
    # @overload list_snapshot_copy_configurations(params = {})
    # @param [Hash] params ({})
    def list_snapshot_copy_configurations(params = {}, options = {})
      req = build_request(:list_snapshot_copy_configurations, params)
      req.send_request(options)
    end

    # Returns a list of snapshots.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp showing when the snapshot creation finished.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to display the next page of results.
    #
    # @option params [String] :namespace_arn
    #   The Amazon Resource Name (ARN) of the namespace from which to list all
    #   snapshots.
    #
    # @option params [String] :namespace_name
    #   The namespace from which to list all snapshots.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #
    # @option params [String] :owner_account
    #   The owner Amazon Web Services account of the snapshot.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The time when the creation of the snapshot was initiated.
    #
    # @return [Types::ListSnapshotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSnapshotsResponse#next_token #next_token} => String
    #   * {Types::ListSnapshotsResponse#snapshots #snapshots} => Array&lt;Types::Snapshot&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_snapshots({
    #     end_time: Time.now,
    #     max_results: 1,
    #     namespace_arn: "String",
    #     namespace_name: "String",
    #     next_token: "String",
    #     owner_account: "String",
    #     start_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].accounts_with_provisioned_restore_access #=> Array
    #   resp.snapshots[0].accounts_with_provisioned_restore_access[0] #=> String
    #   resp.snapshots[0].accounts_with_restore_access #=> Array
    #   resp.snapshots[0].accounts_with_restore_access[0] #=> String
    #   resp.snapshots[0].actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.snapshots[0].admin_password_secret_arn #=> String
    #   resp.snapshots[0].admin_password_secret_kms_key_id #=> String
    #   resp.snapshots[0].admin_username #=> String
    #   resp.snapshots[0].backup_progress_in_mega_bytes #=> Float
    #   resp.snapshots[0].current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.snapshots[0].elapsed_time_in_seconds #=> Integer
    #   resp.snapshots[0].estimated_seconds_to_completion #=> Integer
    #   resp.snapshots[0].kms_key_id #=> String
    #   resp.snapshots[0].namespace_arn #=> String
    #   resp.snapshots[0].namespace_name #=> String
    #   resp.snapshots[0].owner_account #=> String
    #   resp.snapshots[0].snapshot_arn #=> String
    #   resp.snapshots[0].snapshot_create_time #=> Time
    #   resp.snapshots[0].snapshot_name #=> String
    #   resp.snapshots[0].snapshot_remaining_days #=> Integer
    #   resp.snapshots[0].snapshot_retention_period #=> Integer
    #   resp.snapshots[0].snapshot_retention_start_time #=> Time
    #   resp.snapshots[0].status #=> String, one of "AVAILABLE", "CREATING", "DELETED", "CANCELLED", "FAILED", "COPYING"
    #   resp.snapshots[0].total_backup_size_in_mega_bytes #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListSnapshots AWS API Documentation
    #
    # @overload list_snapshots(params = {})
    # @param [Hash] params ({})
    def list_snapshots(params = {}, options = {})
      req = build_request(:list_snapshots, params)
      req.send_request(options)
    end

    # Returns information about an array of `TableRestoreStatus` objects.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use nextToken to display the next page of results.
    #
    # @option params [String] :namespace_name
    #   The namespace from which to list all of the statuses of
    #   `RestoreTableFromSnapshot` operations .
    #
    # @option params [String] :next_token
    #   If your initial `ListTableRestoreStatus` operation returns a
    #   nextToken, you can include the returned `nextToken` in following
    #   `ListTableRestoreStatus` operations. This will return results on the
    #   next page.
    #
    # @option params [String] :workgroup_name
    #   The workgroup from which to list all of the statuses of
    #   `RestoreTableFromSnapshot` operations.
    #
    # @return [Types::ListTableRestoreStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTableRestoreStatusResponse#next_token #next_token} => String
    #   * {Types::ListTableRestoreStatusResponse#table_restore_statuses #table_restore_statuses} => Array&lt;Types::TableRestoreStatus&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_table_restore_status({
    #     max_results: 1,
    #     namespace_name: "String",
    #     next_token: "PaginationToken",
    #     workgroup_name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.table_restore_statuses #=> Array
    #   resp.table_restore_statuses[0].message #=> String
    #   resp.table_restore_statuses[0].namespace_name #=> String
    #   resp.table_restore_statuses[0].new_table_name #=> String
    #   resp.table_restore_statuses[0].progress_in_mega_bytes #=> Integer
    #   resp.table_restore_statuses[0].recovery_point_id #=> String
    #   resp.table_restore_statuses[0].request_time #=> Time
    #   resp.table_restore_statuses[0].snapshot_name #=> String
    #   resp.table_restore_statuses[0].source_database_name #=> String
    #   resp.table_restore_statuses[0].source_schema_name #=> String
    #   resp.table_restore_statuses[0].source_table_name #=> String
    #   resp.table_restore_statuses[0].status #=> String
    #   resp.table_restore_statuses[0].table_restore_request_id #=> String
    #   resp.table_restore_statuses[0].target_database_name #=> String
    #   resp.table_restore_statuses[0].target_schema_name #=> String
    #   resp.table_restore_statuses[0].total_data_in_mega_bytes #=> Integer
    #   resp.table_restore_statuses[0].workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListTableRestoreStatus AWS API Documentation
    #
    # @overload list_table_restore_status(params = {})
    # @param [Hash] params ({})
    def list_table_restore_status(params = {}, options = {})
      req = build_request(:list_table_restore_status, params)
      req.send_request(options)
    end

    # Lists the tags assigned to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all usage limits within Amazon Redshift Serverless.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results. The
    #   default is 100.
    #
    # @option params [String] :next_token
    #   If your initial `ListUsageLimits` operation returns a `nextToken`, you
    #   can include the returned `nextToken` in following `ListUsageLimits`
    #   operations, which returns results in the next page.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource whose
    #   usage limits you want to list.
    #
    # @option params [String] :usage_type
    #   The Amazon Redshift Serverless feature whose limits you want to see.
    #
    # @return [Types::ListUsageLimitsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsageLimitsResponse#next_token #next_token} => String
    #   * {Types::ListUsageLimitsResponse#usage_limits #usage_limits} => Array&lt;Types::UsageLimit&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_usage_limits({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     resource_arn: "String",
    #     usage_type: "serverless-compute", # accepts serverless-compute, cross-region-datasharing
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.usage_limits #=> Array
    #   resp.usage_limits[0].amount #=> Integer
    #   resp.usage_limits[0].breach_action #=> String, one of "log", "emit-metric", "deactivate"
    #   resp.usage_limits[0].period #=> String, one of "daily", "weekly", "monthly"
    #   resp.usage_limits[0].resource_arn #=> String
    #   resp.usage_limits[0].usage_limit_arn #=> String
    #   resp.usage_limits[0].usage_limit_id #=> String
    #   resp.usage_limits[0].usage_type #=> String, one of "serverless-compute", "cross-region-datasharing"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListUsageLimits AWS API Documentation
    #
    # @overload list_usage_limits(params = {})
    # @param [Hash] params ({})
    def list_usage_limits(params = {}, options = {})
      req = build_request(:list_usage_limits, params)
      req.send_request(options)
    end

    # Returns information about a list of specified workgroups.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to display the next page of results.
    #
    # @option params [String] :next_token
    #   If your initial ListWorkgroups operation returns a `nextToken`, you
    #   can include the returned `nextToken` in following ListNamespaces
    #   operations, which returns results in the next page.
    #
    # @option params [String] :owner_account
    #   The owner Amazon Web Services account for the Amazon Redshift
    #   Serverless workgroup.
    #
    # @return [Types::ListWorkgroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkgroupsResponse#next_token #next_token} => String
    #   * {Types::ListWorkgroupsResponse#workgroups #workgroups} => Array&lt;Types::Workgroup&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workgroups({
    #     max_results: 1,
    #     next_token: "String",
    #     owner_account: "OwnerAccount",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.workgroups #=> Array
    #   resp.workgroups[0].base_capacity #=> Integer
    #   resp.workgroups[0].config_parameters #=> Array
    #   resp.workgroups[0].config_parameters[0].parameter_key #=> String
    #   resp.workgroups[0].config_parameters[0].parameter_value #=> String
    #   resp.workgroups[0].creation_date #=> Time
    #   resp.workgroups[0].cross_account_vpcs #=> Array
    #   resp.workgroups[0].cross_account_vpcs[0] #=> String
    #   resp.workgroups[0].custom_domain_certificate_arn #=> String
    #   resp.workgroups[0].custom_domain_certificate_expiry_time #=> Time
    #   resp.workgroups[0].custom_domain_name #=> String
    #   resp.workgroups[0].endpoint.address #=> String
    #   resp.workgroups[0].endpoint.port #=> Integer
    #   resp.workgroups[0].endpoint.vpc_endpoints #=> Array
    #   resp.workgroups[0].endpoint.vpc_endpoints[0].network_interfaces #=> Array
    #   resp.workgroups[0].endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.workgroups[0].endpoint.vpc_endpoints[0].network_interfaces[0].ipv6_address #=> String
    #   resp.workgroups[0].endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.workgroups[0].endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.workgroups[0].endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.workgroups[0].endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.workgroups[0].endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.workgroups[0].enhanced_vpc_routing #=> Boolean
    #   resp.workgroups[0].ip_address_type #=> String
    #   resp.workgroups[0].max_capacity #=> Integer
    #   resp.workgroups[0].namespace_name #=> String
    #   resp.workgroups[0].patch_version #=> String
    #   resp.workgroups[0].port #=> Integer
    #   resp.workgroups[0].price_performance_target.level #=> Integer
    #   resp.workgroups[0].price_performance_target.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.workgroups[0].publicly_accessible #=> Boolean
    #   resp.workgroups[0].security_group_ids #=> Array
    #   resp.workgroups[0].security_group_ids[0] #=> String
    #   resp.workgroups[0].status #=> String, one of "CREATING", "AVAILABLE", "MODIFYING", "DELETING"
    #   resp.workgroups[0].subnet_ids #=> Array
    #   resp.workgroups[0].subnet_ids[0] #=> String
    #   resp.workgroups[0].workgroup_arn #=> String
    #   resp.workgroups[0].workgroup_id #=> String
    #   resp.workgroups[0].workgroup_name #=> String
    #   resp.workgroups[0].workgroup_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/ListWorkgroups AWS API Documentation
    #
    # @overload list_workgroups(params = {})
    # @param [Hash] params ({})
    def list_workgroups(params = {}, options = {})
      req = build_request(:list_workgroups, params)
      req.send_request(options)
    end

    # Creates or updates a resource policy. Currently, you can use policies
    # to share snapshots across Amazon Web Services accounts.
    #
    # @option params [required, String] :policy
    #   The policy to create or update. For example, the following policy
    #   grants a user authorization to restore a snapshot.
    #
    #   `"{"Version": "2012-10-17", "Statement" : [{ "Sid":
    #   "AllowUserRestoreFromSnapshot", "Principal":{"AWS":
    #   ["739247239426"]}, "Action":
    #   ["redshift-serverless:RestoreFromSnapshot"] , "Effect": "Allow"
    #   }]}"`
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the account to create or update a
    #   resource policy for.
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#resource_policy #resource_policy} => Types::ResourcePolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     policy: "String", # required
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_policy.policy #=> String
    #   resp.resource_policy.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Restore the data from a recovery point.
    #
    # @option params [required, String] :namespace_name
    #   The name of the namespace to restore data into.
    #
    # @option params [required, String] :recovery_point_id
    #   The unique identifier of the recovery point to restore from.
    #
    # @option params [required, String] :workgroup_name
    #   The name of the workgroup used to restore data.
    #
    # @return [Types::RestoreFromRecoveryPointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreFromRecoveryPointResponse#namespace #namespace} => Types::Namespace
    #   * {Types::RestoreFromRecoveryPointResponse#recovery_point_id #recovery_point_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_from_recovery_point({
    #     namespace_name: "NamespaceName", # required
    #     recovery_point_id: "String", # required
    #     workgroup_name: "WorkgroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.namespace.admin_password_secret_arn #=> String
    #   resp.namespace.admin_password_secret_kms_key_id #=> String
    #   resp.namespace.admin_username #=> String
    #   resp.namespace.creation_date #=> Time
    #   resp.namespace.db_name #=> String
    #   resp.namespace.default_iam_role_arn #=> String
    #   resp.namespace.iam_roles #=> Array
    #   resp.namespace.iam_roles[0] #=> String
    #   resp.namespace.kms_key_id #=> String
    #   resp.namespace.log_exports #=> Array
    #   resp.namespace.log_exports[0] #=> String, one of "useractivitylog", "userlog", "connectionlog"
    #   resp.namespace.namespace_arn #=> String
    #   resp.namespace.namespace_id #=> String
    #   resp.namespace.namespace_name #=> String
    #   resp.namespace.status #=> String, one of "AVAILABLE", "MODIFYING", "DELETING"
    #   resp.recovery_point_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/RestoreFromRecoveryPoint AWS API Documentation
    #
    # @overload restore_from_recovery_point(params = {})
    # @param [Hash] params ({})
    def restore_from_recovery_point(params = {}, options = {})
      req = build_request(:restore_from_recovery_point, params)
      req.send_request(options)
    end

    # Restores a namespace from a snapshot.
    #
    # @option params [String] :admin_password_secret_kms_key_id
    #   The ID of the Key Management Service (KMS) key used to encrypt and
    #   store the namespace's admin credentials secret.
    #
    # @option params [Boolean] :manage_admin_password
    #   If `true`, Amazon Redshift uses Secrets Manager to manage the restored
    #   snapshot's admin credentials. If `MmanageAdminPassword` is false or
    #   not set, Amazon Redshift uses the admin credentials that the namespace
    #   or cluster had at the time the snapshot was taken.
    #
    # @option params [required, String] :namespace_name
    #   The name of the namespace to restore the snapshot to.
    #
    # @option params [String] :owner_account
    #   The Amazon Web Services account that owns the snapshot.
    #
    # @option params [String] :snapshot_arn
    #   The Amazon Resource Name (ARN) of the snapshot to restore from.
    #   Required if restoring from Amazon Redshift Serverless to a provisioned
    #   cluster. Must not be specified at the same time as `snapshotName`.
    #
    #   The format of the ARN is
    #   arn:aws:redshift:&lt;region&gt;:&lt;account\_id&gt;:snapshot:&lt;cluster\_identifier&gt;/&lt;snapshot\_identifier&gt;.
    #
    # @option params [String] :snapshot_name
    #   The name of the snapshot to restore from. Must not be specified at the
    #   same time as `snapshotArn`.
    #
    # @option params [required, String] :workgroup_name
    #   The name of the workgroup used to restore the snapshot.
    #
    # @return [Types::RestoreFromSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreFromSnapshotResponse#namespace #namespace} => Types::Namespace
    #   * {Types::RestoreFromSnapshotResponse#owner_account #owner_account} => String
    #   * {Types::RestoreFromSnapshotResponse#snapshot_name #snapshot_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_from_snapshot({
    #     admin_password_secret_kms_key_id: "KmsKeyId",
    #     manage_admin_password: false,
    #     namespace_name: "NamespaceName", # required
    #     owner_account: "String",
    #     snapshot_arn: "String",
    #     snapshot_name: "String",
    #     workgroup_name: "WorkgroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.namespace.admin_password_secret_arn #=> String
    #   resp.namespace.admin_password_secret_kms_key_id #=> String
    #   resp.namespace.admin_username #=> String
    #   resp.namespace.creation_date #=> Time
    #   resp.namespace.db_name #=> String
    #   resp.namespace.default_iam_role_arn #=> String
    #   resp.namespace.iam_roles #=> Array
    #   resp.namespace.iam_roles[0] #=> String
    #   resp.namespace.kms_key_id #=> String
    #   resp.namespace.log_exports #=> Array
    #   resp.namespace.log_exports[0] #=> String, one of "useractivitylog", "userlog", "connectionlog"
    #   resp.namespace.namespace_arn #=> String
    #   resp.namespace.namespace_id #=> String
    #   resp.namespace.namespace_name #=> String
    #   resp.namespace.status #=> String, one of "AVAILABLE", "MODIFYING", "DELETING"
    #   resp.owner_account #=> String
    #   resp.snapshot_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/RestoreFromSnapshot AWS API Documentation
    #
    # @overload restore_from_snapshot(params = {})
    # @param [Hash] params ({})
    def restore_from_snapshot(params = {}, options = {})
      req = build_request(:restore_from_snapshot, params)
      req.send_request(options)
    end

    # Restores a table from a recovery point to your Amazon Redshift
    # Serverless instance. You can't use this operation to restore tables
    # with interleaved sort keys.
    #
    # @option params [Boolean] :activate_case_sensitive_identifier
    #   Indicates whether name identifiers for database, schema, and table are
    #   case sensitive. If true, the names are case sensitive. If false, the
    #   names are not case sensitive. The default is false.
    #
    # @option params [required, String] :namespace_name
    #   Namespace of the recovery point to restore from.
    #
    # @option params [required, String] :new_table_name
    #   The name of the table to create from the restore operation.
    #
    # @option params [required, String] :recovery_point_id
    #   The ID of the recovery point to restore the table from.
    #
    # @option params [required, String] :source_database_name
    #   The name of the source database that contains the table being
    #   restored.
    #
    # @option params [String] :source_schema_name
    #   The name of the source schema that contains the table being restored.
    #
    # @option params [required, String] :source_table_name
    #   The name of the source table being restored.
    #
    # @option params [String] :target_database_name
    #   The name of the database to restore the table to.
    #
    # @option params [String] :target_schema_name
    #   The name of the schema to restore the table to.
    #
    # @option params [required, String] :workgroup_name
    #   The workgroup to restore the table to.
    #
    # @return [Types::RestoreTableFromRecoveryPointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreTableFromRecoveryPointResponse#table_restore_status #table_restore_status} => Types::TableRestoreStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_table_from_recovery_point({
    #     activate_case_sensitive_identifier: false,
    #     namespace_name: "String", # required
    #     new_table_name: "String", # required
    #     recovery_point_id: "String", # required
    #     source_database_name: "String", # required
    #     source_schema_name: "String",
    #     source_table_name: "String", # required
    #     target_database_name: "String",
    #     target_schema_name: "String",
    #     workgroup_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table_restore_status.message #=> String
    #   resp.table_restore_status.namespace_name #=> String
    #   resp.table_restore_status.new_table_name #=> String
    #   resp.table_restore_status.progress_in_mega_bytes #=> Integer
    #   resp.table_restore_status.recovery_point_id #=> String
    #   resp.table_restore_status.request_time #=> Time
    #   resp.table_restore_status.snapshot_name #=> String
    #   resp.table_restore_status.source_database_name #=> String
    #   resp.table_restore_status.source_schema_name #=> String
    #   resp.table_restore_status.source_table_name #=> String
    #   resp.table_restore_status.status #=> String
    #   resp.table_restore_status.table_restore_request_id #=> String
    #   resp.table_restore_status.target_database_name #=> String
    #   resp.table_restore_status.target_schema_name #=> String
    #   resp.table_restore_status.total_data_in_mega_bytes #=> Integer
    #   resp.table_restore_status.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/RestoreTableFromRecoveryPoint AWS API Documentation
    #
    # @overload restore_table_from_recovery_point(params = {})
    # @param [Hash] params ({})
    def restore_table_from_recovery_point(params = {}, options = {})
      req = build_request(:restore_table_from_recovery_point, params)
      req.send_request(options)
    end

    # Restores a table from a snapshot to your Amazon Redshift Serverless
    # instance. You can't use this operation to restore tables with
    # [interleaved sort keys][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/dg/t_Sorting_data.html#t_Sorting_data-interleaved
    #
    # @option params [Boolean] :activate_case_sensitive_identifier
    #   Indicates whether name identifiers for database, schema, and table are
    #   case sensitive. If true, the names are case sensitive. If false, the
    #   names are not case sensitive. The default is false.
    #
    # @option params [required, String] :namespace_name
    #   The namespace of the snapshot to restore from.
    #
    # @option params [required, String] :new_table_name
    #   The name of the table to create from the restore operation.
    #
    # @option params [required, String] :snapshot_name
    #   The name of the snapshot to restore the table from.
    #
    # @option params [required, String] :source_database_name
    #   The name of the source database that contains the table being
    #   restored.
    #
    # @option params [String] :source_schema_name
    #   The name of the source schema that contains the table being restored.
    #
    # @option params [required, String] :source_table_name
    #   The name of the source table being restored.
    #
    # @option params [String] :target_database_name
    #   The name of the database to restore the table to.
    #
    # @option params [String] :target_schema_name
    #   The name of the schema to restore the table to.
    #
    # @option params [required, String] :workgroup_name
    #   The workgroup to restore the table to.
    #
    # @return [Types::RestoreTableFromSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreTableFromSnapshotResponse#table_restore_status #table_restore_status} => Types::TableRestoreStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_table_from_snapshot({
    #     activate_case_sensitive_identifier: false,
    #     namespace_name: "String", # required
    #     new_table_name: "String", # required
    #     snapshot_name: "String", # required
    #     source_database_name: "String", # required
    #     source_schema_name: "String",
    #     source_table_name: "String", # required
    #     target_database_name: "String",
    #     target_schema_name: "String",
    #     workgroup_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table_restore_status.message #=> String
    #   resp.table_restore_status.namespace_name #=> String
    #   resp.table_restore_status.new_table_name #=> String
    #   resp.table_restore_status.progress_in_mega_bytes #=> Integer
    #   resp.table_restore_status.recovery_point_id #=> String
    #   resp.table_restore_status.request_time #=> Time
    #   resp.table_restore_status.snapshot_name #=> String
    #   resp.table_restore_status.source_database_name #=> String
    #   resp.table_restore_status.source_schema_name #=> String
    #   resp.table_restore_status.source_table_name #=> String
    #   resp.table_restore_status.status #=> String
    #   resp.table_restore_status.table_restore_request_id #=> String
    #   resp.table_restore_status.target_database_name #=> String
    #   resp.table_restore_status.target_schema_name #=> String
    #   resp.table_restore_status.total_data_in_mega_bytes #=> Integer
    #   resp.table_restore_status.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/RestoreTableFromSnapshot AWS API Documentation
    #
    # @overload restore_table_from_snapshot(params = {})
    # @param [Hash] params ({})
    def restore_table_from_snapshot(params = {}, options = {})
      req = build_request(:restore_table_from_snapshot, params)
      req.send_request(options)
    end

    # Assigns one or more tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The map of the key-value pairs used to tag the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag or set of tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag or set of tags to remove from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an Amazon Redshift Serverless certificate associated with a
    # custom domain.
    #
    # @option params [required, String] :custom_domain_certificate_arn
    #   The custom domain name’s certificate Amazon resource name (ARN). This
    #   is optional.
    #
    # @option params [required, String] :custom_domain_name
    #   The custom domain name associated with the workgroup.
    #
    # @option params [required, String] :workgroup_name
    #   The name of the workgroup associated with the database.
    #
    # @return [Types::UpdateCustomDomainAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCustomDomainAssociationResponse#custom_domain_certificate_arn #custom_domain_certificate_arn} => String
    #   * {Types::UpdateCustomDomainAssociationResponse#custom_domain_certificate_expiry_time #custom_domain_certificate_expiry_time} => Time
    #   * {Types::UpdateCustomDomainAssociationResponse#custom_domain_name #custom_domain_name} => String
    #   * {Types::UpdateCustomDomainAssociationResponse#workgroup_name #workgroup_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_domain_association({
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString", # required
    #     custom_domain_name: "CustomDomainName", # required
    #     workgroup_name: "WorkgroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_domain_certificate_arn #=> String
    #   resp.custom_domain_certificate_expiry_time #=> Time
    #   resp.custom_domain_name #=> String
    #   resp.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateCustomDomainAssociation AWS API Documentation
    #
    # @overload update_custom_domain_association(params = {})
    # @param [Hash] params ({})
    def update_custom_domain_association(params = {}, options = {})
      req = build_request(:update_custom_domain_association, params)
      req.send_request(options)
    end

    # Updates an Amazon Redshift Serverless managed endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the VPC endpoint to update.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   The list of VPC security groups associated with the endpoint after the
    #   endpoint is modified.
    #
    # @return [Types::UpdateEndpointAccessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEndpointAccessResponse#endpoint #endpoint} => Types::EndpointAccess
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint_access({
    #     endpoint_name: "String", # required
    #     vpc_security_group_ids: ["VpcSecurityGroupId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint.address #=> String
    #   resp.endpoint.endpoint_arn #=> String
    #   resp.endpoint.endpoint_create_time #=> Time
    #   resp.endpoint.endpoint_name #=> String
    #   resp.endpoint.endpoint_status #=> String
    #   resp.endpoint.port #=> Integer
    #   resp.endpoint.subnet_ids #=> Array
    #   resp.endpoint.subnet_ids[0] #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces #=> Array
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].availability_zone #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].ipv6_address #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].network_interface_id #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].private_ip_address #=> String
    #   resp.endpoint.vpc_endpoint.network_interfaces[0].subnet_id #=> String
    #   resp.endpoint.vpc_endpoint.vpc_endpoint_id #=> String
    #   resp.endpoint.vpc_endpoint.vpc_id #=> String
    #   resp.endpoint.vpc_security_groups #=> Array
    #   resp.endpoint.vpc_security_groups[0].status #=> String
    #   resp.endpoint.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.endpoint.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateEndpointAccess AWS API Documentation
    #
    # @overload update_endpoint_access(params = {})
    # @param [Hash] params ({})
    def update_endpoint_access(params = {}, options = {})
      req = build_request(:update_endpoint_access, params)
      req.send_request(options)
    end

    # Updates a namespace with the specified settings. Unless required, you
    # can't update multiple parameters in one request. For example, you
    # must specify both `adminUsername` and `adminUserPassword` to update
    # either field, but you can't update both `kmsKeyId` and `logExports`
    # in a single request.
    #
    # @option params [String] :admin_password_secret_kms_key_id
    #   The ID of the Key Management Service (KMS) key used to encrypt and
    #   store the namespace's admin credentials secret. You can only use this
    #   parameter if `manageAdminPassword` is true.
    #
    # @option params [String] :admin_user_password
    #   The password of the administrator for the first database created in
    #   the namespace. This parameter must be updated together with
    #   `adminUsername`.
    #
    #   You can't use `adminUserPassword` if `manageAdminPassword` is true.
    #
    # @option params [String] :admin_username
    #   The username of the administrator for the first database created in
    #   the namespace. This parameter must be updated together with
    #   `adminUserPassword`.
    #
    # @option params [String] :default_iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to set as a default in
    #   the namespace. This parameter must be updated together with
    #   `iamRoles`.
    #
    # @option params [Array<String>] :iam_roles
    #   A list of IAM roles to associate with the namespace. This parameter
    #   must be updated together with `defaultIamRoleArn`.
    #
    # @option params [String] :kms_key_id
    #   The ID of the Amazon Web Services Key Management Service key used to
    #   encrypt your data.
    #
    # @option params [Array<String>] :log_exports
    #   The types of logs the namespace can export. The export types are
    #   `userlog`, `connectionlog`, and `useractivitylog`.
    #
    # @option params [Boolean] :manage_admin_password
    #   If `true`, Amazon Redshift uses Secrets Manager to manage the
    #   namespace's admin credentials. You can't use `adminUserPassword` if
    #   `manageAdminPassword` is true. If `manageAdminPassword` is false or
    #   not set, Amazon Redshift uses `adminUserPassword` for the admin user
    #   account's password.
    #
    # @option params [required, String] :namespace_name
    #   The name of the namespace to update. You can't update the name of a
    #   namespace once it is created.
    #
    # @return [Types::UpdateNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNamespaceResponse#namespace #namespace} => Types::Namespace
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_namespace({
    #     admin_password_secret_kms_key_id: "KmsKeyId",
    #     admin_user_password: "DbPassword",
    #     admin_username: "DbUser",
    #     default_iam_role_arn: "String",
    #     iam_roles: ["IamRoleArn"],
    #     kms_key_id: "String",
    #     log_exports: ["useractivitylog"], # accepts useractivitylog, userlog, connectionlog
    #     manage_admin_password: false,
    #     namespace_name: "NamespaceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.namespace.admin_password_secret_arn #=> String
    #   resp.namespace.admin_password_secret_kms_key_id #=> String
    #   resp.namespace.admin_username #=> String
    #   resp.namespace.creation_date #=> Time
    #   resp.namespace.db_name #=> String
    #   resp.namespace.default_iam_role_arn #=> String
    #   resp.namespace.iam_roles #=> Array
    #   resp.namespace.iam_roles[0] #=> String
    #   resp.namespace.kms_key_id #=> String
    #   resp.namespace.log_exports #=> Array
    #   resp.namespace.log_exports[0] #=> String, one of "useractivitylog", "userlog", "connectionlog"
    #   resp.namespace.namespace_arn #=> String
    #   resp.namespace.namespace_id #=> String
    #   resp.namespace.namespace_name #=> String
    #   resp.namespace.status #=> String, one of "AVAILABLE", "MODIFYING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateNamespace AWS API Documentation
    #
    # @overload update_namespace(params = {})
    # @param [Hash] params ({})
    def update_namespace(params = {}, options = {})
      req = build_request(:update_namespace, params)
      req.send_request(options)
    end

    # Updates a scheduled action.
    #
    # @option params [Boolean] :enabled
    #   Specifies whether to enable the scheduled action.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time in UTC of the scheduled action to update.
    #
    # @option params [String] :role_arn
    #   The ARN of the IAM role to assume to run the scheduled action. This
    #   IAM role must have permission to run the Amazon Redshift Serverless
    #   API operation in the scheduled action. This IAM role must allow the
    #   Amazon Redshift scheduler to schedule creating snapshots (Principal
    #   scheduler.redshift.amazonaws.com) to assume permissions on your
    #   behalf. For more information about the IAM role to use with the Amazon
    #   Redshift scheduler, see [Using Identity-Based Policies for Amazon
    #   Redshift][1] in the Amazon Redshift Management Guide
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html
    #
    # @option params [Types::Schedule] :schedule
    #   The schedule for a one-time (at timestamp format) or recurring (cron
    #   format) scheduled action. Schedule invocations must be separated by at
    #   least one hour. Times are in UTC.
    #
    #   * Format of at timestamp is `yyyy-mm-ddThh:mm:ss`. For example,
    #     `2016-03-04T17:27:00`.
    #
    #   * Format of cron expression is `(Minutes Hours Day-of-month Month
    #     Day-of-week Year)`. For example, `"(0 10 ? * MON *)"`. For more
    #     information, see [Cron Expressions][1] in the *Amazon CloudWatch
    #     Events User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions
    #
    # @option params [String] :scheduled_action_description
    #   The descripion of the scheduled action to update to.
    #
    # @option params [required, String] :scheduled_action_name
    #   The name of the scheduled action to update to.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time in UTC of the scheduled action to update to.
    #
    # @option params [Types::TargetAction] :target_action
    #   A JSON format string of the Amazon Redshift Serverless API operation
    #   with input parameters. The following is an example of a target action.
    #
    #   `"{"CreateSnapshot": {"NamespaceName":
    #   "sampleNamespace","SnapshotName": "sampleSnapshot", "retentionPeriod":
    #   "1"}}"`
    #
    # @return [Types::UpdateScheduledActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateScheduledActionResponse#scheduled_action #scheduled_action} => Types::ScheduledActionResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scheduled_action({
    #     enabled: false,
    #     end_time: Time.now,
    #     role_arn: "IamRoleArn",
    #     schedule: {
    #       at: Time.now,
    #       cron: "String",
    #     },
    #     scheduled_action_description: "String",
    #     scheduled_action_name: "ScheduledActionName", # required
    #     start_time: Time.now,
    #     target_action: {
    #       create_snapshot: {
    #         namespace_name: "NamespaceName", # required
    #         retention_period: 1,
    #         snapshot_name_prefix: "SnapshotNamePrefix", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_action.end_time #=> Time
    #   resp.scheduled_action.namespace_name #=> String
    #   resp.scheduled_action.next_invocations #=> Array
    #   resp.scheduled_action.next_invocations[0] #=> Time
    #   resp.scheduled_action.role_arn #=> String
    #   resp.scheduled_action.schedule.at #=> Time
    #   resp.scheduled_action.schedule.cron #=> String
    #   resp.scheduled_action.scheduled_action_description #=> String
    #   resp.scheduled_action.scheduled_action_name #=> String
    #   resp.scheduled_action.scheduled_action_uuid #=> String
    #   resp.scheduled_action.start_time #=> Time
    #   resp.scheduled_action.state #=> String, one of "ACTIVE", "DISABLED"
    #   resp.scheduled_action.target_action.create_snapshot.namespace_name #=> String
    #   resp.scheduled_action.target_action.create_snapshot.retention_period #=> Integer
    #   resp.scheduled_action.target_action.create_snapshot.snapshot_name_prefix #=> String
    #   resp.scheduled_action.target_action.create_snapshot.tags #=> Array
    #   resp.scheduled_action.target_action.create_snapshot.tags[0].key #=> String
    #   resp.scheduled_action.target_action.create_snapshot.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateScheduledAction AWS API Documentation
    #
    # @overload update_scheduled_action(params = {})
    # @param [Hash] params ({})
    def update_scheduled_action(params = {}, options = {})
      req = build_request(:update_scheduled_action, params)
      req.send_request(options)
    end

    # Updates a snapshot.
    #
    # @option params [Integer] :retention_period
    #   The new retention period of the snapshot.
    #
    # @option params [required, String] :snapshot_name
    #   The name of the snapshot.
    #
    # @return [Types::UpdateSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSnapshotResponse#snapshot #snapshot} => Types::Snapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_snapshot({
    #     retention_period: 1,
    #     snapshot_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.accounts_with_provisioned_restore_access #=> Array
    #   resp.snapshot.accounts_with_provisioned_restore_access[0] #=> String
    #   resp.snapshot.accounts_with_restore_access #=> Array
    #   resp.snapshot.accounts_with_restore_access[0] #=> String
    #   resp.snapshot.actual_incremental_backup_size_in_mega_bytes #=> Float
    #   resp.snapshot.admin_password_secret_arn #=> String
    #   resp.snapshot.admin_password_secret_kms_key_id #=> String
    #   resp.snapshot.admin_username #=> String
    #   resp.snapshot.backup_progress_in_mega_bytes #=> Float
    #   resp.snapshot.current_backup_rate_in_mega_bytes_per_second #=> Float
    #   resp.snapshot.elapsed_time_in_seconds #=> Integer
    #   resp.snapshot.estimated_seconds_to_completion #=> Integer
    #   resp.snapshot.kms_key_id #=> String
    #   resp.snapshot.namespace_arn #=> String
    #   resp.snapshot.namespace_name #=> String
    #   resp.snapshot.owner_account #=> String
    #   resp.snapshot.snapshot_arn #=> String
    #   resp.snapshot.snapshot_create_time #=> Time
    #   resp.snapshot.snapshot_name #=> String
    #   resp.snapshot.snapshot_remaining_days #=> Integer
    #   resp.snapshot.snapshot_retention_period #=> Integer
    #   resp.snapshot.snapshot_retention_start_time #=> Time
    #   resp.snapshot.status #=> String, one of "AVAILABLE", "CREATING", "DELETED", "CANCELLED", "FAILED", "COPYING"
    #   resp.snapshot.total_backup_size_in_mega_bytes #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateSnapshot AWS API Documentation
    #
    # @overload update_snapshot(params = {})
    # @param [Hash] params ({})
    def update_snapshot(params = {}, options = {})
      req = build_request(:update_snapshot, params)
      req.send_request(options)
    end

    # Updates a snapshot copy configuration.
    #
    # @option params [required, String] :snapshot_copy_configuration_id
    #   The ID of the snapshot copy configuration to update.
    #
    # @option params [Integer] :snapshot_retention_period
    #   The new retention period of how long to keep a snapshot in the
    #   destination Amazon Web Services Region.
    #
    # @return [Types::UpdateSnapshotCopyConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSnapshotCopyConfigurationResponse#snapshot_copy_configuration #snapshot_copy_configuration} => Types::SnapshotCopyConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_snapshot_copy_configuration({
    #     snapshot_copy_configuration_id: "String", # required
    #     snapshot_retention_period: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_copy_configuration.destination_kms_key_id #=> String
    #   resp.snapshot_copy_configuration.destination_region #=> String
    #   resp.snapshot_copy_configuration.namespace_name #=> String
    #   resp.snapshot_copy_configuration.snapshot_copy_configuration_arn #=> String
    #   resp.snapshot_copy_configuration.snapshot_copy_configuration_id #=> String
    #   resp.snapshot_copy_configuration.snapshot_retention_period #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateSnapshotCopyConfiguration AWS API Documentation
    #
    # @overload update_snapshot_copy_configuration(params = {})
    # @param [Hash] params ({})
    def update_snapshot_copy_configuration(params = {}, options = {})
      req = build_request(:update_snapshot_copy_configuration, params)
      req.send_request(options)
    end

    # Update a usage limit in Amazon Redshift Serverless. You can't update
    # the usage type or period of a usage limit.
    #
    # @option params [Integer] :amount
    #   The new limit amount. If time-based, this amount is in Redshift
    #   Processing Units (RPU) consumed per hour. If data-based, this amount
    #   is in terabytes (TB) of data transferred between Regions in
    #   cross-account sharing. The value must be a positive number.
    #
    # @option params [String] :breach_action
    #   The new action that Amazon Redshift Serverless takes when the limit is
    #   reached.
    #
    # @option params [required, String] :usage_limit_id
    #   The identifier of the usage limit to update.
    #
    # @return [Types::UpdateUsageLimitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUsageLimitResponse#usage_limit #usage_limit} => Types::UsageLimit
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_usage_limit({
    #     amount: 1,
    #     breach_action: "log", # accepts log, emit-metric, deactivate
    #     usage_limit_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.usage_limit.amount #=> Integer
    #   resp.usage_limit.breach_action #=> String, one of "log", "emit-metric", "deactivate"
    #   resp.usage_limit.period #=> String, one of "daily", "weekly", "monthly"
    #   resp.usage_limit.resource_arn #=> String
    #   resp.usage_limit.usage_limit_arn #=> String
    #   resp.usage_limit.usage_limit_id #=> String
    #   resp.usage_limit.usage_type #=> String, one of "serverless-compute", "cross-region-datasharing"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateUsageLimit AWS API Documentation
    #
    # @overload update_usage_limit(params = {})
    # @param [Hash] params ({})
    def update_usage_limit(params = {}, options = {})
      req = build_request(:update_usage_limit, params)
      req.send_request(options)
    end

    # Updates a workgroup with the specified configuration settings. You
    # can't update multiple parameters in one request. For example, you can
    # update `baseCapacity` or `port` in a single request, but you can't
    # update both in the same request.
    #
    # VPC Block Public Access (BPA) enables you to block resources in VPCs
    # and subnets that you own in a Region from reaching or being reached
    # from the internet through internet gateways and egress-only internet
    # gateways. If a workgroup is in an account with VPC BPA turned on, the
    # following capabilities are blocked:
    #
    # * Creating a public access workgroup
    #
    # * Modifying a private workgroup to public
    #
    # * Adding a subnet with VPC BPA turned on to the workgroup when the
    #   workgroup is public
    #
    # For more information about VPC BPA, see [Block public access to VPCs
    # and subnets][1] in the *Amazon VPC User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html
    #
    # @option params [Integer] :base_capacity
    #   The new base data warehouse capacity in Redshift Processing Units
    #   (RPUs).
    #
    # @option params [Array<Types::ConfigParameter>] :config_parameters
    #   An array of parameters to set for advanced control over a database.
    #   The options are `auto_mv`, `datestyle`,
    #   `enable_case_sensitive_identifier`, `enable_user_activity_logging`,
    #   `query_group`, `search_path`, `require_ssl`, `use_fips_ssl`, and query
    #   monitoring metrics that let you define performance boundaries. For
    #   more information about query monitoring rules and available metrics,
    #   see [ Query monitoring metrics for Amazon Redshift Serverless][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless
    #
    # @option params [Boolean] :enhanced_vpc_routing
    #   The value that specifies whether to turn on enhanced virtual private
    #   cloud (VPC) routing, which forces Amazon Redshift Serverless to route
    #   traffic through your VPC.
    #
    # @option params [String] :ip_address_type
    #   The IP address type that the workgroup supports. Possible values are
    #   `ipv4` and `dualstack`.
    #
    # @option params [Integer] :max_capacity
    #   The maximum data-warehouse capacity Amazon Redshift Serverless uses to
    #   serve queries. The max capacity is specified in RPUs.
    #
    # @option params [Integer] :port
    #   The custom port to use when connecting to a workgroup. Valid port
    #   ranges are 5431-5455 and 8191-8215. The default is 5439.
    #
    # @option params [Types::PerformanceTarget] :price_performance_target
    #   An object that represents the price performance target settings for
    #   the workgroup.
    #
    # @option params [Boolean] :publicly_accessible
    #   A value that specifies whether the workgroup can be accessible from a
    #   public network.
    #
    # @option params [Array<String>] :security_group_ids
    #   An array of security group IDs to associate with the workgroup.
    #
    # @option params [Array<String>] :subnet_ids
    #   An array of VPC subnet IDs to associate with the workgroup.
    #
    # @option params [required, String] :workgroup_name
    #   The name of the workgroup to update. You can't update the name of a
    #   workgroup once it is created.
    #
    # @return [Types::UpdateWorkgroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkgroupResponse#workgroup #workgroup} => Types::Workgroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workgroup({
    #     base_capacity: 1,
    #     config_parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #       },
    #     ],
    #     enhanced_vpc_routing: false,
    #     ip_address_type: "IpAddressType",
    #     max_capacity: 1,
    #     port: 1,
    #     price_performance_target: {
    #       level: 1,
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     publicly_accessible: false,
    #     security_group_ids: ["SecurityGroupId"],
    #     subnet_ids: ["SubnetId"],
    #     workgroup_name: "WorkgroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workgroup.base_capacity #=> Integer
    #   resp.workgroup.config_parameters #=> Array
    #   resp.workgroup.config_parameters[0].parameter_key #=> String
    #   resp.workgroup.config_parameters[0].parameter_value #=> String
    #   resp.workgroup.creation_date #=> Time
    #   resp.workgroup.cross_account_vpcs #=> Array
    #   resp.workgroup.cross_account_vpcs[0] #=> String
    #   resp.workgroup.custom_domain_certificate_arn #=> String
    #   resp.workgroup.custom_domain_certificate_expiry_time #=> Time
    #   resp.workgroup.custom_domain_name #=> String
    #   resp.workgroup.endpoint.address #=> String
    #   resp.workgroup.endpoint.port #=> Integer
    #   resp.workgroup.endpoint.vpc_endpoints #=> Array
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces #=> Array
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].availability_zone #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].ipv6_address #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].private_ip_address #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].network_interfaces[0].subnet_id #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.workgroup.endpoint.vpc_endpoints[0].vpc_id #=> String
    #   resp.workgroup.enhanced_vpc_routing #=> Boolean
    #   resp.workgroup.ip_address_type #=> String
    #   resp.workgroup.max_capacity #=> Integer
    #   resp.workgroup.namespace_name #=> String
    #   resp.workgroup.patch_version #=> String
    #   resp.workgroup.port #=> Integer
    #   resp.workgroup.price_performance_target.level #=> Integer
    #   resp.workgroup.price_performance_target.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.workgroup.publicly_accessible #=> Boolean
    #   resp.workgroup.security_group_ids #=> Array
    #   resp.workgroup.security_group_ids[0] #=> String
    #   resp.workgroup.status #=> String, one of "CREATING", "AVAILABLE", "MODIFYING", "DELETING"
    #   resp.workgroup.subnet_ids #=> Array
    #   resp.workgroup.subnet_ids[0] #=> String
    #   resp.workgroup.workgroup_arn #=> String
    #   resp.workgroup.workgroup_id #=> String
    #   resp.workgroup.workgroup_name #=> String
    #   resp.workgroup.workgroup_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-serverless-2021-04-21/UpdateWorkgroup AWS API Documentation
    #
    # @overload update_workgroup(params = {})
    # @param [Hash] params ({})
    def update_workgroup(params = {}, options = {})
      req = build_request(:update_workgroup, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::RedshiftServerless')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-redshiftserverless'
      context[:gem_version] = '1.45.0'
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
