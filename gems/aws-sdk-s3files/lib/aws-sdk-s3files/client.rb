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
require 'aws-sdk-core/plugins/protocols/rest_json'

module Aws::S3Files
  # An API client for S3Files.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::S3Files::Client.new(
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

    @identifier = :s3files

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
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::S3Files::Plugins::Endpoints)

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
    #   @option options [Aws::S3Files::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::S3Files::EndpointParameters`.
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

    # Creates an S3 File System Access Point for application-specific access
    # with POSIX user identity and root directory enforcement. Access points
    # provide a way to manage access to shared datasets in multi-tenant
    # scenarios.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Web Services ignores the request, but does not return
    #   an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key-value pairs to apply to the access point for resource
    #   tagging.
    #
    # @option params [required, String] :file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System.
    #
    # @option params [Types::PosixUser] :posix_user
    #   The POSIX identity with uid, gid, and secondary group IDs for user
    #   enforcement when accessing the file system through this access point.
    #
    # @option params [Types::RootDirectory] :root_directory
    #   The root directory path for the access point, with optional creation
    #   permissions for newly created directories.
    #
    # @return [Types::CreateAccessPointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessPointResponse#access_point_arn #access_point_arn} => String
    #   * {Types::CreateAccessPointResponse#access_point_id #access_point_id} => String
    #   * {Types::CreateAccessPointResponse#client_token #client_token} => String
    #   * {Types::CreateAccessPointResponse#file_system_id #file_system_id} => String
    #   * {Types::CreateAccessPointResponse#status #status} => String
    #   * {Types::CreateAccessPointResponse#owner_id #owner_id} => String
    #   * {Types::CreateAccessPointResponse#posix_user #posix_user} => Types::PosixUser
    #   * {Types::CreateAccessPointResponse#root_directory #root_directory} => Types::RootDirectory
    #   * {Types::CreateAccessPointResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::CreateAccessPointResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_point({
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     file_system_id: "FileSystemId", # required
    #     posix_user: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [1],
    #     },
    #     root_directory: {
    #       path: "Path",
    #       creation_permissions: {
    #         owner_uid: 1, # required
    #         owner_gid: 1, # required
    #         permissions: "Permissions", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.access_point_arn #=> String
    #   resp.access_point_id #=> String
    #   resp.client_token #=> String
    #   resp.file_system_id #=> String
    #   resp.status #=> String, one of "available", "creating", "deleting", "deleted", "error", "updating"
    #   resp.owner_id #=> String
    #   resp.posix_user.uid #=> Integer
    #   resp.posix_user.gid #=> Integer
    #   resp.posix_user.secondary_gids #=> Array
    #   resp.posix_user.secondary_gids[0] #=> Integer
    #   resp.root_directory.path #=> String
    #   resp.root_directory.creation_permissions.owner_uid #=> Integer
    #   resp.root_directory.creation_permissions.owner_gid #=> Integer
    #   resp.root_directory.creation_permissions.permissions #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/CreateAccessPoint AWS API Documentation
    #
    # @overload create_access_point(params = {})
    # @param [Hash] params ({})
    def create_access_point(params = {}, options = {})
      req = build_request(:create_access_point, params)
      req.send_request(options)
    end

    # Creates an S3 File System resource scoped to a bucket or prefix within
    # a bucket, enabling file system access to S3 data. To create a file
    # system, you need an S3 bucket and an IAM role that grants the service
    # permission to access the bucket.
    #
    # @option params [required, String] :bucket
    #   The Amazon Resource Name (ARN) of the S3 bucket that will be
    #   accessible through the file system. The bucket must exist and be in
    #   the same Amazon Web Services Region as the file system.
    #
    # @option params [String] :prefix
    #   An optional prefix within the S3 bucket to scope the file system
    #   access. If specified, the file system provides access only to objects
    #   with keys that begin with this prefix. If not specified, the file
    #   system provides access to the entire bucket.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure
    #   idempotent creation. Up to 64 ASCII characters are allowed. If you
    #   don't specify a client token, the Amazon Web Services SDK
    #   automatically generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :kms_key_id
    #   The ARN, key ID, or alias of the KMS key to use for encryption. If not
    #   specified, the service uses a service-owned key for encryption. You
    #   can specify a KMS key using the following formats: key ID, ARN, key
    #   alias, or key alias ARN. If you use `KmsKeyId`, the file system will
    #   be encrypted.
    #
    # @option params [required, String] :role_arn
    #   The ARN of the IAM role that grants the S3 Files service permission to
    #   read and write data between the file system and the S3 bucket. This
    #   role must have the necessary permissions to access the specified
    #   bucket and prefix.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key-value pairs to apply as tags to the file system
    #   resource. Each tag is a user-defined key-value pair. You can use tags
    #   to categorize and manage your file systems. Each key must be unique
    #   for the resource.
    #
    # @option params [Boolean] :accept_bucket_warning
    #   Set to true to acknowledge and accept any warnings about the bucket
    #   configuration. If not specified, the operation may fail if there are
    #   bucket configuration warnings.
    #
    # @return [Types::CreateFileSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFileSystemResponse#creation_time #creation_time} => Time
    #   * {Types::CreateFileSystemResponse#file_system_arn #file_system_arn} => String
    #   * {Types::CreateFileSystemResponse#file_system_id #file_system_id} => String
    #   * {Types::CreateFileSystemResponse#bucket #bucket} => String
    #   * {Types::CreateFileSystemResponse#prefix #prefix} => String
    #   * {Types::CreateFileSystemResponse#client_token #client_token} => String
    #   * {Types::CreateFileSystemResponse#kms_key_id #kms_key_id} => String
    #   * {Types::CreateFileSystemResponse#status #status} => String
    #   * {Types::CreateFileSystemResponse#status_message #status_message} => String
    #   * {Types::CreateFileSystemResponse#role_arn #role_arn} => String
    #   * {Types::CreateFileSystemResponse#owner_id #owner_id} => String
    #   * {Types::CreateFileSystemResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::CreateFileSystemResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_file_system({
    #     bucket: "BucketArn", # required
    #     prefix: "CreateFileSystemRequestPrefixString",
    #     client_token: "CreationToken",
    #     kms_key_id: "KmsKeyId",
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     accept_bucket_warning: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.file_system_arn #=> String
    #   resp.file_system_id #=> String
    #   resp.bucket #=> String
    #   resp.prefix #=> String
    #   resp.client_token #=> String
    #   resp.kms_key_id #=> String
    #   resp.status #=> String, one of "available", "creating", "deleting", "deleted", "error", "updating"
    #   resp.status_message #=> String
    #   resp.role_arn #=> String
    #   resp.owner_id #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/CreateFileSystem AWS API Documentation
    #
    # @overload create_file_system(params = {})
    # @param [Hash] params ({})
    def create_file_system(params = {}, options = {})
      req = build_request(:create_file_system, params)
      req.send_request(options)
    end

    # Creates a mount target resource as an endpoint for mounting the S3
    # File System from compute resources in a specific Availability Zone and
    # VPC. Mount targets provide network access to the file system.
    #
    # @option params [required, String] :file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to create
    #   the mount target for.
    #
    # @option params [required, String] :subnet_id
    #   The ID of the subnet where the mount target will be created. The
    #   subnet must be in the same Amazon Web Services Region as the file
    #   system. For file systems with regional availability, you can create
    #   mount targets in any subnet within the Region. The subnet determines
    #   the Availability Zone where the mount target will be located.
    #
    # @option params [String] :ipv4_address
    #   A specific IPv4 address to assign to the mount target. If not
    #   specified and the IP address type supports IPv4, an address is
    #   automatically assigned from the subnet's available IPv4 address
    #   range. The address must be within the subnet's CIDR block and not
    #   already in use.
    #
    # @option params [String] :ipv6_address
    #   A specific IPv6 address to assign to the mount target. If not
    #   specified and the IP address type supports IPv6, an address is
    #   automatically assigned from the subnet's available IPv6 address
    #   range. The address must be within the subnet's IPv6 CIDR block and
    #   not already in use.
    #
    # @option params [String] :ip_address_type
    #   The IP address type for the mount target. If not specified,
    #   `IPV4_ONLY` is used. The IP address type must match the IP
    #   configuration of the specified subnet.
    #
    # @option params [Array<String>] :security_groups
    #   An array of VPC security group IDs to associate with the mount
    #   target's network interface. These security groups control network
    #   access to the mount target. If not specified, the default security
    #   group for the subnet's VPC is used. All security groups must belong
    #   to the same VPC as the subnet.
    #
    # @return [Types::CreateMountTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMountTargetResponse#availability_zone_id #availability_zone_id} => String
    #   * {Types::CreateMountTargetResponse#owner_id #owner_id} => String
    #   * {Types::CreateMountTargetResponse#mount_target_id #mount_target_id} => String
    #   * {Types::CreateMountTargetResponse#file_system_id #file_system_id} => String
    #   * {Types::CreateMountTargetResponse#subnet_id #subnet_id} => String
    #   * {Types::CreateMountTargetResponse#ipv4_address #ipv4_address} => String
    #   * {Types::CreateMountTargetResponse#ipv6_address #ipv6_address} => String
    #   * {Types::CreateMountTargetResponse#network_interface_id #network_interface_id} => String
    #   * {Types::CreateMountTargetResponse#vpc_id #vpc_id} => String
    #   * {Types::CreateMountTargetResponse#security_groups #security_groups} => Array&lt;String&gt;
    #   * {Types::CreateMountTargetResponse#status #status} => String
    #   * {Types::CreateMountTargetResponse#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_mount_target({
    #     file_system_id: "FileSystemId", # required
    #     subnet_id: "SubnetId", # required
    #     ipv4_address: "Ipv4Address",
    #     ipv6_address: "Ipv6Address",
    #     ip_address_type: "IPV4_ONLY", # accepts IPV4_ONLY, IPV6_ONLY, DUAL_STACK
    #     security_groups: ["SecurityGroup"],
    #   })
    #
    # @example Response structure
    #
    #   resp.availability_zone_id #=> String
    #   resp.owner_id #=> String
    #   resp.mount_target_id #=> String
    #   resp.file_system_id #=> String
    #   resp.subnet_id #=> String
    #   resp.ipv4_address #=> String
    #   resp.ipv6_address #=> String
    #   resp.network_interface_id #=> String
    #   resp.vpc_id #=> String
    #   resp.security_groups #=> Array
    #   resp.security_groups[0] #=> String
    #   resp.status #=> String, one of "available", "creating", "deleting", "deleted", "error", "updating"
    #   resp.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/CreateMountTarget AWS API Documentation
    #
    # @overload create_mount_target(params = {})
    # @param [Hash] params ({})
    def create_mount_target(params = {}, options = {})
      req = build_request(:create_mount_target, params)
      req.send_request(options)
    end

    # Deletes an S3 File System Access Point. This operation is
    # irreversible.
    #
    # @option params [required, String] :access_point_id
    #   The ID or Amazon Resource Name (ARN) of the access point to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_point({
    #     access_point_id: "AccessPointId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/DeleteAccessPoint AWS API Documentation
    #
    # @overload delete_access_point(params = {})
    # @param [Hash] params ({})
    def delete_access_point(params = {}, options = {})
      req = build_request(:delete_access_point, params)
      req.send_request(options)
    end

    # Deletes an S3 File System. You can optionally force deletion of a file
    # system that has pending export data.
    #
    # @option params [required, String] :file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to delete.
    #
    # @option params [Boolean] :force_delete
    #   If true, allows deletion of a file system that contains data pending
    #   export to S3. If false (the default), the deletion will fail if there
    #   is data that has not yet been exported to the S3 bucket. Use this
    #   parameter with caution as it may result in data loss.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_system({
    #     file_system_id: "FileSystemId", # required
    #     force_delete: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/DeleteFileSystem AWS API Documentation
    #
    # @overload delete_file_system(params = {})
    # @param [Hash] params ({})
    def delete_file_system(params = {}, options = {})
      req = build_request(:delete_file_system, params)
      req.send_request(options)
    end

    # Deletes the IAM resource policy of an S3 File System.
    #
    # @option params [required, String] :file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System whose
    #   resource policy to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_system_policy({
    #     file_system_id: "FileSystemId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/DeleteFileSystemPolicy AWS API Documentation
    #
    # @overload delete_file_system_policy(params = {})
    # @param [Hash] params ({})
    def delete_file_system_policy(params = {}, options = {})
      req = build_request(:delete_file_system_policy, params)
      req.send_request(options)
    end

    # Deletes the specified mount target. This operation is irreversible.
    #
    # @option params [required, String] :mount_target_id
    #   The ID of the mount target to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mount_target({
    #     mount_target_id: "MountTargetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/DeleteMountTarget AWS API Documentation
    #
    # @overload delete_mount_target(params = {})
    # @param [Hash] params ({})
    def delete_mount_target(params = {}, options = {})
      req = build_request(:delete_mount_target, params)
      req.send_request(options)
    end

    # Returns resource information for an S3 File System Access Point.
    #
    # @option params [required, String] :access_point_id
    #   The ID or Amazon Resource Name (ARN) of the access point to retrieve
    #   information for.
    #
    # @return [Types::GetAccessPointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessPointResponse#access_point_arn #access_point_arn} => String
    #   * {Types::GetAccessPointResponse#access_point_id #access_point_id} => String
    #   * {Types::GetAccessPointResponse#client_token #client_token} => String
    #   * {Types::GetAccessPointResponse#file_system_id #file_system_id} => String
    #   * {Types::GetAccessPointResponse#status #status} => String
    #   * {Types::GetAccessPointResponse#owner_id #owner_id} => String
    #   * {Types::GetAccessPointResponse#posix_user #posix_user} => Types::PosixUser
    #   * {Types::GetAccessPointResponse#root_directory #root_directory} => Types::RootDirectory
    #   * {Types::GetAccessPointResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::GetAccessPointResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point({
    #     access_point_id: "AccessPointId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_point_arn #=> String
    #   resp.access_point_id #=> String
    #   resp.client_token #=> String
    #   resp.file_system_id #=> String
    #   resp.status #=> String, one of "available", "creating", "deleting", "deleted", "error", "updating"
    #   resp.owner_id #=> String
    #   resp.posix_user.uid #=> Integer
    #   resp.posix_user.gid #=> Integer
    #   resp.posix_user.secondary_gids #=> Array
    #   resp.posix_user.secondary_gids[0] #=> Integer
    #   resp.root_directory.path #=> String
    #   resp.root_directory.creation_permissions.owner_uid #=> Integer
    #   resp.root_directory.creation_permissions.owner_gid #=> Integer
    #   resp.root_directory.creation_permissions.permissions #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetAccessPoint AWS API Documentation
    #
    # @overload get_access_point(params = {})
    # @param [Hash] params ({})
    def get_access_point(params = {}, options = {})
      req = build_request(:get_access_point, params)
      req.send_request(options)
    end

    # Returns resource information for the specified S3 File System
    # including status, configuration, and metadata.
    #
    # @option params [required, String] :file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to retrieve
    #   information for.
    #
    # @return [Types::GetFileSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFileSystemResponse#creation_time #creation_time} => Time
    #   * {Types::GetFileSystemResponse#file_system_arn #file_system_arn} => String
    #   * {Types::GetFileSystemResponse#file_system_id #file_system_id} => String
    #   * {Types::GetFileSystemResponse#bucket #bucket} => String
    #   * {Types::GetFileSystemResponse#prefix #prefix} => String
    #   * {Types::GetFileSystemResponse#client_token #client_token} => String
    #   * {Types::GetFileSystemResponse#kms_key_id #kms_key_id} => String
    #   * {Types::GetFileSystemResponse#status #status} => String
    #   * {Types::GetFileSystemResponse#status_message #status_message} => String
    #   * {Types::GetFileSystemResponse#role_arn #role_arn} => String
    #   * {Types::GetFileSystemResponse#owner_id #owner_id} => String
    #   * {Types::GetFileSystemResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::GetFileSystemResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_file_system({
    #     file_system_id: "FileSystemId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.file_system_arn #=> String
    #   resp.file_system_id #=> String
    #   resp.bucket #=> String
    #   resp.prefix #=> String
    #   resp.client_token #=> String
    #   resp.kms_key_id #=> String
    #   resp.status #=> String, one of "available", "creating", "deleting", "deleted", "error", "updating"
    #   resp.status_message #=> String
    #   resp.role_arn #=> String
    #   resp.owner_id #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetFileSystem AWS API Documentation
    #
    # @overload get_file_system(params = {})
    # @param [Hash] params ({})
    def get_file_system(params = {}, options = {})
      req = build_request(:get_file_system, params)
      req.send_request(options)
    end

    # Returns the IAM resource policy of an S3 File System.
    #
    # @option params [required, String] :file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System whose
    #   resource policy to retrieve.
    #
    # @return [Types::GetFileSystemPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFileSystemPolicyResponse#file_system_id #file_system_id} => String
    #   * {Types::GetFileSystemPolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_file_system_policy({
    #     file_system_id: "FileSystemId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.file_system_id #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetFileSystemPolicy AWS API Documentation
    #
    # @overload get_file_system_policy(params = {})
    # @param [Hash] params ({})
    def get_file_system_policy(params = {}, options = {})
      req = build_request(:get_file_system_policy, params)
      req.send_request(options)
    end

    # Returns detailed resource information for the specified mount target
    # including network configuration.
    #
    # @option params [required, String] :mount_target_id
    #   The ID of the mount target to retrieve information for.
    #
    # @return [Types::GetMountTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMountTargetResponse#availability_zone_id #availability_zone_id} => String
    #   * {Types::GetMountTargetResponse#owner_id #owner_id} => String
    #   * {Types::GetMountTargetResponse#mount_target_id #mount_target_id} => String
    #   * {Types::GetMountTargetResponse#file_system_id #file_system_id} => String
    #   * {Types::GetMountTargetResponse#subnet_id #subnet_id} => String
    #   * {Types::GetMountTargetResponse#ipv4_address #ipv4_address} => String
    #   * {Types::GetMountTargetResponse#ipv6_address #ipv6_address} => String
    #   * {Types::GetMountTargetResponse#network_interface_id #network_interface_id} => String
    #   * {Types::GetMountTargetResponse#vpc_id #vpc_id} => String
    #   * {Types::GetMountTargetResponse#security_groups #security_groups} => Array&lt;String&gt;
    #   * {Types::GetMountTargetResponse#status #status} => String
    #   * {Types::GetMountTargetResponse#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_mount_target({
    #     mount_target_id: "MountTargetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.availability_zone_id #=> String
    #   resp.owner_id #=> String
    #   resp.mount_target_id #=> String
    #   resp.file_system_id #=> String
    #   resp.subnet_id #=> String
    #   resp.ipv4_address #=> String
    #   resp.ipv6_address #=> String
    #   resp.network_interface_id #=> String
    #   resp.vpc_id #=> String
    #   resp.security_groups #=> Array
    #   resp.security_groups[0] #=> String
    #   resp.status #=> String, one of "available", "creating", "deleting", "deleted", "error", "updating"
    #   resp.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetMountTarget AWS API Documentation
    #
    # @overload get_mount_target(params = {})
    # @param [Hash] params ({})
    def get_mount_target(params = {}, options = {})
      req = build_request(:get_mount_target, params)
      req.send_request(options)
    end

    # Returns the synchronization configuration for the specified S3 File
    # System, including import data rules and expiration data rules.
    #
    # @option params [required, String] :file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to retrieve
    #   the synchronization configuration for.
    #
    # @return [Types::GetSynchronizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSynchronizationConfigurationResponse#latest_version_number #latest_version_number} => Integer
    #   * {Types::GetSynchronizationConfigurationResponse#import_data_rules #import_data_rules} => Array&lt;Types::ImportDataRule&gt;
    #   * {Types::GetSynchronizationConfigurationResponse#expiration_data_rules #expiration_data_rules} => Array&lt;Types::ExpirationDataRule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_synchronization_configuration({
    #     file_system_id: "FileSystemId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.latest_version_number #=> Integer
    #   resp.import_data_rules #=> Array
    #   resp.import_data_rules[0].prefix #=> String
    #   resp.import_data_rules[0].trigger #=> String, one of "ON_DIRECTORY_FIRST_ACCESS", "ON_FILE_ACCESS"
    #   resp.import_data_rules[0].size_less_than #=> Integer
    #   resp.expiration_data_rules #=> Array
    #   resp.expiration_data_rules[0].days_after_last_access #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/GetSynchronizationConfiguration AWS API Documentation
    #
    # @overload get_synchronization_configuration(params = {})
    # @param [Hash] params ({})
    def get_synchronization_configuration(params = {}, options = {})
      req = build_request(:get_synchronization_configuration, params)
      req.send_request(options)
    end

    # Returns resource information for all S3 File System Access Points
    # associated with the specified S3 File System.
    #
    # @option params [required, String] :file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to list
    #   access points for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of access points to return in a single response.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous call to continue listing
    #   access points.
    #
    # @return [Types::ListAccessPointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessPointsResponse#next_token #next_token} => String
    #   * {Types::ListAccessPointsResponse#access_points #access_points} => Array&lt;Types::ListAccessPointsDescription&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_points({
    #     file_system_id: "FileSystemId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.access_points #=> Array
    #   resp.access_points[0].access_point_arn #=> String
    #   resp.access_points[0].access_point_id #=> String
    #   resp.access_points[0].file_system_id #=> String
    #   resp.access_points[0].status #=> String, one of "available", "creating", "deleting", "deleted", "error", "updating"
    #   resp.access_points[0].owner_id #=> String
    #   resp.access_points[0].posix_user.uid #=> Integer
    #   resp.access_points[0].posix_user.gid #=> Integer
    #   resp.access_points[0].posix_user.secondary_gids #=> Array
    #   resp.access_points[0].posix_user.secondary_gids[0] #=> Integer
    #   resp.access_points[0].root_directory.path #=> String
    #   resp.access_points[0].root_directory.creation_permissions.owner_uid #=> Integer
    #   resp.access_points[0].root_directory.creation_permissions.owner_gid #=> Integer
    #   resp.access_points[0].root_directory.creation_permissions.permissions #=> String
    #   resp.access_points[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListAccessPoints AWS API Documentation
    #
    # @overload list_access_points(params = {})
    # @param [Hash] params ({})
    def list_access_points(params = {}, options = {})
      req = build_request(:list_access_points, params)
      req.send_request(options)
    end

    # Returns a list of all S3 File Systems owned by the account with
    # optional filtering by bucket.
    #
    # @option params [String] :bucket
    #   Optional filter to list only file systems associated with the
    #   specified S3 bucket Amazon Resource Name (ARN). If provided, only file
    #   systems that provide access to this bucket will be returned in the
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of file systems to return in a single response. If
    #   not specified, up to 100 file systems are returned.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous call to continue listing
    #   file systems.
    #
    # @return [Types::ListFileSystemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFileSystemsResponse#next_token #next_token} => String
    #   * {Types::ListFileSystemsResponse#file_systems #file_systems} => Array&lt;Types::ListFileSystemsDescription&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_file_systems({
    #     bucket: "BucketArn",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.file_systems #=> Array
    #   resp.file_systems[0].creation_time #=> Time
    #   resp.file_systems[0].file_system_arn #=> String
    #   resp.file_systems[0].file_system_id #=> String
    #   resp.file_systems[0].name #=> String
    #   resp.file_systems[0].bucket #=> String
    #   resp.file_systems[0].status #=> String, one of "available", "creating", "deleting", "deleted", "error", "updating"
    #   resp.file_systems[0].status_message #=> String
    #   resp.file_systems[0].role_arn #=> String
    #   resp.file_systems[0].owner_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListFileSystems AWS API Documentation
    #
    # @overload list_file_systems(params = {})
    # @param [Hash] params ({})
    def list_file_systems(params = {}, options = {})
      req = build_request(:list_file_systems, params)
      req.send_request(options)
    end

    # Returns resource information for all mount targets with optional
    # filtering by file system, access point, and VPC.
    #
    # @option params [String] :file_system_id
    #   Optional filter to list only mount targets associated with the
    #   specified S3 File System ID or Amazon Resource Name (ARN). If
    #   provided, only mount targets for this file system will be returned in
    #   the response.
    #
    # @option params [String] :access_point_id
    #   Optional filter to list only mount targets associated with the
    #   specified access point ID or Amazon Resource Name (ARN).
    #
    # @option params [Integer] :max_results
    #   The maximum number of mount targets to return in a single response.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous call to continue listing
    #   mount targets.
    #
    # @return [Types::ListMountTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMountTargetsResponse#next_token #next_token} => String
    #   * {Types::ListMountTargetsResponse#mount_targets #mount_targets} => Array&lt;Types::ListMountTargetsDescription&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mount_targets({
    #     file_system_id: "FileSystemId",
    #     access_point_id: "AccessPointId",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.mount_targets #=> Array
    #   resp.mount_targets[0].availability_zone_id #=> String
    #   resp.mount_targets[0].file_system_id #=> String
    #   resp.mount_targets[0].ipv4_address #=> String
    #   resp.mount_targets[0].ipv6_address #=> String
    #   resp.mount_targets[0].status #=> String, one of "available", "creating", "deleting", "deleted", "error", "updating"
    #   resp.mount_targets[0].status_message #=> String
    #   resp.mount_targets[0].mount_target_id #=> String
    #   resp.mount_targets[0].network_interface_id #=> String
    #   resp.mount_targets[0].owner_id #=> String
    #   resp.mount_targets[0].subnet_id #=> String
    #   resp.mount_targets[0].vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListMountTargets AWS API Documentation
    #
    # @overload list_mount_targets(params = {})
    # @param [Hash] params ({})
    def list_mount_targets(params = {}, options = {})
      req = build_request(:list_mount_targets, params)
      req.send_request(options)
    end

    # Lists all tags for S3 Files resources.
    #
    # @option params [required, String] :resource_id
    #   The ID or Amazon Resource Name (ARN) of the resource to list tags for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tags to return in a single response.
    #
    # @option params [String] :next_token
    #   A pagination token returned from a previous call to continue listing
    #   tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or replaces the IAM resource policy for an S3 File System to
    # control access permissions.
    #
    # @option params [required, String] :file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to apply
    #   the resource policy to.
    #
    # @option params [required, String] :policy
    #   The JSON-formatted resource policy to apply to the file system. The
    #   policy defines the permissions for accessing the file system. The
    #   policy must be a valid JSON document that follows IAM policy syntax.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_file_system_policy({
    #     file_system_id: "FileSystemId", # required
    #     policy: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/PutFileSystemPolicy AWS API Documentation
    #
    # @overload put_file_system_policy(params = {})
    # @param [Hash] params ({})
    def put_file_system_policy(params = {}, options = {})
      req = build_request(:put_file_system_policy, params)
      req.send_request(options)
    end

    # Creates or updates the synchronization configuration for the specified
    # S3 File System, including import data rules and expiration data rules.
    #
    # @option params [required, String] :file_system_id
    #   The ID or Amazon Resource Name (ARN) of the S3 File System to
    #   configure synchronization for.
    #
    # @option params [Integer] :latest_version_number
    #   The version number of the current synchronization configuration. Omit
    #   this value when creating a synchronization configuration for the first
    #   time. For subsequent updates, provide this value for optimistic
    #   concurrency control. If the version number does not match the current
    #   configuration, the request fails with a `ConflictException`.
    #
    # @option params [required, Array<Types::ImportDataRule>] :import_data_rules
    #   An array of import data rules that control how data is imported from
    #   S3 into the file system.
    #
    # @option params [required, Array<Types::ExpirationDataRule>] :expiration_data_rules
    #   An array of expiration data rules that control when cached data
    #   expires from the file system.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_synchronization_configuration({
    #     file_system_id: "FileSystemId", # required
    #     latest_version_number: 1,
    #     import_data_rules: [ # required
    #       {
    #         prefix: "ImportDataRulePrefixString", # required
    #         trigger: "ON_DIRECTORY_FIRST_ACCESS", # required, accepts ON_DIRECTORY_FIRST_ACCESS, ON_FILE_ACCESS
    #         size_less_than: 1, # required
    #       },
    #     ],
    #     expiration_data_rules: [ # required
    #       {
    #         days_after_last_access: 1, # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/PutSynchronizationConfiguration AWS API Documentation
    #
    # @overload put_synchronization_configuration(params = {})
    # @param [Hash] params ({})
    def put_synchronization_configuration(params = {}, options = {})
      req = build_request(:put_synchronization_configuration, params)
      req.send_request(options)
    end

    # Creates tags for S3 Files resources using standard Amazon Web Services
    # tagging APIs.
    #
    # @option params [required, String] :resource_id
    #   The ID or Amazon Resource Name (ARN) of the resource to add tags to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   An array of key-value pairs to add as tags to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_id: "ResourceId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from S3 Files resources.
    #
    # @option params [required, String] :resource_id
    #   The ID or Amazon Resource Name (ARN) of the resource to remove tags
    #   from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   An array of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_id: "ResourceId", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the mount target resource, specifically security group
    # configurations.
    #
    # @option params [required, String] :mount_target_id
    #   The ID of the mount target to update.
    #
    # @option params [required, Array<String>] :security_groups
    #   An array of VPC security group IDs to associate with the mount
    #   target's network interface. This replaces the existing security
    #   groups. All security groups must belong to the same VPC as the mount
    #   target's subnet.
    #
    # @return [Types::UpdateMountTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMountTargetResponse#availability_zone_id #availability_zone_id} => String
    #   * {Types::UpdateMountTargetResponse#owner_id #owner_id} => String
    #   * {Types::UpdateMountTargetResponse#mount_target_id #mount_target_id} => String
    #   * {Types::UpdateMountTargetResponse#file_system_id #file_system_id} => String
    #   * {Types::UpdateMountTargetResponse#subnet_id #subnet_id} => String
    #   * {Types::UpdateMountTargetResponse#ipv4_address #ipv4_address} => String
    #   * {Types::UpdateMountTargetResponse#ipv6_address #ipv6_address} => String
    #   * {Types::UpdateMountTargetResponse#network_interface_id #network_interface_id} => String
    #   * {Types::UpdateMountTargetResponse#vpc_id #vpc_id} => String
    #   * {Types::UpdateMountTargetResponse#security_groups #security_groups} => Array&lt;String&gt;
    #   * {Types::UpdateMountTargetResponse#status #status} => String
    #   * {Types::UpdateMountTargetResponse#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_mount_target({
    #     mount_target_id: "MountTargetId", # required
    #     security_groups: ["SecurityGroup"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.availability_zone_id #=> String
    #   resp.owner_id #=> String
    #   resp.mount_target_id #=> String
    #   resp.file_system_id #=> String
    #   resp.subnet_id #=> String
    #   resp.ipv4_address #=> String
    #   resp.ipv6_address #=> String
    #   resp.network_interface_id #=> String
    #   resp.vpc_id #=> String
    #   resp.security_groups #=> Array
    #   resp.security_groups[0] #=> String
    #   resp.status #=> String, one of "available", "creating", "deleting", "deleted", "error", "updating"
    #   resp.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3files-2025-05-05/UpdateMountTarget AWS API Documentation
    #
    # @overload update_mount_target(params = {})
    # @param [Hash] params ({})
    def update_mount_target(params = {}, options = {})
      req = build_request(:update_mount_target, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::S3Files')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-s3files'
      context[:gem_version] = '1.2.0'
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
