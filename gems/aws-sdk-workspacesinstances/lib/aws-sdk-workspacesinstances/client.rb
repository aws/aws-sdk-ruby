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

module Aws::WorkspacesInstances
  # An API client for WorkspacesInstances.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::WorkspacesInstances::Client.new(
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

    @identifier = :workspacesinstances

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
    add_plugin(Aws::WorkspacesInstances::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be an instance of any one of the
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
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting `ENV['AWS_EC2_METADATA_DISABLED']`
    #       to `true`.
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
    #     Your Bearer token used for authentication. This can be an instance of any one of the
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
    #   @option options [Aws::WorkspacesInstances::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::WorkspacesInstances::EndpointParameters`.
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

    # Attaches a volume to a WorkSpace Instance.
    #
    # @option params [required, String] :workspace_instance_id
    #   WorkSpace Instance to attach volume to.
    #
    # @option params [required, String] :volume_id
    #   Volume to be attached.
    #
    # @option params [required, String] :device
    #   Device path for volume attachment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_volume({
    #     workspace_instance_id: "WorkspaceInstanceId", # required
    #     volume_id: "VolumeId", # required
    #     device: "DeviceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/AssociateVolume AWS API Documentation
    #
    # @overload associate_volume(params = {})
    # @param [Hash] params ({})
    def associate_volume(params = {}, options = {})
      req = build_request(:associate_volume, params)
      req.send_request(options)
    end

    # Creates a new volume for WorkSpace Instances.
    #
    # @option params [required, String] :availability_zone
    #   Availability zone for the volume.
    #
    # @option params [String] :client_token
    #   Unique token to prevent duplicate volume creation.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :encrypted
    #   Indicates if the volume should be encrypted.
    #
    # @option params [Integer] :iops
    #   Input/output operations per second for the volume.
    #
    # @option params [String] :kms_key_id
    #   KMS key for volume encryption.
    #
    # @option params [Integer] :size_in_gb
    #   Volume size in gigabytes.
    #
    # @option params [String] :snapshot_id
    #   Source snapshot for volume creation.
    #
    # @option params [Array<Types::TagSpecification>] :tag_specifications
    #   Metadata tags for the volume.
    #
    # @option params [Integer] :throughput
    #   Volume throughput performance.
    #
    # @option params [String] :volume_type
    #   Type of EBS volume.
    #
    # @return [Types::CreateVolumeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVolumeResponse#volume_id #volume_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_volume({
    #     availability_zone: "String64", # required
    #     client_token: "ClientToken",
    #     encrypted: false,
    #     iops: 1,
    #     kms_key_id: "KmsKeyId",
    #     size_in_gb: 1,
    #     snapshot_id: "SnapshotId",
    #     tag_specifications: [
    #       {
    #         resource_type: "instance", # accepts instance, volume, spot-instances-request, network-interface
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       },
    #     ],
    #     throughput: 1,
    #     volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1, gp3
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/CreateVolume AWS API Documentation
    #
    # @overload create_volume(params = {})
    # @param [Hash] params ({})
    def create_volume(params = {}, options = {})
      req = build_request(:create_volume, params)
      req.send_request(options)
    end

    # Launches a new WorkSpace Instance with specified configuration
    # parameters, enabling programmatic workspace deployment.
    #
    # @option params [String] :client_token
    #   Unique token to ensure idempotent instance creation, preventing
    #   duplicate workspace launches.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Optional metadata tags for categorizing and managing WorkSpaces
    #   Instances.
    #
    # @option params [required, Types::ManagedInstanceRequest] :managed_instance
    #   Comprehensive configuration settings for the WorkSpaces Instance,
    #   including network, compute, and storage parameters.
    #
    # @return [Types::CreateWorkspaceInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkspaceInstanceResponse#workspace_instance_id #workspace_instance_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspace_instance({
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     managed_instance: { # required
    #       block_device_mappings: [
    #         {
    #           device_name: "DeviceName",
    #           ebs: {
    #             volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1, gp3
    #             encrypted: false,
    #             kms_key_id: "KmsKeyId",
    #             iops: 1,
    #             throughput: 1,
    #             volume_size: 1,
    #           },
    #           no_device: "DeviceName",
    #           virtual_name: "VirtualName",
    #         },
    #       ],
    #       capacity_reservation_specification: {
    #         capacity_reservation_preference: "capacity-reservations-only", # accepts capacity-reservations-only, open, none
    #         capacity_reservation_target: {
    #           capacity_reservation_id: "String128",
    #           capacity_reservation_resource_group_arn: "ARN",
    #         },
    #       },
    #       cpu_options: {
    #         amd_sev_snp: "enabled", # accepts enabled, disabled
    #         core_count: 1,
    #         threads_per_core: 1,
    #       },
    #       credit_specification: {
    #         cpu_credits: "standard", # accepts standard, unlimited
    #       },
    #       disable_api_stop: false,
    #       ebs_optimized: false,
    #       enable_primary_ipv_6: false,
    #       enclave_options: {
    #         enabled: false,
    #       },
    #       hibernation_options: {
    #         configured: false,
    #       },
    #       iam_instance_profile: {
    #         arn: "ARN",
    #         name: "String64",
    #       },
    #       image_id: "ImageId",
    #       instance_market_options: {
    #         market_type: "spot", # accepts spot, capacity-block
    #         spot_options: {
    #           block_duration_minutes: 1,
    #           instance_interruption_behavior: "hibernate", # accepts hibernate, stop
    #           max_price: "String64",
    #           spot_instance_type: "one-time", # accepts one-time, persistent
    #           valid_until_utc: Time.now,
    #         },
    #       },
    #       instance_type: "InstanceType",
    #       ipv_6_addresses: [
    #         {
    #           ipv_6_address: "Ipv6Address",
    #           is_primary_ipv_6: false,
    #         },
    #       ],
    #       ipv_6_address_count: 1,
    #       kernel_id: "String128",
    #       key_name: "String64",
    #       license_specifications: [
    #         {
    #           license_configuration_arn: "ARN",
    #         },
    #       ],
    #       maintenance_options: {
    #         auto_recovery: "disabled", # accepts disabled, default
    #       },
    #       metadata_options: {
    #         http_endpoint: "enabled", # accepts enabled, disabled
    #         http_protocol_ipv_6: "enabled", # accepts enabled, disabled
    #         http_put_response_hop_limit: 1,
    #         http_tokens: "optional", # accepts optional, required
    #         instance_metadata_tags: "enabled", # accepts enabled, disabled
    #       },
    #       monitoring: {
    #         enabled: false,
    #       },
    #       network_interfaces: [
    #         {
    #           associate_carrier_ip_address: false,
    #           associate_public_ip_address: false,
    #           connection_tracking_specification: {
    #             tcp_established_timeout: 1,
    #             udp_stream_timeout: 1,
    #             udp_timeout: 1,
    #           },
    #           description: "Description",
    #           device_index: 1,
    #           ena_srd_specification: {
    #             ena_srd_enabled: false,
    #             ena_srd_udp_specification: {
    #               ena_srd_udp_enabled: false,
    #             },
    #           },
    #           interface_type: "interface", # accepts interface, efa, efa-only
    #           ipv_4_prefixes: [
    #             {
    #               ipv_4_prefix: "Ipv4Prefix",
    #             },
    #           ],
    #           ipv_4_prefix_count: 1,
    #           ipv_6_address_count: 1,
    #           ipv_6_addresses: [
    #             {
    #               ipv_6_address: "Ipv6Address",
    #               is_primary_ipv_6: false,
    #             },
    #           ],
    #           ipv_6_prefixes: [
    #             {
    #               ipv_6_prefix: "Ipv6Prefix",
    #             },
    #           ],
    #           ipv_6_prefix_count: 1,
    #           network_card_index: 1,
    #           network_interface_id: "NetworkInterfaceId",
    #           primary_ipv_6: false,
    #           private_ip_address: "Ipv4Address",
    #           private_ip_addresses: [
    #             {
    #               primary: false,
    #               private_ip_address: "Ipv4Address",
    #             },
    #           ],
    #           secondary_private_ip_address_count: 1,
    #           groups: ["SecurityGroupId"],
    #           subnet_id: "SubnetId",
    #         },
    #       ],
    #       network_performance_options: {
    #         bandwidth_weighting: "default", # accepts default, vpc-1, ebs-1
    #       },
    #       placement: {
    #         affinity: "String64",
    #         availability_zone: "AvailabilityZone",
    #         group_id: "PlacementGroupId",
    #         group_name: "String64",
    #         host_id: "HostId",
    #         host_resource_group_arn: "ARN",
    #         partition_number: 1,
    #         tenancy: "default", # accepts default, dedicated, host
    #       },
    #       private_dns_name_options: {
    #         hostname_type: "ip-name", # accepts ip-name, resource-name
    #         enable_resource_name_dns_a_record: false,
    #         enable_resource_name_dns_aaaa_record: false,
    #       },
    #       private_ip_address: "Ipv4Address",
    #       ramdisk_id: "String128",
    #       security_group_ids: ["SecurityGroupId"],
    #       security_groups: ["SecurityGroupName"],
    #       subnet_id: "SubnetId",
    #       tag_specifications: [
    #         {
    #           resource_type: "instance", # accepts instance, volume, spot-instances-request, network-interface
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue",
    #             },
    #           ],
    #         },
    #       ],
    #       user_data: "UserData",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.workspace_instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/CreateWorkspaceInstance AWS API Documentation
    #
    # @overload create_workspace_instance(params = {})
    # @param [Hash] params ({})
    def create_workspace_instance(params = {}, options = {})
      req = build_request(:create_workspace_instance, params)
      req.send_request(options)
    end

    # Deletes a specified volume.
    #
    # @option params [required, String] :volume_id
    #   Identifier of the volume to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_volume({
    #     volume_id: "VolumeId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/DeleteVolume AWS API Documentation
    #
    # @overload delete_volume(params = {})
    # @param [Hash] params ({})
    def delete_volume(params = {}, options = {})
      req = build_request(:delete_volume, params)
      req.send_request(options)
    end

    # Deletes the specified WorkSpace
    #
    # @option params [required, String] :workspace_instance_id
    #   Unique identifier of the WorkSpaces Instance targeted for deletion.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace_instance({
    #     workspace_instance_id: "WorkspaceInstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/DeleteWorkspaceInstance AWS API Documentation
    #
    # @overload delete_workspace_instance(params = {})
    # @param [Hash] params ({})
    def delete_workspace_instance(params = {}, options = {})
      req = build_request(:delete_workspace_instance, params)
      req.send_request(options)
    end

    # Detaches a volume from a WorkSpace Instance.
    #
    # @option params [required, String] :workspace_instance_id
    #   WorkSpace Instance to detach volume from.
    #
    # @option params [required, String] :volume_id
    #   Volume to be detached.
    #
    # @option params [String] :device
    #   Device path of volume to detach.
    #
    # @option params [String] :disassociate_mode
    #   Mode for volume detachment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_volume({
    #     workspace_instance_id: "WorkspaceInstanceId", # required
    #     volume_id: "VolumeId", # required
    #     device: "DeviceName",
    #     disassociate_mode: "FORCE", # accepts FORCE, NO_FORCE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/DisassociateVolume AWS API Documentation
    #
    # @overload disassociate_volume(params = {})
    # @param [Hash] params ({})
    def disassociate_volume(params = {}, options = {})
      req = build_request(:disassociate_volume, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific WorkSpace Instance.
    #
    # @option params [required, String] :workspace_instance_id
    #   Unique identifier of the WorkSpace Instance to retrieve.
    #
    # @return [Types::GetWorkspaceInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkspaceInstanceResponse#workspace_instance_errors #workspace_instance_errors} => Array&lt;Types::WorkspaceInstanceError&gt;
    #   * {Types::GetWorkspaceInstanceResponse#ec2_instance_errors #ec2_instance_errors} => Array&lt;Types::EC2InstanceError&gt;
    #   * {Types::GetWorkspaceInstanceResponse#provision_state #provision_state} => String
    #   * {Types::GetWorkspaceInstanceResponse#workspace_instance_id #workspace_instance_id} => String
    #   * {Types::GetWorkspaceInstanceResponse#ec2_managed_instance #ec2_managed_instance} => Types::EC2ManagedInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workspace_instance({
    #     workspace_instance_id: "WorkspaceInstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workspace_instance_errors #=> Array
    #   resp.workspace_instance_errors[0].error_code #=> String
    #   resp.workspace_instance_errors[0].error_message #=> String
    #   resp.ec2_instance_errors #=> Array
    #   resp.ec2_instance_errors[0].ec2_error_code #=> String
    #   resp.ec2_instance_errors[0].ec2_exception_type #=> String
    #   resp.ec2_instance_errors[0].ec2_error_message #=> String
    #   resp.provision_state #=> String, one of "ALLOCATING", "ALLOCATED", "DEALLOCATING", "DEALLOCATED", "ERROR_ALLOCATING", "ERROR_DEALLOCATING"
    #   resp.workspace_instance_id #=> String
    #   resp.ec2_managed_instance.instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/GetWorkspaceInstance AWS API Documentation
    #
    # @overload get_workspace_instance(params = {})
    # @param [Hash] params ({})
    def get_workspace_instance(params = {}, options = {})
      req = build_request(:get_workspace_instance, params)
      req.send_request(options)
    end

    # Retrieves a list of instance types supported by Amazon WorkSpaces
    # Instances, enabling precise workspace infrastructure configuration.
    #
    # @option params [Integer] :max_results
    #   Maximum number of instance types to return in a single API call.
    #   Enables pagination of instance type results.
    #
    # @option params [String] :next_token
    #   Pagination token for retrieving subsequent pages of instance type
    #   results.
    #
    # @return [Types::ListInstanceTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceTypesResponse#instance_types #instance_types} => Array&lt;Types::InstanceTypeInfo&gt;
    #   * {Types::ListInstanceTypesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_types({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_types #=> Array
    #   resp.instance_types[0].instance_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ListInstanceTypes AWS API Documentation
    #
    # @overload list_instance_types(params = {})
    # @param [Hash] params ({})
    def list_instance_types(params = {}, options = {})
      req = build_request(:list_instance_types, params)
      req.send_request(options)
    end

    # Retrieves a list of AWS regions supported by Amazon WorkSpaces
    # Instances, enabling region discovery for workspace deployments.
    #
    # @option params [Integer] :max_results
    #   Maximum number of regions to return in a single API call. Enables
    #   pagination of region results.
    #
    # @option params [String] :next_token
    #   Pagination token for retrieving subsequent pages of region results.
    #
    # @return [Types::ListRegionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRegionsResponse#regions #regions} => Array&lt;Types::Region&gt;
    #   * {Types::ListRegionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_regions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.regions #=> Array
    #   resp.regions[0].region_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ListRegions AWS API Documentation
    #
    # @overload list_regions(params = {})
    # @param [Hash] params ({})
    def list_regions(params = {}, options = {})
      req = build_request(:list_regions, params)
      req.send_request(options)
    end

    # Retrieves tags for a WorkSpace Instance.
    #
    # @option params [required, String] :workspace_instance_id
    #   Unique identifier of the WorkSpace Instance.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     workspace_instance_id: "WorkspaceInstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Retrieves a collection of WorkSpaces Instances based on specified
    # filters.
    #
    # @option params [Array<String>] :provision_states
    #   Filter WorkSpaces Instances by their current provisioning states.
    #
    # @option params [Integer] :max_results
    #   Maximum number of WorkSpaces Instances to return in a single response.
    #
    # @option params [String] :next_token
    #   Pagination token for retrieving subsequent pages of WorkSpaces
    #   Instances.
    #
    # @return [Types::ListWorkspaceInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkspaceInstancesResponse#workspace_instances #workspace_instances} => Array&lt;Types::WorkspaceInstance&gt;
    #   * {Types::ListWorkspaceInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workspace_instances({
    #     provision_states: ["ALLOCATING"], # accepts ALLOCATING, ALLOCATED, DEALLOCATING, DEALLOCATED, ERROR_ALLOCATING, ERROR_DEALLOCATING
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.workspace_instances #=> Array
    #   resp.workspace_instances[0].provision_state #=> String, one of "ALLOCATING", "ALLOCATED", "DEALLOCATING", "DEALLOCATED", "ERROR_ALLOCATING", "ERROR_DEALLOCATING"
    #   resp.workspace_instances[0].workspace_instance_id #=> String
    #   resp.workspace_instances[0].ec2_managed_instance.instance_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/ListWorkspaceInstances AWS API Documentation
    #
    # @overload list_workspace_instances(params = {})
    # @param [Hash] params ({})
    def list_workspace_instances(params = {}, options = {})
      req = build_request(:list_workspace_instances, params)
      req.send_request(options)
    end

    # Adds tags to a WorkSpace Instance.
    #
    # @option params [required, String] :workspace_instance_id
    #   Unique identifier of the WorkSpace Instance to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Tags to be added to the WorkSpace Instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     workspace_instance_id: "WorkspaceInstanceId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a WorkSpace Instance.
    #
    # @option params [required, String] :workspace_instance_id
    #   Unique identifier of the WorkSpace Instance to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Keys of tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     workspace_instance_id: "WorkspaceInstanceId", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-instances-2022-07-26/UntagResource AWS API Documentation
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
        Aws::Telemetry.module_to_tracer_name('Aws::WorkspacesInstances')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-workspacesinstances'
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
