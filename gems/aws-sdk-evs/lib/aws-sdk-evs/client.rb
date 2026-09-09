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

module Aws::Evs
  # An API client for Evs.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Evs::Client.new(
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

    @identifier = :evs

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
    add_plugin(Aws::Evs::Plugins::Endpoints)

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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether to apply
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
    #     * `legacy` - The pre-existing retry behavior. This is the default
    #       value if no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - A retry mode that includes all the functionality of
    #       `standard` mode along with automatic client side throttling.
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
    #   @option options [Aws::Evs::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Evs::EndpointParameters`.
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

    # Associates an Elastic IP address with a public HCX VLAN. This
    # operation is only allowed for public HCX VLANs at this time.
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the environment creation request. If you do not specify
    #   a client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment containing the VLAN that the Elastic
    #   IP address associates with.
    #
    # @option params [required, String] :vlan_name
    #   The name of the VLAN. `hcx` is the only accepted VLAN name at this
    #   time.
    #
    # @option params [required, String] :allocation_id
    #   The Elastic IP address allocation ID.
    #
    # @return [Types::AssociateEipToVlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateEipToVlanResponse#vlan #vlan} => Types::Vlan
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_eip_to_vlan({
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     vlan_name: "AssociateEipToVlanRequestVlanNameString", # required
    #     allocation_id: "AllocationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vlan.vlan_id #=> Integer
    #   resp.vlan.cidr #=> String
    #   resp.vlan.availability_zone #=> String
    #   resp.vlan.function_name #=> String
    #   resp.vlan.subnet_id #=> String
    #   resp.vlan.created_at #=> Time
    #   resp.vlan.modified_at #=> Time
    #   resp.vlan.vlan_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.vlan.state_details #=> String
    #   resp.vlan.eip_associations #=> Array
    #   resp.vlan.eip_associations[0].association_id #=> String
    #   resp.vlan.eip_associations[0].allocation_id #=> String
    #   resp.vlan.eip_associations[0].ip_address #=> String
    #   resp.vlan.is_public #=> Boolean
    #   resp.vlan.network_acl_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/AssociateEipToVlan AWS API Documentation
    #
    # @overload associate_eip_to_vlan(params = {})
    # @param [Hash] params ({})
    def associate_eip_to_vlan(params = {}, options = {})
      req = build_request(:associate_eip_to_vlan, params)
      req.send_request(options)
    end

    # Creates a Windows Server License entitlement for virtual machines in
    # an Amazon EVS environment using the provided vCenter Server connector.
    # This is an asynchronous operation. Amazon EVS validates the specified
    # virtual machines before starting usage tracking.
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the entitlement creation request. If you do not specify
    #   a client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment to create the entitlement in.
    #
    # @option params [required, String] :connector_id
    #   A unique ID for the connector associated with the entitlement.
    #
    # @option params [required, String] :entitlement_type
    #   The type of entitlement to create.
    #
    # @option params [required, Array<String>] :vm_ids
    #   The list of VMware vSphere virtual machine managed object IDs to
    #   create entitlements for.
    #
    # @return [Types::CreateEntitlementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEntitlementResponse#entitlements #entitlements} => Array&lt;Types::VmEntitlement&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_entitlement({
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     connector_id: "ConnectorId", # required
    #     entitlement_type: "WINDOWS_SERVER", # required, accepts WINDOWS_SERVER
    #     vm_ids: ["VmId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlements #=> Array
    #   resp.entitlements[0].vm_id #=> String
    #   resp.entitlements[0].environment_id #=> String
    #   resp.entitlements[0].connector_id #=> String
    #   resp.entitlements[0].vm_name #=> String
    #   resp.entitlements[0].type #=> String, one of "WINDOWS_SERVER"
    #   resp.entitlements[0].status #=> String, one of "CREATING", "CREATED", "DELETED", "AT_RISK", "ENTITLEMENT_REMOVED", "CREATE_FAILED"
    #   resp.entitlements[0].last_synced_at #=> Time
    #   resp.entitlements[0].started_at #=> Time
    #   resp.entitlements[0].stopped_at #=> Time
    #   resp.entitlements[0].error_detail.error_code #=> String
    #   resp.entitlements[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/CreateEntitlement AWS API Documentation
    #
    # @overload create_entitlement(params = {})
    # @param [Hash] params ({})
    def create_entitlement(params = {}, options = {})
      req = build_request(:create_entitlement, params)
      req.send_request(options)
    end

    # Creates an Amazon EVS environment that runs VCF software, such as SDDC
    # Manager, NSX Manager, and vCenter Server.
    #
    # <note markdown="1"> When you specify `SELF_DEPLOYED` for `vcfVersion`, Amazon EVS
    # provisions only the VLAN subnets; no hosts are added and no VCF
    # installation is performed. After the environment is created, you can
    # add hosts with `CreateEnvironmentHost` and install VCF yourself. The
    # `licenseInfo`, `hosts`, `vcfHostnames`, `siteId`, and
    # `connectivityInfo` parameters are not supported in this mode.
    #
    #  </note>
    #
    # When you specify any other VCF version, Amazon EVS installs and
    # configures VCF for you. For more information, see [Self-deployed
    # mode][1] in the *Amazon EVS User Guide*.
    #
    # When Amazon EVS installs VCF, the default ESX version for the selected
    # VCF version will be used. After a host is added with a specific ESX
    # version, it can only be upgraded using vCenter Lifecycle Manager.
    #
    # <note markdown="1"> You cannot use the `dedicatedHostId` and `placementGroupId` parameters
    # together in the same `CreateEnvironment` action. This results in a
    # `ValidationException` response.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/evs/latest/userguide/getting-started-self-deployed.html
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the environment creation request. If you do not specify
    #   a client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :environment_name
    #   The name to give to your environment. The name can contain only
    #   alphanumeric characters (case-sensitive), hyphens, and underscores. It
    #   must start with an alphanumeric character, and can't be longer than
    #   100 characters. The name must be unique within the Amazon Web Services
    #   Region and Amazon Web Services account that you're creating the
    #   environment in.
    #
    # @option params [String] :kms_key_id
    #   A unique ID for the customer-managed KMS key that is used to encrypt
    #   the VCF credential pairs for SDDC Manager, NSX Manager, and vCenter
    #   appliances. These credentials are stored in Amazon Web Services
    #   Secrets Manager.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags don't
    #   propagate to any other cluster or Amazon Web Services resources.
    #
    # @option params [Types::ServiceAccessSecurityGroups] :service_access_security_groups
    #   The security group that controls communication between the Amazon EVS
    #   control plane and VPC. The default security group is used if a custom
    #   security group isn't specified.
    #
    #   The security group should allow access to the following.
    #
    #   * TCP/UDP access to the DNS servers
    #
    #   * HTTPS/SSH access to the host management VLAN subnet
    #
    #   * HTTPS/SSH access to the Management VM VLAN subnet
    #
    #   You should avoid modifying the security group rules after deployment,
    #   as this can break the persistent connection between the Amazon EVS
    #   control plane and VPC. This can cause future environment actions like
    #   adding or removing hosts to fail.
    #
    # @option params [required, String] :vpc_id
    #   A unique ID for the VPC that the environment is deployed inside.
    #
    #   Amazon EVS requires that all VPC subnets exist in a single
    #   Availability Zone in a Region where the service is available.
    #
    #   The VPC that you specify must have a valid DHCP option set with domain
    #   name, at least two DNS servers, and an NTP server. These settings are
    #   used to configure your VCF appliances and hosts. The VPC cannot be
    #   used with any other deployed Amazon EVS environment. Amazon EVS does
    #   not provide multi-VPC support for environments at this time.
    #
    #   Amazon EVS does not support the following Amazon Web Services
    #   networking options for NSX overlay connectivity: cross-Region VPC
    #   peering, Amazon S3 gateway endpoints, or Amazon Web Services Direct
    #   Connect virtual private gateway associations.
    #
    #   <note markdown="1"> Ensure that you specify a VPC that is adequately sized to accommodate
    #   the Amazon EVS subnets.
    #
    #    </note>
    #
    # @option params [required, String] :service_access_subnet_id
    #   The subnet that is used to establish connectivity between the Amazon
    #   EVS control plane and VPC. The Amazon EVS control plane uses this
    #   subnet to interface with your environment. This includes validating
    #   DNS records and enabling Amazon EVS Connectors.
    #
    # @option params [required, String] :vcf_version
    #   The VCF version to use for the environment.
    #
    #   * `SELF_DEPLOYED`: You install VCF yourself. The `licenseInfo`,
    #     `hosts`, `vcfHostnames`, `siteId`, and `connectivityInfo` parameters
    #     are not supported.
    #
    #   * Any other valid value: Amazon EVS installs and configures VCF for
    #     you in the version you specify.
    #
    # @option params [required, Boolean] :terms_accepted
    #   Confirmation that the customer has purchased and will continue to
    #   maintain the required number of VCF software licenses to cover all
    #   physical processor cores in the Amazon EVS environment. Information
    #   about your VCF software in Amazon EVS will be shared with Broadcom to
    #   verify license compliance. Amazon EVS does not validate license keys.
    #   To validate license keys, visit the Broadcom support portal.
    #
    # @option params [required, Types::InitialVlans] :initial_vlans
    #   The initial VLAN subnets for the Amazon EVS environment.
    #
    #   <note markdown="1"> For each Amazon EVS VLAN subnet, you must specify a non-overlapping
    #   CIDR block. Amazon EVS VLAN subnets have a minimum CIDR block size of
    #   /28 and a maximum size of /24.
    #
    #    </note>
    #
    # @option params [Types::ConnectivityInfo] :connectivity_info
    #   The connectivity configuration for the environment. Amazon EVS
    #   requires that you specify two route server peer IDs. During
    #   environment creation, the route server endpoints peer with the NSX
    #   edges over the NSX uplink subnet, providing BGP-based dynamic routing
    #   for overlay networks.
    #
    #   <note markdown="1"> Not supported when `vcfVersion` is `SELF_DEPLOYED`.
    #
    #    </note>
    #
    # @option params [Array<Types::LicenseInfo>] :license_info
    #   The license information that Amazon EVS requires to create an
    #   environment. Amazon EVS requires two license keys: a VCF solution key
    #   and a vSAN license key. The VCF solution key must meet minimum core
    #   requirements, and the vSAN license key must meet minimum capacity
    #   requirements for your selected instance type.
    #
    #   For information about minimum license requirements, see [the VCF
    #   subscriptions section][1] in the *Amazon EVS User Guide*.
    #
    #   VCF licenses can be used for only one Amazon EVS environment. Amazon
    #   EVS does not support reuse of VCF licenses for multiple environments.
    #
    #   VCF license information can be retrieved from the Broadcom portal.
    #
    #   <note markdown="1"> Not supported when `vcfVersion` is `SELF_DEPLOYED`.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/evs/latest/userguide/vcf-license-mgmt.html
    #
    # @option params [Array<Types::HostInfoForCreate>] :hosts
    #   The ESX hosts to add to the environment. For each host, provide the
    #   desired hostname, EC2 SSH keypair name, and EC2 instance type.
    #   Optionally, provide a partition or cluster placement group, or use
    #   Amazon EC2 Dedicated Hosts.
    #
    #   <note markdown="1"> Not supported when `vcfVersion` is `SELF_DEPLOYED`. In that case, you
    #   can add hosts using `CreateEnvironmentHost` after the environment is
    #   created.
    #
    #    </note>
    #
    # @option params [Types::VcfHostnames] :vcf_hostnames
    #   The DNS hostnames for the virtual machines that host the VCF
    #   management appliances. Provide hostnames for vCenter, NSX Manager,
    #   SDDC Manager, and Cloud Builder.
    #
    #   <note markdown="1"> Not supported when `vcfVersion` is `SELF_DEPLOYED`.
    #
    #    </note>
    #
    # @option params [String] :site_id
    #   The Broadcom Site ID that is allocated to you as part of your
    #   electronic software delivery. This ID allows customer access to the
    #   Broadcom portal, and is provided to you by Broadcom at the close of
    #   your software contract or contract renewal. Amazon EVS uses the
    #   Broadcom Site ID that you provide to meet Broadcom VCF license usage
    #   reporting requirements for Amazon EVS.
    #
    #   <note markdown="1"> Not supported when `vcfVersion` is `SELF_DEPLOYED`.
    #
    #    </note>
    #
    # @return [Types::CreateEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentResponse#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     client_token: "ClientToken",
    #     environment_name: "EnvironmentName",
    #     kms_key_id: "String",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     service_access_security_groups: {
    #       security_groups: ["SecurityGroupId"],
    #     },
    #     vpc_id: "VpcId", # required
    #     service_access_subnet_id: "SubnetId", # required
    #     vcf_version: "VCF-5.2.1", # required, accepts VCF-5.2.1, VCF-5.2.2, SELF_DEPLOYED
    #     terms_accepted: false, # required
    #     initial_vlans: { # required
    #       vmk_management: { # required
    #         cidr: "Cidr", # required
    #       },
    #       vm_management: { # required
    #         cidr: "Cidr", # required
    #       },
    #       v_motion: { # required
    #         cidr: "Cidr", # required
    #       },
    #       v_san: { # required
    #         cidr: "Cidr", # required
    #       },
    #       v_tep: { # required
    #         cidr: "Cidr", # required
    #       },
    #       edge_v_tep: { # required
    #         cidr: "Cidr", # required
    #       },
    #       nsx_uplink: { # required
    #         cidr: "Cidr", # required
    #       },
    #       hcx: { # required
    #         cidr: "Cidr", # required
    #       },
    #       expansion_vlan_1: { # required
    #         cidr: "Cidr", # required
    #       },
    #       expansion_vlan_2: { # required
    #         cidr: "Cidr", # required
    #       },
    #       is_hcx_public: false,
    #       hcx_network_acl_id: "NetworkAclId",
    #     },
    #     connectivity_info: {
    #       private_route_server_peerings: ["RouteServerPeering"], # required
    #     },
    #     license_info: [
    #       {
    #         solution_key: "SolutionKey", # required
    #         vsan_key: "VSanLicenseKey", # required
    #       },
    #     ],
    #     hosts: [
    #       {
    #         host_name: "HostName", # required
    #         key_name: "KeyName", # required
    #         instance_type: "i4i.metal", # required, accepts i4i.metal, i7i.metal-24xl, i7i.metal-48xl
    #         placement_group_id: "PlacementGroupId",
    #         dedicated_host_id: "DedicatedHostId",
    #       },
    #     ],
    #     vcf_hostnames: {
    #       v_center: "HostName", # required
    #       nsx: "HostName", # required
    #       nsx_manager_1: "HostName", # required
    #       nsx_manager_2: "HostName", # required
    #       nsx_manager_3: "HostName", # required
    #       nsx_edge_1: "HostName", # required
    #       nsx_edge_2: "HostName", # required
    #       sddc_manager: "HostName", # required
    #       cloud_builder: "HostName", # required
    #     },
    #     site_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.environment_id #=> String
    #   resp.environment.environment_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment.state_details #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.modified_at #=> Time
    #   resp.environment.environment_arn #=> String
    #   resp.environment.environment_name #=> String
    #   resp.environment.vpc_id #=> String
    #   resp.environment.service_access_subnet_id #=> String
    #   resp.environment.vcf_version #=> String, one of "VCF-5.2.1", "VCF-5.2.2", "SELF_DEPLOYED"
    #   resp.environment.terms_accepted #=> Boolean
    #   resp.environment.license_info #=> Array
    #   resp.environment.license_info[0].solution_key #=> String
    #   resp.environment.license_info[0].vsan_key #=> String
    #   resp.environment.site_id #=> String
    #   resp.environment.environment_status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment.checks #=> Array
    #   resp.environment.checks[0].type #=> String, one of "KEY_REUSE", "KEY_COVERAGE", "REACHABILITY", "HOST_COUNT", "VCENTER_REACHABILITY", "VCENTER_VM_SYNC", "VCENTER_VM_EVENT", "OPERATIONS_MANAGER_REACHABILITY", "SDDC_MANAGER_REACHABILITY", "SDDC_MANAGER_HOST_COUNT", "SDDC_MANAGER_KEY_COVERAGE", "SDDC_MANAGER_KEY_REUSE", "CONNECTOR_HEALTH"
    #   resp.environment.checks[0].id #=> String
    #   resp.environment.checks[0].result #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment.checks[0].impaired_since #=> Time
    #   resp.environment.connectivity_info.private_route_server_peerings #=> Array
    #   resp.environment.connectivity_info.private_route_server_peerings[0] #=> String
    #   resp.environment.vcf_hostnames.v_center #=> String
    #   resp.environment.vcf_hostnames.nsx #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_1 #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_2 #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_3 #=> String
    #   resp.environment.vcf_hostnames.nsx_edge_1 #=> String
    #   resp.environment.vcf_hostnames.nsx_edge_2 #=> String
    #   resp.environment.vcf_hostnames.sddc_manager #=> String
    #   resp.environment.vcf_hostnames.cloud_builder #=> String
    #   resp.environment.kms_key_id #=> String
    #   resp.environment.service_access_security_groups.security_groups #=> Array
    #   resp.environment.service_access_security_groups.security_groups[0] #=> String
    #   resp.environment.credentials #=> Array
    #   resp.environment.credentials[0].secret_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Creates a connector for an Amazon EVS environment. A connector allows
    # the Amazon EVS control plane to interface with VCF appliances using a
    # fully qualified domain name.
    #
    # You can create only one connector of each type per environment. For
    # environments where Amazon EVS installs VCF, the `SDDC_MANAGER`
    # connector is created automatically.
    #
    # <note markdown="1"> Amazon EVS requires an active connector to SDDC Manager or VCF
    # Operations Manager to monitor environment health and license
    # compliance.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the connector creation request. If you do not specify a
    #   client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment to create the connector in.
    #
    # @option params [required, String] :type
    #   The type of connector to create.
    #
    #   * `OPERATIONS_MANAGER`: Connector to an Operations Manager appliance.
    #     Required for VCF 9x environments.
    #
    #   * `SDDC_MANAGER`: Connector to an SDDC Manager appliance. Required for
    #     VCF 5.x environments.
    #
    #   * `VCENTER`: Connector to a vCenter Server appliance. Required for
    #     features that depend on vCenter, such as Windows Server
    #     license-included.
    #
    # @option params [required, String] :appliance_fqdn
    #   The fully qualified domain name (FQDN) of the VCF appliance that the
    #   connector targets.
    #
    # @option params [required, String] :secret_identifier
    #   The ARN or name of the Amazon Web Services Secrets Manager secret that
    #   stores the credentials for the VCF appliance. `SDDC_MANAGER` requires
    #   an `apiKey` field; `OPERATIONS_MANAGER` and `VCENTER` require
    #   `username` and `password` fields.
    #
    #   Do not use credentials with Administrator privileges. We recommend
    #   using a service account with read-only permissions.
    #
    # @return [Types::CreateEnvironmentConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentConnectorResponse#connector #connector} => Types::Connector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_connector({
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     type: "OPERATIONS_MANAGER", # required, accepts OPERATIONS_MANAGER, SDDC_MANAGER, VCENTER
    #     appliance_fqdn: "ApplianceFqdn", # required
    #     secret_identifier: "SecretIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connector.environment_id #=> String
    #   resp.connector.connector_id #=> String
    #   resp.connector.type #=> String, one of "OPERATIONS_MANAGER", "SDDC_MANAGER", "VCENTER"
    #   resp.connector.appliance_fqdn #=> String
    #   resp.connector.secret_arn #=> String
    #   resp.connector.state #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETED"
    #   resp.connector.state_details #=> String
    #   resp.connector.status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.connector.checks #=> Array
    #   resp.connector.checks[0].type #=> String, one of "KEY_REUSE", "KEY_COVERAGE", "REACHABILITY", "HOST_COUNT", "VCENTER_REACHABILITY", "VCENTER_VM_SYNC", "VCENTER_VM_EVENT", "OPERATIONS_MANAGER_REACHABILITY", "SDDC_MANAGER_REACHABILITY", "SDDC_MANAGER_HOST_COUNT", "SDDC_MANAGER_KEY_COVERAGE", "SDDC_MANAGER_KEY_REUSE", "CONNECTOR_HEALTH"
    #   resp.connector.checks[0].result #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.connector.checks[0].last_check_attempt #=> Time
    #   resp.connector.checks[0].impaired_since #=> Time
    #   resp.connector.created_at #=> Time
    #   resp.connector.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/CreateEnvironmentConnector AWS API Documentation
    #
    # @overload create_environment_connector(params = {})
    # @param [Hash] params ({})
    def create_environment_connector(params = {}, options = {})
      req = build_request(:create_environment_connector, params)
      req.send_request(options)
    end

    # Creates an ESX host and adds it to an Amazon EVS environment.
    #
    # This action can only be used after the Amazon EVS environment is
    # deployed.
    #
    # You can use the `dedicatedHostId` parameter to specify an Amazon EC2
    # Dedicated Host for ESX host creation.
    #
    # You can use the `placementGroupId` parameter to specify a cluster or
    # partition placement group to launch EC2 instances into.
    #
    # <note markdown="1"> If you don't specify an ESX version when adding hosts using
    # `CreateEnvironmentHost` action, Amazon EVS automatically uses the
    # default ESX version for your environment's VCF version. To find the
    # available ESX versions for a particular VCF version, use the
    # `GetVersions` action.
    #
    #  You cannot use the `dedicatedHostId` and `placementGroupId` parameters
    # together in the same `CreateEnvironmentHost` action. This results in a
    # `ValidationException` response.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the host creation request. If you do not specify a
    #   client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment that the host is added to.
    #
    # @option params [required, Types::HostInfoForCreate] :host
    #   The host that is created and added to the environment.
    #
    # @option params [String] :esx_version
    #   The ESX version to use for the host.
    #
    # @return [Types::CreateEnvironmentHostResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentHostResponse#environment_summary #environment_summary} => Types::EnvironmentSummary
    #   * {Types::CreateEnvironmentHostResponse#host #host} => Types::Host
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_host({
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     host: { # required
    #       host_name: "HostName", # required
    #       key_name: "KeyName", # required
    #       instance_type: "i4i.metal", # required, accepts i4i.metal, i7i.metal-24xl, i7i.metal-48xl
    #       placement_group_id: "PlacementGroupId",
    #       dedicated_host_id: "DedicatedHostId",
    #     },
    #     esx_version: "EsxVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_summary.environment_id #=> String
    #   resp.environment_summary.environment_name #=> String
    #   resp.environment_summary.vcf_version #=> String, one of "VCF-5.2.1", "VCF-5.2.2", "SELF_DEPLOYED"
    #   resp.environment_summary.environment_status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment_summary.environment_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment_summary.created_at #=> Time
    #   resp.environment_summary.modified_at #=> Time
    #   resp.environment_summary.environment_arn #=> String
    #   resp.host.host_name #=> String
    #   resp.host.ip_address #=> String
    #   resp.host.key_name #=> String
    #   resp.host.instance_type #=> String, one of "i4i.metal", "i7i.metal-24xl", "i7i.metal-48xl"
    #   resp.host.placement_group_id #=> String
    #   resp.host.dedicated_host_id #=> String
    #   resp.host.created_at #=> Time
    #   resp.host.modified_at #=> Time
    #   resp.host.host_state #=> String, one of "CREATING", "CREATED", "UPDATING", "DELETING", "DELETED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.host.state_details #=> String
    #   resp.host.ec2_instance_id #=> String
    #   resp.host.network_interfaces #=> Array
    #   resp.host.network_interfaces[0].network_interface_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/CreateEnvironmentHost AWS API Documentation
    #
    # @overload create_environment_host(params = {})
    # @param [Hash] params ({})
    def create_environment_host(params = {}, options = {})
      req = build_request(:create_environment_host, params)
      req.send_request(options)
    end

    # Deletes a Windows Server License entitlement for virtual machines in
    # an Amazon EVS environment. Deleting an entitlement stops usage
    # tracking for the specified virtual machines.
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the entitlement deletion request. If you do not specify
    #   a client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment that the entitlement belongs to.
    #
    # @option params [required, String] :connector_id
    #   A unique ID for the connector associated with the entitlement.
    #
    # @option params [required, String] :entitlement_type
    #   The type of entitlement to delete.
    #
    # @option params [required, Array<String>] :vm_ids
    #   The list of VMware vSphere virtual machine managed object IDs to
    #   delete entitlements for.
    #
    # @return [Types::DeleteEntitlementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEntitlementResponse#entitlements #entitlements} => Array&lt;Types::VmEntitlement&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_entitlement({
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     connector_id: "ConnectorId", # required
    #     entitlement_type: "WINDOWS_SERVER", # required, accepts WINDOWS_SERVER
    #     vm_ids: ["VmId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlements #=> Array
    #   resp.entitlements[0].vm_id #=> String
    #   resp.entitlements[0].environment_id #=> String
    #   resp.entitlements[0].connector_id #=> String
    #   resp.entitlements[0].vm_name #=> String
    #   resp.entitlements[0].type #=> String, one of "WINDOWS_SERVER"
    #   resp.entitlements[0].status #=> String, one of "CREATING", "CREATED", "DELETED", "AT_RISK", "ENTITLEMENT_REMOVED", "CREATE_FAILED"
    #   resp.entitlements[0].last_synced_at #=> Time
    #   resp.entitlements[0].started_at #=> Time
    #   resp.entitlements[0].stopped_at #=> Time
    #   resp.entitlements[0].error_detail.error_code #=> String
    #   resp.entitlements[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/DeleteEntitlement AWS API Documentation
    #
    # @overload delete_entitlement(params = {})
    # @param [Hash] params ({})
    def delete_entitlement(params = {}, options = {})
      req = build_request(:delete_entitlement, params)
      req.send_request(options)
    end

    # Deletes an Amazon EVS environment.
    #
    # Amazon EVS environments will only be enabled for deletion once the
    # hosts are deleted. You can delete hosts using the
    # `DeleteEnvironmentHost` action.
    #
    # Environment deletion also deletes the associated Amazon EVS VLAN
    # subnets and Amazon Web Services Secrets Manager secrets that Amazon
    # EVS created. Amazon Web Services resources that you create are not
    # deleted. These resources may continue to incur costs.
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the environment deletion request. If you do not specify
    #   a client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique ID associated with the environment to be deleted.
    #
    # @return [Types::DeleteEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEnvironmentResponse#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.environment_id #=> String
    #   resp.environment.environment_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment.state_details #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.modified_at #=> Time
    #   resp.environment.environment_arn #=> String
    #   resp.environment.environment_name #=> String
    #   resp.environment.vpc_id #=> String
    #   resp.environment.service_access_subnet_id #=> String
    #   resp.environment.vcf_version #=> String, one of "VCF-5.2.1", "VCF-5.2.2", "SELF_DEPLOYED"
    #   resp.environment.terms_accepted #=> Boolean
    #   resp.environment.license_info #=> Array
    #   resp.environment.license_info[0].solution_key #=> String
    #   resp.environment.license_info[0].vsan_key #=> String
    #   resp.environment.site_id #=> String
    #   resp.environment.environment_status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment.checks #=> Array
    #   resp.environment.checks[0].type #=> String, one of "KEY_REUSE", "KEY_COVERAGE", "REACHABILITY", "HOST_COUNT", "VCENTER_REACHABILITY", "VCENTER_VM_SYNC", "VCENTER_VM_EVENT", "OPERATIONS_MANAGER_REACHABILITY", "SDDC_MANAGER_REACHABILITY", "SDDC_MANAGER_HOST_COUNT", "SDDC_MANAGER_KEY_COVERAGE", "SDDC_MANAGER_KEY_REUSE", "CONNECTOR_HEALTH"
    #   resp.environment.checks[0].id #=> String
    #   resp.environment.checks[0].result #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment.checks[0].impaired_since #=> Time
    #   resp.environment.connectivity_info.private_route_server_peerings #=> Array
    #   resp.environment.connectivity_info.private_route_server_peerings[0] #=> String
    #   resp.environment.vcf_hostnames.v_center #=> String
    #   resp.environment.vcf_hostnames.nsx #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_1 #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_2 #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_3 #=> String
    #   resp.environment.vcf_hostnames.nsx_edge_1 #=> String
    #   resp.environment.vcf_hostnames.nsx_edge_2 #=> String
    #   resp.environment.vcf_hostnames.sddc_manager #=> String
    #   resp.environment.vcf_hostnames.cloud_builder #=> String
    #   resp.environment.kms_key_id #=> String
    #   resp.environment.service_access_security_groups.security_groups #=> Array
    #   resp.environment.service_access_security_groups.security_groups[0] #=> String
    #   resp.environment.credentials #=> Array
    #   resp.environment.credentials[0].secret_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Deletes a connector from an Amazon EVS environment.
    #
    # <note markdown="1"> Before deleting a connector, you must remove all entitlements that are
    # associated with the same vCenter.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the connector deletion request. If you do not specify a
    #   client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment that the connector belongs to.
    #
    # @option params [required, String] :connector_id
    #   A unique ID for the connector to be deleted.
    #
    # @return [Types::DeleteEnvironmentConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEnvironmentConnectorResponse#connector #connector} => Types::Connector
    #   * {Types::DeleteEnvironmentConnectorResponse#environment_summary #environment_summary} => Types::EnvironmentSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_connector({
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     connector_id: "ConnectorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connector.environment_id #=> String
    #   resp.connector.connector_id #=> String
    #   resp.connector.type #=> String, one of "OPERATIONS_MANAGER", "SDDC_MANAGER", "VCENTER"
    #   resp.connector.appliance_fqdn #=> String
    #   resp.connector.secret_arn #=> String
    #   resp.connector.state #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETED"
    #   resp.connector.state_details #=> String
    #   resp.connector.status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.connector.checks #=> Array
    #   resp.connector.checks[0].type #=> String, one of "KEY_REUSE", "KEY_COVERAGE", "REACHABILITY", "HOST_COUNT", "VCENTER_REACHABILITY", "VCENTER_VM_SYNC", "VCENTER_VM_EVENT", "OPERATIONS_MANAGER_REACHABILITY", "SDDC_MANAGER_REACHABILITY", "SDDC_MANAGER_HOST_COUNT", "SDDC_MANAGER_KEY_COVERAGE", "SDDC_MANAGER_KEY_REUSE", "CONNECTOR_HEALTH"
    #   resp.connector.checks[0].result #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.connector.checks[0].last_check_attempt #=> Time
    #   resp.connector.checks[0].impaired_since #=> Time
    #   resp.connector.created_at #=> Time
    #   resp.connector.modified_at #=> Time
    #   resp.environment_summary.environment_id #=> String
    #   resp.environment_summary.environment_name #=> String
    #   resp.environment_summary.vcf_version #=> String, one of "VCF-5.2.1", "VCF-5.2.2", "SELF_DEPLOYED"
    #   resp.environment_summary.environment_status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment_summary.environment_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment_summary.created_at #=> Time
    #   resp.environment_summary.modified_at #=> Time
    #   resp.environment_summary.environment_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/DeleteEnvironmentConnector AWS API Documentation
    #
    # @overload delete_environment_connector(params = {})
    # @param [Hash] params ({})
    def delete_environment_connector(params = {}, options = {})
      req = build_request(:delete_environment_connector, params)
      req.send_request(options)
    end

    # Deletes a host from an Amazon EVS environment.
    #
    # <note markdown="1"> Before deleting a host, you must unassign and decommission the host
    # from within the SDDC Manager user interface. Not doing so could impact
    # the availability of your virtual machines or result in data loss.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the host deletion request. If you do not specify a
    #   client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the host's environment.
    #
    # @option params [required, String] :host_name
    #   The DNS hostname associated with the host to be deleted.
    #
    # @return [Types::DeleteEnvironmentHostResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEnvironmentHostResponse#environment_summary #environment_summary} => Types::EnvironmentSummary
    #   * {Types::DeleteEnvironmentHostResponse#host #host} => Types::Host
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_host({
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     host_name: "HostName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_summary.environment_id #=> String
    #   resp.environment_summary.environment_name #=> String
    #   resp.environment_summary.vcf_version #=> String, one of "VCF-5.2.1", "VCF-5.2.2", "SELF_DEPLOYED"
    #   resp.environment_summary.environment_status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment_summary.environment_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment_summary.created_at #=> Time
    #   resp.environment_summary.modified_at #=> Time
    #   resp.environment_summary.environment_arn #=> String
    #   resp.host.host_name #=> String
    #   resp.host.ip_address #=> String
    #   resp.host.key_name #=> String
    #   resp.host.instance_type #=> String, one of "i4i.metal", "i7i.metal-24xl", "i7i.metal-48xl"
    #   resp.host.placement_group_id #=> String
    #   resp.host.dedicated_host_id #=> String
    #   resp.host.created_at #=> Time
    #   resp.host.modified_at #=> Time
    #   resp.host.host_state #=> String, one of "CREATING", "CREATED", "UPDATING", "DELETING", "DELETED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.host.state_details #=> String
    #   resp.host.ec2_instance_id #=> String
    #   resp.host.network_interfaces #=> Array
    #   resp.host.network_interfaces[0].network_interface_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/DeleteEnvironmentHost AWS API Documentation
    #
    # @overload delete_environment_host(params = {})
    # @param [Hash] params ({})
    def delete_environment_host(params = {}, options = {})
      req = build_request(:delete_environment_host, params)
      req.send_request(options)
    end

    # Disassociates an Elastic IP address from a public HCX VLAN. This
    # operation is only allowed for public HCX VLANs at this time.
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the environment creation request. If you do not specify
    #   a client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment containing the VLAN that the Elastic
    #   IP address disassociates from.
    #
    # @option params [required, String] :vlan_name
    #   The name of the VLAN. `hcx` is the only accepted VLAN name at this
    #   time.
    #
    # @option params [required, String] :association_id
    #   A unique ID for the Elastic IP address association.
    #
    # @return [Types::DisassociateEipFromVlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateEipFromVlanResponse#vlan #vlan} => Types::Vlan
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_eip_from_vlan({
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     vlan_name: "DisassociateEipFromVlanRequestVlanNameString", # required
    #     association_id: "AssociationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vlan.vlan_id #=> Integer
    #   resp.vlan.cidr #=> String
    #   resp.vlan.availability_zone #=> String
    #   resp.vlan.function_name #=> String
    #   resp.vlan.subnet_id #=> String
    #   resp.vlan.created_at #=> Time
    #   resp.vlan.modified_at #=> Time
    #   resp.vlan.vlan_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.vlan.state_details #=> String
    #   resp.vlan.eip_associations #=> Array
    #   resp.vlan.eip_associations[0].association_id #=> String
    #   resp.vlan.eip_associations[0].allocation_id #=> String
    #   resp.vlan.eip_associations[0].ip_address #=> String
    #   resp.vlan.is_public #=> Boolean
    #   resp.vlan.network_acl_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/DisassociateEipFromVlan AWS API Documentation
    #
    # @overload disassociate_eip_from_vlan(params = {})
    # @param [Hash] params ({})
    def disassociate_eip_from_vlan(params = {}, options = {})
      req = build_request(:disassociate_eip_from_vlan, params)
      req.send_request(options)
    end

    # Returns the configured EVS settings for your Amazon Web Services
    # account in the specified Amazon Web Services Region. If no settings
    # have been set, an empty list is returned.
    #
    # @return [Types::GetAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingsResponse#settings #settings} => Array&lt;Types::AccountSetting&gt;
    #
    # @example Response structure
    #
    #   resp.settings #=> Array
    #   resp.settings[0].name #=> String
    #   resp.settings[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/GetAccountSettings AWS API Documentation
    #
    # @overload get_account_settings(params = {})
    # @param [Hash] params ({})
    def get_account_settings(params = {}, options = {})
      req = build_request(:get_account_settings, params)
      req.send_request(options)
    end

    # Returns a URL and authentication token for accessing the Amazon EVS
    # Custom Addon depot. Configure the depot URL as a download source in
    # vSphere Lifecycle Manager (vLCM) to sync and install the Amazon EVS
    # Custom Addon.
    #
    # The depot URL remains active until you rotate the authentication token
    # by calling this action with `rotate` set to `true`.
    #
    # @option params [required, String] :environment_id
    #   The unique ID of the Amazon EVS environment to get the depot URL for.
    #
    # @option params [Boolean] :rotate
    #   Revokes the current authentication token and returns a new depot URL
    #   with a new token. Previously issued depot URLs will stop working
    #   within 5 minutes of rotation.
    #
    # @return [Types::GetDepotUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDepotUrlResponse#depot_url #depot_url} => String
    #   * {Types::GetDepotUrlResponse#token #token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_depot_url({
    #     environment_id: "EnvironmentId", # required
    #     rotate: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.depot_url #=> String
    #   resp.token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/GetDepotUrl AWS API Documentation
    #
    # @overload get_depot_url(params = {})
    # @param [Hash] params ({})
    def get_depot_url(params = {}, options = {})
      req = build_request(:get_depot_url, params)
      req.send_request(options)
    end

    # Returns a description of the specified environment.
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment.
    #
    # @return [Types::GetEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentResponse#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.environment_id #=> String
    #   resp.environment.environment_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment.state_details #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.modified_at #=> Time
    #   resp.environment.environment_arn #=> String
    #   resp.environment.environment_name #=> String
    #   resp.environment.vpc_id #=> String
    #   resp.environment.service_access_subnet_id #=> String
    #   resp.environment.vcf_version #=> String, one of "VCF-5.2.1", "VCF-5.2.2", "SELF_DEPLOYED"
    #   resp.environment.terms_accepted #=> Boolean
    #   resp.environment.license_info #=> Array
    #   resp.environment.license_info[0].solution_key #=> String
    #   resp.environment.license_info[0].vsan_key #=> String
    #   resp.environment.site_id #=> String
    #   resp.environment.environment_status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment.checks #=> Array
    #   resp.environment.checks[0].type #=> String, one of "KEY_REUSE", "KEY_COVERAGE", "REACHABILITY", "HOST_COUNT", "VCENTER_REACHABILITY", "VCENTER_VM_SYNC", "VCENTER_VM_EVENT", "OPERATIONS_MANAGER_REACHABILITY", "SDDC_MANAGER_REACHABILITY", "SDDC_MANAGER_HOST_COUNT", "SDDC_MANAGER_KEY_COVERAGE", "SDDC_MANAGER_KEY_REUSE", "CONNECTOR_HEALTH"
    #   resp.environment.checks[0].id #=> String
    #   resp.environment.checks[0].result #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment.checks[0].impaired_since #=> Time
    #   resp.environment.connectivity_info.private_route_server_peerings #=> Array
    #   resp.environment.connectivity_info.private_route_server_peerings[0] #=> String
    #   resp.environment.vcf_hostnames.v_center #=> String
    #   resp.environment.vcf_hostnames.nsx #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_1 #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_2 #=> String
    #   resp.environment.vcf_hostnames.nsx_manager_3 #=> String
    #   resp.environment.vcf_hostnames.nsx_edge_1 #=> String
    #   resp.environment.vcf_hostnames.nsx_edge_2 #=> String
    #   resp.environment.vcf_hostnames.sddc_manager #=> String
    #   resp.environment.vcf_hostnames.cloud_builder #=> String
    #   resp.environment.kms_key_id #=> String
    #   resp.environment.service_access_security_groups.security_groups #=> Array
    #   resp.environment.service_access_security_groups.security_groups[0] #=> String
    #   resp.environment.credentials #=> Array
    #   resp.environment.credentials[0].secret_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # Returns information about VCF versions, ESX versions and EC2 instance
    # types provided by Amazon EVS. For each VCF version, the response also
    # includes the default ESX version and provided EC2 instance types.
    #
    # @return [Types::GetVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVersionsResponse#vcf_versions #vcf_versions} => Array&lt;Types::VcfVersionInfo&gt;
    #   * {Types::GetVersionsResponse#instance_type_esx_versions #instance_type_esx_versions} => Array&lt;Types::InstanceTypeEsxVersionsInfo&gt;
    #
    # @example Response structure
    #
    #   resp.vcf_versions #=> Array
    #   resp.vcf_versions[0].vcf_version #=> String, one of "VCF-5.2.1", "VCF-5.2.2", "SELF_DEPLOYED"
    #   resp.vcf_versions[0].status #=> String
    #   resp.vcf_versions[0].default_esx_version #=> String
    #   resp.vcf_versions[0].instance_types #=> Array
    #   resp.vcf_versions[0].instance_types[0] #=> String, one of "i4i.metal", "i7i.metal-24xl", "i7i.metal-48xl"
    #   resp.instance_type_esx_versions #=> Array
    #   resp.instance_type_esx_versions[0].instance_type #=> String, one of "i4i.metal", "i7i.metal-24xl", "i7i.metal-48xl"
    #   resp.instance_type_esx_versions[0].esx_versions #=> Array
    #   resp.instance_type_esx_versions[0].esx_versions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/GetVersions AWS API Documentation
    #
    # @overload get_versions(params = {})
    # @param [Hash] params ({})
    def get_versions(params = {}, options = {})
      req = build_request(:get_versions, params)
      req.send_request(options)
    end

    # Lists the connectors within an environment. Returns the status of each
    # connector and its applicable checks, among other connector details.
    #
    # @option params [String] :next_token
    #   A unique pagination token for each page. If `nextToken` is returned,
    #   there are more results available. Make the call again using the
    #   returned token with all other arguments unchanged to retrieve the next
    #   page. Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an *HTTP 400 InvalidToken* error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. If you specify `MaxResults`
    #   in the request, the response includes information up to the limit
    #   specified.
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment.
    #
    # @return [Types::ListEnvironmentConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentConnectorsResponse#next_token #next_token} => String
    #   * {Types::ListEnvironmentConnectorsResponse#connectors #connectors} => Array&lt;Types::Connector&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_connectors({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.connectors #=> Array
    #   resp.connectors[0].environment_id #=> String
    #   resp.connectors[0].connector_id #=> String
    #   resp.connectors[0].type #=> String, one of "OPERATIONS_MANAGER", "SDDC_MANAGER", "VCENTER"
    #   resp.connectors[0].appliance_fqdn #=> String
    #   resp.connectors[0].secret_arn #=> String
    #   resp.connectors[0].state #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETED"
    #   resp.connectors[0].state_details #=> String
    #   resp.connectors[0].status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.connectors[0].checks #=> Array
    #   resp.connectors[0].checks[0].type #=> String, one of "KEY_REUSE", "KEY_COVERAGE", "REACHABILITY", "HOST_COUNT", "VCENTER_REACHABILITY", "VCENTER_VM_SYNC", "VCENTER_VM_EVENT", "OPERATIONS_MANAGER_REACHABILITY", "SDDC_MANAGER_REACHABILITY", "SDDC_MANAGER_HOST_COUNT", "SDDC_MANAGER_KEY_COVERAGE", "SDDC_MANAGER_KEY_REUSE", "CONNECTOR_HEALTH"
    #   resp.connectors[0].checks[0].result #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.connectors[0].checks[0].last_check_attempt #=> Time
    #   resp.connectors[0].checks[0].impaired_since #=> Time
    #   resp.connectors[0].created_at #=> Time
    #   resp.connectors[0].modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListEnvironmentConnectors AWS API Documentation
    #
    # @overload list_environment_connectors(params = {})
    # @param [Hash] params ({})
    def list_environment_connectors(params = {}, options = {})
      req = build_request(:list_environment_connectors, params)
      req.send_request(options)
    end

    # List the hosts within an environment.
    #
    # @option params [String] :next_token
    #   A unique pagination token for each page. If `nextToken` is returned,
    #   there are more results available. Make the call again using the
    #   returned token with all other arguments unchanged to retrieve the next
    #   page. Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an *HTTP 400 InvalidToken* error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. If you specify `MaxResults`
    #   in the request, the response includes information up to the limit
    #   specified.
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment.
    #
    # @return [Types::ListEnvironmentHostsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentHostsResponse#next_token #next_token} => String
    #   * {Types::ListEnvironmentHostsResponse#environment_hosts #environment_hosts} => Array&lt;Types::Host&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_hosts({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.environment_hosts #=> Array
    #   resp.environment_hosts[0].host_name #=> String
    #   resp.environment_hosts[0].ip_address #=> String
    #   resp.environment_hosts[0].key_name #=> String
    #   resp.environment_hosts[0].instance_type #=> String, one of "i4i.metal", "i7i.metal-24xl", "i7i.metal-48xl"
    #   resp.environment_hosts[0].placement_group_id #=> String
    #   resp.environment_hosts[0].dedicated_host_id #=> String
    #   resp.environment_hosts[0].created_at #=> Time
    #   resp.environment_hosts[0].modified_at #=> Time
    #   resp.environment_hosts[0].host_state #=> String, one of "CREATING", "CREATED", "UPDATING", "DELETING", "DELETED", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.environment_hosts[0].state_details #=> String
    #   resp.environment_hosts[0].ec2_instance_id #=> String
    #   resp.environment_hosts[0].network_interfaces #=> Array
    #   resp.environment_hosts[0].network_interfaces[0].network_interface_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListEnvironmentHosts AWS API Documentation
    #
    # @overload list_environment_hosts(params = {})
    # @param [Hash] params ({})
    def list_environment_hosts(params = {}, options = {})
      req = build_request(:list_environment_hosts, params)
      req.send_request(options)
    end

    # Lists environment VLANs that are associated with the specified
    # environment.
    #
    # @option params [String] :next_token
    #   A unique pagination token for each page. If `nextToken` is returned,
    #   there are more results available. Make the call again using the
    #   returned token with all other arguments unchanged to retrieve the next
    #   page. Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an *HTTP 400 InvalidToken* error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. If you specify `MaxResults`
    #   in the request, the response includes information up to the limit
    #   specified.
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment.
    #
    # @return [Types::ListEnvironmentVlansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentVlansResponse#next_token #next_token} => String
    #   * {Types::ListEnvironmentVlansResponse#environment_vlans #environment_vlans} => Array&lt;Types::Vlan&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_vlans({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.environment_vlans #=> Array
    #   resp.environment_vlans[0].vlan_id #=> Integer
    #   resp.environment_vlans[0].cidr #=> String
    #   resp.environment_vlans[0].availability_zone #=> String
    #   resp.environment_vlans[0].function_name #=> String
    #   resp.environment_vlans[0].subnet_id #=> String
    #   resp.environment_vlans[0].created_at #=> Time
    #   resp.environment_vlans[0].modified_at #=> Time
    #   resp.environment_vlans[0].vlan_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment_vlans[0].state_details #=> String
    #   resp.environment_vlans[0].eip_associations #=> Array
    #   resp.environment_vlans[0].eip_associations[0].association_id #=> String
    #   resp.environment_vlans[0].eip_associations[0].allocation_id #=> String
    #   resp.environment_vlans[0].eip_associations[0].ip_address #=> String
    #   resp.environment_vlans[0].is_public #=> Boolean
    #   resp.environment_vlans[0].network_acl_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListEnvironmentVlans AWS API Documentation
    #
    # @overload list_environment_vlans(params = {})
    # @param [Hash] params ({})
    def list_environment_vlans(params = {}, options = {})
      req = build_request(:list_environment_vlans, params)
      req.send_request(options)
    end

    # Lists the Amazon EVS environments in your Amazon Web Services account
    # in the specified Amazon Web Services Region.
    #
    # @option params [String] :next_token
    #   A unique pagination token for each page. If `nextToken` is returned,
    #   there are more results available. Make the call again using the
    #   returned token with all other arguments unchanged to retrieve the next
    #   page. Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an *HTTP 400 InvalidToken* error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. If you specify `MaxResults`
    #   in the request, the response includes information up to the limit
    #   specified.
    #
    # @option params [Array<String>] :state
    #   The state of an environment. Used to filter response results to return
    #   only environments with the specified `environmentState`.
    #
    # @return [Types::ListEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsResponse#next_token #next_token} => String
    #   * {Types::ListEnvironmentsResponse#environment_summaries #environment_summaries} => Array&lt;Types::EnvironmentSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     state: ["CREATING"], # accepts CREATING, CREATED, DELETING, DELETED, CREATE_FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.environment_summaries #=> Array
    #   resp.environment_summaries[0].environment_id #=> String
    #   resp.environment_summaries[0].environment_name #=> String
    #   resp.environment_summaries[0].vcf_version #=> String, one of "VCF-5.2.1", "VCF-5.2.2", "SELF_DEPLOYED"
    #   resp.environment_summaries[0].environment_status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.environment_summaries[0].environment_state #=> String, one of "CREATING", "CREATED", "DELETING", "DELETED", "CREATE_FAILED"
    #   resp.environment_summaries[0].created_at #=> Time
    #   resp.environment_summaries[0].modified_at #=> Time
    #   resp.environment_summaries[0].environment_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Lists the tags for an Amazon EVS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   tags for.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the Windows Server License entitlements for virtual machines in
    # an Amazon EVS environment. Returns existing entitlements for virtual
    # machines associated with the specified environment and connector.
    #
    # @option params [String] :next_token
    #   A unique pagination token for each page. If `nextToken` is returned,
    #   there are more results available. Make the call again using the
    #   returned token with all other arguments unchanged to retrieve the next
    #   page. Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an *HTTP 400 InvalidToken* error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. If you specify `MaxResults`
    #   in the request, the response includes information up to the limit
    #   specified.
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment.
    #
    # @option params [required, String] :connector_id
    #   A unique ID for the connector.
    #
    # @option params [required, String] :entitlement_type
    #   The type of entitlement to list.
    #
    # @return [Types::ListVmEntitlementsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVmEntitlementsResponse#next_token #next_token} => String
    #   * {Types::ListVmEntitlementsResponse#entitlements #entitlements} => Array&lt;Types::VmEntitlement&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vm_entitlements({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     environment_id: "EnvironmentId", # required
    #     connector_id: "ConnectorId", # required
    #     entitlement_type: "WINDOWS_SERVER", # required, accepts WINDOWS_SERVER
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.entitlements #=> Array
    #   resp.entitlements[0].vm_id #=> String
    #   resp.entitlements[0].environment_id #=> String
    #   resp.entitlements[0].connector_id #=> String
    #   resp.entitlements[0].vm_name #=> String
    #   resp.entitlements[0].type #=> String, one of "WINDOWS_SERVER"
    #   resp.entitlements[0].status #=> String, one of "CREATING", "CREATED", "DELETED", "AT_RISK", "ENTITLEMENT_REMOVED", "CREATE_FAILED"
    #   resp.entitlements[0].last_synced_at #=> Time
    #   resp.entitlements[0].started_at #=> Time
    #   resp.entitlements[0].stopped_at #=> Time
    #   resp.entitlements[0].error_detail.error_code #=> String
    #   resp.entitlements[0].error_detail.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/ListVmEntitlements AWS API Documentation
    #
    # @overload list_vm_entitlements(params = {})
    # @param [Hash] params ({})
    def list_vm_entitlements(params = {}, options = {})
      req = build_request(:list_vm_entitlements, params)
      req.send_request(options)
    end

    # Creates or updates account-level EVS settings for your Amazon Web
    # Services account in the specified Amazon Web Services Region.
    #
    # EVS settings included in the request are created or overwritten.
    # Settings omitted from the request retain their current values.
    #
    # @option params [required, Array<Types::AccountSetting>] :settings
    #   A list of regional account-level EVS settings to create or update.
    #   Only the settings included in this list are modified.
    #
    # @return [Types::PutAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAccountSettingsResponse#settings #settings} => Array&lt;Types::AccountSetting&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_settings({
    #     settings: [ # required
    #       {
    #         name: "SettingName", # required
    #         value: "SettingValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.settings #=> Array
    #   resp.settings[0].name #=> String
    #   resp.settings[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/PutAccountSettings AWS API Documentation
    #
    # @overload put_account_settings(params = {})
    # @param [Hash] params ({})
    def put_account_settings(params = {}, options = {})
      req = build_request(:put_account_settings, params)
      req.send_request(options)
    end

    # Associates the specified tags to an Amazon EVS resource with the
    # specified `resourceArn`. If existing tags on a resource are not
    # specified in the request parameters, they aren't changed. When a
    # resource is deleted, the tags associated with that resource are also
    # deleted. Tags that you create for Amazon EVS resources don't
    # propagate to any other resources associated with the environment. For
    # example, if you tag an environment with this operation, that tag
    # doesn't automatically propagate to the VLAN subnets and hosts
    # associated with the environment.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Metadata that assists with categorization and organization. Each tag
    #   consists of a key and an optional value. You define both. Tags don't
    #   propagate to any other environment or Amazon Web Services resources.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes specified tags from an Amazon EVS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to delete tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to delete.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a connector for an Amazon EVS environment. You can update the
    # Amazon Web Services Secrets Manager secret ARN or the appliance FQDN
    # to reconfigure the connector metadata.
    #
    # <note markdown="1"> You cannot update both the secret and the FQDN in the same request.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   <note markdown="1"> This parameter is not used in Amazon EVS
    #   currently. If you supply
    #   input for this parameter, it will have no effect.
    #
    #    </note>
    #
    #    A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the connector update request. If you do not specify a
    #   client token, a randomly generated token is used for the request to
    #   ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique ID for the environment that the connector belongs to.
    #
    # @option params [required, String] :connector_id
    #   A unique ID for the connector to update.
    #
    # @option params [String] :appliance_fqdn
    #   The new fully qualified domain name (FQDN) of the VCF appliance that
    #   the connector connects to.
    #
    # @option params [String] :secret_identifier
    #   The new ARN or name of the Amazon Web Services Secrets Manager secret
    #   that stores the credentials for the VCF appliance.
    #
    # @return [Types::UpdateEnvironmentConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentConnectorResponse#connector #connector} => Types::Connector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_connector({
    #     client_token: "ClientToken",
    #     environment_id: "EnvironmentId", # required
    #     connector_id: "ConnectorId", # required
    #     appliance_fqdn: "ApplianceFqdn",
    #     secret_identifier: "SecretIdentifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector.environment_id #=> String
    #   resp.connector.connector_id #=> String
    #   resp.connector.type #=> String, one of "OPERATIONS_MANAGER", "SDDC_MANAGER", "VCENTER"
    #   resp.connector.appliance_fqdn #=> String
    #   resp.connector.secret_arn #=> String
    #   resp.connector.state #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETED"
    #   resp.connector.state_details #=> String
    #   resp.connector.status #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.connector.checks #=> Array
    #   resp.connector.checks[0].type #=> String, one of "KEY_REUSE", "KEY_COVERAGE", "REACHABILITY", "HOST_COUNT", "VCENTER_REACHABILITY", "VCENTER_VM_SYNC", "VCENTER_VM_EVENT", "OPERATIONS_MANAGER_REACHABILITY", "SDDC_MANAGER_REACHABILITY", "SDDC_MANAGER_HOST_COUNT", "SDDC_MANAGER_KEY_COVERAGE", "SDDC_MANAGER_KEY_REUSE", "CONNECTOR_HEALTH"
    #   resp.connector.checks[0].result #=> String, one of "PASSED", "FAILED", "UNKNOWN"
    #   resp.connector.checks[0].last_check_attempt #=> Time
    #   resp.connector.checks[0].impaired_since #=> Time
    #   resp.connector.created_at #=> Time
    #   resp.connector.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evs-2023-07-27/UpdateEnvironmentConnector AWS API Documentation
    #
    # @overload update_environment_connector(params = {})
    # @param [Hash] params ({})
    def update_environment_connector(params = {}, options = {})
      req = build_request(:update_environment_connector, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Evs')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-evs'
      context[:gem_version] = '1.25.0'
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
