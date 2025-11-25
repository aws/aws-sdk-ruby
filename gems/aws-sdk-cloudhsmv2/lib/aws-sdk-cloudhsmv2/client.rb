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

module Aws::CloudHSMV2
  # An API client for CloudHSMV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudHSMV2::Client.new(
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

    @identifier = :cloudhsmv2

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
    add_plugin(Aws::CloudHSMV2::Plugins::Endpoints)

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
    #   @option options [Aws::CloudHSMV2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CloudHSMV2::EndpointParameters`.
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

    # Copy an CloudHSM cluster backup to a different region.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM backup in a different Amazon Web Services account.
    #
    # @option params [required, String] :destination_region
    #   The AWS region that will contain your copied CloudHSM cluster backup.
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup that will be copied to the destination region.
    #
    # @option params [Array<Types::Tag>] :tag_list
    #   Tags to apply to the destination backup during creation. If you
    #   specify tags, only these tags will be applied to the destination
    #   backup. If you do not specify tags, the service copies tags from the
    #   source backup to the destination backup.
    #
    # @return [Types::CopyBackupToRegionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyBackupToRegionResponse#destination_backup #destination_backup} => Types::DestinationBackup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_backup_to_region({
    #     destination_region: "Region", # required
    #     backup_id: "BackupId", # required
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.destination_backup.create_timestamp #=> Time
    #   resp.destination_backup.source_region #=> String
    #   resp.destination_backup.source_backup #=> String
    #   resp.destination_backup.source_cluster #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/CopyBackupToRegion AWS API Documentation
    #
    # @overload copy_backup_to_region(params = {})
    # @param [Hash] params ({})
    def copy_backup_to_region(params = {}, options = {})
      req = build_request(:copy_backup_to_region, params)
      req.send_request(options)
    end

    # Creates a new CloudHSM cluster.
    #
    # **Cross-account use:** Yes. To perform this operation with an CloudHSM
    # backup in a different AWS account, specify the full backup ARN in the
    # value of the SourceBackupId parameter.
    #
    # @option params [Types::BackupRetentionPolicy] :backup_retention_policy
    #   A policy that defines how the service retains backups.
    #
    # @option params [required, String] :hsm_type
    #   The type of HSM to use in the cluster. The allowed values are
    #   `hsm1.medium` and `hsm2m.medium`.
    #
    # @option params [String] :source_backup_id
    #   The identifier (ID) or the Amazon Resource Name (ARN) of the cluster
    #   backup to restore. Use this value to restore the cluster from a backup
    #   instead of creating a new cluster. To find the backup ID or ARN, use
    #   DescribeBackups. *If using a backup in another account, the full ARN
    #   must be supplied.*
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The identifiers (IDs) of the subnets where you are creating the
    #   cluster. You must specify at least one subnet. If you specify multiple
    #   subnets, they must meet the following criteria:
    #
    #   * All subnets must be in the same virtual private cloud (VPC).
    #
    #   * You can specify only one subnet per Availability Zone.
    #
    # @option params [String] :network_type
    #   The NetworkType to create a cluster with. The allowed values are
    #   `IPV4` and `DUALSTACK`.
    #
    # @option params [Array<Types::Tag>] :tag_list
    #   Tags to apply to the CloudHSM cluster during creation.
    #
    # @option params [String] :mode
    #   The mode to use in the cluster. The allowed values are `FIPS` and
    #   `NON_FIPS`.
    #
    # @return [Types::CreateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     backup_retention_policy: {
    #       type: "DAYS", # accepts DAYS
    #       value: "BackupRetentionValue",
    #     },
    #     hsm_type: "HsmType", # required
    #     source_backup_id: "BackupArn",
    #     subnet_ids: ["SubnetId"], # required
    #     network_type: "IPV4", # accepts IPV4, DUALSTACK
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     mode: "FIPS", # accepts FIPS, NON_FIPS
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.backup_policy #=> String, one of "DEFAULT"
    #   resp.cluster.backup_retention_policy.type #=> String, one of "DAYS"
    #   resp.cluster.backup_retention_policy.value #=> String
    #   resp.cluster.cluster_id #=> String
    #   resp.cluster.create_timestamp #=> Time
    #   resp.cluster.hsms #=> Array
    #   resp.cluster.hsms[0].availability_zone #=> String
    #   resp.cluster.hsms[0].cluster_id #=> String
    #   resp.cluster.hsms[0].subnet_id #=> String
    #   resp.cluster.hsms[0].eni_id #=> String
    #   resp.cluster.hsms[0].eni_ip #=> String
    #   resp.cluster.hsms[0].eni_ip_v6 #=> String
    #   resp.cluster.hsms[0].hsm_id #=> String
    #   resp.cluster.hsms[0].hsm_type #=> String
    #   resp.cluster.hsms[0].state #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"
    #   resp.cluster.hsms[0].state_message #=> String
    #   resp.cluster.hsm_type #=> String
    #   resp.cluster.hsm_type_rollback_expiration #=> Time
    #   resp.cluster.pre_co_password #=> String
    #   resp.cluster.security_group #=> String
    #   resp.cluster.source_backup_id #=> String
    #   resp.cluster.state #=> String, one of "CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "MODIFY_IN_PROGRESS", "ROLLBACK_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"
    #   resp.cluster.state_message #=> String
    #   resp.cluster.subnet_mapping #=> Hash
    #   resp.cluster.subnet_mapping["ExternalAz"] #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.network_type #=> String, one of "IPV4", "DUALSTACK"
    #   resp.cluster.certificates.cluster_csr #=> String
    #   resp.cluster.certificates.hsm_certificate #=> String
    #   resp.cluster.certificates.aws_hardware_certificate #=> String
    #   resp.cluster.certificates.manufacturer_hardware_certificate #=> String
    #   resp.cluster.certificates.cluster_certificate #=> String
    #   resp.cluster.tag_list #=> Array
    #   resp.cluster.tag_list[0].key #=> String
    #   resp.cluster.tag_list[0].value #=> String
    #   resp.cluster.mode #=> String, one of "FIPS", "NON_FIPS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Creates a new hardware security module (HSM) in the specified CloudHSM
    # cluster.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM cluster in a different Amazon Web Service account.
    #
    # @option params [required, String] :cluster_id
    #   The identifier (ID) of the HSM's cluster. To find the cluster ID, use
    #   DescribeClusters.
    #
    # @option params [required, String] :availability_zone
    #   The Availability Zone where you are creating the HSM. To find the
    #   cluster's Availability Zones, use DescribeClusters.
    #
    # @option params [String] :ip_address
    #   The HSM's IP address. If you specify an IP address, use an available
    #   address from the subnet that maps to the Availability Zone where you
    #   are creating the HSM. If you don't specify an IP address, one is
    #   chosen for you from that subnet.
    #
    # @return [Types::CreateHsmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHsmResponse#hsm #hsm} => Types::Hsm
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hsm({
    #     cluster_id: "ClusterId", # required
    #     availability_zone: "ExternalAz", # required
    #     ip_address: "IpAddress",
    #   })
    #
    # @example Response structure
    #
    #   resp.hsm.availability_zone #=> String
    #   resp.hsm.cluster_id #=> String
    #   resp.hsm.subnet_id #=> String
    #   resp.hsm.eni_id #=> String
    #   resp.hsm.eni_ip #=> String
    #   resp.hsm.eni_ip_v6 #=> String
    #   resp.hsm.hsm_id #=> String
    #   resp.hsm.hsm_type #=> String
    #   resp.hsm.state #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"
    #   resp.hsm.state_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/CreateHsm AWS API Documentation
    #
    # @overload create_hsm(params = {})
    # @param [Hash] params ({})
    def create_hsm(params = {}, options = {})
      req = build_request(:create_hsm, params)
      req.send_request(options)
    end

    # Deletes a specified CloudHSM backup. A backup can be restored up to 7
    # days after the DeleteBackup request is made. For more information on
    # restoring a backup, see RestoreBackup.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM backup in a different Amazon Web Services account.
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup to be deleted. To find the ID of a backup, use
    #   the DescribeBackups operation.
    #
    # @return [Types::DeleteBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBackupResponse#backup #backup} => Types::Backup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup({
    #     backup_id: "BackupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup.backup_id #=> String
    #   resp.backup.backup_arn #=> String
    #   resp.backup.backup_state #=> String, one of "CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"
    #   resp.backup.cluster_id #=> String
    #   resp.backup.create_timestamp #=> Time
    #   resp.backup.copy_timestamp #=> Time
    #   resp.backup.never_expires #=> Boolean
    #   resp.backup.source_region #=> String
    #   resp.backup.source_backup #=> String
    #   resp.backup.source_cluster #=> String
    #   resp.backup.delete_timestamp #=> Time
    #   resp.backup.tag_list #=> Array
    #   resp.backup.tag_list[0].key #=> String
    #   resp.backup.tag_list[0].value #=> String
    #   resp.backup.hsm_type #=> String
    #   resp.backup.mode #=> String, one of "FIPS", "NON_FIPS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DeleteBackup AWS API Documentation
    #
    # @overload delete_backup(params = {})
    # @param [Hash] params ({})
    def delete_backup(params = {}, options = {})
      req = build_request(:delete_backup, params)
      req.send_request(options)
    end

    # Deletes the specified CloudHSM cluster. Before you can delete a
    # cluster, you must delete all HSMs in the cluster. To see if the
    # cluster contains any HSMs, use DescribeClusters. To delete an HSM, use
    # DeleteHsm.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM cluster in a different Amazon Web Services account.
    #
    # @option params [required, String] :cluster_id
    #   The identifier (ID) of the cluster that you are deleting. To find the
    #   cluster ID, use DescribeClusters.
    #
    # @return [Types::DeleteClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     cluster_id: "ClusterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.backup_policy #=> String, one of "DEFAULT"
    #   resp.cluster.backup_retention_policy.type #=> String, one of "DAYS"
    #   resp.cluster.backup_retention_policy.value #=> String
    #   resp.cluster.cluster_id #=> String
    #   resp.cluster.create_timestamp #=> Time
    #   resp.cluster.hsms #=> Array
    #   resp.cluster.hsms[0].availability_zone #=> String
    #   resp.cluster.hsms[0].cluster_id #=> String
    #   resp.cluster.hsms[0].subnet_id #=> String
    #   resp.cluster.hsms[0].eni_id #=> String
    #   resp.cluster.hsms[0].eni_ip #=> String
    #   resp.cluster.hsms[0].eni_ip_v6 #=> String
    #   resp.cluster.hsms[0].hsm_id #=> String
    #   resp.cluster.hsms[0].hsm_type #=> String
    #   resp.cluster.hsms[0].state #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"
    #   resp.cluster.hsms[0].state_message #=> String
    #   resp.cluster.hsm_type #=> String
    #   resp.cluster.hsm_type_rollback_expiration #=> Time
    #   resp.cluster.pre_co_password #=> String
    #   resp.cluster.security_group #=> String
    #   resp.cluster.source_backup_id #=> String
    #   resp.cluster.state #=> String, one of "CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "MODIFY_IN_PROGRESS", "ROLLBACK_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"
    #   resp.cluster.state_message #=> String
    #   resp.cluster.subnet_mapping #=> Hash
    #   resp.cluster.subnet_mapping["ExternalAz"] #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.network_type #=> String, one of "IPV4", "DUALSTACK"
    #   resp.cluster.certificates.cluster_csr #=> String
    #   resp.cluster.certificates.hsm_certificate #=> String
    #   resp.cluster.certificates.aws_hardware_certificate #=> String
    #   resp.cluster.certificates.manufacturer_hardware_certificate #=> String
    #   resp.cluster.certificates.cluster_certificate #=> String
    #   resp.cluster.tag_list #=> Array
    #   resp.cluster.tag_list[0].key #=> String
    #   resp.cluster.tag_list[0].value #=> String
    #   resp.cluster.mode #=> String, one of "FIPS", "NON_FIPS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Deletes the specified HSM. To specify an HSM, you can use its
    # identifier (ID), the IP address of the HSM's elastic network
    # interface (ENI), or the ID of the HSM's ENI. You need to specify only
    # one of these values. To find these values, use DescribeClusters.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM hsm in a different Amazon Web Services account.
    #
    # @option params [required, String] :cluster_id
    #   The identifier (ID) of the cluster that contains the HSM that you are
    #   deleting.
    #
    # @option params [String] :hsm_id
    #   The identifier (ID) of the HSM that you are deleting.
    #
    # @option params [String] :eni_id
    #   The identifier (ID) of the elastic network interface (ENI) of the HSM
    #   that you are deleting.
    #
    # @option params [String] :eni_ip
    #   The IP address of the elastic network interface (ENI) of the HSM that
    #   you are deleting.
    #
    # @return [Types::DeleteHsmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteHsmResponse#hsm_id #hsm_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hsm({
    #     cluster_id: "ClusterId", # required
    #     hsm_id: "HsmId",
    #     eni_id: "EniId",
    #     eni_ip: "IpAddress",
    #   })
    #
    # @example Response structure
    #
    #   resp.hsm_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DeleteHsm AWS API Documentation
    #
    # @overload delete_hsm(params = {})
    # @param [Hash] params ({})
    def delete_hsm(params = {}, options = {})
      req = build_request(:delete_hsm, params)
      req.send_request(options)
    end

    # Deletes an CloudHSM resource policy. Deleting a resource policy will
    # result in the resource being unshared and removed from any RAM
    # resource shares. Deleting the resource policy attached to a backup
    # will not impact any clusters created from that backup.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM resource in a different Amazon Web Services account.
    #
    # @option params [String] :resource_arn
    #   Amazon Resource Name (ARN) of the resource from which the policy will
    #   be removed.
    #
    # @return [Types::DeleteResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResourcePolicyResponse#resource_arn #resource_arn} => String
    #   * {Types::DeleteResourcePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "CloudHsmArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Gets information about backups of CloudHSM clusters. Lists either the
    # backups you own or the backups shared with you when the Shared
    # parameter is true.
    #
    # This is a paginated operation, which means that each response might
    # contain only a subset of all the backups. When the response contains
    # only a subset of backups, it includes a `NextToken` value. Use this
    # value in a subsequent `DescribeBackups` request to get more backups.
    # When you receive a response with no `NextToken` (or an empty or null
    # value), that means there are no more backups to get.
    #
    # **Cross-account use:** Yes. Customers can describe backups in other
    # Amazon Web Services accounts that are shared with them.
    #
    # @option params [String] :next_token
    #   The `NextToken` value that you received in the previous response. Use
    #   this value to get more backups.
    #
    # @option params [Integer] :max_results
    #   The maximum number of backups to return in the response. When there
    #   are more backups than the number you specify, the response contains a
    #   `NextToken` value.
    #
    # @option params [Hash<String,Array>] :filters
    #   One or more filters to limit the items returned in the response.
    #
    #   Use the `backupIds` filter to return only the specified backups.
    #   Specify backups by their backup identifier (ID).
    #
    #   Use the `sourceBackupIds` filter to return only the backups created
    #   from a source backup. The `sourceBackupID` of a source backup is
    #   returned by the CopyBackupToRegion operation.
    #
    #   Use the `clusterIds` filter to return only the backups for the
    #   specified clusters. Specify clusters by their cluster identifier (ID).
    #
    #   Use the `states` filter to return only backups that match the
    #   specified state.
    #
    #   Use the `neverExpires` filter to return backups filtered by the value
    #   in the `neverExpires` parameter. `True` returns all backups exempt
    #   from the backup retention policy. `False` returns all backups with a
    #   backup retention policy defined at the cluster.
    #
    # @option params [Boolean] :shared
    #   Describe backups that are shared with you.
    #
    #   <note markdown="1"> By default when using this option, the command returns backups that
    #   have been shared using a standard Resource Access Manager resource
    #   share. In order for a backup that was shared using the
    #   PutResourcePolicy command to be returned, the share must be promoted
    #   to a standard resource share using the RAM
    #   [PromoteResourceShareCreatedFromPolicy][1] API operation. For more
    #   information about sharing backups, see [ Working with shared
    #   backups][2] in the CloudHSM User Guide.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/ram/promote-resource-share-created-from-policy.html
    #   [2]: https://docs.aws.amazon.com/cloudhsm/latest/userguide/sharing.html
    #
    # @option params [Boolean] :sort_ascending
    #   Designates whether or not to sort the return backups by ascending
    #   chronological order of generation.
    #
    # @return [Types::DescribeBackupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBackupsResponse#backups #backups} => Array&lt;Types::Backup&gt;
    #   * {Types::DescribeBackupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: {
    #       "Field" => ["String"],
    #     },
    #     shared: false,
    #     sort_ascending: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.backups #=> Array
    #   resp.backups[0].backup_id #=> String
    #   resp.backups[0].backup_arn #=> String
    #   resp.backups[0].backup_state #=> String, one of "CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"
    #   resp.backups[0].cluster_id #=> String
    #   resp.backups[0].create_timestamp #=> Time
    #   resp.backups[0].copy_timestamp #=> Time
    #   resp.backups[0].never_expires #=> Boolean
    #   resp.backups[0].source_region #=> String
    #   resp.backups[0].source_backup #=> String
    #   resp.backups[0].source_cluster #=> String
    #   resp.backups[0].delete_timestamp #=> Time
    #   resp.backups[0].tag_list #=> Array
    #   resp.backups[0].tag_list[0].key #=> String
    #   resp.backups[0].tag_list[0].value #=> String
    #   resp.backups[0].hsm_type #=> String
    #   resp.backups[0].mode #=> String, one of "FIPS", "NON_FIPS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DescribeBackups AWS API Documentation
    #
    # @overload describe_backups(params = {})
    # @param [Hash] params ({})
    def describe_backups(params = {}, options = {})
      req = build_request(:describe_backups, params)
      req.send_request(options)
    end

    # Gets information about CloudHSM clusters.
    #
    # This is a paginated operation, which means that each response might
    # contain only a subset of all the clusters. When the response contains
    # only a subset of clusters, it includes a `NextToken` value. Use this
    # value in a subsequent `DescribeClusters` request to get more clusters.
    # When you receive a response with no `NextToken` (or an empty or null
    # value), that means there are no more clusters to get.
    #
    # **Cross-account use:** No. You cannot perform this operation on
    # CloudHSM clusters in a different Amazon Web Services account.
    #
    # @option params [Hash<String,Array>] :filters
    #   One or more filters to limit the items returned in the response.
    #
    #   Use the `clusterIds` filter to return only the specified clusters.
    #   Specify clusters by their cluster identifier (ID).
    #
    #   Use the `vpcIds` filter to return only the clusters in the specified
    #   virtual private clouds (VPCs). Specify VPCs by their VPC identifier
    #   (ID).
    #
    #   Use the `states` filter to return only clusters that match the
    #   specified state.
    #
    # @option params [String] :next_token
    #   The `NextToken` value that you received in the previous response. Use
    #   this value to get more clusters.
    #
    # @option params [Integer] :max_results
    #   The maximum number of clusters to return in the response. When there
    #   are more clusters than the number you specify, the response contains a
    #   `NextToken` value.
    #
    # @return [Types::DescribeClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClustersResponse#clusters #clusters} => Array&lt;Types::Cluster&gt;
    #   * {Types::DescribeClustersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_clusters({
    #     filters: {
    #       "Field" => ["String"],
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.clusters #=> Array
    #   resp.clusters[0].backup_policy #=> String, one of "DEFAULT"
    #   resp.clusters[0].backup_retention_policy.type #=> String, one of "DAYS"
    #   resp.clusters[0].backup_retention_policy.value #=> String
    #   resp.clusters[0].cluster_id #=> String
    #   resp.clusters[0].create_timestamp #=> Time
    #   resp.clusters[0].hsms #=> Array
    #   resp.clusters[0].hsms[0].availability_zone #=> String
    #   resp.clusters[0].hsms[0].cluster_id #=> String
    #   resp.clusters[0].hsms[0].subnet_id #=> String
    #   resp.clusters[0].hsms[0].eni_id #=> String
    #   resp.clusters[0].hsms[0].eni_ip #=> String
    #   resp.clusters[0].hsms[0].eni_ip_v6 #=> String
    #   resp.clusters[0].hsms[0].hsm_id #=> String
    #   resp.clusters[0].hsms[0].hsm_type #=> String
    #   resp.clusters[0].hsms[0].state #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"
    #   resp.clusters[0].hsms[0].state_message #=> String
    #   resp.clusters[0].hsm_type #=> String
    #   resp.clusters[0].hsm_type_rollback_expiration #=> Time
    #   resp.clusters[0].pre_co_password #=> String
    #   resp.clusters[0].security_group #=> String
    #   resp.clusters[0].source_backup_id #=> String
    #   resp.clusters[0].state #=> String, one of "CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "MODIFY_IN_PROGRESS", "ROLLBACK_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"
    #   resp.clusters[0].state_message #=> String
    #   resp.clusters[0].subnet_mapping #=> Hash
    #   resp.clusters[0].subnet_mapping["ExternalAz"] #=> String
    #   resp.clusters[0].vpc_id #=> String
    #   resp.clusters[0].network_type #=> String, one of "IPV4", "DUALSTACK"
    #   resp.clusters[0].certificates.cluster_csr #=> String
    #   resp.clusters[0].certificates.hsm_certificate #=> String
    #   resp.clusters[0].certificates.aws_hardware_certificate #=> String
    #   resp.clusters[0].certificates.manufacturer_hardware_certificate #=> String
    #   resp.clusters[0].certificates.cluster_certificate #=> String
    #   resp.clusters[0].tag_list #=> Array
    #   resp.clusters[0].tag_list[0].key #=> String
    #   resp.clusters[0].tag_list[0].value #=> String
    #   resp.clusters[0].mode #=> String, one of "FIPS", "NON_FIPS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/DescribeClusters AWS API Documentation
    #
    # @overload describe_clusters(params = {})
    # @param [Hash] params ({})
    def describe_clusters(params = {}, options = {})
      req = build_request(:describe_clusters, params)
      req.send_request(options)
    end

    # Retrieves the resource policy document attached to a given resource.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM resource in a different Amazon Web Services account.
    #
    # @option params [String] :resource_arn
    #   Amazon Resource Name (ARN) of the resource to which a policy is
    #   attached.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "CloudHsmArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Claims an CloudHSM cluster by submitting the cluster certificate
    # issued by your issuing certificate authority (CA) and the CA's root
    # certificate. Before you can claim a cluster, you must sign the
    # cluster's certificate signing request (CSR) with your issuing CA. To
    # get the cluster's CSR, use DescribeClusters.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM cluster in a different Amazon Web Services account.
    #
    # @option params [required, String] :cluster_id
    #   The identifier (ID) of the cluster that you are claiming. To find the
    #   cluster ID, use DescribeClusters.
    #
    # @option params [required, String] :signed_cert
    #   The cluster certificate issued (signed) by your issuing certificate
    #   authority (CA). The certificate must be in PEM format and can contain
    #   a maximum of 5000 characters.
    #
    # @option params [required, String] :trust_anchor
    #   The issuing certificate of the issuing certificate authority (CA) that
    #   issued (signed) the cluster certificate. You must use a self-signed
    #   certificate. The certificate used to sign the HSM CSR must be directly
    #   available, and thus must be the root certificate. The certificate must
    #   be in PEM format and can contain a maximum of 5000 characters.
    #
    # @return [Types::InitializeClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitializeClusterResponse#state #state} => String
    #   * {Types::InitializeClusterResponse#state_message #state_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initialize_cluster({
    #     cluster_id: "ClusterId", # required
    #     signed_cert: "Cert", # required
    #     trust_anchor: "Cert", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state #=> String, one of "CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "MODIFY_IN_PROGRESS", "ROLLBACK_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"
    #   resp.state_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/InitializeCluster AWS API Documentation
    #
    # @overload initialize_cluster(params = {})
    # @param [Hash] params ({})
    def initialize_cluster(params = {}, options = {})
      req = build_request(:initialize_cluster, params)
      req.send_request(options)
    end

    # Gets a list of tags for the specified CloudHSM cluster.
    #
    # This is a paginated operation, which means that each response might
    # contain only a subset of all the tags. When the response contains only
    # a subset of tags, it includes a `NextToken` value. Use this value in a
    # subsequent `ListTags` request to get more tags. When you receive a
    # response with no `NextToken` (or an empty or null value), that means
    # there are no more tags to get.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM resource in a different Amazon Web Services account.
    #
    # @option params [required, String] :resource_id
    #   The cluster identifier (ID) for the cluster whose tags you are
    #   getting. To find the cluster ID, use DescribeClusters.
    #
    # @option params [String] :next_token
    #   The `NextToken` value that you received in the previous response. Use
    #   this value to get more tags.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tags to return in the response. When there are
    #   more tags than the number you specify, the response contains a
    #   `NextToken` value.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource_id: "ResourceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Modifies attributes for CloudHSM backup.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM backup in a different Amazon Web Services account.
    #
    # @option params [required, String] :backup_id
    #   The identifier (ID) of the backup to modify. To find the ID of a
    #   backup, use the DescribeBackups operation.
    #
    # @option params [required, Boolean] :never_expires
    #   Specifies whether the service should exempt a backup from the
    #   retention policy for the cluster. `True` exempts a backup from the
    #   retention policy. `False` means the service applies the backup
    #   retention policy defined at the cluster.
    #
    # @return [Types::ModifyBackupAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyBackupAttributesResponse#backup #backup} => Types::Backup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_backup_attributes({
    #     backup_id: "BackupId", # required
    #     never_expires: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup.backup_id #=> String
    #   resp.backup.backup_arn #=> String
    #   resp.backup.backup_state #=> String, one of "CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"
    #   resp.backup.cluster_id #=> String
    #   resp.backup.create_timestamp #=> Time
    #   resp.backup.copy_timestamp #=> Time
    #   resp.backup.never_expires #=> Boolean
    #   resp.backup.source_region #=> String
    #   resp.backup.source_backup #=> String
    #   resp.backup.source_cluster #=> String
    #   resp.backup.delete_timestamp #=> Time
    #   resp.backup.tag_list #=> Array
    #   resp.backup.tag_list[0].key #=> String
    #   resp.backup.tag_list[0].value #=> String
    #   resp.backup.hsm_type #=> String
    #   resp.backup.mode #=> String, one of "FIPS", "NON_FIPS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/ModifyBackupAttributes AWS API Documentation
    #
    # @overload modify_backup_attributes(params = {})
    # @param [Hash] params ({})
    def modify_backup_attributes(params = {}, options = {})
      req = build_request(:modify_backup_attributes, params)
      req.send_request(options)
    end

    # Modifies CloudHSM cluster.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM cluster in a different Amazon Web Services account.
    #
    # @option params [String] :hsm_type
    #   The desired HSM type of the cluster.
    #
    # @option params [Types::BackupRetentionPolicy] :backup_retention_policy
    #   A policy that defines how the service retains backups.
    #
    # @option params [required, String] :cluster_id
    #   The identifier (ID) of the cluster that you want to modify. To find
    #   the cluster ID, use DescribeClusters.
    #
    # @return [Types::ModifyClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster({
    #     hsm_type: "HsmType",
    #     backup_retention_policy: {
    #       type: "DAYS", # accepts DAYS
    #       value: "BackupRetentionValue",
    #     },
    #     cluster_id: "ClusterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.backup_policy #=> String, one of "DEFAULT"
    #   resp.cluster.backup_retention_policy.type #=> String, one of "DAYS"
    #   resp.cluster.backup_retention_policy.value #=> String
    #   resp.cluster.cluster_id #=> String
    #   resp.cluster.create_timestamp #=> Time
    #   resp.cluster.hsms #=> Array
    #   resp.cluster.hsms[0].availability_zone #=> String
    #   resp.cluster.hsms[0].cluster_id #=> String
    #   resp.cluster.hsms[0].subnet_id #=> String
    #   resp.cluster.hsms[0].eni_id #=> String
    #   resp.cluster.hsms[0].eni_ip #=> String
    #   resp.cluster.hsms[0].eni_ip_v6 #=> String
    #   resp.cluster.hsms[0].hsm_id #=> String
    #   resp.cluster.hsms[0].hsm_type #=> String
    #   resp.cluster.hsms[0].state #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"
    #   resp.cluster.hsms[0].state_message #=> String
    #   resp.cluster.hsm_type #=> String
    #   resp.cluster.hsm_type_rollback_expiration #=> Time
    #   resp.cluster.pre_co_password #=> String
    #   resp.cluster.security_group #=> String
    #   resp.cluster.source_backup_id #=> String
    #   resp.cluster.state #=> String, one of "CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "MODIFY_IN_PROGRESS", "ROLLBACK_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"
    #   resp.cluster.state_message #=> String
    #   resp.cluster.subnet_mapping #=> Hash
    #   resp.cluster.subnet_mapping["ExternalAz"] #=> String
    #   resp.cluster.vpc_id #=> String
    #   resp.cluster.network_type #=> String, one of "IPV4", "DUALSTACK"
    #   resp.cluster.certificates.cluster_csr #=> String
    #   resp.cluster.certificates.hsm_certificate #=> String
    #   resp.cluster.certificates.aws_hardware_certificate #=> String
    #   resp.cluster.certificates.manufacturer_hardware_certificate #=> String
    #   resp.cluster.certificates.cluster_certificate #=> String
    #   resp.cluster.tag_list #=> Array
    #   resp.cluster.tag_list[0].key #=> String
    #   resp.cluster.tag_list[0].value #=> String
    #   resp.cluster.mode #=> String, one of "FIPS", "NON_FIPS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/ModifyCluster AWS API Documentation
    #
    # @overload modify_cluster(params = {})
    # @param [Hash] params ({})
    def modify_cluster(params = {}, options = {})
      req = build_request(:modify_cluster, params)
      req.send_request(options)
    end

    # Creates or updates an CloudHSM resource policy. A resource policy
    # helps you to define the IAM entity (for example, an Amazon Web
    # Services account) that can manage your CloudHSM resources. The
    # following resources support CloudHSM resource policies:
    #
    # * Backup - The resource policy allows you to describe the backup and
    #   restore a cluster from the backup in another Amazon Web Services
    #   account.
    #
    # ^
    #
    # In order to share a backup, it must be in a 'READY' state and you
    # must own it.
    #
    # While you can share a backup using the CloudHSM PutResourcePolicy
    # operation, we recommend using Resource Access Manager (RAM) instead.
    # Using RAM provides multiple benefits as it creates the policy for you,
    # allows multiple resources to be shared at one time, and increases the
    # discoverability of shared resources. If you use PutResourcePolicy and
    # want consumers to be able to describe the backups you share with them,
    # you must promote the backup to a standard RAM Resource Share using the
    # RAM PromoteResourceShareCreatedFromPolicy API operation. For more
    # information, see [ Working with shared backups][1] in the CloudHSM
    # User Guide
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM resource in a different Amazon Web Services account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudhsm/latest/userguide/sharing.html
    #
    # @option params [String] :resource_arn
    #   Amazon Resource Name (ARN) of the resource to which you want to attach
    #   a policy.
    #
    # @option params [String] :policy
    #   The policy you want to associate with a resource.
    #
    #   For an example policy, see [ Working with shared backups][1] in the
    #   CloudHSM User Guide
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudhsm/latest/userguide/sharing.html
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#resource_arn #resource_arn} => String
    #   * {Types::PutResourcePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     resource_arn: "CloudHsmArn",
    #     policy: "ResourcePolicy",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Restores a specified CloudHSM backup that is in the `PENDING_DELETION`
    # state. For more information on deleting a backup, see DeleteBackup.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM backup in a different Amazon Web Services account.
    #
    # @option params [required, String] :backup_id
    #   The ID of the backup to be restored. To find the ID of a backup, use
    #   the DescribeBackups operation.
    #
    # @return [Types::RestoreBackupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreBackupResponse#backup #backup} => Types::Backup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_backup({
    #     backup_id: "BackupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup.backup_id #=> String
    #   resp.backup.backup_arn #=> String
    #   resp.backup.backup_state #=> String, one of "CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"
    #   resp.backup.cluster_id #=> String
    #   resp.backup.create_timestamp #=> Time
    #   resp.backup.copy_timestamp #=> Time
    #   resp.backup.never_expires #=> Boolean
    #   resp.backup.source_region #=> String
    #   resp.backup.source_backup #=> String
    #   resp.backup.source_cluster #=> String
    #   resp.backup.delete_timestamp #=> Time
    #   resp.backup.tag_list #=> Array
    #   resp.backup.tag_list[0].key #=> String
    #   resp.backup.tag_list[0].value #=> String
    #   resp.backup.hsm_type #=> String
    #   resp.backup.mode #=> String, one of "FIPS", "NON_FIPS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/RestoreBackup AWS API Documentation
    #
    # @overload restore_backup(params = {})
    # @param [Hash] params ({})
    def restore_backup(params = {}, options = {})
      req = build_request(:restore_backup, params)
      req.send_request(options)
    end

    # Adds or overwrites one or more tags for the specified CloudHSM
    # cluster.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM resource in a different Amazon Web Services account.
    #
    # @option params [required, String] :resource_id
    #   The cluster identifier (ID) for the cluster that you are tagging. To
    #   find the cluster ID, use DescribeClusters.
    #
    # @option params [required, Array<Types::Tag>] :tag_list
    #   A list of one or more tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_id: "ResourceId", # required
    #     tag_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tag or tags from the specified CloudHSM cluster.
    #
    # **Cross-account use:** No. You cannot perform this operation on an
    # CloudHSM resource in a different Amazon Web Services account.
    #
    # @option params [required, String] :resource_id
    #   The cluster identifier (ID) for the cluster whose tags you are
    #   removing. To find the cluster ID, use DescribeClusters.
    #
    # @option params [required, Array<String>] :tag_key_list
    #   A list of one or more tag keys for the tags that you are removing.
    #   Specify only the tag keys, not the tag values.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_id: "ResourceId", # required
    #     tag_key_list: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2-2017-04-28/UntagResource AWS API Documentation
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
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CloudHSMV2')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-cloudhsmv2'
      context[:gem_version] = '1.85.0'
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
