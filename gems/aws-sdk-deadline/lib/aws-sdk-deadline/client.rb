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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

module Aws::Deadline
  # An API client for Deadline.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Deadline::Client.new(
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

    @identifier = :deadline

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
    add_plugin(Aws::Deadline::Plugins::Endpoints)

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
    #   @option options [Aws::Deadline::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Deadline::EndpointParameters`.
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

    # Assigns a farm membership level to a member.
    #
    # @option params [required, String] :farm_id
    #   The ID of the farm to associate with the member.
    #
    # @option params [required, String] :principal_id
    #   The member's principal ID to associate with the farm.
    #
    # @option params [required, String] :principal_type
    #   The principal type of the member to associate with the farm.
    #
    # @option params [required, String] :identity_store_id
    #   The identity store ID of the member to associate with the farm.
    #
    # @option params [required, String] :membership_level
    #   The principal's membership level for the associated farm.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_member_to_farm({
    #     farm_id: "FarmId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #     principal_type: "USER", # required, accepts USER, GROUP
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_level: "VIEWER", # required, accepts VIEWER, CONTRIBUTOR, OWNER, MANAGER
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssociateMemberToFarm AWS API Documentation
    #
    # @overload associate_member_to_farm(params = {})
    # @param [Hash] params ({})
    def associate_member_to_farm(params = {}, options = {})
      req = build_request(:associate_member_to_farm, params)
      req.send_request(options)
    end

    # Assigns a fleet membership level to a member.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the fleet to associate with the member.
    #
    # @option params [required, String] :fleet_id
    #   The ID of the fleet to associate with a member.
    #
    # @option params [required, String] :principal_id
    #   The member's principal ID to associate with a fleet.
    #
    # @option params [required, String] :principal_type
    #   The member's principal type to associate with the fleet.
    #
    # @option params [required, String] :identity_store_id
    #   The member's identity store ID to associate with the fleet.
    #
    # @option params [required, String] :membership_level
    #   The principal's membership level for the associated fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_member_to_fleet({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #     principal_type: "USER", # required, accepts USER, GROUP
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_level: "VIEWER", # required, accepts VIEWER, CONTRIBUTOR, OWNER, MANAGER
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssociateMemberToFleet AWS API Documentation
    #
    # @overload associate_member_to_fleet(params = {})
    # @param [Hash] params ({})
    def associate_member_to_fleet(params = {}, options = {})
      req = build_request(:associate_member_to_fleet, params)
      req.send_request(options)
    end

    # Assigns a job membership level to a member
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the job to associate with the member.
    #
    # @option params [required, String] :queue_id
    #   The queue ID to associate to the member.
    #
    # @option params [required, String] :job_id
    #   The job ID to associate with the member.
    #
    # @option params [required, String] :principal_id
    #   The member's principal ID to associate with the job.
    #
    # @option params [required, String] :principal_type
    #   The member's principal type to associate with the job.
    #
    # @option params [required, String] :identity_store_id
    #   The member's identity store ID to associate with the job.
    #
    # @option params [required, String] :membership_level
    #   The principal's membership level for the associated job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_member_to_job({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #     principal_type: "USER", # required, accepts USER, GROUP
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_level: "VIEWER", # required, accepts VIEWER, CONTRIBUTOR, OWNER, MANAGER
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssociateMemberToJob AWS API Documentation
    #
    # @overload associate_member_to_job(params = {})
    # @param [Hash] params ({})
    def associate_member_to_job(params = {}, options = {})
      req = build_request(:associate_member_to_job, params)
      req.send_request(options)
    end

    # Assigns a queue membership level to a member
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the queue to associate with the member.
    #
    # @option params [required, String] :queue_id
    #   The ID of the queue to associate to the member.
    #
    # @option params [required, String] :principal_id
    #   The member's principal ID to associate with the queue.
    #
    # @option params [required, String] :principal_type
    #   The member's principal type to associate with the queue.
    #
    # @option params [required, String] :identity_store_id
    #   The member's identity store ID to associate with the queue.
    #
    # @option params [required, String] :membership_level
    #   The principal's membership level for the associated queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_member_to_queue({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #     principal_type: "USER", # required, accepts USER, GROUP
    #     identity_store_id: "IdentityStoreId", # required
    #     membership_level: "VIEWER", # required, accepts VIEWER, CONTRIBUTOR, OWNER, MANAGER
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssociateMemberToQueue AWS API Documentation
    #
    # @overload associate_member_to_queue(params = {})
    # @param [Hash] params ({})
    def associate_member_to_queue(params = {}, options = {})
      req = build_request(:associate_member_to_queue, params)
      req.send_request(options)
    end

    # Get Amazon Web Services credentials from the fleet role. The IAM
    # permissions of the credentials are scoped down to have read-only
    # access.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the fleet's farm.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID.
    #
    # @return [Types::AssumeFleetRoleForReadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssumeFleetRoleForReadResponse#credentials #credentials} => Types::AwsCredentials
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assume_fleet_role_for_read({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.credentials.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeFleetRoleForRead AWS API Documentation
    #
    # @overload assume_fleet_role_for_read(params = {})
    # @param [Hash] params ({})
    def assume_fleet_role_for_read(params = {}, options = {})
      req = build_request(:assume_fleet_role_for_read, params)
      req.send_request(options)
    end

    # Get credentials from the fleet role for a worker.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the fleet's farm.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID that contains the worker.
    #
    # @option params [required, String] :worker_id
    #   The ID of the worker assuming the fleet role.
    #
    # @return [Types::AssumeFleetRoleForWorkerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssumeFleetRoleForWorkerResponse#credentials #credentials} => Types::AwsCredentials
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assume_fleet_role_for_worker({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.credentials.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeFleetRoleForWorker AWS API Documentation
    #
    # @overload assume_fleet_role_for_worker(params = {})
    # @param [Hash] params ({})
    def assume_fleet_role_for_worker(params = {}, options = {})
      req = build_request(:assume_fleet_role_for_worker, params)
      req.send_request(options)
    end

    # Gets Amazon Web Services credentials from the queue role. The IAM
    # permissions of the credentials are scoped down to have read-only
    # access.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm containing the queue.
    #
    # @option params [required, String] :queue_id
    #   The queue ID.
    #
    # @return [Types::AssumeQueueRoleForReadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssumeQueueRoleForReadResponse#credentials #credentials} => Types::AwsCredentials
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assume_queue_role_for_read({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.credentials.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeQueueRoleForRead AWS API Documentation
    #
    # @overload assume_queue_role_for_read(params = {})
    # @param [Hash] params ({})
    def assume_queue_role_for_read(params = {}, options = {})
      req = build_request(:assume_queue_role_for_read, params)
      req.send_request(options)
    end

    # Allows a user to assume a role for a queue.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the queue that the user assumes the role for.
    #
    # @option params [required, String] :queue_id
    #   The queue ID of the queue that the user assumes the role for.
    #
    # @return [Types::AssumeQueueRoleForUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssumeQueueRoleForUserResponse#credentials #credentials} => Types::AwsCredentials
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assume_queue_role_for_user({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.credentials.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeQueueRoleForUser AWS API Documentation
    #
    # @overload assume_queue_role_for_user(params = {})
    # @param [Hash] params ({})
    def assume_queue_role_for_user(params = {}, options = {})
      req = build_request(:assume_queue_role_for_user, params)
      req.send_request(options)
    end

    # Allows a worker to assume a queue role.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the worker assuming the queue role.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID of the worker assuming the queue role.
    #
    # @option params [required, String] :worker_id
    #   The worker ID of the worker assuming the queue role.
    #
    # @option params [required, String] :queue_id
    #   The queue ID of the worker assuming the queue role.
    #
    # @return [Types::AssumeQueueRoleForWorkerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssumeQueueRoleForWorkerResponse#credentials #credentials} => Types::AwsCredentials
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assume_queue_role_for_worker({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #     queue_id: "QueueId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.credentials.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/AssumeQueueRoleForWorker AWS API Documentation
    #
    # @overload assume_queue_role_for_worker(params = {})
    # @param [Hash] params ({})
    def assume_queue_role_for_worker(params = {}, options = {})
      req = build_request(:assume_queue_role_for_worker, params)
      req.send_request(options)
    end

    # Get batched job details for a worker.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the worker that's fetching job details. The worker
    #   must have an assignment on a job to fetch job details.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID of the worker that's fetching job details. The worker
    #   must have an assignment on a job to fetch job details.
    #
    # @option params [required, String] :worker_id
    #   The worker ID of the worker containing the job details to get.
    #
    # @option params [required, Array<Types::JobEntityIdentifiersUnion>] :identifiers
    #   The job identifiers to include within the job entity batch details.
    #
    # @return [Types::BatchGetJobEntityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetJobEntityResponse#entities #entities} => Array&lt;Types::JobEntity&gt;
    #   * {Types::BatchGetJobEntityResponse#errors #errors} => Array&lt;Types::GetJobEntityError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_job_entity({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #     identifiers: [ # required
    #       {
    #         job_details: {
    #           job_id: "JobId", # required
    #         },
    #         job_attachment_details: {
    #           job_id: "JobId", # required
    #         },
    #         step_details: {
    #           job_id: "JobId", # required
    #           step_id: "StepId", # required
    #         },
    #         environment_details: {
    #           job_id: "JobId", # required
    #           environment_id: "EnvironmentId", # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].job_details.job_id #=> String
    #   resp.entities[0].job_details.job_attachment_settings.s3_bucket_name #=> String
    #   resp.entities[0].job_details.job_attachment_settings.root_prefix #=> String
    #   resp.entities[0].job_details.job_run_as_user.posix.user #=> String
    #   resp.entities[0].job_details.job_run_as_user.posix.group #=> String
    #   resp.entities[0].job_details.job_run_as_user.windows.user #=> String
    #   resp.entities[0].job_details.job_run_as_user.windows.password_arn #=> String
    #   resp.entities[0].job_details.job_run_as_user.run_as #=> String, one of "QUEUE_CONFIGURED_USER", "WORKER_AGENT_USER"
    #   resp.entities[0].job_details.log_group_name #=> String
    #   resp.entities[0].job_details.queue_role_arn #=> String
    #   resp.entities[0].job_details.parameters #=> Hash
    #   resp.entities[0].job_details.parameters["String"].int #=> String
    #   resp.entities[0].job_details.parameters["String"].float #=> String
    #   resp.entities[0].job_details.parameters["String"].string #=> String
    #   resp.entities[0].job_details.parameters["String"].path #=> String
    #   resp.entities[0].job_details.schema_version #=> String
    #   resp.entities[0].job_details.path_mapping_rules #=> Array
    #   resp.entities[0].job_details.path_mapping_rules[0].source_path_format #=> String, one of "windows", "posix"
    #   resp.entities[0].job_details.path_mapping_rules[0].source_path #=> String
    #   resp.entities[0].job_details.path_mapping_rules[0].destination_path #=> String
    #   resp.entities[0].job_attachment_details.job_id #=> String
    #   resp.entities[0].job_attachment_details.attachments.manifests #=> Array
    #   resp.entities[0].job_attachment_details.attachments.manifests[0].file_system_location_name #=> String
    #   resp.entities[0].job_attachment_details.attachments.manifests[0].root_path #=> String
    #   resp.entities[0].job_attachment_details.attachments.manifests[0].root_path_format #=> String, one of "windows", "posix"
    #   resp.entities[0].job_attachment_details.attachments.manifests[0].output_relative_directories #=> Array
    #   resp.entities[0].job_attachment_details.attachments.manifests[0].output_relative_directories[0] #=> String
    #   resp.entities[0].job_attachment_details.attachments.manifests[0].input_manifest_path #=> String
    #   resp.entities[0].job_attachment_details.attachments.manifests[0].input_manifest_hash #=> String
    #   resp.entities[0].job_attachment_details.attachments.file_system #=> String, one of "COPIED", "VIRTUAL"
    #   resp.entities[0].step_details.job_id #=> String
    #   resp.entities[0].step_details.step_id #=> String
    #   resp.entities[0].step_details.schema_version #=> String
    #   resp.entities[0].step_details.dependencies #=> Array
    #   resp.entities[0].step_details.dependencies[0] #=> String
    #   resp.entities[0].environment_details.job_id #=> String
    #   resp.entities[0].environment_details.environment_id #=> String
    #   resp.entities[0].environment_details.schema_version #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].job_details.job_id #=> String
    #   resp.errors[0].job_details.code #=> String, one of "AccessDeniedException", "InternalServerException", "ValidationException", "ResourceNotFoundException", "MaxPayloadSizeExceeded", "ConflictException"
    #   resp.errors[0].job_details.message #=> String
    #   resp.errors[0].job_attachment_details.job_id #=> String
    #   resp.errors[0].job_attachment_details.code #=> String, one of "AccessDeniedException", "InternalServerException", "ValidationException", "ResourceNotFoundException", "MaxPayloadSizeExceeded", "ConflictException"
    #   resp.errors[0].job_attachment_details.message #=> String
    #   resp.errors[0].step_details.job_id #=> String
    #   resp.errors[0].step_details.step_id #=> String
    #   resp.errors[0].step_details.code #=> String, one of "AccessDeniedException", "InternalServerException", "ValidationException", "ResourceNotFoundException", "MaxPayloadSizeExceeded", "ConflictException"
    #   resp.errors[0].step_details.message #=> String
    #   resp.errors[0].environment_details.job_id #=> String
    #   resp.errors[0].environment_details.environment_id #=> String
    #   resp.errors[0].environment_details.code #=> String, one of "AccessDeniedException", "InternalServerException", "ValidationException", "ResourceNotFoundException", "MaxPayloadSizeExceeded", "ConflictException"
    #   resp.errors[0].environment_details.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/BatchGetJobEntity AWS API Documentation
    #
    # @overload batch_get_job_entity(params = {})
    # @param [Hash] params ({})
    def batch_get_job_entity(params = {}, options = {})
      req = build_request(:batch_get_job_entity, params)
      req.send_request(options)
    end

    # Copies a job template to an Amazon S3 bucket.
    #
    # @option params [required, String] :farm_id
    #   The farm ID to copy.
    #
    # @option params [required, String] :job_id
    #   The job ID to copy.
    #
    # @option params [required, String] :queue_id
    #   The queue ID to copy.
    #
    # @option params [required, Types::S3Location] :target_s3_location
    #   The Amazon S3 bucket name and key where you would like to add a copy
    #   of the job template.
    #
    # @return [Types::CopyJobTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyJobTemplateResponse#template_type #template_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_job_template({
    #     farm_id: "FarmId", # required
    #     job_id: "JobId", # required
    #     queue_id: "QueueId", # required
    #     target_s3_location: { # required
    #       bucket_name: "S3BucketName", # required
    #       key: "S3Key", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.template_type #=> String, one of "JSON", "YAML"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CopyJobTemplate AWS API Documentation
    #
    # @overload copy_job_template(params = {})
    # @param [Hash] params ({})
    def copy_job_template(params = {}, options = {})
      req = build_request(:copy_job_template, params)
      req.send_request(options)
    end

    # Creates a budget to set spending thresholds for your rendering
    # activity.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :farm_id
    #   The farm ID to include in this budget.
    #
    # @option params [required, Types::UsageTrackingResource] :usage_tracking_resource
    #   The queue ID provided to this budget to track usage.
    #
    # @option params [required, String] :display_name
    #   The display name of the budget.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :description
    #   The description of the budget.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [required, Float] :approximate_dollar_limit
    #   The dollar limit based on consumed usage.
    #
    # @option params [required, Array<Types::BudgetActionToAdd>] :actions
    #   The budget actions to specify what happens when the budget runs out.
    #
    # @option params [required, Types::BudgetSchedule] :schedule
    #   The schedule to associate with this budget.
    #
    # @return [Types::CreateBudgetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBudgetResponse#budget_id #budget_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_budget({
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     usage_tracking_resource: { # required
    #       queue_id: "QueueId",
    #     },
    #     display_name: "ResourceName", # required
    #     description: "Description",
    #     approximate_dollar_limit: 1.0, # required
    #     actions: [ # required
    #       {
    #         type: "STOP_SCHEDULING_AND_COMPLETE_TASKS", # required, accepts STOP_SCHEDULING_AND_COMPLETE_TASKS, STOP_SCHEDULING_AND_CANCEL_TASKS
    #         threshold_percentage: 1.0, # required
    #         description: "Description",
    #       },
    #     ],
    #     schedule: { # required
    #       fixed: {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.budget_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateBudget AWS API Documentation
    #
    # @overload create_budget(params = {})
    # @param [Hash] params ({})
    def create_budget(params = {}, options = {})
      req = build_request(:create_budget, params)
      req.send_request(options)
    end

    # Creates a farm to allow space for queues and fleets. Farms are the
    # space where the components of your renders gather and are pieced
    # together in the cloud. Farms contain budgets and allow you to enforce
    # permissions. Deadline Cloud farms are a useful container for large
    # projects.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :display_name
    #   The display name of the farm.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :description
    #   The description of the farm.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :kms_key_arn
    #   The ARN of the KMS key to use on the farm.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to your farm. Each tag consists of a tag key and a tag
    #   value. Tag keys and values are both required, but tag values can be
    #   empty strings.
    #
    # @return [Types::CreateFarmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFarmResponse#farm_id #farm_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_farm({
    #     client_token: "ClientToken",
    #     display_name: "ResourceName", # required
    #     description: "Description",
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.farm_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateFarm AWS API Documentation
    #
    # @overload create_farm(params = {})
    # @param [Hash] params ({})
    def create_farm(params = {}, options = {})
      req = build_request(:create_farm, params)
      req.send_request(options)
    end

    # Creates a fleet. Fleets gather information relating to compute, or
    # capacity, for renders within your farms. You can choose to manage your
    # own capacity or opt to have fleets fully managed by Deadline Cloud.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm to connect to the fleet.
    #
    # @option params [required, String] :display_name
    #   The display name of the fleet.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :description
    #   The description of the fleet.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [required, String] :role_arn
    #   The IAM role ARN for the role that the fleet's workers will use.
    #
    # @option params [Integer] :min_worker_count
    #   The minimum number of workers for the fleet.
    #
    # @option params [required, Integer] :max_worker_count
    #   The maximum number of workers for the fleet.
    #
    # @option params [required, Types::FleetConfiguration] :configuration
    #   The configuration settings for the fleet. Customer managed fleets are
    #   self-managed. Service managed Amazon EC2 fleets are managed by
    #   Deadline Cloud.
    #
    # @option params [Hash<String,String>] :tags
    #   Each tag consists of a tag key and a tag value. Tag keys and values
    #   are both required, but tag values can be empty strings.
    #
    # @return [Types::CreateFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetResponse#fleet_id #fleet_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet({
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     display_name: "ResourceName", # required
    #     description: "Description",
    #     role_arn: "IamRoleArn", # required
    #     min_worker_count: 1,
    #     max_worker_count: 1, # required
    #     configuration: { # required
    #       customer_managed: {
    #         mode: "NO_SCALING", # required, accepts NO_SCALING, EVENT_BASED_AUTO_SCALING
    #         worker_capabilities: { # required
    #           v_cpu_count: { # required
    #             min: 1, # required
    #             max: 1,
    #           },
    #           memory_mi_b: { # required
    #             min: 1, # required
    #             max: 1,
    #           },
    #           accelerator_types: ["gpu"], # accepts gpu
    #           accelerator_count: {
    #             min: 1, # required
    #             max: 1,
    #           },
    #           accelerator_total_memory_mi_b: {
    #             min: 1, # required
    #             max: 1,
    #           },
    #           os_family: "WINDOWS", # required, accepts WINDOWS, LINUX, MACOS
    #           cpu_architecture_type: "x86_64", # required, accepts x86_64, arm64
    #           custom_amounts: [
    #             {
    #               name: "AmountCapabilityName", # required
    #               min: 1.0, # required
    #               max: 1.0,
    #             },
    #           ],
    #           custom_attributes: [
    #             {
    #               name: "AttributeCapabilityName", # required
    #               values: ["AttributeCapabilityValue"], # required
    #             },
    #           ],
    #         },
    #         storage_profile_id: "StorageProfileId",
    #       },
    #       service_managed_ec2: {
    #         instance_capabilities: { # required
    #           v_cpu_count: { # required
    #             min: 1, # required
    #             max: 1,
    #           },
    #           memory_mi_b: { # required
    #             min: 1, # required
    #             max: 1,
    #           },
    #           os_family: "WINDOWS", # required, accepts WINDOWS, LINUX
    #           cpu_architecture_type: "x86_64", # required, accepts x86_64, arm64
    #           root_ebs_volume: {
    #             size_gi_b: 1,
    #             iops: 1,
    #             throughput_mi_b: 1,
    #           },
    #           accelerator_capabilities: {
    #             selections: [ # required
    #               {
    #                 name: "t4", # required, accepts t4, a10g, l4, l40s
    #                 runtime: "AcceleratorRuntime",
    #               },
    #             ],
    #             count: {
    #               min: 1, # required
    #               max: 1,
    #             },
    #           },
    #           allowed_instance_types: ["InstanceType"],
    #           excluded_instance_types: ["InstanceType"],
    #           custom_amounts: [
    #             {
    #               name: "AmountCapabilityName", # required
    #               min: 1.0, # required
    #               max: 1.0,
    #             },
    #           ],
    #           custom_attributes: [
    #             {
    #               name: "AttributeCapabilityName", # required
    #               values: ["AttributeCapabilityValue"], # required
    #             },
    #           ],
    #         },
    #         instance_market_options: { # required
    #           type: "on-demand", # required, accepts on-demand, spot
    #         },
    #       },
    #     },
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateFleet AWS API Documentation
    #
    # @overload create_fleet(params = {})
    # @param [Hash] params ({})
    def create_fleet(params = {}, options = {})
      req = build_request(:create_fleet, params)
      req.send_request(options)
    end

    # Creates a job. A job is a set of instructions that Deadline Cloud uses
    # to schedule and run work on available workers. For more information,
    # see [Deadline Cloud jobs][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/deadline-cloud/latest/userguide/deadline-cloud-jobs.html
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm to connect to the job.
    #
    # @option params [required, String] :queue_id
    #   The ID of the queue that the job is submitted to.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :template
    #   The job template to use for this job.
    #
    # @option params [String] :template_type
    #   The file type for the job template.
    #
    # @option params [required, Integer] :priority
    #   The priority of the job on a scale of 0 to 100. The highest priority
    #   (first scheduled) is 100. When two jobs have the same priority, the
    #   oldest job is scheduled first.
    #
    # @option params [Hash<String,Types::JobParameter>] :parameters
    #   The parameters for the job.
    #
    # @option params [Types::Attachments] :attachments
    #   The attachments for the job. Attach files required for the job to run
    #   to a render job.
    #
    # @option params [String] :storage_profile_id
    #   The storage profile ID for the storage profile to connect to the job.
    #
    # @option params [String] :target_task_run_status
    #   The initial job status when it is created. Jobs that are created with
    #   a `SUSPENDED` status will not run until manually requeued.
    #
    # @option params [Integer] :max_failed_tasks_count
    #   The number of task failures before the job stops running and is marked
    #   as `FAILED`.
    #
    # @option params [Integer] :max_retries_per_task
    #   The maximum number of retries for each task.
    #
    # @option params [Integer] :max_worker_count
    #   The maximum number of worker hosts that can concurrently process a
    #   job. When the `maxWorkerCount` is reached, no more workers will be
    #   assigned to process the job, even if the fleets assigned to the job's
    #   queue has available workers.
    #
    #   You can't set the `maxWorkerCount` to 0. If you set it to -1, there
    #   is no maximum number of workers.
    #
    #   If you don't specify the `maxWorkerCount`, Deadline Cloud won't
    #   throttle the number of workers used to process the job.
    #
    # @option params [String] :source_job_id
    #   The job ID for the source job.
    #
    # @return [Types::CreateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     client_token: "ClientToken",
    #     template: "JobTemplate",
    #     template_type: "JSON", # accepts JSON, YAML
    #     priority: 1, # required
    #     parameters: {
    #       "String" => {
    #         int: "IntString",
    #         float: "FloatString",
    #         string: "ParameterString",
    #         path: "PathString",
    #       },
    #     },
    #     attachments: {
    #       manifests: [ # required
    #         {
    #           file_system_location_name: "FileSystemLocationName",
    #           root_path: "ManifestPropertiesRootPathString", # required
    #           root_path_format: "windows", # required, accepts windows, posix
    #           output_relative_directories: ["OutputRelativeDirectoriesListMemberString"],
    #           input_manifest_path: "ManifestPropertiesInputManifestPathString",
    #           input_manifest_hash: "ManifestPropertiesInputManifestHashString",
    #         },
    #       ],
    #       file_system: "COPIED", # accepts COPIED, VIRTUAL
    #     },
    #     storage_profile_id: "StorageProfileId",
    #     target_task_run_status: "READY", # accepts READY, SUSPENDED
    #     max_failed_tasks_count: 1,
    #     max_retries_per_task: 1,
    #     max_worker_count: 1,
    #     source_job_id: "JobId",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateJob AWS API Documentation
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # Creates a license endpoint to integrate your various licensed software
    # used for rendering on Deadline Cloud.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :vpc_id
    #   The VPC (virtual private cloud) ID to use with the license endpoint.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The subnet IDs.
    #
    # @option params [required, Array<String>] :security_group_ids
    #   The security group IDs.
    #
    # @option params [Hash<String,String>] :tags
    #   Each tag consists of a tag key and a tag value. Tag keys and values
    #   are both required, but tag values can be empty strings.
    #
    # @return [Types::CreateLicenseEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLicenseEndpointResponse#license_endpoint_id #license_endpoint_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_license_endpoint({
    #     client_token: "ClientToken",
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.license_endpoint_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateLicenseEndpoint AWS API Documentation
    #
    # @overload create_license_endpoint(params = {})
    # @param [Hash] params ({})
    def create_license_endpoint(params = {}, options = {})
      req = build_request(:create_license_endpoint, params)
      req.send_request(options)
    end

    # Creates a limit that manages the distribution of shared resources,
    # such as floating licenses. A limit can throttle work assignments, help
    # manage workloads, and track current usage. Before you use a limit, you
    # must associate the limit with one or more queues.
    #
    # You must add the `amountRequirementName` to a step in a job template
    # to declare the limit requirement.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :display_name
    #   The display name of the limit.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [required, String] :amount_requirement_name
    #   The value that you specify as the `name` in the `amounts` field of the
    #   `hostRequirements` in a step of a job template to declare the limit
    #   requirement.
    #
    # @option params [required, Integer] :max_count
    #   The maximum number of resources constrained by this limit. When all of
    #   the resources are in use, steps that require the limit won't be
    #   scheduled until the resource is available.
    #
    #   The `maxCount` must not be 0. If the value is -1, there is no
    #   restriction on the number of resources that can be acquired for this
    #   limit.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm that contains the limit.
    #
    # @option params [String] :description
    #   A description of the limit. A description helps you identify the
    #   purpose of the limit.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @return [Types::CreateLimitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLimitResponse#limit_id #limit_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_limit({
    #     client_token: "ClientToken",
    #     display_name: "ResourceName", # required
    #     amount_requirement_name: "AmountRequirementName", # required
    #     max_count: 1, # required
    #     farm_id: "FarmId", # required
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.limit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateLimit AWS API Documentation
    #
    # @overload create_limit(params = {})
    # @param [Hash] params ({})
    def create_limit(params = {}, options = {})
      req = build_request(:create_limit, params)
      req.send_request(options)
    end

    # Creates an Amazon Web Services Deadline Cloud monitor that you can use
    # to view your farms, queues, and fleets. After you submit a job, you
    # can track the progress of the tasks and steps that make up the job,
    # and then download the job's results.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :display_name
    #   The name that you give the monitor that is displayed in the Deadline
    #   Cloud console.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [required, String] :identity_center_instance_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center instance
    #   that authenticates monitor users.
    #
    # @option params [required, String] :subdomain
    #   The subdomain to use when creating the monitor URL. The full URL of
    #   the monitor is subdomain.Region.deadlinecloud.amazonaws.com.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that the monitor uses
    #   to connect to Deadline Cloud. Every user that signs in to the monitor
    #   using IAM Identity Center uses this role to access Deadline Cloud
    #   resources.
    #
    # @return [Types::CreateMonitorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMonitorResponse#monitor_id #monitor_id} => String
    #   * {Types::CreateMonitorResponse#identity_center_application_arn #identity_center_application_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_monitor({
    #     client_token: "ClientToken",
    #     display_name: "ResourceName", # required
    #     identity_center_instance_arn: "IdentityCenterInstanceArn", # required
    #     subdomain: "Subdomain", # required
    #     role_arn: "IamRoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.monitor_id #=> String
    #   resp.identity_center_application_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateMonitor AWS API Documentation
    #
    # @overload create_monitor(params = {})
    # @param [Hash] params ({})
    def create_monitor(params = {}, options = {})
      req = build_request(:create_monitor, params)
      req.send_request(options)
    end

    # Creates a queue to coordinate the order in which jobs run on a farm. A
    # queue can also specify where to pull resources and indicate where to
    # output completed jobs.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm to connect to the queue.
    #
    # @option params [required, String] :display_name
    #   The display name of the queue.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :description
    #   The description of the queue.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :default_budget_action
    #   The default action to take on a queue if a budget isn't configured.
    #
    # @option params [Types::JobAttachmentSettings] :job_attachment_settings
    #   The job attachment settings for the queue. These are the Amazon S3
    #   bucket name and the Amazon S3 prefix.
    #
    # @option params [String] :role_arn
    #   The IAM role ARN that workers will use while running jobs for this
    #   queue.
    #
    # @option params [Types::JobRunAsUser] :job_run_as_user
    #   The jobs in the queue run as the specified POSIX user.
    #
    # @option params [Array<String>] :required_file_system_location_names
    #   The file system location name to include in the queue.
    #
    # @option params [Array<String>] :allowed_storage_profile_ids
    #   The storage profile IDs to include in the queue.
    #
    # @option params [Hash<String,String>] :tags
    #   Each tag consists of a tag key and a tag value. Tag keys and values
    #   are both required, but tag values can be empty strings.
    #
    # @return [Types::CreateQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQueueResponse#queue_id #queue_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_queue({
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     display_name: "ResourceName", # required
    #     description: "Description",
    #     default_budget_action: "NONE", # accepts NONE, STOP_SCHEDULING_AND_COMPLETE_TASKS, STOP_SCHEDULING_AND_CANCEL_TASKS
    #     job_attachment_settings: {
    #       s3_bucket_name: "S3BucketName", # required
    #       root_prefix: "S3Prefix", # required
    #     },
    #     role_arn: "IamRoleArn",
    #     job_run_as_user: {
    #       posix: {
    #         user: "PosixUserUserString", # required
    #         group: "PosixUserGroupString", # required
    #       },
    #       windows: {
    #         user: "WindowsUserUserString", # required
    #         password_arn: "WindowsUserPasswordArnString", # required
    #       },
    #       run_as: "QUEUE_CONFIGURED_USER", # required, accepts QUEUE_CONFIGURED_USER, WORKER_AGENT_USER
    #     },
    #     required_file_system_location_names: ["FileSystemLocationName"],
    #     allowed_storage_profile_ids: ["StorageProfileId"],
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateQueue AWS API Documentation
    #
    # @overload create_queue(params = {})
    # @param [Hash] params ({})
    def create_queue(params = {}, options = {})
      req = build_request(:create_queue, params)
      req.send_request(options)
    end

    # Creates an environment for a queue that defines how jobs in the queue
    # run.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm to connect to the environment.
    #
    # @option params [required, String] :queue_id
    #   The queue ID to connect the queue and environment.
    #
    # @option params [required, Integer] :priority
    #   Sets the priority of the environments in the queue from 0 to 10,000,
    #   where 0 is the highest priority. If two environments share the same
    #   priority value, the environment created first takes higher priority.
    #
    # @option params [required, String] :template_type
    #   The template's file type, `JSON` or `YAML`.
    #
    # @option params [required, String] :template
    #   The environment template to use in the queue.
    #
    # @return [Types::CreateQueueEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQueueEnvironmentResponse#queue_environment_id #queue_environment_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_queue_environment({
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     priority: 1, # required
    #     template_type: "JSON", # required, accepts JSON, YAML
    #     template: "EnvironmentTemplate", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_environment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateQueueEnvironment AWS API Documentation
    #
    # @overload create_queue_environment(params = {})
    # @param [Hash] params ({})
    def create_queue_environment(params = {}, options = {})
      req = build_request(:create_queue_environment, params)
      req.send_request(options)
    end

    # Creates an association between a queue and a fleet.
    #
    # @option params [required, String] :farm_id
    #   The ID of the farm that the queue and fleet belong to.
    #
    # @option params [required, String] :queue_id
    #   The queue ID.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_queue_fleet_association({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     fleet_id: "FleetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateQueueFleetAssociation AWS API Documentation
    #
    # @overload create_queue_fleet_association(params = {})
    # @param [Hash] params ({})
    def create_queue_fleet_association(params = {}, options = {})
      req = build_request(:create_queue_fleet_association, params)
      req.send_request(options)
    end

    # Associates a limit with a particular queue. After the limit is
    # associated, all workers for jobs that specify the limit associated
    # with the queue are subject to the limit. You can't associate two
    # limits with the same `amountRequirementName` to the same queue.
    #
    # @option params [required, String] :farm_id
    #   The unique identifier of the farm that contains the queue and limit to
    #   associate.
    #
    # @option params [required, String] :queue_id
    #   The unique identifier of the queue to associate with the limit.
    #
    # @option params [required, String] :limit_id
    #   The unique identifier of the limit to associate with the queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_queue_limit_association({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     limit_id: "LimitId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateQueueLimitAssociation AWS API Documentation
    #
    # @overload create_queue_limit_association(params = {})
    # @param [Hash] params ({})
    def create_queue_limit_association(params = {}, options = {})
      req = build_request(:create_queue_limit_association, params)
      req.send_request(options)
    end

    # Creates a storage profile that specifies the operating system, file
    # type, and file location of resources used on a farm.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm to connect to the storage profile.
    #
    # @option params [required, String] :display_name
    #   The display name of the storage profile.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [required, String] :os_family
    #   The type of operating system (OS) for the storage profile.
    #
    # @option params [Array<Types::FileSystemLocation>] :file_system_locations
    #   File system paths to include in the storage profile.
    #
    # @return [Types::CreateStorageProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStorageProfileResponse#storage_profile_id #storage_profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_storage_profile({
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     display_name: "ResourceName", # required
    #     os_family: "WINDOWS", # required, accepts WINDOWS, LINUX, MACOS
    #     file_system_locations: [
    #       {
    #         name: "FileSystemLocationName", # required
    #         path: "PathString", # required
    #         type: "SHARED", # required, accepts SHARED, LOCAL
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateStorageProfile AWS API Documentation
    #
    # @overload create_storage_profile(params = {})
    # @param [Hash] params ({})
    def create_storage_profile(params = {}, options = {})
      req = build_request(:create_storage_profile, params)
      req.send_request(options)
    end

    # Creates a worker. A worker tells your instance how much processing
    # power (vCPU), and memory (GiB) you’ll need to assemble the digital
    # assets held within a particular instance. You can specify certain
    # instance types to use, or let the worker know which instances types to
    # exclude.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm to connect to the worker.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID to connect to the worker.
    #
    # @option params [Types::HostPropertiesRequest] :host_properties
    #   The IP address and host name of the worker.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateWorkerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkerResponse#worker_id #worker_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_worker({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     host_properties: {
    #       ip_addresses: {
    #         ip_v4_addresses: ["IpV4Address"],
    #         ip_v6_addresses: ["IpV6Address"],
    #       },
    #       host_name: "HostName",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.worker_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/CreateWorker AWS API Documentation
    #
    # @overload create_worker(params = {})
    # @param [Hash] params ({})
    def create_worker(params = {}, options = {})
      req = build_request(:create_worker, params)
      req.send_request(options)
    end

    # Deletes a budget.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm to remove from the budget.
    #
    # @option params [required, String] :budget_id
    #   The budget ID of the budget to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_budget({
    #     farm_id: "FarmId", # required
    #     budget_id: "BudgetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteBudget AWS API Documentation
    #
    # @overload delete_budget(params = {})
    # @param [Hash] params ({})
    def delete_budget(params = {}, options = {})
      req = build_request(:delete_budget, params)
      req.send_request(options)
    end

    # Deletes a farm.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_farm({
    #     farm_id: "FarmId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteFarm AWS API Documentation
    #
    # @overload delete_farm(params = {})
    # @param [Hash] params ({})
    def delete_farm(params = {}, options = {})
      req = build_request(:delete_farm, params)
      req.send_request(options)
    end

    # Deletes a fleet.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm to remove from the fleet.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID of the fleet to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet({
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteFleet AWS API Documentation
    #
    # @overload delete_fleet(params = {})
    # @param [Hash] params ({})
    def delete_fleet(params = {}, options = {})
      req = build_request(:delete_fleet, params)
      req.send_request(options)
    end

    # Deletes a license endpoint.
    #
    # @option params [required, String] :license_endpoint_id
    #   The license endpoint ID of the license endpoint to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_license_endpoint({
    #     license_endpoint_id: "LicenseEndpointId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteLicenseEndpoint AWS API Documentation
    #
    # @overload delete_license_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_license_endpoint(params = {}, options = {})
      req = build_request(:delete_license_endpoint, params)
      req.send_request(options)
    end

    # Removes a limit from the specified farm. Before you delete a limit you
    # must use the `DeleteQueueLimitAssociation` operation to remove the
    # association with any queues.
    #
    # @option params [required, String] :farm_id
    #   The unique identifier of the farm that contains the limit to delete.
    #
    # @option params [required, String] :limit_id
    #   The unique identifier of the limit to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_limit({
    #     farm_id: "FarmId", # required
    #     limit_id: "LimitId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteLimit AWS API Documentation
    #
    # @overload delete_limit(params = {})
    # @param [Hash] params ({})
    def delete_limit(params = {}, options = {})
      req = build_request(:delete_limit, params)
      req.send_request(options)
    end

    # Deletes a metered product.
    #
    # @option params [required, String] :license_endpoint_id
    #   The ID of the license endpoint from which to remove the metered
    #   product.
    #
    # @option params [required, String] :product_id
    #   The product ID to remove from the license endpoint.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_metered_product({
    #     license_endpoint_id: "LicenseEndpointId", # required
    #     product_id: "MeteredProductId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteMeteredProduct AWS API Documentation
    #
    # @overload delete_metered_product(params = {})
    # @param [Hash] params ({})
    def delete_metered_product(params = {}, options = {})
      req = build_request(:delete_metered_product, params)
      req.send_request(options)
    end

    # Removes a Deadline Cloud monitor. After you delete a monitor, you can
    # create a new one and attach farms to the monitor.
    #
    # @option params [required, String] :monitor_id
    #   The unique identifier of the monitor to delete. This ID is returned by
    #   the `CreateMonitor` operation, and is included in the response to the
    #   `GetMonitor` operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_monitor({
    #     monitor_id: "MonitorId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteMonitor AWS API Documentation
    #
    # @overload delete_monitor(params = {})
    # @param [Hash] params ({})
    def delete_monitor(params = {}, options = {})
      req = build_request(:delete_monitor, params)
      req.send_request(options)
    end

    # Deletes a queue.
    #
    # You can't recover the jobs in a queue if you delete the queue.
    # Deleting the queue also deletes the jobs in that queue.
    #
    # @option params [required, String] :farm_id
    #   The ID of the farm from which to remove the queue.
    #
    # @option params [required, String] :queue_id
    #   The queue ID of the queue to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queue({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteQueue AWS API Documentation
    #
    # @overload delete_queue(params = {})
    # @param [Hash] params ({})
    def delete_queue(params = {}, options = {})
      req = build_request(:delete_queue, params)
      req.send_request(options)
    end

    # Deletes a queue environment.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm from which to remove the queue environment.
    #
    # @option params [required, String] :queue_id
    #   The queue ID of the queue environment to delete.
    #
    # @option params [required, String] :queue_environment_id
    #   The queue environment ID of the queue environment to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queue_environment({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     queue_environment_id: "QueueEnvironmentId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteQueueEnvironment AWS API Documentation
    #
    # @overload delete_queue_environment(params = {})
    # @param [Hash] params ({})
    def delete_queue_environment(params = {}, options = {})
      req = build_request(:delete_queue_environment, params)
      req.send_request(options)
    end

    # Deletes a queue-fleet association.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm that holds the queue-fleet association.
    #
    # @option params [required, String] :queue_id
    #   The queue ID of the queue-fleet association.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID of the queue-fleet association.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queue_fleet_association({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     fleet_id: "FleetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteQueueFleetAssociation AWS API Documentation
    #
    # @overload delete_queue_fleet_association(params = {})
    # @param [Hash] params ({})
    def delete_queue_fleet_association(params = {}, options = {})
      req = build_request(:delete_queue_fleet_association, params)
      req.send_request(options)
    end

    # Removes the association between a queue and a limit. You must use the
    # `UpdateQueueLimitAssociation` operation to set the status to
    # `STOP_LIMIT_USAGE_AND_COMPLETE_TASKS` or
    # `STOP_LIMIT_USAGE_AND_CANCEL_TASKS`. The status does not change
    # immediately. Use the `GetQueueLimitAssociation` operation to see if
    # the status changed to `STOPPED` before deleting the association.
    #
    # @option params [required, String] :farm_id
    #   The unique identifier of the farm that contains the queue and limit to
    #   disassociate.
    #
    # @option params [required, String] :queue_id
    #   The unique identifier of the queue to disassociate.
    #
    # @option params [required, String] :limit_id
    #   The unique identifier of the limit to disassociate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queue_limit_association({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     limit_id: "LimitId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteQueueLimitAssociation AWS API Documentation
    #
    # @overload delete_queue_limit_association(params = {})
    # @param [Hash] params ({})
    def delete_queue_limit_association(params = {}, options = {})
      req = build_request(:delete_queue_limit_association, params)
      req.send_request(options)
    end

    # Deletes a storage profile.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm from which to remove the storage profile.
    #
    # @option params [required, String] :storage_profile_id
    #   The storage profile ID of the storage profile to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_storage_profile({
    #     farm_id: "FarmId", # required
    #     storage_profile_id: "StorageProfileId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteStorageProfile AWS API Documentation
    #
    # @overload delete_storage_profile(params = {})
    # @param [Hash] params ({})
    def delete_storage_profile(params = {}, options = {})
      req = build_request(:delete_storage_profile, params)
      req.send_request(options)
    end

    # Deletes a worker.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the worker to delete.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID of the worker to delete.
    #
    # @option params [required, String] :worker_id
    #   The worker ID of the worker to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_worker({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DeleteWorker AWS API Documentation
    #
    # @overload delete_worker(params = {})
    # @param [Hash] params ({})
    def delete_worker(params = {}, options = {})
      req = build_request(:delete_worker, params)
      req.send_request(options)
    end

    # Disassociates a member from a farm.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm to disassociate from the member.
    #
    # @option params [required, String] :principal_id
    #   A member's principal ID to disassociate from a farm.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member_from_farm({
    #     farm_id: "FarmId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DisassociateMemberFromFarm AWS API Documentation
    #
    # @overload disassociate_member_from_farm(params = {})
    # @param [Hash] params ({})
    def disassociate_member_from_farm(params = {}, options = {})
      req = build_request(:disassociate_member_from_farm, params)
      req.send_request(options)
    end

    # Disassociates a member from a fleet.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the fleet to disassociate a member from.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID of the fleet to from which to disassociate a member.
    #
    # @option params [required, String] :principal_id
    #   A member's principal ID to disassociate from a fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member_from_fleet({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DisassociateMemberFromFleet AWS API Documentation
    #
    # @overload disassociate_member_from_fleet(params = {})
    # @param [Hash] params ({})
    def disassociate_member_from_fleet(params = {}, options = {})
      req = build_request(:disassociate_member_from_fleet, params)
      req.send_request(options)
    end

    # Disassociates a member from a job.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the job to disassociate from the member.
    #
    # @option params [required, String] :queue_id
    #   The queue ID connected to a job for which you're disassociating a
    #   member.
    #
    # @option params [required, String] :job_id
    #   The job ID to disassociate from a member in a job.
    #
    # @option params [required, String] :principal_id
    #   A member's principal ID to disassociate from a job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member_from_job({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DisassociateMemberFromJob AWS API Documentation
    #
    # @overload disassociate_member_from_job(params = {})
    # @param [Hash] params ({})
    def disassociate_member_from_job(params = {}, options = {})
      req = build_request(:disassociate_member_from_job, params)
      req.send_request(options)
    end

    # Disassociates a member from a queue.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the queue to disassociate from a member.
    #
    # @option params [required, String] :queue_id
    #   The queue ID of the queue in which you're disassociating from a
    #   member.
    #
    # @option params [required, String] :principal_id
    #   A member's principal ID to disassociate from a queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member_from_queue({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     principal_id: "IdentityCenterPrincipalId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/DisassociateMemberFromQueue AWS API Documentation
    #
    # @overload disassociate_member_from_queue(params = {})
    # @param [Hash] params ({})
    def disassociate_member_from_queue(params = {}, options = {})
      req = build_request(:disassociate_member_from_queue, params)
      req.send_request(options)
    end

    # Get a budget.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm connected to the budget.
    #
    # @option params [required, String] :budget_id
    #   The budget ID.
    #
    # @return [Types::GetBudgetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBudgetResponse#budget_id #budget_id} => String
    #   * {Types::GetBudgetResponse#usage_tracking_resource #usage_tracking_resource} => Types::UsageTrackingResource
    #   * {Types::GetBudgetResponse#status #status} => String
    #   * {Types::GetBudgetResponse#display_name #display_name} => String
    #   * {Types::GetBudgetResponse#description #description} => String
    #   * {Types::GetBudgetResponse#approximate_dollar_limit #approximate_dollar_limit} => Float
    #   * {Types::GetBudgetResponse#usages #usages} => Types::ConsumedUsages
    #   * {Types::GetBudgetResponse#actions #actions} => Array&lt;Types::ResponseBudgetAction&gt;
    #   * {Types::GetBudgetResponse#schedule #schedule} => Types::BudgetSchedule
    #   * {Types::GetBudgetResponse#created_by #created_by} => String
    #   * {Types::GetBudgetResponse#created_at #created_at} => Time
    #   * {Types::GetBudgetResponse#updated_by #updated_by} => String
    #   * {Types::GetBudgetResponse#updated_at #updated_at} => Time
    #   * {Types::GetBudgetResponse#queue_stopped_at #queue_stopped_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_budget({
    #     farm_id: "FarmId", # required
    #     budget_id: "BudgetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.budget_id #=> String
    #   resp.usage_tracking_resource.queue_id #=> String
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.approximate_dollar_limit #=> Float
    #   resp.usages.approximate_dollar_usage #=> Float
    #   resp.actions #=> Array
    #   resp.actions[0].type #=> String, one of "STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS"
    #   resp.actions[0].threshold_percentage #=> Float
    #   resp.actions[0].description #=> String
    #   resp.schedule.fixed.start_time #=> Time
    #   resp.schedule.fixed.end_time #=> Time
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.updated_by #=> String
    #   resp.updated_at #=> Time
    #   resp.queue_stopped_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetBudget AWS API Documentation
    #
    # @overload get_budget(params = {})
    # @param [Hash] params ({})
    def get_budget(params = {}, options = {})
      req = build_request(:get_budget, params)
      req.send_request(options)
    end

    # Get a farm.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm.
    #
    # @return [Types::GetFarmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFarmResponse#farm_id #farm_id} => String
    #   * {Types::GetFarmResponse#display_name #display_name} => String
    #   * {Types::GetFarmResponse#description #description} => String
    #   * {Types::GetFarmResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::GetFarmResponse#created_at #created_at} => Time
    #   * {Types::GetFarmResponse#created_by #created_by} => String
    #   * {Types::GetFarmResponse#updated_at #updated_at} => Time
    #   * {Types::GetFarmResponse#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_farm({
    #     farm_id: "FarmId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.farm_id #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.kms_key_arn #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetFarm AWS API Documentation
    #
    # @overload get_farm(params = {})
    # @param [Hash] params ({})
    def get_farm(params = {}, options = {})
      req = build_request(:get_farm, params)
      req.send_request(options)
    end

    # Get a fleet.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm in the fleet.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID of the fleet to get.
    #
    # @return [Types::GetFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFleetResponse#fleet_id #fleet_id} => String
    #   * {Types::GetFleetResponse#farm_id #farm_id} => String
    #   * {Types::GetFleetResponse#display_name #display_name} => String
    #   * {Types::GetFleetResponse#description #description} => String
    #   * {Types::GetFleetResponse#status #status} => String
    #   * {Types::GetFleetResponse#auto_scaling_status #auto_scaling_status} => String
    #   * {Types::GetFleetResponse#target_worker_count #target_worker_count} => Integer
    #   * {Types::GetFleetResponse#worker_count #worker_count} => Integer
    #   * {Types::GetFleetResponse#min_worker_count #min_worker_count} => Integer
    #   * {Types::GetFleetResponse#max_worker_count #max_worker_count} => Integer
    #   * {Types::GetFleetResponse#configuration #configuration} => Types::FleetConfiguration
    #   * {Types::GetFleetResponse#capabilities #capabilities} => Types::FleetCapabilities
    #   * {Types::GetFleetResponse#role_arn #role_arn} => String
    #   * {Types::GetFleetResponse#created_at #created_at} => Time
    #   * {Types::GetFleetResponse#created_by #created_by} => String
    #   * {Types::GetFleetResponse#updated_at #updated_at} => Time
    #   * {Types::GetFleetResponse#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_fleet({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.farm_id #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "UPDATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.auto_scaling_status #=> String, one of "GROWING", "STEADY", "SHRINKING"
    #   resp.target_worker_count #=> Integer
    #   resp.worker_count #=> Integer
    #   resp.min_worker_count #=> Integer
    #   resp.max_worker_count #=> Integer
    #   resp.configuration.customer_managed.mode #=> String, one of "NO_SCALING", "EVENT_BASED_AUTO_SCALING"
    #   resp.configuration.customer_managed.worker_capabilities.v_cpu_count.min #=> Integer
    #   resp.configuration.customer_managed.worker_capabilities.v_cpu_count.max #=> Integer
    #   resp.configuration.customer_managed.worker_capabilities.memory_mi_b.min #=> Integer
    #   resp.configuration.customer_managed.worker_capabilities.memory_mi_b.max #=> Integer
    #   resp.configuration.customer_managed.worker_capabilities.accelerator_types #=> Array
    #   resp.configuration.customer_managed.worker_capabilities.accelerator_types[0] #=> String, one of "gpu"
    #   resp.configuration.customer_managed.worker_capabilities.accelerator_count.min #=> Integer
    #   resp.configuration.customer_managed.worker_capabilities.accelerator_count.max #=> Integer
    #   resp.configuration.customer_managed.worker_capabilities.accelerator_total_memory_mi_b.min #=> Integer
    #   resp.configuration.customer_managed.worker_capabilities.accelerator_total_memory_mi_b.max #=> Integer
    #   resp.configuration.customer_managed.worker_capabilities.os_family #=> String, one of "WINDOWS", "LINUX", "MACOS"
    #   resp.configuration.customer_managed.worker_capabilities.cpu_architecture_type #=> String, one of "x86_64", "arm64"
    #   resp.configuration.customer_managed.worker_capabilities.custom_amounts #=> Array
    #   resp.configuration.customer_managed.worker_capabilities.custom_amounts[0].name #=> String
    #   resp.configuration.customer_managed.worker_capabilities.custom_amounts[0].min #=> Float
    #   resp.configuration.customer_managed.worker_capabilities.custom_amounts[0].max #=> Float
    #   resp.configuration.customer_managed.worker_capabilities.custom_attributes #=> Array
    #   resp.configuration.customer_managed.worker_capabilities.custom_attributes[0].name #=> String
    #   resp.configuration.customer_managed.worker_capabilities.custom_attributes[0].values #=> Array
    #   resp.configuration.customer_managed.worker_capabilities.custom_attributes[0].values[0] #=> String
    #   resp.configuration.customer_managed.storage_profile_id #=> String
    #   resp.configuration.service_managed_ec2.instance_capabilities.v_cpu_count.min #=> Integer
    #   resp.configuration.service_managed_ec2.instance_capabilities.v_cpu_count.max #=> Integer
    #   resp.configuration.service_managed_ec2.instance_capabilities.memory_mi_b.min #=> Integer
    #   resp.configuration.service_managed_ec2.instance_capabilities.memory_mi_b.max #=> Integer
    #   resp.configuration.service_managed_ec2.instance_capabilities.os_family #=> String, one of "WINDOWS", "LINUX"
    #   resp.configuration.service_managed_ec2.instance_capabilities.cpu_architecture_type #=> String, one of "x86_64", "arm64"
    #   resp.configuration.service_managed_ec2.instance_capabilities.root_ebs_volume.size_gi_b #=> Integer
    #   resp.configuration.service_managed_ec2.instance_capabilities.root_ebs_volume.iops #=> Integer
    #   resp.configuration.service_managed_ec2.instance_capabilities.root_ebs_volume.throughput_mi_b #=> Integer
    #   resp.configuration.service_managed_ec2.instance_capabilities.accelerator_capabilities.selections #=> Array
    #   resp.configuration.service_managed_ec2.instance_capabilities.accelerator_capabilities.selections[0].name #=> String, one of "t4", "a10g", "l4", "l40s"
    #   resp.configuration.service_managed_ec2.instance_capabilities.accelerator_capabilities.selections[0].runtime #=> String
    #   resp.configuration.service_managed_ec2.instance_capabilities.accelerator_capabilities.count.min #=> Integer
    #   resp.configuration.service_managed_ec2.instance_capabilities.accelerator_capabilities.count.max #=> Integer
    #   resp.configuration.service_managed_ec2.instance_capabilities.allowed_instance_types #=> Array
    #   resp.configuration.service_managed_ec2.instance_capabilities.allowed_instance_types[0] #=> String
    #   resp.configuration.service_managed_ec2.instance_capabilities.excluded_instance_types #=> Array
    #   resp.configuration.service_managed_ec2.instance_capabilities.excluded_instance_types[0] #=> String
    #   resp.configuration.service_managed_ec2.instance_capabilities.custom_amounts #=> Array
    #   resp.configuration.service_managed_ec2.instance_capabilities.custom_amounts[0].name #=> String
    #   resp.configuration.service_managed_ec2.instance_capabilities.custom_amounts[0].min #=> Float
    #   resp.configuration.service_managed_ec2.instance_capabilities.custom_amounts[0].max #=> Float
    #   resp.configuration.service_managed_ec2.instance_capabilities.custom_attributes #=> Array
    #   resp.configuration.service_managed_ec2.instance_capabilities.custom_attributes[0].name #=> String
    #   resp.configuration.service_managed_ec2.instance_capabilities.custom_attributes[0].values #=> Array
    #   resp.configuration.service_managed_ec2.instance_capabilities.custom_attributes[0].values[0] #=> String
    #   resp.configuration.service_managed_ec2.instance_market_options.type #=> String, one of "on-demand", "spot"
    #   resp.capabilities.amounts #=> Array
    #   resp.capabilities.amounts[0].name #=> String
    #   resp.capabilities.amounts[0].min #=> Float
    #   resp.capabilities.amounts[0].max #=> Float
    #   resp.capabilities.attributes #=> Array
    #   resp.capabilities.attributes[0].name #=> String
    #   resp.capabilities.attributes[0].values #=> Array
    #   resp.capabilities.attributes[0].values[0] #=> String
    #   resp.role_arn #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * fleet_active
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetFleet AWS API Documentation
    #
    # @overload get_fleet(params = {})
    # @param [Hash] params ({})
    def get_fleet(params = {}, options = {})
      req = build_request(:get_fleet, params)
      req.send_request(options)
    end

    # Gets a Deadline Cloud job.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm in the job.
    #
    # @option params [required, String] :queue_id
    #   The queue ID associated with the job.
    #
    # @option params [required, String] :job_id
    #   The job ID.
    #
    # @return [Types::GetJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobResponse#job_id #job_id} => String
    #   * {Types::GetJobResponse#name #name} => String
    #   * {Types::GetJobResponse#lifecycle_status #lifecycle_status} => String
    #   * {Types::GetJobResponse#lifecycle_status_message #lifecycle_status_message} => String
    #   * {Types::GetJobResponse#priority #priority} => Integer
    #   * {Types::GetJobResponse#created_at #created_at} => Time
    #   * {Types::GetJobResponse#created_by #created_by} => String
    #   * {Types::GetJobResponse#updated_at #updated_at} => Time
    #   * {Types::GetJobResponse#updated_by #updated_by} => String
    #   * {Types::GetJobResponse#started_at #started_at} => Time
    #   * {Types::GetJobResponse#ended_at #ended_at} => Time
    #   * {Types::GetJobResponse#task_run_status #task_run_status} => String
    #   * {Types::GetJobResponse#target_task_run_status #target_task_run_status} => String
    #   * {Types::GetJobResponse#task_run_status_counts #task_run_status_counts} => Hash&lt;String,Integer&gt;
    #   * {Types::GetJobResponse#storage_profile_id #storage_profile_id} => String
    #   * {Types::GetJobResponse#max_failed_tasks_count #max_failed_tasks_count} => Integer
    #   * {Types::GetJobResponse#max_retries_per_task #max_retries_per_task} => Integer
    #   * {Types::GetJobResponse#parameters #parameters} => Hash&lt;String,Types::JobParameter&gt;
    #   * {Types::GetJobResponse#attachments #attachments} => Types::Attachments
    #   * {Types::GetJobResponse#description #description} => String
    #   * {Types::GetJobResponse#max_worker_count #max_worker_count} => Integer
    #   * {Types::GetJobResponse#source_job_id #source_job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.name #=> String
    #   resp.lifecycle_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "UPLOAD_IN_PROGRESS", "UPLOAD_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_SUCCEEDED", "ARCHIVED"
    #   resp.lifecycle_status_message #=> String
    #   resp.priority #=> Integer
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.started_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.task_run_status #=> String, one of "PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"
    #   resp.target_task_run_status #=> String, one of "READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"
    #   resp.task_run_status_counts #=> Hash
    #   resp.task_run_status_counts["TaskRunStatus"] #=> Integer
    #   resp.storage_profile_id #=> String
    #   resp.max_failed_tasks_count #=> Integer
    #   resp.max_retries_per_task #=> Integer
    #   resp.parameters #=> Hash
    #   resp.parameters["String"].int #=> String
    #   resp.parameters["String"].float #=> String
    #   resp.parameters["String"].string #=> String
    #   resp.parameters["String"].path #=> String
    #   resp.attachments.manifests #=> Array
    #   resp.attachments.manifests[0].file_system_location_name #=> String
    #   resp.attachments.manifests[0].root_path #=> String
    #   resp.attachments.manifests[0].root_path_format #=> String, one of "windows", "posix"
    #   resp.attachments.manifests[0].output_relative_directories #=> Array
    #   resp.attachments.manifests[0].output_relative_directories[0] #=> String
    #   resp.attachments.manifests[0].input_manifest_path #=> String
    #   resp.attachments.manifests[0].input_manifest_hash #=> String
    #   resp.attachments.file_system #=> String, one of "COPIED", "VIRTUAL"
    #   resp.description #=> String
    #   resp.max_worker_count #=> Integer
    #   resp.source_job_id #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * job_create_complete
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetJob AWS API Documentation
    #
    # @overload get_job(params = {})
    # @param [Hash] params ({})
    def get_job(params = {}, options = {})
      req = build_request(:get_job, params)
      req.send_request(options)
    end

    # Gets a licence endpoint.
    #
    # @option params [required, String] :license_endpoint_id
    #   The license endpoint ID.
    #
    # @return [Types::GetLicenseEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLicenseEndpointResponse#license_endpoint_id #license_endpoint_id} => String
    #   * {Types::GetLicenseEndpointResponse#status #status} => String
    #   * {Types::GetLicenseEndpointResponse#status_message #status_message} => String
    #   * {Types::GetLicenseEndpointResponse#vpc_id #vpc_id} => String
    #   * {Types::GetLicenseEndpointResponse#dns_name #dns_name} => String
    #   * {Types::GetLicenseEndpointResponse#subnet_ids #subnet_ids} => Array&lt;String&gt;
    #   * {Types::GetLicenseEndpointResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_license_endpoint({
    #     license_endpoint_id: "LicenseEndpointId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.license_endpoint_id #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "NOT_READY"
    #   resp.status_message #=> String
    #   resp.vpc_id #=> String
    #   resp.dns_name #=> String
    #   resp.subnet_ids #=> Array
    #   resp.subnet_ids[0] #=> String
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * license_endpoint_deleted
    #   * license_endpoint_valid
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetLicenseEndpoint AWS API Documentation
    #
    # @overload get_license_endpoint(params = {})
    # @param [Hash] params ({})
    def get_license_endpoint(params = {}, options = {})
      req = build_request(:get_license_endpoint, params)
      req.send_request(options)
    end

    # Gets information about a specific limit.
    #
    # @option params [required, String] :farm_id
    #   The unique identifier of the farm that contains the limit.
    #
    # @option params [required, String] :limit_id
    #   The unique identifier of the limit to return.
    #
    # @return [Types::GetLimitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLimitResponse#display_name #display_name} => String
    #   * {Types::GetLimitResponse#amount_requirement_name #amount_requirement_name} => String
    #   * {Types::GetLimitResponse#max_count #max_count} => Integer
    #   * {Types::GetLimitResponse#created_at #created_at} => Time
    #   * {Types::GetLimitResponse#created_by #created_by} => String
    #   * {Types::GetLimitResponse#updated_at #updated_at} => Time
    #   * {Types::GetLimitResponse#updated_by #updated_by} => String
    #   * {Types::GetLimitResponse#farm_id #farm_id} => String
    #   * {Types::GetLimitResponse#limit_id #limit_id} => String
    #   * {Types::GetLimitResponse#current_count #current_count} => Integer
    #   * {Types::GetLimitResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_limit({
    #     farm_id: "FarmId", # required
    #     limit_id: "LimitId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.amount_requirement_name #=> String
    #   resp.max_count #=> Integer
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.farm_id #=> String
    #   resp.limit_id #=> String
    #   resp.current_count #=> Integer
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetLimit AWS API Documentation
    #
    # @overload get_limit(params = {})
    # @param [Hash] params ({})
    def get_limit(params = {}, options = {})
      req = build_request(:get_limit, params)
      req.send_request(options)
    end

    # Gets information about the specified monitor.
    #
    # @option params [required, String] :monitor_id
    #   The unique identifier for the monitor. This ID is returned by the
    #   `CreateMonitor` operation.
    #
    # @return [Types::GetMonitorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMonitorResponse#monitor_id #monitor_id} => String
    #   * {Types::GetMonitorResponse#display_name #display_name} => String
    #   * {Types::GetMonitorResponse#subdomain #subdomain} => String
    #   * {Types::GetMonitorResponse#url #url} => String
    #   * {Types::GetMonitorResponse#role_arn #role_arn} => String
    #   * {Types::GetMonitorResponse#identity_center_instance_arn #identity_center_instance_arn} => String
    #   * {Types::GetMonitorResponse#identity_center_application_arn #identity_center_application_arn} => String
    #   * {Types::GetMonitorResponse#created_at #created_at} => Time
    #   * {Types::GetMonitorResponse#created_by #created_by} => String
    #   * {Types::GetMonitorResponse#updated_at #updated_at} => Time
    #   * {Types::GetMonitorResponse#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_monitor({
    #     monitor_id: "MonitorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.monitor_id #=> String
    #   resp.display_name #=> String
    #   resp.subdomain #=> String
    #   resp.url #=> String
    #   resp.role_arn #=> String
    #   resp.identity_center_instance_arn #=> String
    #   resp.identity_center_application_arn #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetMonitor AWS API Documentation
    #
    # @overload get_monitor(params = {})
    # @param [Hash] params ({})
    def get_monitor(params = {}, options = {})
      req = build_request(:get_monitor, params)
      req.send_request(options)
    end

    # Gets a queue.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm in the queue.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the queue to retrieve.
    #
    # @return [Types::GetQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueueResponse#queue_id #queue_id} => String
    #   * {Types::GetQueueResponse#display_name #display_name} => String
    #   * {Types::GetQueueResponse#description #description} => String
    #   * {Types::GetQueueResponse#farm_id #farm_id} => String
    #   * {Types::GetQueueResponse#status #status} => String
    #   * {Types::GetQueueResponse#default_budget_action #default_budget_action} => String
    #   * {Types::GetQueueResponse#blocked_reason #blocked_reason} => String
    #   * {Types::GetQueueResponse#job_attachment_settings #job_attachment_settings} => Types::JobAttachmentSettings
    #   * {Types::GetQueueResponse#role_arn #role_arn} => String
    #   * {Types::GetQueueResponse#required_file_system_location_names #required_file_system_location_names} => Array&lt;String&gt;
    #   * {Types::GetQueueResponse#allowed_storage_profile_ids #allowed_storage_profile_ids} => Array&lt;String&gt;
    #   * {Types::GetQueueResponse#job_run_as_user #job_run_as_user} => Types::JobRunAsUser
    #   * {Types::GetQueueResponse#created_at #created_at} => Time
    #   * {Types::GetQueueResponse#created_by #created_by} => String
    #   * {Types::GetQueueResponse#updated_at #updated_at} => Time
    #   * {Types::GetQueueResponse#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_queue({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_id #=> String
    #   resp.display_name #=> String
    #   resp.description #=> String
    #   resp.farm_id #=> String
    #   resp.status #=> String, one of "IDLE", "SCHEDULING", "SCHEDULING_BLOCKED"
    #   resp.default_budget_action #=> String, one of "NONE", "STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS"
    #   resp.blocked_reason #=> String, one of "NO_BUDGET_CONFIGURED", "BUDGET_THRESHOLD_REACHED"
    #   resp.job_attachment_settings.s3_bucket_name #=> String
    #   resp.job_attachment_settings.root_prefix #=> String
    #   resp.role_arn #=> String
    #   resp.required_file_system_location_names #=> Array
    #   resp.required_file_system_location_names[0] #=> String
    #   resp.allowed_storage_profile_ids #=> Array
    #   resp.allowed_storage_profile_ids[0] #=> String
    #   resp.job_run_as_user.posix.user #=> String
    #   resp.job_run_as_user.posix.group #=> String
    #   resp.job_run_as_user.windows.user #=> String
    #   resp.job_run_as_user.windows.password_arn #=> String
    #   resp.job_run_as_user.run_as #=> String, one of "QUEUE_CONFIGURED_USER", "WORKER_AGENT_USER"
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * queue_scheduling
    #   * queue_scheduling_blocked
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetQueue AWS API Documentation
    #
    # @overload get_queue(params = {})
    # @param [Hash] params ({})
    def get_queue(params = {}, options = {})
      req = build_request(:get_queue, params)
      req.send_request(options)
    end

    # Gets a queue environment.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the queue environment.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the queue environment.
    #
    # @option params [required, String] :queue_environment_id
    #   The queue environment ID.
    #
    # @return [Types::GetQueueEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueueEnvironmentResponse#queue_environment_id #queue_environment_id} => String
    #   * {Types::GetQueueEnvironmentResponse#name #name} => String
    #   * {Types::GetQueueEnvironmentResponse#priority #priority} => Integer
    #   * {Types::GetQueueEnvironmentResponse#template_type #template_type} => String
    #   * {Types::GetQueueEnvironmentResponse#template #template} => String
    #   * {Types::GetQueueEnvironmentResponse#created_at #created_at} => Time
    #   * {Types::GetQueueEnvironmentResponse#created_by #created_by} => String
    #   * {Types::GetQueueEnvironmentResponse#updated_at #updated_at} => Time
    #   * {Types::GetQueueEnvironmentResponse#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_queue_environment({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     queue_environment_id: "QueueEnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_environment_id #=> String
    #   resp.name #=> String
    #   resp.priority #=> Integer
    #   resp.template_type #=> String, one of "JSON", "YAML"
    #   resp.template #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetQueueEnvironment AWS API Documentation
    #
    # @overload get_queue_environment(params = {})
    # @param [Hash] params ({})
    def get_queue_environment(params = {}, options = {})
      req = build_request(:get_queue_environment, params)
      req.send_request(options)
    end

    # Gets a queue-fleet association.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm that contains the queue-fleet association.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the queue-fleet association.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID for the queue-fleet association.
    #
    # @return [Types::GetQueueFleetAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueueFleetAssociationResponse#queue_id #queue_id} => String
    #   * {Types::GetQueueFleetAssociationResponse#fleet_id #fleet_id} => String
    #   * {Types::GetQueueFleetAssociationResponse#status #status} => String
    #   * {Types::GetQueueFleetAssociationResponse#created_at #created_at} => Time
    #   * {Types::GetQueueFleetAssociationResponse#created_by #created_by} => String
    #   * {Types::GetQueueFleetAssociationResponse#updated_at #updated_at} => Time
    #   * {Types::GetQueueFleetAssociationResponse#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_queue_fleet_association({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     fleet_id: "FleetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_id #=> String
    #   resp.fleet_id #=> String
    #   resp.status #=> String, one of "ACTIVE", "STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS", "STOPPED"
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * queue_fleet_association_stopped
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetQueueFleetAssociation AWS API Documentation
    #
    # @overload get_queue_fleet_association(params = {})
    # @param [Hash] params ({})
    def get_queue_fleet_association(params = {}, options = {})
      req = build_request(:get_queue_fleet_association, params)
      req.send_request(options)
    end

    # Gets information about a specific association between a queue and a
    # limit.
    #
    # @option params [required, String] :farm_id
    #   The unique identifier of the farm that contains the associated queue
    #   and limit.
    #
    # @option params [required, String] :queue_id
    #   The unique identifier of the queue associated with the limit.
    #
    # @option params [required, String] :limit_id
    #   The unique identifier of the limit associated with the queue.
    #
    # @return [Types::GetQueueLimitAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueueLimitAssociationResponse#created_at #created_at} => Time
    #   * {Types::GetQueueLimitAssociationResponse#created_by #created_by} => String
    #   * {Types::GetQueueLimitAssociationResponse#updated_at #updated_at} => Time
    #   * {Types::GetQueueLimitAssociationResponse#updated_by #updated_by} => String
    #   * {Types::GetQueueLimitAssociationResponse#queue_id #queue_id} => String
    #   * {Types::GetQueueLimitAssociationResponse#limit_id #limit_id} => String
    #   * {Types::GetQueueLimitAssociationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_queue_limit_association({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     limit_id: "LimitId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.queue_id #=> String
    #   resp.limit_id #=> String
    #   resp.status #=> String, one of "ACTIVE", "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS", "STOP_LIMIT_USAGE_AND_CANCEL_TASKS", "STOPPED"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * queue_limit_association_stopped
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetQueueLimitAssociation AWS API Documentation
    #
    # @overload get_queue_limit_association(params = {})
    # @param [Hash] params ({})
    def get_queue_limit_association(params = {}, options = {})
      req = build_request(:get_queue_limit_association, params)
      req.send_request(options)
    end

    # Gets a session.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the session.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the session.
    #
    # @option params [required, String] :job_id
    #   The job ID for the session.
    #
    # @option params [required, String] :session_id
    #   The session ID.
    #
    # @return [Types::GetSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionResponse#session_id #session_id} => String
    #   * {Types::GetSessionResponse#fleet_id #fleet_id} => String
    #   * {Types::GetSessionResponse#worker_id #worker_id} => String
    #   * {Types::GetSessionResponse#started_at #started_at} => Time
    #   * {Types::GetSessionResponse#log #log} => Types::LogConfiguration
    #   * {Types::GetSessionResponse#lifecycle_status #lifecycle_status} => String
    #   * {Types::GetSessionResponse#ended_at #ended_at} => Time
    #   * {Types::GetSessionResponse#updated_at #updated_at} => Time
    #   * {Types::GetSessionResponse#updated_by #updated_by} => String
    #   * {Types::GetSessionResponse#target_lifecycle_status #target_lifecycle_status} => String
    #   * {Types::GetSessionResponse#host_properties #host_properties} => Types::HostPropertiesResponse
    #   * {Types::GetSessionResponse#worker_log #worker_log} => Types::LogConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     session_id: "SessionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.fleet_id #=> String
    #   resp.worker_id #=> String
    #   resp.started_at #=> Time
    #   resp.log.log_driver #=> String
    #   resp.log.options #=> Hash
    #   resp.log.options["String"] #=> String
    #   resp.log.parameters #=> Hash
    #   resp.log.parameters["String"] #=> String
    #   resp.log.error #=> String
    #   resp.lifecycle_status #=> String, one of "STARTED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCEEDED", "UPDATE_FAILED", "ENDED"
    #   resp.ended_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.target_lifecycle_status #=> String, one of "ENDED"
    #   resp.host_properties.ip_addresses.ip_v4_addresses #=> Array
    #   resp.host_properties.ip_addresses.ip_v4_addresses[0] #=> String
    #   resp.host_properties.ip_addresses.ip_v6_addresses #=> Array
    #   resp.host_properties.ip_addresses.ip_v6_addresses[0] #=> String
    #   resp.host_properties.host_name #=> String
    #   resp.host_properties.ec2_instance_arn #=> String
    #   resp.host_properties.ec2_instance_type #=> String
    #   resp.worker_log.log_driver #=> String
    #   resp.worker_log.options #=> Hash
    #   resp.worker_log.options["String"] #=> String
    #   resp.worker_log.parameters #=> Hash
    #   resp.worker_log.parameters["String"] #=> String
    #   resp.worker_log.error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetSession AWS API Documentation
    #
    # @overload get_session(params = {})
    # @param [Hash] params ({})
    def get_session(params = {}, options = {})
      req = build_request(:get_session, params)
      req.send_request(options)
    end

    # Gets a session action for the job.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the session action.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the session action.
    #
    # @option params [required, String] :job_id
    #   The job ID for the session.
    #
    # @option params [required, String] :session_action_id
    #   The session action ID for the session.
    #
    # @return [Types::GetSessionActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionActionResponse#session_action_id #session_action_id} => String
    #   * {Types::GetSessionActionResponse#status #status} => String
    #   * {Types::GetSessionActionResponse#started_at #started_at} => Time
    #   * {Types::GetSessionActionResponse#ended_at #ended_at} => Time
    #   * {Types::GetSessionActionResponse#worker_updated_at #worker_updated_at} => Time
    #   * {Types::GetSessionActionResponse#progress_percent #progress_percent} => Float
    #   * {Types::GetSessionActionResponse#session_id #session_id} => String
    #   * {Types::GetSessionActionResponse#process_exit_code #process_exit_code} => Integer
    #   * {Types::GetSessionActionResponse#progress_message #progress_message} => String
    #   * {Types::GetSessionActionResponse#definition #definition} => Types::SessionActionDefinition
    #   * {Types::GetSessionActionResponse#acquired_limits #acquired_limits} => Array&lt;Types::AcquiredLimit&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session_action({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     session_action_id: "SessionActionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_action_id #=> String
    #   resp.status #=> String, one of "ASSIGNED", "RUNNING", "CANCELING", "SUCCEEDED", "FAILED", "INTERRUPTED", "CANCELED", "NEVER_ATTEMPTED", "SCHEDULED", "RECLAIMING", "RECLAIMED"
    #   resp.started_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.worker_updated_at #=> Time
    #   resp.progress_percent #=> Float
    #   resp.session_id #=> String
    #   resp.process_exit_code #=> Integer
    #   resp.progress_message #=> String
    #   resp.definition.env_enter.environment_id #=> String
    #   resp.definition.env_exit.environment_id #=> String
    #   resp.definition.task_run.task_id #=> String
    #   resp.definition.task_run.step_id #=> String
    #   resp.definition.task_run.parameters #=> Hash
    #   resp.definition.task_run.parameters["String"].int #=> String
    #   resp.definition.task_run.parameters["String"].float #=> String
    #   resp.definition.task_run.parameters["String"].string #=> String
    #   resp.definition.task_run.parameters["String"].path #=> String
    #   resp.definition.sync_input_job_attachments.step_id #=> String
    #   resp.acquired_limits #=> Array
    #   resp.acquired_limits[0].limit_id #=> String
    #   resp.acquired_limits[0].count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetSessionAction AWS API Documentation
    #
    # @overload get_session_action(params = {})
    # @param [Hash] params ({})
    def get_session_action(params = {}, options = {})
      req = build_request(:get_session_action, params)
      req.send_request(options)
    end

    # Gets a set of statistics for queues or farms. Before you can call the
    # `GetSessionStatisticsAggregation` operation, you must first call the
    # `StartSessionsStatisticsAggregation` operation. Statistics are
    # available for 1 hour after you call the
    # `StartSessionsStatisticsAggregation` operation.
    #
    # @option params [required, String] :farm_id
    #   The identifier of the farm to include in the statistics. This should
    #   be the same as the farm ID used in the call to the
    #   `StartSessionsStatisticsAggregation` operation.
    #
    # @option params [required, String] :aggregation_id
    #   The identifier returned by the `StartSessionsStatisticsAggregation`
    #   operation that identifies the aggregated statistics.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @return [Types::GetSessionsStatisticsAggregationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionsStatisticsAggregationResponse#statistics #statistics} => Array&lt;Types::Statistics&gt;
    #   * {Types::GetSessionsStatisticsAggregationResponse#next_token #next_token} => String
    #   * {Types::GetSessionsStatisticsAggregationResponse#status #status} => String
    #   * {Types::GetSessionsStatisticsAggregationResponse#status_message #status_message} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sessions_statistics_aggregation({
    #     farm_id: "FarmId", # required
    #     aggregation_id: "AggregationId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.statistics #=> Array
    #   resp.statistics[0].queue_id #=> String
    #   resp.statistics[0].fleet_id #=> String
    #   resp.statistics[0].job_id #=> String
    #   resp.statistics[0].job_name #=> String
    #   resp.statistics[0].user_id #=> String
    #   resp.statistics[0].usage_type #=> String, one of "COMPUTE", "LICENSE"
    #   resp.statistics[0].license_product #=> String
    #   resp.statistics[0].instance_type #=> String
    #   resp.statistics[0].count #=> Integer
    #   resp.statistics[0].cost_in_usd.min #=> Float
    #   resp.statistics[0].cost_in_usd.max #=> Float
    #   resp.statistics[0].cost_in_usd.avg #=> Float
    #   resp.statistics[0].cost_in_usd.sum #=> Float
    #   resp.statistics[0].runtime_in_seconds.min #=> Float
    #   resp.statistics[0].runtime_in_seconds.max #=> Float
    #   resp.statistics[0].runtime_in_seconds.avg #=> Float
    #   resp.statistics[0].runtime_in_seconds.sum #=> Float
    #   resp.statistics[0].aggregation_start_time #=> Time
    #   resp.statistics[0].aggregation_end_time #=> Time
    #   resp.next_token #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "TIMEOUT", "FAILED", "COMPLETED"
    #   resp.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetSessionsStatisticsAggregation AWS API Documentation
    #
    # @overload get_sessions_statistics_aggregation(params = {})
    # @param [Hash] params ({})
    def get_sessions_statistics_aggregation(params = {}, options = {})
      req = build_request(:get_sessions_statistics_aggregation, params)
      req.send_request(options)
    end

    # Gets a step.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the step.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the step.
    #
    # @option params [required, String] :job_id
    #   The job ID for the step.
    #
    # @option params [required, String] :step_id
    #   The step ID.
    #
    # @return [Types::GetStepResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStepResponse#step_id #step_id} => String
    #   * {Types::GetStepResponse#name #name} => String
    #   * {Types::GetStepResponse#lifecycle_status #lifecycle_status} => String
    #   * {Types::GetStepResponse#lifecycle_status_message #lifecycle_status_message} => String
    #   * {Types::GetStepResponse#task_run_status #task_run_status} => String
    #   * {Types::GetStepResponse#task_run_status_counts #task_run_status_counts} => Hash&lt;String,Integer&gt;
    #   * {Types::GetStepResponse#target_task_run_status #target_task_run_status} => String
    #   * {Types::GetStepResponse#created_at #created_at} => Time
    #   * {Types::GetStepResponse#created_by #created_by} => String
    #   * {Types::GetStepResponse#updated_at #updated_at} => Time
    #   * {Types::GetStepResponse#updated_by #updated_by} => String
    #   * {Types::GetStepResponse#started_at #started_at} => Time
    #   * {Types::GetStepResponse#ended_at #ended_at} => Time
    #   * {Types::GetStepResponse#dependency_counts #dependency_counts} => Types::DependencyCounts
    #   * {Types::GetStepResponse#required_capabilities #required_capabilities} => Types::StepRequiredCapabilities
    #   * {Types::GetStepResponse#parameter_space #parameter_space} => Types::ParameterSpace
    #   * {Types::GetStepResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_step({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.step_id #=> String
    #   resp.name #=> String
    #   resp.lifecycle_status #=> String, one of "CREATE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_SUCCEEDED"
    #   resp.lifecycle_status_message #=> String
    #   resp.task_run_status #=> String, one of "PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"
    #   resp.task_run_status_counts #=> Hash
    #   resp.task_run_status_counts["TaskRunStatus"] #=> Integer
    #   resp.target_task_run_status #=> String, one of "READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.started_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.dependency_counts.dependencies_resolved #=> Integer
    #   resp.dependency_counts.dependencies_unresolved #=> Integer
    #   resp.dependency_counts.consumers_resolved #=> Integer
    #   resp.dependency_counts.consumers_unresolved #=> Integer
    #   resp.required_capabilities.attributes #=> Array
    #   resp.required_capabilities.attributes[0].name #=> String
    #   resp.required_capabilities.attributes[0].any_of #=> Array
    #   resp.required_capabilities.attributes[0].any_of[0] #=> String
    #   resp.required_capabilities.attributes[0].all_of #=> Array
    #   resp.required_capabilities.attributes[0].all_of[0] #=> String
    #   resp.required_capabilities.amounts #=> Array
    #   resp.required_capabilities.amounts[0].name #=> String
    #   resp.required_capabilities.amounts[0].min #=> Float
    #   resp.required_capabilities.amounts[0].max #=> Float
    #   resp.required_capabilities.amounts[0].value #=> Float
    #   resp.parameter_space.parameters #=> Array
    #   resp.parameter_space.parameters[0].name #=> String
    #   resp.parameter_space.parameters[0].type #=> String, one of "INT", "FLOAT", "STRING", "PATH"
    #   resp.parameter_space.combination #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetStep AWS API Documentation
    #
    # @overload get_step(params = {})
    # @param [Hash] params ({})
    def get_step(params = {}, options = {})
      req = build_request(:get_step, params)
      req.send_request(options)
    end

    # Gets a storage profile.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the storage profile.
    #
    # @option params [required, String] :storage_profile_id
    #   The storage profile ID.
    #
    # @return [Types::GetStorageProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStorageProfileResponse#storage_profile_id #storage_profile_id} => String
    #   * {Types::GetStorageProfileResponse#display_name #display_name} => String
    #   * {Types::GetStorageProfileResponse#os_family #os_family} => String
    #   * {Types::GetStorageProfileResponse#created_at #created_at} => Time
    #   * {Types::GetStorageProfileResponse#created_by #created_by} => String
    #   * {Types::GetStorageProfileResponse#updated_at #updated_at} => Time
    #   * {Types::GetStorageProfileResponse#updated_by #updated_by} => String
    #   * {Types::GetStorageProfileResponse#file_system_locations #file_system_locations} => Array&lt;Types::FileSystemLocation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_storage_profile({
    #     farm_id: "FarmId", # required
    #     storage_profile_id: "StorageProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_profile_id #=> String
    #   resp.display_name #=> String
    #   resp.os_family #=> String, one of "WINDOWS", "LINUX", "MACOS"
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.file_system_locations #=> Array
    #   resp.file_system_locations[0].name #=> String
    #   resp.file_system_locations[0].path #=> String
    #   resp.file_system_locations[0].type #=> String, one of "SHARED", "LOCAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetStorageProfile AWS API Documentation
    #
    # @overload get_storage_profile(params = {})
    # @param [Hash] params ({})
    def get_storage_profile(params = {}, options = {})
      req = build_request(:get_storage_profile, params)
      req.send_request(options)
    end

    # Gets a storage profile for a queue.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the queue in storage profile.
    #
    # @option params [required, String] :queue_id
    #   The queue ID the queue in the storage profile.
    #
    # @option params [required, String] :storage_profile_id
    #   The storage profile ID for the storage profile in the queue.
    #
    # @return [Types::GetStorageProfileForQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStorageProfileForQueueResponse#storage_profile_id #storage_profile_id} => String
    #   * {Types::GetStorageProfileForQueueResponse#display_name #display_name} => String
    #   * {Types::GetStorageProfileForQueueResponse#os_family #os_family} => String
    #   * {Types::GetStorageProfileForQueueResponse#file_system_locations #file_system_locations} => Array&lt;Types::FileSystemLocation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_storage_profile_for_queue({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     storage_profile_id: "StorageProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_profile_id #=> String
    #   resp.display_name #=> String
    #   resp.os_family #=> String, one of "WINDOWS", "LINUX", "MACOS"
    #   resp.file_system_locations #=> Array
    #   resp.file_system_locations[0].name #=> String
    #   resp.file_system_locations[0].path #=> String
    #   resp.file_system_locations[0].type #=> String, one of "SHARED", "LOCAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetStorageProfileForQueue AWS API Documentation
    #
    # @overload get_storage_profile_for_queue(params = {})
    # @param [Hash] params ({})
    def get_storage_profile_for_queue(params = {}, options = {})
      req = build_request(:get_storage_profile_for_queue, params)
      req.send_request(options)
    end

    # Gets a task.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the farm connected to the task.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the queue connected to the task.
    #
    # @option params [required, String] :job_id
    #   The job ID of the job connected to the task.
    #
    # @option params [required, String] :step_id
    #   The step ID for the step connected to the task.
    #
    # @option params [required, String] :task_id
    #   The task ID.
    #
    # @return [Types::GetTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTaskResponse#task_id #task_id} => String
    #   * {Types::GetTaskResponse#created_at #created_at} => Time
    #   * {Types::GetTaskResponse#created_by #created_by} => String
    #   * {Types::GetTaskResponse#run_status #run_status} => String
    #   * {Types::GetTaskResponse#target_run_status #target_run_status} => String
    #   * {Types::GetTaskResponse#failure_retry_count #failure_retry_count} => Integer
    #   * {Types::GetTaskResponse#parameters #parameters} => Hash&lt;String,Types::TaskParameterValue&gt;
    #   * {Types::GetTaskResponse#started_at #started_at} => Time
    #   * {Types::GetTaskResponse#ended_at #ended_at} => Time
    #   * {Types::GetTaskResponse#updated_at #updated_at} => Time
    #   * {Types::GetTaskResponse#updated_by #updated_by} => String
    #   * {Types::GetTaskResponse#latest_session_action_id #latest_session_action_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_task({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #     task_id: "TaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.run_status #=> String, one of "PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"
    #   resp.target_run_status #=> String, one of "READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"
    #   resp.failure_retry_count #=> Integer
    #   resp.parameters #=> Hash
    #   resp.parameters["String"].int #=> String
    #   resp.parameters["String"].float #=> String
    #   resp.parameters["String"].string #=> String
    #   resp.parameters["String"].path #=> String
    #   resp.started_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.latest_session_action_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetTask AWS API Documentation
    #
    # @overload get_task(params = {})
    # @param [Hash] params ({})
    def get_task(params = {}, options = {})
      req = build_request(:get_task, params)
      req.send_request(options)
    end

    # Gets a worker.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the worker.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID of the worker.
    #
    # @option params [required, String] :worker_id
    #   The worker ID.
    #
    # @return [Types::GetWorkerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkerResponse#farm_id #farm_id} => String
    #   * {Types::GetWorkerResponse#fleet_id #fleet_id} => String
    #   * {Types::GetWorkerResponse#worker_id #worker_id} => String
    #   * {Types::GetWorkerResponse#host_properties #host_properties} => Types::HostPropertiesResponse
    #   * {Types::GetWorkerResponse#status #status} => String
    #   * {Types::GetWorkerResponse#log #log} => Types::LogConfiguration
    #   * {Types::GetWorkerResponse#created_at #created_at} => Time
    #   * {Types::GetWorkerResponse#created_by #created_by} => String
    #   * {Types::GetWorkerResponse#updated_at #updated_at} => Time
    #   * {Types::GetWorkerResponse#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_worker({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.farm_id #=> String
    #   resp.fleet_id #=> String
    #   resp.worker_id #=> String
    #   resp.host_properties.ip_addresses.ip_v4_addresses #=> Array
    #   resp.host_properties.ip_addresses.ip_v4_addresses[0] #=> String
    #   resp.host_properties.ip_addresses.ip_v6_addresses #=> Array
    #   resp.host_properties.ip_addresses.ip_v6_addresses[0] #=> String
    #   resp.host_properties.host_name #=> String
    #   resp.host_properties.ec2_instance_arn #=> String
    #   resp.host_properties.ec2_instance_type #=> String
    #   resp.status #=> String, one of "CREATED", "STARTED", "STOPPING", "STOPPED", "NOT_RESPONDING", "NOT_COMPATIBLE", "RUNNING", "IDLE"
    #   resp.log.log_driver #=> String
    #   resp.log.options #=> Hash
    #   resp.log.options["String"] #=> String
    #   resp.log.parameters #=> Hash
    #   resp.log.parameters["String"] #=> String
    #   resp.log.error #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/GetWorker AWS API Documentation
    #
    # @overload get_worker(params = {})
    # @param [Hash] params ({})
    def get_worker(params = {}, options = {})
      req = build_request(:get_worker, params)
      req.send_request(options)
    end

    # A list of the available metered products.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListAvailableMeteredProductsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAvailableMeteredProductsResponse#metered_products #metered_products} => Array&lt;Types::MeteredProductSummary&gt;
    #   * {Types::ListAvailableMeteredProductsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_metered_products({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.metered_products #=> Array
    #   resp.metered_products[0].product_id #=> String
    #   resp.metered_products[0].family #=> String
    #   resp.metered_products[0].vendor #=> String
    #   resp.metered_products[0].port #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListAvailableMeteredProducts AWS API Documentation
    #
    # @overload list_available_metered_products(params = {})
    # @param [Hash] params ({})
    def list_available_metered_products(params = {}, options = {})
      req = build_request(:list_available_metered_products, params)
      req.send_request(options)
    end

    # A list of budgets in a farm.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [required, String] :farm_id
    #   The farm ID associated with the budgets.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :status
    #   The status to list for the budgets.
    #
    # @return [Types::ListBudgetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBudgetsResponse#next_token #next_token} => String
    #   * {Types::ListBudgetsResponse#budgets #budgets} => Array&lt;Types::BudgetSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_budgets({
    #     next_token: "String",
    #     farm_id: "FarmId", # required
    #     max_results: 1,
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.budgets #=> Array
    #   resp.budgets[0].budget_id #=> String
    #   resp.budgets[0].usage_tracking_resource.queue_id #=> String
    #   resp.budgets[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.budgets[0].display_name #=> String
    #   resp.budgets[0].description #=> String
    #   resp.budgets[0].approximate_dollar_limit #=> Float
    #   resp.budgets[0].usages.approximate_dollar_usage #=> Float
    #   resp.budgets[0].created_by #=> String
    #   resp.budgets[0].created_at #=> Time
    #   resp.budgets[0].updated_by #=> String
    #   resp.budgets[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListBudgets AWS API Documentation
    #
    # @overload list_budgets(params = {})
    # @param [Hash] params ({})
    def list_budgets(params = {}, options = {})
      req = build_request(:list_budgets, params)
      req.send_request(options)
    end

    # Lists the members of a farm.
    #
    # @option params [required, String] :farm_id
    #   The farm ID.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListFarmMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFarmMembersResponse#members #members} => Array&lt;Types::FarmMember&gt;
    #   * {Types::ListFarmMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_farm_members({
    #     farm_id: "FarmId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].farm_id #=> String
    #   resp.members[0].principal_id #=> String
    #   resp.members[0].principal_type #=> String, one of "USER", "GROUP"
    #   resp.members[0].identity_store_id #=> String
    #   resp.members[0].membership_level #=> String, one of "VIEWER", "CONTRIBUTOR", "OWNER", "MANAGER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListFarmMembers AWS API Documentation
    #
    # @overload list_farm_members(params = {})
    # @param [Hash] params ({})
    def list_farm_members(params = {}, options = {})
      req = build_request(:list_farm_members, params)
      req.send_request(options)
    end

    # Lists farms.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [String] :principal_id
    #   The principal ID of the member to list on the farm.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListFarmsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFarmsResponse#next_token #next_token} => String
    #   * {Types::ListFarmsResponse#farms #farms} => Array&lt;Types::FarmSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_farms({
    #     next_token: "String",
    #     principal_id: "IdentityCenterPrincipalId",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.farms #=> Array
    #   resp.farms[0].farm_id #=> String
    #   resp.farms[0].display_name #=> String
    #   resp.farms[0].kms_key_arn #=> String
    #   resp.farms[0].created_at #=> Time
    #   resp.farms[0].created_by #=> String
    #   resp.farms[0].updated_at #=> Time
    #   resp.farms[0].updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListFarms AWS API Documentation
    #
    # @overload list_farms(params = {})
    # @param [Hash] params ({})
    def list_farms(params = {}, options = {})
      req = build_request(:list_farms, params)
      req.send_request(options)
    end

    # Lists fleet members.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the fleet.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID to include on the list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListFleetMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFleetMembersResponse#members #members} => Array&lt;Types::FleetMember&gt;
    #   * {Types::ListFleetMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleet_members({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].farm_id #=> String
    #   resp.members[0].fleet_id #=> String
    #   resp.members[0].principal_id #=> String
    #   resp.members[0].principal_type #=> String, one of "USER", "GROUP"
    #   resp.members[0].identity_store_id #=> String
    #   resp.members[0].membership_level #=> String, one of "VIEWER", "CONTRIBUTOR", "OWNER", "MANAGER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListFleetMembers AWS API Documentation
    #
    # @overload list_fleet_members(params = {})
    # @param [Hash] params ({})
    def list_fleet_members(params = {}, options = {})
      req = build_request(:list_fleet_members, params)
      req.send_request(options)
    end

    # Lists fleets.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the fleets.
    #
    # @option params [String] :principal_id
    #   The principal ID of the members to include in the fleet.
    #
    # @option params [String] :display_name
    #   The display names of a list of fleets.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :status
    #   The status of the fleet.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListFleetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFleetsResponse#fleets #fleets} => Array&lt;Types::FleetSummary&gt;
    #   * {Types::ListFleetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleets({
    #     farm_id: "FarmId", # required
    #     principal_id: "IdentityCenterPrincipalId",
    #     display_name: "ResourceName",
    #     status: "ACTIVE", # accepts ACTIVE, CREATE_IN_PROGRESS, UPDATE_IN_PROGRESS, CREATE_FAILED, UPDATE_FAILED
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.fleets #=> Array
    #   resp.fleets[0].fleet_id #=> String
    #   resp.fleets[0].farm_id #=> String
    #   resp.fleets[0].display_name #=> String
    #   resp.fleets[0].status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "UPDATE_IN_PROGRESS", "CREATE_FAILED", "UPDATE_FAILED"
    #   resp.fleets[0].auto_scaling_status #=> String, one of "GROWING", "STEADY", "SHRINKING"
    #   resp.fleets[0].target_worker_count #=> Integer
    #   resp.fleets[0].worker_count #=> Integer
    #   resp.fleets[0].min_worker_count #=> Integer
    #   resp.fleets[0].max_worker_count #=> Integer
    #   resp.fleets[0].configuration.customer_managed.mode #=> String, one of "NO_SCALING", "EVENT_BASED_AUTO_SCALING"
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.v_cpu_count.min #=> Integer
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.v_cpu_count.max #=> Integer
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.memory_mi_b.min #=> Integer
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.memory_mi_b.max #=> Integer
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.accelerator_types #=> Array
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.accelerator_types[0] #=> String, one of "gpu"
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.accelerator_count.min #=> Integer
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.accelerator_count.max #=> Integer
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.accelerator_total_memory_mi_b.min #=> Integer
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.accelerator_total_memory_mi_b.max #=> Integer
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.os_family #=> String, one of "WINDOWS", "LINUX", "MACOS"
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.cpu_architecture_type #=> String, one of "x86_64", "arm64"
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.custom_amounts #=> Array
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.custom_amounts[0].name #=> String
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.custom_amounts[0].min #=> Float
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.custom_amounts[0].max #=> Float
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.custom_attributes #=> Array
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.custom_attributes[0].name #=> String
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.custom_attributes[0].values #=> Array
    #   resp.fleets[0].configuration.customer_managed.worker_capabilities.custom_attributes[0].values[0] #=> String
    #   resp.fleets[0].configuration.customer_managed.storage_profile_id #=> String
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.v_cpu_count.min #=> Integer
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.v_cpu_count.max #=> Integer
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.memory_mi_b.min #=> Integer
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.memory_mi_b.max #=> Integer
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.os_family #=> String, one of "WINDOWS", "LINUX"
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.cpu_architecture_type #=> String, one of "x86_64", "arm64"
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.root_ebs_volume.size_gi_b #=> Integer
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.root_ebs_volume.iops #=> Integer
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.root_ebs_volume.throughput_mi_b #=> Integer
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.accelerator_capabilities.selections #=> Array
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.accelerator_capabilities.selections[0].name #=> String, one of "t4", "a10g", "l4", "l40s"
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.accelerator_capabilities.selections[0].runtime #=> String
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.accelerator_capabilities.count.min #=> Integer
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.accelerator_capabilities.count.max #=> Integer
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.allowed_instance_types #=> Array
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.allowed_instance_types[0] #=> String
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.excluded_instance_types #=> Array
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.excluded_instance_types[0] #=> String
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.custom_amounts #=> Array
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.custom_amounts[0].name #=> String
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.custom_amounts[0].min #=> Float
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.custom_amounts[0].max #=> Float
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.custom_attributes #=> Array
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.custom_attributes[0].name #=> String
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.custom_attributes[0].values #=> Array
    #   resp.fleets[0].configuration.service_managed_ec2.instance_capabilities.custom_attributes[0].values[0] #=> String
    #   resp.fleets[0].configuration.service_managed_ec2.instance_market_options.type #=> String, one of "on-demand", "spot"
    #   resp.fleets[0].created_at #=> Time
    #   resp.fleets[0].created_by #=> String
    #   resp.fleets[0].updated_at #=> Time
    #   resp.fleets[0].updated_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListFleets AWS API Documentation
    #
    # @overload list_fleets(params = {})
    # @param [Hash] params ({})
    def list_fleets(params = {}, options = {})
      req = build_request(:list_fleets, params)
      req.send_request(options)
    end

    # Lists members on a job.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the job to list.
    #
    # @option params [required, String] :queue_id
    #   The queue ID to include on the list.
    #
    # @option params [required, String] :job_id
    #   The job ID to include on the list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListJobMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobMembersResponse#members #members} => Array&lt;Types::JobMember&gt;
    #   * {Types::ListJobMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_members({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].farm_id #=> String
    #   resp.members[0].queue_id #=> String
    #   resp.members[0].job_id #=> String
    #   resp.members[0].principal_id #=> String
    #   resp.members[0].principal_type #=> String, one of "USER", "GROUP"
    #   resp.members[0].identity_store_id #=> String
    #   resp.members[0].membership_level #=> String, one of "VIEWER", "CONTRIBUTOR", "OWNER", "MANAGER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListJobMembers AWS API Documentation
    #
    # @overload list_job_members(params = {})
    # @param [Hash] params ({})
    def list_job_members(params = {}, options = {})
      req = build_request(:list_job_members, params)
      req.send_request(options)
    end

    # Lists parameter definitions of a job.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the job to list.
    #
    # @option params [required, String] :job_id
    #   The job ID to include on the list.
    #
    # @option params [required, String] :queue_id
    #   The queue ID to include on the list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListJobParameterDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobParameterDefinitionsResponse#job_parameter_definitions #job_parameter_definitions} => Array&lt;Hash,Array,String,Numeric,Boolean&gt;
    #   * {Types::ListJobParameterDefinitionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_parameter_definitions({
    #     farm_id: "FarmId", # required
    #     job_id: "JobId", # required
    #     queue_id: "QueueId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_parameter_definitions #=> Array
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListJobParameterDefinitions AWS API Documentation
    #
    # @overload list_job_parameter_definitions(params = {})
    # @param [Hash] params ({})
    def list_job_parameter_definitions(params = {}, options = {})
      req = build_request(:list_job_parameter_definitions, params)
      req.send_request(options)
    end

    # Lists jobs.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the jobs.
    #
    # @option params [String] :principal_id
    #   The principal ID of the members on the jobs.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the job.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResponse#jobs #jobs} => Array&lt;Types::JobSummary&gt;
    #   * {Types::ListJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     farm_id: "FarmId", # required
    #     principal_id: "IdentityCenterPrincipalId",
    #     queue_id: "QueueId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].name #=> String
    #   resp.jobs[0].lifecycle_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "UPLOAD_IN_PROGRESS", "UPLOAD_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_SUCCEEDED", "ARCHIVED"
    #   resp.jobs[0].lifecycle_status_message #=> String
    #   resp.jobs[0].priority #=> Integer
    #   resp.jobs[0].created_at #=> Time
    #   resp.jobs[0].created_by #=> String
    #   resp.jobs[0].updated_at #=> Time
    #   resp.jobs[0].updated_by #=> String
    #   resp.jobs[0].started_at #=> Time
    #   resp.jobs[0].ended_at #=> Time
    #   resp.jobs[0].task_run_status #=> String, one of "PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"
    #   resp.jobs[0].target_task_run_status #=> String, one of "READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"
    #   resp.jobs[0].task_run_status_counts #=> Hash
    #   resp.jobs[0].task_run_status_counts["TaskRunStatus"] #=> Integer
    #   resp.jobs[0].max_failed_tasks_count #=> Integer
    #   resp.jobs[0].max_retries_per_task #=> Integer
    #   resp.jobs[0].max_worker_count #=> Integer
    #   resp.jobs[0].source_job_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Lists license endpoints.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListLicenseEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLicenseEndpointsResponse#license_endpoints #license_endpoints} => Array&lt;Types::LicenseEndpointSummary&gt;
    #   * {Types::ListLicenseEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_endpoints({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.license_endpoints #=> Array
    #   resp.license_endpoints[0].license_endpoint_id #=> String
    #   resp.license_endpoints[0].status #=> String, one of "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "NOT_READY"
    #   resp.license_endpoints[0].status_message #=> String
    #   resp.license_endpoints[0].vpc_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListLicenseEndpoints AWS API Documentation
    #
    # @overload list_license_endpoints(params = {})
    # @param [Hash] params ({})
    def list_license_endpoints(params = {}, options = {})
      req = build_request(:list_license_endpoints, params)
      req.send_request(options)
    end

    # Gets a list of limits defined in the specified farm.
    #
    # @option params [required, String] :farm_id
    #   The unique identifier of the farm that contains the limits.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of limits to return in each page of results.
    #
    # @return [Types::ListLimitsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLimitsResponse#limits #limits} => Array&lt;Types::LimitSummary&gt;
    #   * {Types::ListLimitsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_limits({
    #     farm_id: "FarmId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.limits #=> Array
    #   resp.limits[0].display_name #=> String
    #   resp.limits[0].amount_requirement_name #=> String
    #   resp.limits[0].max_count #=> Integer
    #   resp.limits[0].created_at #=> Time
    #   resp.limits[0].created_by #=> String
    #   resp.limits[0].updated_at #=> Time
    #   resp.limits[0].updated_by #=> String
    #   resp.limits[0].farm_id #=> String
    #   resp.limits[0].limit_id #=> String
    #   resp.limits[0].current_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListLimits AWS API Documentation
    #
    # @overload list_limits(params = {})
    # @param [Hash] params ({})
    def list_limits(params = {}, options = {})
      req = build_request(:list_limits, params)
      req.send_request(options)
    end

    # Lists metered products.
    #
    # @option params [required, String] :license_endpoint_id
    #   The license endpoint ID to include on the list of metered products.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListMeteredProductsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMeteredProductsResponse#metered_products #metered_products} => Array&lt;Types::MeteredProductSummary&gt;
    #   * {Types::ListMeteredProductsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_metered_products({
    #     license_endpoint_id: "LicenseEndpointId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.metered_products #=> Array
    #   resp.metered_products[0].product_id #=> String
    #   resp.metered_products[0].family #=> String
    #   resp.metered_products[0].vendor #=> String
    #   resp.metered_products[0].port #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListMeteredProducts AWS API Documentation
    #
    # @overload list_metered_products(params = {})
    # @param [Hash] params ({})
    def list_metered_products(params = {}, options = {})
      req = build_request(:list_metered_products, params)
      req.send_request(options)
    end

    # Gets a list of your monitors in Deadline Cloud.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListMonitorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMonitorsResponse#next_token #next_token} => String
    #   * {Types::ListMonitorsResponse#monitors #monitors} => Array&lt;Types::MonitorSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_monitors({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.monitors #=> Array
    #   resp.monitors[0].monitor_id #=> String
    #   resp.monitors[0].display_name #=> String
    #   resp.monitors[0].subdomain #=> String
    #   resp.monitors[0].url #=> String
    #   resp.monitors[0].role_arn #=> String
    #   resp.monitors[0].identity_center_instance_arn #=> String
    #   resp.monitors[0].identity_center_application_arn #=> String
    #   resp.monitors[0].created_at #=> Time
    #   resp.monitors[0].created_by #=> String
    #   resp.monitors[0].updated_at #=> Time
    #   resp.monitors[0].updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListMonitors AWS API Documentation
    #
    # @overload list_monitors(params = {})
    # @param [Hash] params ({})
    def list_monitors(params = {}, options = {})
      req = build_request(:list_monitors, params)
      req.send_request(options)
    end

    # Lists queue environments.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the queue environment list.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the queue environment list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListQueueEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueueEnvironmentsResponse#environments #environments} => Array&lt;Types::QueueEnvironmentSummary&gt;
    #   * {Types::ListQueueEnvironmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queue_environments({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].queue_environment_id #=> String
    #   resp.environments[0].name #=> String
    #   resp.environments[0].priority #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueueEnvironments AWS API Documentation
    #
    # @overload list_queue_environments(params = {})
    # @param [Hash] params ({})
    def list_queue_environments(params = {}, options = {})
      req = build_request(:list_queue_environments, params)
      req.send_request(options)
    end

    # Lists queue-fleet associations.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the queue-fleet association list.
    #
    # @option params [String] :queue_id
    #   The queue ID for the queue-fleet association list.
    #
    # @option params [String] :fleet_id
    #   The fleet ID for the queue-fleet association list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListQueueFleetAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueueFleetAssociationsResponse#queue_fleet_associations #queue_fleet_associations} => Array&lt;Types::QueueFleetAssociationSummary&gt;
    #   * {Types::ListQueueFleetAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queue_fleet_associations({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId",
    #     fleet_id: "FleetId",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_fleet_associations #=> Array
    #   resp.queue_fleet_associations[0].queue_id #=> String
    #   resp.queue_fleet_associations[0].fleet_id #=> String
    #   resp.queue_fleet_associations[0].status #=> String, one of "ACTIVE", "STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS", "STOPPED"
    #   resp.queue_fleet_associations[0].created_at #=> Time
    #   resp.queue_fleet_associations[0].created_by #=> String
    #   resp.queue_fleet_associations[0].updated_at #=> Time
    #   resp.queue_fleet_associations[0].updated_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueueFleetAssociations AWS API Documentation
    #
    # @overload list_queue_fleet_associations(params = {})
    # @param [Hash] params ({})
    def list_queue_fleet_associations(params = {}, options = {})
      req = build_request(:list_queue_fleet_associations, params)
      req.send_request(options)
    end

    # Gets a list of the associations between queues and limits defined in a
    # farm.
    #
    # @option params [required, String] :farm_id
    #   The unique identifier of the farm that contains the limits and
    #   associations.
    #
    # @option params [String] :queue_id
    #   Specifies that the operation should return only the queue limit
    #   associations for the specified queue. If you specify both the
    #   `queueId` and the `limitId`, only the specified limit is returned if
    #   it exists.
    #
    # @option params [String] :limit_id
    #   Specifies that the operation should return only the queue limit
    #   associations for the specified limit. If you specify both the
    #   `queueId` and the `limitId`, only the specified limit is returned if
    #   it exists.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of associations to return in each page of results.
    #
    # @return [Types::ListQueueLimitAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueueLimitAssociationsResponse#queue_limit_associations #queue_limit_associations} => Array&lt;Types::QueueLimitAssociationSummary&gt;
    #   * {Types::ListQueueLimitAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queue_limit_associations({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId",
    #     limit_id: "LimitId",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_limit_associations #=> Array
    #   resp.queue_limit_associations[0].created_at #=> Time
    #   resp.queue_limit_associations[0].created_by #=> String
    #   resp.queue_limit_associations[0].updated_at #=> Time
    #   resp.queue_limit_associations[0].updated_by #=> String
    #   resp.queue_limit_associations[0].queue_id #=> String
    #   resp.queue_limit_associations[0].limit_id #=> String
    #   resp.queue_limit_associations[0].status #=> String, one of "ACTIVE", "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS", "STOP_LIMIT_USAGE_AND_CANCEL_TASKS", "STOPPED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueueLimitAssociations AWS API Documentation
    #
    # @overload list_queue_limit_associations(params = {})
    # @param [Hash] params ({})
    def list_queue_limit_associations(params = {}, options = {})
      req = build_request(:list_queue_limit_associations, params)
      req.send_request(options)
    end

    # Lists the members in a queue.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the queue.
    #
    # @option params [required, String] :queue_id
    #   The queue ID to include on the list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListQueueMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueueMembersResponse#members #members} => Array&lt;Types::QueueMember&gt;
    #   * {Types::ListQueueMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queue_members({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].farm_id #=> String
    #   resp.members[0].queue_id #=> String
    #   resp.members[0].principal_id #=> String
    #   resp.members[0].principal_type #=> String, one of "USER", "GROUP"
    #   resp.members[0].identity_store_id #=> String
    #   resp.members[0].membership_level #=> String, one of "VIEWER", "CONTRIBUTOR", "OWNER", "MANAGER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueueMembers AWS API Documentation
    #
    # @overload list_queue_members(params = {})
    # @param [Hash] params ({})
    def list_queue_members(params = {}, options = {})
      req = build_request(:list_queue_members, params)
      req.send_request(options)
    end

    # Lists queues.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the queue.
    #
    # @option params [String] :principal_id
    #   The principal IDs to include in the list of queues.
    #
    # @option params [String] :status
    #   The status of the queues listed.
    #
    #   * `ACTIVE`–The queues are active.
    #
    #   * `SCHEDULING`–The queues are scheduling.
    #
    #   * `SCHEDULING_BLOCKED`–The queue scheduling is blocked for these
    #     queues.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListQueuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueuesResponse#queues #queues} => Array&lt;Types::QueueSummary&gt;
    #   * {Types::ListQueuesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queues({
    #     farm_id: "FarmId", # required
    #     principal_id: "IdentityCenterPrincipalId",
    #     status: "IDLE", # accepts IDLE, SCHEDULING, SCHEDULING_BLOCKED
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.queues #=> Array
    #   resp.queues[0].farm_id #=> String
    #   resp.queues[0].queue_id #=> String
    #   resp.queues[0].display_name #=> String
    #   resp.queues[0].status #=> String, one of "IDLE", "SCHEDULING", "SCHEDULING_BLOCKED"
    #   resp.queues[0].default_budget_action #=> String, one of "NONE", "STOP_SCHEDULING_AND_COMPLETE_TASKS", "STOP_SCHEDULING_AND_CANCEL_TASKS"
    #   resp.queues[0].blocked_reason #=> String, one of "NO_BUDGET_CONFIGURED", "BUDGET_THRESHOLD_REACHED"
    #   resp.queues[0].created_at #=> Time
    #   resp.queues[0].created_by #=> String
    #   resp.queues[0].updated_at #=> Time
    #   resp.queues[0].updated_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListQueues AWS API Documentation
    #
    # @overload list_queues(params = {})
    # @param [Hash] params ({})
    def list_queues(params = {}, options = {})
      req = build_request(:list_queues, params)
      req.send_request(options)
    end

    # Lists session actions.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the session actions list.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the session actions list.
    #
    # @option params [required, String] :job_id
    #   The job ID for the session actions list.
    #
    # @option params [String] :session_id
    #   The session ID to include on the sessions action list.
    #
    # @option params [String] :task_id
    #   The task ID for the session actions list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListSessionActionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSessionActionsResponse#session_actions #session_actions} => Array&lt;Types::SessionActionSummary&gt;
    #   * {Types::ListSessionActionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_session_actions({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     session_id: "SessionId",
    #     task_id: "TaskId",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.session_actions #=> Array
    #   resp.session_actions[0].session_action_id #=> String
    #   resp.session_actions[0].status #=> String, one of "ASSIGNED", "RUNNING", "CANCELING", "SUCCEEDED", "FAILED", "INTERRUPTED", "CANCELED", "NEVER_ATTEMPTED", "SCHEDULED", "RECLAIMING", "RECLAIMED"
    #   resp.session_actions[0].started_at #=> Time
    #   resp.session_actions[0].ended_at #=> Time
    #   resp.session_actions[0].worker_updated_at #=> Time
    #   resp.session_actions[0].progress_percent #=> Float
    #   resp.session_actions[0].definition.env_enter.environment_id #=> String
    #   resp.session_actions[0].definition.env_exit.environment_id #=> String
    #   resp.session_actions[0].definition.task_run.task_id #=> String
    #   resp.session_actions[0].definition.task_run.step_id #=> String
    #   resp.session_actions[0].definition.sync_input_job_attachments.step_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListSessionActions AWS API Documentation
    #
    # @overload list_session_actions(params = {})
    # @param [Hash] params ({})
    def list_session_actions(params = {}, options = {})
      req = build_request(:list_session_actions, params)
      req.send_request(options)
    end

    # Lists sessions.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the list of sessions.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the list of sessions
    #
    # @option params [required, String] :job_id
    #   The job ID for the list of sessions.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSessionsResponse#sessions #sessions} => Array&lt;Types::SessionSummary&gt;
    #   * {Types::ListSessionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sessions({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.sessions #=> Array
    #   resp.sessions[0].session_id #=> String
    #   resp.sessions[0].fleet_id #=> String
    #   resp.sessions[0].worker_id #=> String
    #   resp.sessions[0].started_at #=> Time
    #   resp.sessions[0].lifecycle_status #=> String, one of "STARTED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCEEDED", "UPDATE_FAILED", "ENDED"
    #   resp.sessions[0].ended_at #=> Time
    #   resp.sessions[0].updated_at #=> Time
    #   resp.sessions[0].updated_by #=> String
    #   resp.sessions[0].target_lifecycle_status #=> String, one of "ENDED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListSessions AWS API Documentation
    #
    # @overload list_sessions(params = {})
    # @param [Hash] params ({})
    def list_sessions(params = {}, options = {})
      req = build_request(:list_sessions, params)
      req.send_request(options)
    end

    # Lists sessions for a worker.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the session.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID for the session.
    #
    # @option params [required, String] :worker_id
    #   The worker ID for the session.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListSessionsForWorkerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSessionsForWorkerResponse#sessions #sessions} => Array&lt;Types::WorkerSessionSummary&gt;
    #   * {Types::ListSessionsForWorkerResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sessions_for_worker({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.sessions #=> Array
    #   resp.sessions[0].session_id #=> String
    #   resp.sessions[0].queue_id #=> String
    #   resp.sessions[0].job_id #=> String
    #   resp.sessions[0].started_at #=> Time
    #   resp.sessions[0].lifecycle_status #=> String, one of "STARTED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCEEDED", "UPDATE_FAILED", "ENDED"
    #   resp.sessions[0].ended_at #=> Time
    #   resp.sessions[0].target_lifecycle_status #=> String, one of "ENDED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListSessionsForWorker AWS API Documentation
    #
    # @overload list_sessions_for_worker(params = {})
    # @param [Hash] params ({})
    def list_sessions_for_worker(params = {}, options = {})
      req = build_request(:list_sessions_for_worker, params)
      req.send_request(options)
    end

    # Lists step consumers.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the list of step consumers.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the step consumer.
    #
    # @option params [required, String] :job_id
    #   The job ID for the step consumer.
    #
    # @option params [required, String] :step_id
    #   The step ID to include on the list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListStepConsumersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStepConsumersResponse#consumers #consumers} => Array&lt;Types::StepConsumer&gt;
    #   * {Types::ListStepConsumersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_step_consumers({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.consumers #=> Array
    #   resp.consumers[0].step_id #=> String
    #   resp.consumers[0].status #=> String, one of "RESOLVED", "UNRESOLVED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStepConsumers AWS API Documentation
    #
    # @overload list_step_consumers(params = {})
    # @param [Hash] params ({})
    def list_step_consumers(params = {}, options = {})
      req = build_request(:list_step_consumers, params)
      req.send_request(options)
    end

    # Lists the dependencies for a step.
    #
    # @option params [required, String] :farm_id
    #   The farm ID for the step dependencies list.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the step dependencies list.
    #
    # @option params [required, String] :job_id
    #   The job ID for the step dependencies list.
    #
    # @option params [required, String] :step_id
    #   The step ID to include on the list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListStepDependenciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStepDependenciesResponse#dependencies #dependencies} => Array&lt;Types::StepDependency&gt;
    #   * {Types::ListStepDependenciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_step_dependencies({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dependencies #=> Array
    #   resp.dependencies[0].step_id #=> String
    #   resp.dependencies[0].status #=> String, one of "RESOLVED", "UNRESOLVED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStepDependencies AWS API Documentation
    #
    # @overload list_step_dependencies(params = {})
    # @param [Hash] params ({})
    def list_step_dependencies(params = {}, options = {})
      req = build_request(:list_step_dependencies, params)
      req.send_request(options)
    end

    # Lists steps for a job.
    #
    # @option params [required, String] :farm_id
    #   The farm ID to include on the list of steps.
    #
    # @option params [required, String] :queue_id
    #   The queue ID to include on the list of steps.
    #
    # @option params [required, String] :job_id
    #   The job ID to include on the list of steps.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListStepsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStepsResponse#steps #steps} => Array&lt;Types::StepSummary&gt;
    #   * {Types::ListStepsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_steps({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.steps #=> Array
    #   resp.steps[0].step_id #=> String
    #   resp.steps[0].name #=> String
    #   resp.steps[0].lifecycle_status #=> String, one of "CREATE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_SUCCEEDED"
    #   resp.steps[0].lifecycle_status_message #=> String
    #   resp.steps[0].task_run_status #=> String, one of "PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"
    #   resp.steps[0].task_run_status_counts #=> Hash
    #   resp.steps[0].task_run_status_counts["TaskRunStatus"] #=> Integer
    #   resp.steps[0].target_task_run_status #=> String, one of "READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"
    #   resp.steps[0].created_at #=> Time
    #   resp.steps[0].created_by #=> String
    #   resp.steps[0].updated_at #=> Time
    #   resp.steps[0].updated_by #=> String
    #   resp.steps[0].started_at #=> Time
    #   resp.steps[0].ended_at #=> Time
    #   resp.steps[0].dependency_counts.dependencies_resolved #=> Integer
    #   resp.steps[0].dependency_counts.dependencies_unresolved #=> Integer
    #   resp.steps[0].dependency_counts.consumers_resolved #=> Integer
    #   resp.steps[0].dependency_counts.consumers_unresolved #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListSteps AWS API Documentation
    #
    # @overload list_steps(params = {})
    # @param [Hash] params ({})
    def list_steps(params = {}, options = {})
      req = build_request(:list_steps, params)
      req.send_request(options)
    end

    # Lists storage profiles.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the storage profile.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListStorageProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStorageProfilesResponse#storage_profiles #storage_profiles} => Array&lt;Types::StorageProfileSummary&gt;
    #   * {Types::ListStorageProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_storage_profiles({
    #     farm_id: "FarmId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_profiles #=> Array
    #   resp.storage_profiles[0].storage_profile_id #=> String
    #   resp.storage_profiles[0].display_name #=> String
    #   resp.storage_profiles[0].os_family #=> String, one of "WINDOWS", "LINUX", "MACOS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStorageProfiles AWS API Documentation
    #
    # @overload list_storage_profiles(params = {})
    # @param [Hash] params ({})
    def list_storage_profiles(params = {}, options = {})
      req = build_request(:list_storage_profiles, params)
      req.send_request(options)
    end

    # Lists storage profiles for a queue.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the queue's storage profile.
    #
    # @option params [required, String] :queue_id
    #   The queue ID for the storage profile.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListStorageProfilesForQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStorageProfilesForQueueResponse#storage_profiles #storage_profiles} => Array&lt;Types::StorageProfileSummary&gt;
    #   * {Types::ListStorageProfilesForQueueResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_storage_profiles_for_queue({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_profiles #=> Array
    #   resp.storage_profiles[0].storage_profile_id #=> String
    #   resp.storage_profiles[0].display_name #=> String
    #   resp.storage_profiles[0].os_family #=> String, one of "WINDOWS", "LINUX", "MACOS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListStorageProfilesForQueue AWS API Documentation
    #
    # @overload list_storage_profiles_for_queue(params = {})
    # @param [Hash] params ({})
    def list_storage_profiles_for_queue(params = {}, options = {})
      req = build_request(:list_storage_profiles_for_queue, params)
      req.send_request(options)
    end

    # Lists tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN to list tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists tasks for a job.
    #
    # @option params [required, String] :farm_id
    #   The farm ID connected to the tasks.
    #
    # @option params [required, String] :queue_id
    #   The queue ID connected to the tasks.
    #
    # @option params [required, String] :job_id
    #   The job ID for the tasks.
    #
    # @option params [required, String] :step_id
    #   The step ID for the tasks.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTasksResponse#tasks #tasks} => Array&lt;Types::TaskSummary&gt;
    #   * {Types::ListTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tasks({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].task_id #=> String
    #   resp.tasks[0].created_at #=> Time
    #   resp.tasks[0].created_by #=> String
    #   resp.tasks[0].run_status #=> String, one of "PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"
    #   resp.tasks[0].target_run_status #=> String, one of "READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"
    #   resp.tasks[0].failure_retry_count #=> Integer
    #   resp.tasks[0].parameters #=> Hash
    #   resp.tasks[0].parameters["String"].int #=> String
    #   resp.tasks[0].parameters["String"].float #=> String
    #   resp.tasks[0].parameters["String"].string #=> String
    #   resp.tasks[0].parameters["String"].path #=> String
    #   resp.tasks[0].started_at #=> Time
    #   resp.tasks[0].ended_at #=> Time
    #   resp.tasks[0].updated_at #=> Time
    #   resp.tasks[0].updated_by #=> String
    #   resp.tasks[0].latest_session_action_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListTasks AWS API Documentation
    #
    # @overload list_tasks(params = {})
    # @param [Hash] params ({})
    def list_tasks(params = {}, options = {})
      req = build_request(:list_tasks, params)
      req.send_request(options)
    end

    # Lists workers.
    #
    # @option params [required, String] :farm_id
    #   The farm ID connected to the workers.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID of the workers.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or `null` to start from the
    #   beginning.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @return [Types::ListWorkersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkersResponse#next_token #next_token} => String
    #   * {Types::ListWorkersResponse#workers #workers} => Array&lt;Types::WorkerSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workers({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.workers #=> Array
    #   resp.workers[0].worker_id #=> String
    #   resp.workers[0].farm_id #=> String
    #   resp.workers[0].fleet_id #=> String
    #   resp.workers[0].status #=> String, one of "CREATED", "STARTED", "STOPPING", "STOPPED", "NOT_RESPONDING", "NOT_COMPATIBLE", "RUNNING", "IDLE"
    #   resp.workers[0].host_properties.ip_addresses.ip_v4_addresses #=> Array
    #   resp.workers[0].host_properties.ip_addresses.ip_v4_addresses[0] #=> String
    #   resp.workers[0].host_properties.ip_addresses.ip_v6_addresses #=> Array
    #   resp.workers[0].host_properties.ip_addresses.ip_v6_addresses[0] #=> String
    #   resp.workers[0].host_properties.host_name #=> String
    #   resp.workers[0].host_properties.ec2_instance_arn #=> String
    #   resp.workers[0].host_properties.ec2_instance_type #=> String
    #   resp.workers[0].log.log_driver #=> String
    #   resp.workers[0].log.options #=> Hash
    #   resp.workers[0].log.options["String"] #=> String
    #   resp.workers[0].log.parameters #=> Hash
    #   resp.workers[0].log.parameters["String"] #=> String
    #   resp.workers[0].log.error #=> String
    #   resp.workers[0].created_at #=> Time
    #   resp.workers[0].created_by #=> String
    #   resp.workers[0].updated_at #=> Time
    #   resp.workers[0].updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/ListWorkers AWS API Documentation
    #
    # @overload list_workers(params = {})
    # @param [Hash] params ({})
    def list_workers(params = {}, options = {})
      req = build_request(:list_workers, params)
      req.send_request(options)
    end

    # Adds a metered product.
    #
    # @option params [required, String] :license_endpoint_id
    #   The license endpoint ID to add to the metered product.
    #
    # @option params [required, String] :product_id
    #   The product ID to add to the metered product.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_metered_product({
    #     license_endpoint_id: "LicenseEndpointId", # required
    #     product_id: "MeteredProductId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/PutMeteredProduct AWS API Documentation
    #
    # @overload put_metered_product(params = {})
    # @param [Hash] params ({})
    def put_metered_product(params = {}, options = {})
      req = build_request(:put_metered_product, params)
      req.send_request(options)
    end

    # Searches for jobs.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the job.
    #
    # @option params [required, Array<String>] :queue_ids
    #   The queue ID to use in the job search.
    #
    # @option params [Types::SearchGroupedFilterExpressions] :filter_expressions
    #   The filter expression, `AND` or `OR`, to use when searching among a
    #   group of search strings in a resource. You can use two groupings per
    #   search each within parenthesis `()`.
    #
    # @option params [Array<Types::SearchSortExpression>] :sort_expressions
    #   The search terms for a resource.
    #
    # @option params [required, Integer] :item_offset
    #   Defines how far into the scrollable list to start the return of
    #   results.
    #
    # @option params [Integer] :page_size
    #   Specifies the number of items per page for the resource.
    #
    # @return [Types::SearchJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchJobsResponse#jobs #jobs} => Array&lt;Types::JobSearchSummary&gt;
    #   * {Types::SearchJobsResponse#next_item_offset #next_item_offset} => Integer
    #   * {Types::SearchJobsResponse#total_results #total_results} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_jobs({
    #     farm_id: "FarmId", # required
    #     queue_ids: ["QueueId"], # required
    #     filter_expressions: {
    #       filters: [ # required
    #         {
    #           date_time_filter: {
    #             name: "String", # required
    #             operator: "EQUAL", # required, accepts EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
    #             date_time: Time.now, # required
    #           },
    #           parameter_filter: {
    #             name: "String", # required
    #             operator: "EQUAL", # required, accepts EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
    #             value: "ParameterValue", # required
    #           },
    #           search_term_filter: {
    #             search_term: "SearchTerm", # required
    #           },
    #           string_filter: {
    #             name: "String", # required
    #             operator: "EQUAL", # required, accepts EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
    #             value: "StringFilter", # required
    #           },
    #           group_filter: {
    #             # recursive SearchGroupedFilterExpressions
    #           },
    #         },
    #       ],
    #       operator: "AND", # required, accepts AND, OR
    #     },
    #     sort_expressions: [
    #       {
    #         user_jobs_first: {
    #           user_identity_id: "String", # required
    #         },
    #         field_sort: {
    #           sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #           name: "String", # required
    #         },
    #         parameter_sort: {
    #           sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #           name: "String", # required
    #         },
    #       },
    #     ],
    #     item_offset: 1, # required
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].queue_id #=> String
    #   resp.jobs[0].name #=> String
    #   resp.jobs[0].lifecycle_status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "UPLOAD_IN_PROGRESS", "UPLOAD_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_SUCCEEDED", "ARCHIVED"
    #   resp.jobs[0].lifecycle_status_message #=> String
    #   resp.jobs[0].task_run_status #=> String, one of "PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"
    #   resp.jobs[0].target_task_run_status #=> String, one of "READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"
    #   resp.jobs[0].task_run_status_counts #=> Hash
    #   resp.jobs[0].task_run_status_counts["TaskRunStatus"] #=> Integer
    #   resp.jobs[0].priority #=> Integer
    #   resp.jobs[0].max_failed_tasks_count #=> Integer
    #   resp.jobs[0].max_retries_per_task #=> Integer
    #   resp.jobs[0].created_by #=> String
    #   resp.jobs[0].created_at #=> Time
    #   resp.jobs[0].ended_at #=> Time
    #   resp.jobs[0].started_at #=> Time
    #   resp.jobs[0].job_parameters #=> Hash
    #   resp.jobs[0].job_parameters["String"].int #=> String
    #   resp.jobs[0].job_parameters["String"].float #=> String
    #   resp.jobs[0].job_parameters["String"].string #=> String
    #   resp.jobs[0].job_parameters["String"].path #=> String
    #   resp.jobs[0].max_worker_count #=> Integer
    #   resp.jobs[0].source_job_id #=> String
    #   resp.next_item_offset #=> Integer
    #   resp.total_results #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchJobs AWS API Documentation
    #
    # @overload search_jobs(params = {})
    # @param [Hash] params ({})
    def search_jobs(params = {}, options = {})
      req = build_request(:search_jobs, params)
      req.send_request(options)
    end

    # Searches for steps.
    #
    # @option params [required, String] :farm_id
    #   The farm ID to use for the step search.
    #
    # @option params [required, Array<String>] :queue_ids
    #   The queue IDs in the step search.
    #
    # @option params [String] :job_id
    #   The job ID to use in the step search.
    #
    # @option params [Types::SearchGroupedFilterExpressions] :filter_expressions
    #   The filter expression, `AND` or `OR`, to use when searching among a
    #   group of search strings in a resource. You can use two groupings per
    #   search each within parenthesis `()`.
    #
    # @option params [Array<Types::SearchSortExpression>] :sort_expressions
    #   The search terms for a resource.
    #
    # @option params [required, Integer] :item_offset
    #   Defines how far into the scrollable list to start the return of
    #   results.
    #
    # @option params [Integer] :page_size
    #   Specifies the number of items per page for the resource.
    #
    # @return [Types::SearchStepsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchStepsResponse#steps #steps} => Array&lt;Types::StepSearchSummary&gt;
    #   * {Types::SearchStepsResponse#next_item_offset #next_item_offset} => Integer
    #   * {Types::SearchStepsResponse#total_results #total_results} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_steps({
    #     farm_id: "FarmId", # required
    #     queue_ids: ["QueueId"], # required
    #     job_id: "JobId",
    #     filter_expressions: {
    #       filters: [ # required
    #         {
    #           date_time_filter: {
    #             name: "String", # required
    #             operator: "EQUAL", # required, accepts EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
    #             date_time: Time.now, # required
    #           },
    #           parameter_filter: {
    #             name: "String", # required
    #             operator: "EQUAL", # required, accepts EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
    #             value: "ParameterValue", # required
    #           },
    #           search_term_filter: {
    #             search_term: "SearchTerm", # required
    #           },
    #           string_filter: {
    #             name: "String", # required
    #             operator: "EQUAL", # required, accepts EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
    #             value: "StringFilter", # required
    #           },
    #           group_filter: {
    #             # recursive SearchGroupedFilterExpressions
    #           },
    #         },
    #       ],
    #       operator: "AND", # required, accepts AND, OR
    #     },
    #     sort_expressions: [
    #       {
    #         user_jobs_first: {
    #           user_identity_id: "String", # required
    #         },
    #         field_sort: {
    #           sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #           name: "String", # required
    #         },
    #         parameter_sort: {
    #           sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #           name: "String", # required
    #         },
    #       },
    #     ],
    #     item_offset: 1, # required
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.steps #=> Array
    #   resp.steps[0].step_id #=> String
    #   resp.steps[0].job_id #=> String
    #   resp.steps[0].queue_id #=> String
    #   resp.steps[0].name #=> String
    #   resp.steps[0].lifecycle_status #=> String, one of "CREATE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_SUCCEEDED"
    #   resp.steps[0].lifecycle_status_message #=> String
    #   resp.steps[0].task_run_status #=> String, one of "PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"
    #   resp.steps[0].target_task_run_status #=> String, one of "READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"
    #   resp.steps[0].task_run_status_counts #=> Hash
    #   resp.steps[0].task_run_status_counts["TaskRunStatus"] #=> Integer
    #   resp.steps[0].created_at #=> Time
    #   resp.steps[0].started_at #=> Time
    #   resp.steps[0].ended_at #=> Time
    #   resp.steps[0].parameter_space.parameters #=> Array
    #   resp.steps[0].parameter_space.parameters[0].name #=> String
    #   resp.steps[0].parameter_space.parameters[0].type #=> String, one of "INT", "FLOAT", "STRING", "PATH"
    #   resp.steps[0].parameter_space.combination #=> String
    #   resp.next_item_offset #=> Integer
    #   resp.total_results #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchSteps AWS API Documentation
    #
    # @overload search_steps(params = {})
    # @param [Hash] params ({})
    def search_steps(params = {}, options = {})
      req = build_request(:search_steps, params)
      req.send_request(options)
    end

    # Searches for tasks.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the task.
    #
    # @option params [required, Array<String>] :queue_ids
    #   The queue IDs to include in the search.
    #
    # @option params [String] :job_id
    #   The job ID for the task search.
    #
    # @option params [Types::SearchGroupedFilterExpressions] :filter_expressions
    #   The filter expression, `AND` or `OR`, to use when searching among a
    #   group of search strings in a resource. You can use two groupings per
    #   search each within parenthesis `()`.
    #
    # @option params [Array<Types::SearchSortExpression>] :sort_expressions
    #   The search terms for a resource.
    #
    # @option params [required, Integer] :item_offset
    #   Defines how far into the scrollable list to start the return of
    #   results.
    #
    # @option params [Integer] :page_size
    #   Specifies the number of items per page for the resource.
    #
    # @return [Types::SearchTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchTasksResponse#tasks #tasks} => Array&lt;Types::TaskSearchSummary&gt;
    #   * {Types::SearchTasksResponse#next_item_offset #next_item_offset} => Integer
    #   * {Types::SearchTasksResponse#total_results #total_results} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_tasks({
    #     farm_id: "FarmId", # required
    #     queue_ids: ["QueueId"], # required
    #     job_id: "JobId",
    #     filter_expressions: {
    #       filters: [ # required
    #         {
    #           date_time_filter: {
    #             name: "String", # required
    #             operator: "EQUAL", # required, accepts EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
    #             date_time: Time.now, # required
    #           },
    #           parameter_filter: {
    #             name: "String", # required
    #             operator: "EQUAL", # required, accepts EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
    #             value: "ParameterValue", # required
    #           },
    #           search_term_filter: {
    #             search_term: "SearchTerm", # required
    #           },
    #           string_filter: {
    #             name: "String", # required
    #             operator: "EQUAL", # required, accepts EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
    #             value: "StringFilter", # required
    #           },
    #           group_filter: {
    #             # recursive SearchGroupedFilterExpressions
    #           },
    #         },
    #       ],
    #       operator: "AND", # required, accepts AND, OR
    #     },
    #     sort_expressions: [
    #       {
    #         user_jobs_first: {
    #           user_identity_id: "String", # required
    #         },
    #         field_sort: {
    #           sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #           name: "String", # required
    #         },
    #         parameter_sort: {
    #           sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #           name: "String", # required
    #         },
    #       },
    #     ],
    #     item_offset: 1, # required
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].task_id #=> String
    #   resp.tasks[0].step_id #=> String
    #   resp.tasks[0].job_id #=> String
    #   resp.tasks[0].queue_id #=> String
    #   resp.tasks[0].run_status #=> String, one of "PENDING", "READY", "ASSIGNED", "STARTING", "SCHEDULED", "INTERRUPTING", "RUNNING", "SUSPENDED", "CANCELED", "FAILED", "SUCCEEDED", "NOT_COMPATIBLE"
    #   resp.tasks[0].target_run_status #=> String, one of "READY", "FAILED", "SUCCEEDED", "CANCELED", "SUSPENDED", "PENDING"
    #   resp.tasks[0].parameters #=> Hash
    #   resp.tasks[0].parameters["String"].int #=> String
    #   resp.tasks[0].parameters["String"].float #=> String
    #   resp.tasks[0].parameters["String"].string #=> String
    #   resp.tasks[0].parameters["String"].path #=> String
    #   resp.tasks[0].failure_retry_count #=> Integer
    #   resp.tasks[0].started_at #=> Time
    #   resp.tasks[0].ended_at #=> Time
    #   resp.next_item_offset #=> Integer
    #   resp.total_results #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchTasks AWS API Documentation
    #
    # @overload search_tasks(params = {})
    # @param [Hash] params ({})
    def search_tasks(params = {}, options = {})
      req = build_request(:search_tasks, params)
      req.send_request(options)
    end

    # Searches for workers.
    #
    # @option params [required, String] :farm_id
    #   The farm ID in the workers search.
    #
    # @option params [required, Array<String>] :fleet_ids
    #   The fleet ID of the workers to search for.
    #
    # @option params [Types::SearchGroupedFilterExpressions] :filter_expressions
    #   The filter expression, `AND` or `OR`, to use when searching among a
    #   group of search strings in a resource. You can use two groupings per
    #   search each within parenthesis `()`.
    #
    # @option params [Array<Types::SearchSortExpression>] :sort_expressions
    #   The search terms for a resource.
    #
    # @option params [required, Integer] :item_offset
    #   Defines how far into the scrollable list to start the return of
    #   results.
    #
    # @option params [Integer] :page_size
    #   Specifies the number of items per page for the resource.
    #
    # @return [Types::SearchWorkersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchWorkersResponse#workers #workers} => Array&lt;Types::WorkerSearchSummary&gt;
    #   * {Types::SearchWorkersResponse#next_item_offset #next_item_offset} => Integer
    #   * {Types::SearchWorkersResponse#total_results #total_results} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_workers({
    #     farm_id: "FarmId", # required
    #     fleet_ids: ["FleetId"], # required
    #     filter_expressions: {
    #       filters: [ # required
    #         {
    #           date_time_filter: {
    #             name: "String", # required
    #             operator: "EQUAL", # required, accepts EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
    #             date_time: Time.now, # required
    #           },
    #           parameter_filter: {
    #             name: "String", # required
    #             operator: "EQUAL", # required, accepts EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
    #             value: "ParameterValue", # required
    #           },
    #           search_term_filter: {
    #             search_term: "SearchTerm", # required
    #           },
    #           string_filter: {
    #             name: "String", # required
    #             operator: "EQUAL", # required, accepts EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
    #             value: "StringFilter", # required
    #           },
    #           group_filter: {
    #             # recursive SearchGroupedFilterExpressions
    #           },
    #         },
    #       ],
    #       operator: "AND", # required, accepts AND, OR
    #     },
    #     sort_expressions: [
    #       {
    #         user_jobs_first: {
    #           user_identity_id: "String", # required
    #         },
    #         field_sort: {
    #           sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #           name: "String", # required
    #         },
    #         parameter_sort: {
    #           sort_order: "ASCENDING", # required, accepts ASCENDING, DESCENDING
    #           name: "String", # required
    #         },
    #       },
    #     ],
    #     item_offset: 1, # required
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workers #=> Array
    #   resp.workers[0].fleet_id #=> String
    #   resp.workers[0].worker_id #=> String
    #   resp.workers[0].status #=> String, one of "CREATED", "STARTED", "STOPPING", "STOPPED", "NOT_RESPONDING", "NOT_COMPATIBLE", "RUNNING", "IDLE"
    #   resp.workers[0].host_properties.ip_addresses.ip_v4_addresses #=> Array
    #   resp.workers[0].host_properties.ip_addresses.ip_v4_addresses[0] #=> String
    #   resp.workers[0].host_properties.ip_addresses.ip_v6_addresses #=> Array
    #   resp.workers[0].host_properties.ip_addresses.ip_v6_addresses[0] #=> String
    #   resp.workers[0].host_properties.host_name #=> String
    #   resp.workers[0].host_properties.ec2_instance_arn #=> String
    #   resp.workers[0].host_properties.ec2_instance_type #=> String
    #   resp.workers[0].created_by #=> String
    #   resp.workers[0].created_at #=> Time
    #   resp.workers[0].updated_by #=> String
    #   resp.workers[0].updated_at #=> Time
    #   resp.next_item_offset #=> Integer
    #   resp.total_results #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/SearchWorkers AWS API Documentation
    #
    # @overload search_workers(params = {})
    # @param [Hash] params ({})
    def search_workers(params = {}, options = {})
      req = build_request(:search_workers, params)
      req.send_request(options)
    end

    # Starts an asynchronous request for getting aggregated statistics about
    # queues and farms. Get the statistics using the
    # `GetSessionsStatisticsAggregation` operation. You can only have one
    # running aggregation for your Deadline Cloud farm. Call the
    # `GetSessionsStatisticsAggregation` operation and check the `status`
    # field to see if an aggregation is running. Statistics are available
    # for 1 hour after you call the `StartSessionsStatisticsAggregation`
    # operation.
    #
    # @option params [required, String] :farm_id
    #   The identifier of the farm that contains queues or fleets to return
    #   statistics for.
    #
    # @option params [required, Types::SessionsStatisticsResources] :resource_ids
    #   A list of fleet IDs or queue IDs to gather statistics for.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The Linux timestamp of the date and time that the statistics start.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The Linux timestamp of the date and time that the statistics end.
    #
    # @option params [String] :timezone
    #   The timezone to use for the statistics. Use UTC notation such as
    #   "UTC+8."
    #
    # @option params [String] :period
    #   The period to aggregate the statistics.
    #
    # @option params [required, Array<String>] :group_by
    #   The field to use to group the statistics.
    #
    # @option params [required, Array<String>] :statistics
    #   One to four statistics to return.
    #
    # @return [Types::StartSessionsStatisticsAggregationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSessionsStatisticsAggregationResponse#aggregation_id #aggregation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_sessions_statistics_aggregation({
    #     farm_id: "FarmId", # required
    #     resource_ids: { # required
    #       queue_ids: ["QueueId"],
    #       fleet_ids: ["FleetId"],
    #     },
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     timezone: "Timezone",
    #     period: "HOURLY", # accepts HOURLY, DAILY, WEEKLY, MONTHLY
    #     group_by: ["QUEUE_ID"], # required, accepts QUEUE_ID, FLEET_ID, JOB_ID, USER_ID, USAGE_TYPE, INSTANCE_TYPE, LICENSE_PRODUCT
    #     statistics: ["SUM"], # required, accepts SUM, MIN, MAX, AVG
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/StartSessionsStatisticsAggregation AWS API Documentation
    #
    # @overload start_sessions_statistics_aggregation(params = {})
    # @param [Hash] params ({})
    def start_sessions_statistics_aggregation(params = {}, options = {})
      req = build_request(:start_sessions_statistics_aggregation, params)
      req.send_request(options)
    end

    # Tags a resource using the resource's ARN and desired tags.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to apply tags to.
    #
    # @option params [Hash<String,String>] :tags
    #   Each tag consists of a tag key and a tag value. Tag keys and values
    #   are both required, but tag values can be empty strings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from a resource using the resource's ARN and tag to
    # remove.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to remove the tag from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   They keys of the tag.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a budget that sets spending thresholds for rendering activity.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the budget to update.
    #
    # @option params [required, String] :budget_id
    #   The budget ID to update.
    #
    # @option params [String] :display_name
    #   The display name of the budget to update.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :description
    #   The description of the budget to update.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :status
    #   Updates the status of the budget.
    #
    #   * `ACTIVE`–The budget is being evaluated.
    #
    #   * `INACTIVE`–The budget is inactive. This can include Expired,
    #     Canceled, or deleted Deleted statuses.
    #
    # @option params [Float] :approximate_dollar_limit
    #   The dollar limit to update on the budget. Based on consumed usage.
    #
    # @option params [Array<Types::BudgetActionToAdd>] :actions_to_add
    #   The budget actions to add. Budget actions specify what happens when
    #   the budget runs out.
    #
    # @option params [Array<Types::BudgetActionToRemove>] :actions_to_remove
    #   The budget actions to remove from the budget.
    #
    # @option params [Types::BudgetSchedule] :schedule
    #   The schedule to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_budget({
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     budget_id: "BudgetId", # required
    #     display_name: "ResourceName",
    #     description: "Description",
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     approximate_dollar_limit: 1.0,
    #     actions_to_add: [
    #       {
    #         type: "STOP_SCHEDULING_AND_COMPLETE_TASKS", # required, accepts STOP_SCHEDULING_AND_COMPLETE_TASKS, STOP_SCHEDULING_AND_CANCEL_TASKS
    #         threshold_percentage: 1.0, # required
    #         description: "Description",
    #       },
    #     ],
    #     actions_to_remove: [
    #       {
    #         type: "STOP_SCHEDULING_AND_COMPLETE_TASKS", # required, accepts STOP_SCHEDULING_AND_COMPLETE_TASKS, STOP_SCHEDULING_AND_CANCEL_TASKS
    #         threshold_percentage: 1.0, # required
    #       },
    #     ],
    #     schedule: {
    #       fixed: {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateBudget AWS API Documentation
    #
    # @overload update_budget(params = {})
    # @param [Hash] params ({})
    def update_budget(params = {}, options = {})
      req = build_request(:update_budget, params)
      req.send_request(options)
    end

    # Updates a farm.
    #
    # @option params [required, String] :farm_id
    #   The farm ID to update.
    #
    # @option params [String] :display_name
    #   The display name of the farm to update.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :description
    #   The description of the farm to update.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_farm({
    #     farm_id: "FarmId", # required
    #     display_name: "ResourceName",
    #     description: "Description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateFarm AWS API Documentation
    #
    # @overload update_farm(params = {})
    # @param [Hash] params ({})
    def update_farm(params = {}, options = {})
      req = build_request(:update_farm, params)
      req.send_request(options)
    end

    # Updates a fleet.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :farm_id
    #   The farm ID to update.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID to update.
    #
    # @option params [String] :display_name
    #   The display name of the fleet to update.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :description
    #   The description of the fleet to update.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :role_arn
    #   The IAM role ARN that the fleet's workers assume while running jobs.
    #
    # @option params [Integer] :min_worker_count
    #   The minimum number of workers in the fleet.
    #
    # @option params [Integer] :max_worker_count
    #   The maximum number of workers in the fleet.
    #
    # @option params [Types::FleetConfiguration] :configuration
    #   The fleet configuration to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet({
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     display_name: "ResourceName",
    #     description: "Description",
    #     role_arn: "IamRoleArn",
    #     min_worker_count: 1,
    #     max_worker_count: 1,
    #     configuration: {
    #       customer_managed: {
    #         mode: "NO_SCALING", # required, accepts NO_SCALING, EVENT_BASED_AUTO_SCALING
    #         worker_capabilities: { # required
    #           v_cpu_count: { # required
    #             min: 1, # required
    #             max: 1,
    #           },
    #           memory_mi_b: { # required
    #             min: 1, # required
    #             max: 1,
    #           },
    #           accelerator_types: ["gpu"], # accepts gpu
    #           accelerator_count: {
    #             min: 1, # required
    #             max: 1,
    #           },
    #           accelerator_total_memory_mi_b: {
    #             min: 1, # required
    #             max: 1,
    #           },
    #           os_family: "WINDOWS", # required, accepts WINDOWS, LINUX, MACOS
    #           cpu_architecture_type: "x86_64", # required, accepts x86_64, arm64
    #           custom_amounts: [
    #             {
    #               name: "AmountCapabilityName", # required
    #               min: 1.0, # required
    #               max: 1.0,
    #             },
    #           ],
    #           custom_attributes: [
    #             {
    #               name: "AttributeCapabilityName", # required
    #               values: ["AttributeCapabilityValue"], # required
    #             },
    #           ],
    #         },
    #         storage_profile_id: "StorageProfileId",
    #       },
    #       service_managed_ec2: {
    #         instance_capabilities: { # required
    #           v_cpu_count: { # required
    #             min: 1, # required
    #             max: 1,
    #           },
    #           memory_mi_b: { # required
    #             min: 1, # required
    #             max: 1,
    #           },
    #           os_family: "WINDOWS", # required, accepts WINDOWS, LINUX
    #           cpu_architecture_type: "x86_64", # required, accepts x86_64, arm64
    #           root_ebs_volume: {
    #             size_gi_b: 1,
    #             iops: 1,
    #             throughput_mi_b: 1,
    #           },
    #           accelerator_capabilities: {
    #             selections: [ # required
    #               {
    #                 name: "t4", # required, accepts t4, a10g, l4, l40s
    #                 runtime: "AcceleratorRuntime",
    #               },
    #             ],
    #             count: {
    #               min: 1, # required
    #               max: 1,
    #             },
    #           },
    #           allowed_instance_types: ["InstanceType"],
    #           excluded_instance_types: ["InstanceType"],
    #           custom_amounts: [
    #             {
    #               name: "AmountCapabilityName", # required
    #               min: 1.0, # required
    #               max: 1.0,
    #             },
    #           ],
    #           custom_attributes: [
    #             {
    #               name: "AttributeCapabilityName", # required
    #               values: ["AttributeCapabilityValue"], # required
    #             },
    #           ],
    #         },
    #         instance_market_options: { # required
    #           type: "on-demand", # required, accepts on-demand, spot
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateFleet AWS API Documentation
    #
    # @overload update_fleet(params = {})
    # @param [Hash] params ({})
    def update_fleet(params = {}, options = {})
      req = build_request(:update_fleet, params)
      req.send_request(options)
    end

    # Updates a job.
    #
    # When you change the status of the job to `ARCHIVED`, the job can't be
    # scheduled or archived.
    #
    # An archived jobs and its steps and tasks are deleted after 120 days.
    # The job can't be recovered.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :target_task_run_status
    #   The task status to update the job's tasks to.
    #
    # @option params [Integer] :priority
    #   The job priority to update.
    #
    # @option params [Integer] :max_failed_tasks_count
    #   The number of task failures before the job stops running and is marked
    #   as `FAILED`.
    #
    # @option params [Integer] :max_retries_per_task
    #   The maximum number of retries for a job.
    #
    # @option params [String] :lifecycle_status
    #   The status of a job in its lifecycle. When you change the status of
    #   the job to `ARCHIVED`, the job can't be scheduled or archived.
    #
    #   An archived jobs and its steps and tasks are deleted after 120 days.
    #   The job can't be recovered.
    #
    # @option params [Integer] :max_worker_count
    #   The maximum number of worker hosts that can concurrently process a
    #   job. When the `maxWorkerCount` is reached, no more workers will be
    #   assigned to process the job, even if the fleets assigned to the job's
    #   queue has available workers.
    #
    #   You can't set the `maxWorkerCount` to 0. If you set it to -1, there
    #   is no maximum number of workers.
    #
    #   If you don't specify the `maxWorkerCount`, the default is -1.
    #
    #   The maximum number of workers that can process tasks in the job.
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the job to update.
    #
    # @option params [required, String] :queue_id
    #   The queue ID of the job to update.
    #
    # @option params [required, String] :job_id
    #   The job ID to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job({
    #     client_token: "ClientToken",
    #     target_task_run_status: "READY", # accepts READY, FAILED, SUCCEEDED, CANCELED, SUSPENDED, PENDING
    #     priority: 1,
    #     max_failed_tasks_count: 1,
    #     max_retries_per_task: 1,
    #     lifecycle_status: "ARCHIVED", # accepts ARCHIVED
    #     max_worker_count: 1,
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateJob AWS API Documentation
    #
    # @overload update_job(params = {})
    # @param [Hash] params ({})
    def update_job(params = {}, options = {})
      req = build_request(:update_job, params)
      req.send_request(options)
    end

    # Updates the properties of the specified limit.
    #
    # @option params [required, String] :farm_id
    #   The unique identifier of the farm that contains the limit.
    #
    # @option params [required, String] :limit_id
    #   The unique identifier of the limit to update.
    #
    # @option params [String] :display_name
    #   The new display name of the limit.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :description
    #   The new description of the limit.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [Integer] :max_count
    #   The maximum number of resources constrained by this limit. When all of
    #   the resources are in use, steps that require the limit won't be
    #   scheduled until the resource is available.
    #
    #   If more than the new maximum number is currently in use, running jobs
    #   finish but no new jobs are started until the number of resources in
    #   use is below the new maximum number.
    #
    #   The `maxCount` must not be 0. If the value is -1, there is no
    #   restriction on the number of resources that can be acquired for this
    #   limit.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_limit({
    #     farm_id: "FarmId", # required
    #     limit_id: "LimitId", # required
    #     display_name: "ResourceName",
    #     description: "Description",
    #     max_count: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateLimit AWS API Documentation
    #
    # @overload update_limit(params = {})
    # @param [Hash] params ({})
    def update_limit(params = {}, options = {})
      req = build_request(:update_limit, params)
      req.send_request(options)
    end

    # Modifies the settings for a Deadline Cloud monitor. You can modify one
    # or all of the settings when you call `UpdateMonitor`.
    #
    # @option params [required, String] :monitor_id
    #   The unique identifier of the monitor to update.
    #
    # @option params [String] :subdomain
    #   The new value of the subdomain to use when forming the monitor URL.
    #
    # @option params [String] :display_name
    #   The new value to use for the monitor's display name.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the new IAM role to use with the
    #   monitor.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_monitor({
    #     monitor_id: "MonitorId", # required
    #     subdomain: "Subdomain",
    #     display_name: "ResourceName",
    #     role_arn: "IamRoleArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateMonitor AWS API Documentation
    #
    # @overload update_monitor(params = {})
    # @param [Hash] params ({})
    def update_monitor(params = {}, options = {})
      req = build_request(:update_monitor, params)
      req.send_request(options)
    end

    # Updates a queue.
    #
    # @option params [String] :client_token
    #   The idempotency token to update in the queue.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :farm_id
    #   The farm ID to update in the queue.
    #
    # @option params [required, String] :queue_id
    #   The queue ID to update.
    #
    # @option params [String] :display_name
    #   The display name of the queue to update.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :description
    #   The description of the queue to update.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :default_budget_action
    #   The default action to take for a queue update if a budget isn't
    #   configured.
    #
    # @option params [Types::JobAttachmentSettings] :job_attachment_settings
    #   The job attachment settings to update for the queue.
    #
    # @option params [String] :role_arn
    #   The IAM role ARN that's used to run jobs from this queue.
    #
    # @option params [Types::JobRunAsUser] :job_run_as_user
    #   Update the jobs in the queue to run as a specified POSIX user.
    #
    # @option params [Array<String>] :required_file_system_location_names_to_add
    #   The required file system location names to add to the queue.
    #
    # @option params [Array<String>] :required_file_system_location_names_to_remove
    #   The required file system location names to remove from the queue.
    #
    # @option params [Array<String>] :allowed_storage_profile_ids_to_add
    #   The storage profile IDs to add.
    #
    # @option params [Array<String>] :allowed_storage_profile_ids_to_remove
    #   The storage profile ID to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue({
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     display_name: "ResourceName",
    #     description: "Description",
    #     default_budget_action: "NONE", # accepts NONE, STOP_SCHEDULING_AND_COMPLETE_TASKS, STOP_SCHEDULING_AND_CANCEL_TASKS
    #     job_attachment_settings: {
    #       s3_bucket_name: "S3BucketName", # required
    #       root_prefix: "S3Prefix", # required
    #     },
    #     role_arn: "IamRoleArn",
    #     job_run_as_user: {
    #       posix: {
    #         user: "PosixUserUserString", # required
    #         group: "PosixUserGroupString", # required
    #       },
    #       windows: {
    #         user: "WindowsUserUserString", # required
    #         password_arn: "WindowsUserPasswordArnString", # required
    #       },
    #       run_as: "QUEUE_CONFIGURED_USER", # required, accepts QUEUE_CONFIGURED_USER, WORKER_AGENT_USER
    #     },
    #     required_file_system_location_names_to_add: ["FileSystemLocationName"],
    #     required_file_system_location_names_to_remove: ["FileSystemLocationName"],
    #     allowed_storage_profile_ids_to_add: ["StorageProfileId"],
    #     allowed_storage_profile_ids_to_remove: ["StorageProfileId"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateQueue AWS API Documentation
    #
    # @overload update_queue(params = {})
    # @param [Hash] params ({})
    def update_queue(params = {}, options = {})
      req = build_request(:update_queue, params)
      req.send_request(options)
    end

    # Updates the queue environment.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :farm_id
    #   The farm ID of the queue environment to update.
    #
    # @option params [required, String] :queue_id
    #   The queue ID of the queue environment to update.
    #
    # @option params [required, String] :queue_environment_id
    #   The queue environment ID to update.
    #
    # @option params [Integer] :priority
    #   The priority to update.
    #
    # @option params [String] :template_type
    #   The template type to update.
    #
    # @option params [String] :template
    #   The template to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_environment({
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     queue_environment_id: "QueueEnvironmentId", # required
    #     priority: 1,
    #     template_type: "JSON", # accepts JSON, YAML
    #     template: "EnvironmentTemplate",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateQueueEnvironment AWS API Documentation
    #
    # @overload update_queue_environment(params = {})
    # @param [Hash] params ({})
    def update_queue_environment(params = {}, options = {})
      req = build_request(:update_queue_environment, params)
      req.send_request(options)
    end

    # Updates a queue-fleet association.
    #
    # @option params [required, String] :farm_id
    #   The farm ID to update.
    #
    # @option params [required, String] :queue_id
    #   The queue ID to update.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID to update.
    #
    # @option params [required, String] :status
    #   The status to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_fleet_association({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     fleet_id: "FleetId", # required
    #     status: "ACTIVE", # required, accepts ACTIVE, STOP_SCHEDULING_AND_COMPLETE_TASKS, STOP_SCHEDULING_AND_CANCEL_TASKS
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateQueueFleetAssociation AWS API Documentation
    #
    # @overload update_queue_fleet_association(params = {})
    # @param [Hash] params ({})
    def update_queue_fleet_association(params = {}, options = {})
      req = build_request(:update_queue_fleet_association, params)
      req.send_request(options)
    end

    # Updates the status of the queue. If you set the status to one of the
    # `STOP_LIMIT_USAGE*` values, there will be a delay before the status
    # transitions to the `STOPPED` state.
    #
    # @option params [required, String] :farm_id
    #   The unique identifier of the farm that contains the associated queues
    #   and limits.
    #
    # @option params [required, String] :queue_id
    #   The unique identifier of the queue associated to the limit.
    #
    # @option params [required, String] :limit_id
    #   The unique identifier of the limit associated to the queue.
    #
    # @option params [required, String] :status
    #   Sets the status of the limit. You can mark the limit active, or you
    #   can stop usage of the limit and either complete existing tasks or
    #   cancel any existing tasks immediately.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_limit_association({
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     limit_id: "LimitId", # required
    #     status: "ACTIVE", # required, accepts ACTIVE, STOP_LIMIT_USAGE_AND_COMPLETE_TASKS, STOP_LIMIT_USAGE_AND_CANCEL_TASKS
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateQueueLimitAssociation AWS API Documentation
    #
    # @overload update_queue_limit_association(params = {})
    # @param [Hash] params ({})
    def update_queue_limit_association(params = {}, options = {})
      req = build_request(:update_queue_limit_association, params)
      req.send_request(options)
    end

    # Updates a session.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :target_lifecycle_status
    #   The life cycle status to update in the session.
    #
    # @option params [required, String] :farm_id
    #   The farm ID to update in the session.
    #
    # @option params [required, String] :queue_id
    #   The queue ID to update in the session.
    #
    # @option params [required, String] :job_id
    #   The job ID to update in the session.
    #
    # @option params [required, String] :session_id
    #   The session ID to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_session({
    #     client_token: "ClientToken",
    #     target_lifecycle_status: "ENDED", # required, accepts ENDED
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     session_id: "SessionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateSession AWS API Documentation
    #
    # @overload update_session(params = {})
    # @param [Hash] params ({})
    def update_session(params = {}, options = {})
      req = build_request(:update_session, params)
      req.send_request(options)
    end

    # Updates a step.
    #
    # @option params [required, String] :target_task_run_status
    #   The task status to update the step's tasks to.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :farm_id
    #   The farm ID to update.
    #
    # @option params [required, String] :queue_id
    #   The queue ID to update.
    #
    # @option params [required, String] :job_id
    #   The job ID to update.
    #
    # @option params [required, String] :step_id
    #   The step ID to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_step({
    #     target_task_run_status: "READY", # required, accepts READY, FAILED, SUCCEEDED, CANCELED, SUSPENDED, PENDING
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateStep AWS API Documentation
    #
    # @overload update_step(params = {})
    # @param [Hash] params ({})
    def update_step(params = {}, options = {})
      req = build_request(:update_step, params)
      req.send_request(options)
    end

    # Updates a storage profile.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :farm_id
    #   The farm ID to update.
    #
    # @option params [required, String] :storage_profile_id
    #   The storage profile ID to update.
    #
    # @option params [String] :display_name
    #   The display name of the storage profile to update.
    #
    #   This field can store any content. Escape or encode this content before
    #   displaying it on a webpage or any other system that might interpret
    #   the content of this field.
    #
    # @option params [String] :os_family
    #   The OS system to update.
    #
    # @option params [Array<Types::FileSystemLocation>] :file_system_locations_to_add
    #   The file system location names to add.
    #
    # @option params [Array<Types::FileSystemLocation>] :file_system_locations_to_remove
    #   The file system location names to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_storage_profile({
    #     client_token: "ClientToken",
    #     farm_id: "FarmId", # required
    #     storage_profile_id: "StorageProfileId", # required
    #     display_name: "ResourceName",
    #     os_family: "WINDOWS", # accepts WINDOWS, LINUX, MACOS
    #     file_system_locations_to_add: [
    #       {
    #         name: "FileSystemLocationName", # required
    #         path: "PathString", # required
    #         type: "SHARED", # required, accepts SHARED, LOCAL
    #       },
    #     ],
    #     file_system_locations_to_remove: [
    #       {
    #         name: "FileSystemLocationName", # required
    #         path: "PathString", # required
    #         type: "SHARED", # required, accepts SHARED, LOCAL
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateStorageProfile AWS API Documentation
    #
    # @overload update_storage_profile(params = {})
    # @param [Hash] params ({})
    def update_storage_profile(params = {}, options = {})
      req = build_request(:update_storage_profile, params)
      req.send_request(options)
    end

    # Updates a task.
    #
    # @option params [String] :client_token
    #   The unique token which the server uses to recognize retries of the
    #   same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :target_run_status
    #   The run status with which to start the task.
    #
    # @option params [required, String] :farm_id
    #   The farm ID to update.
    #
    # @option params [required, String] :queue_id
    #   The queue ID to update.
    #
    # @option params [required, String] :job_id
    #   The job ID to update.
    #
    # @option params [required, String] :step_id
    #   The step ID to update.
    #
    # @option params [required, String] :task_id
    #   The task ID to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_task({
    #     client_token: "ClientToken",
    #     target_run_status: "READY", # required, accepts READY, FAILED, SUCCEEDED, CANCELED, SUSPENDED, PENDING
    #     farm_id: "FarmId", # required
    #     queue_id: "QueueId", # required
    #     job_id: "JobId", # required
    #     step_id: "StepId", # required
    #     task_id: "TaskId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateTask AWS API Documentation
    #
    # @overload update_task(params = {})
    # @param [Hash] params ({})
    def update_task(params = {}, options = {})
      req = build_request(:update_task, params)
      req.send_request(options)
    end

    # Updates a worker.
    #
    # @option params [required, String] :farm_id
    #   The farm ID to update.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID to update.
    #
    # @option params [required, String] :worker_id
    #   The worker ID to update.
    #
    # @option params [String] :status
    #   The worker status to update.
    #
    # @option params [Types::WorkerCapabilities] :capabilities
    #   The worker capabilities to update.
    #
    # @option params [Types::HostPropertiesRequest] :host_properties
    #   The host properties to update.
    #
    # @return [Types::UpdateWorkerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkerResponse#log #log} => Types::LogConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_worker({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #     status: "STARTED", # accepts STARTED, STOPPING, STOPPED
    #     capabilities: {
    #       amounts: [ # required
    #         {
    #           name: "AmountCapabilityName", # required
    #           value: 1.0, # required
    #         },
    #       ],
    #       attributes: [ # required
    #         {
    #           name: "AttributeCapabilityName", # required
    #           values: ["AttributeCapabilityValue"], # required
    #         },
    #       ],
    #     },
    #     host_properties: {
    #       ip_addresses: {
    #         ip_v4_addresses: ["IpV4Address"],
    #         ip_v6_addresses: ["IpV6Address"],
    #       },
    #       host_name: "HostName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.log.log_driver #=> String
    #   resp.log.options #=> Hash
    #   resp.log.options["String"] #=> String
    #   resp.log.parameters #=> Hash
    #   resp.log.parameters["String"] #=> String
    #   resp.log.error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateWorker AWS API Documentation
    #
    # @overload update_worker(params = {})
    # @param [Hash] params ({})
    def update_worker(params = {}, options = {})
      req = build_request(:update_worker, params)
      req.send_request(options)
    end

    # Updates the schedule for a worker.
    #
    # @option params [required, String] :farm_id
    #   The farm ID to update.
    #
    # @option params [required, String] :fleet_id
    #   The fleet ID to update.
    #
    # @option params [required, String] :worker_id
    #   The worker ID to update.
    #
    # @option params [Hash<String,Types::UpdatedSessionActionInfo>] :updated_session_actions
    #   The session actions associated with the worker schedule to update.
    #
    # @return [Types::UpdateWorkerScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkerScheduleResponse#assigned_sessions #assigned_sessions} => Hash&lt;String,Types::AssignedSession&gt;
    #   * {Types::UpdateWorkerScheduleResponse#cancel_session_actions #cancel_session_actions} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::UpdateWorkerScheduleResponse#desired_worker_status #desired_worker_status} => String
    #   * {Types::UpdateWorkerScheduleResponse#update_interval_seconds #update_interval_seconds} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_worker_schedule({
    #     farm_id: "FarmId", # required
    #     fleet_id: "FleetId", # required
    #     worker_id: "WorkerId", # required
    #     updated_session_actions: {
    #       "SessionActionId" => {
    #         completed_status: "SUCCEEDED", # accepts SUCCEEDED, FAILED, INTERRUPTED, CANCELED, NEVER_ATTEMPTED
    #         process_exit_code: 1,
    #         progress_message: "SessionActionProgressMessage",
    #         started_at: Time.now,
    #         ended_at: Time.now,
    #         updated_at: Time.now,
    #         progress_percent: 1.0,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.assigned_sessions #=> Hash
    #   resp.assigned_sessions["SessionId"].queue_id #=> String
    #   resp.assigned_sessions["SessionId"].job_id #=> String
    #   resp.assigned_sessions["SessionId"].session_actions #=> Array
    #   resp.assigned_sessions["SessionId"].session_actions[0].session_action_id #=> String
    #   resp.assigned_sessions["SessionId"].session_actions[0].definition.env_enter.environment_id #=> String
    #   resp.assigned_sessions["SessionId"].session_actions[0].definition.env_exit.environment_id #=> String
    #   resp.assigned_sessions["SessionId"].session_actions[0].definition.task_run.task_id #=> String
    #   resp.assigned_sessions["SessionId"].session_actions[0].definition.task_run.step_id #=> String
    #   resp.assigned_sessions["SessionId"].session_actions[0].definition.task_run.parameters #=> Hash
    #   resp.assigned_sessions["SessionId"].session_actions[0].definition.task_run.parameters["String"].int #=> String
    #   resp.assigned_sessions["SessionId"].session_actions[0].definition.task_run.parameters["String"].float #=> String
    #   resp.assigned_sessions["SessionId"].session_actions[0].definition.task_run.parameters["String"].string #=> String
    #   resp.assigned_sessions["SessionId"].session_actions[0].definition.task_run.parameters["String"].path #=> String
    #   resp.assigned_sessions["SessionId"].session_actions[0].definition.sync_input_job_attachments.step_id #=> String
    #   resp.assigned_sessions["SessionId"].log_configuration.log_driver #=> String
    #   resp.assigned_sessions["SessionId"].log_configuration.options #=> Hash
    #   resp.assigned_sessions["SessionId"].log_configuration.options["String"] #=> String
    #   resp.assigned_sessions["SessionId"].log_configuration.parameters #=> Hash
    #   resp.assigned_sessions["SessionId"].log_configuration.parameters["String"] #=> String
    #   resp.assigned_sessions["SessionId"].log_configuration.error #=> String
    #   resp.cancel_session_actions #=> Hash
    #   resp.cancel_session_actions["SessionId"] #=> Array
    #   resp.cancel_session_actions["SessionId"][0] #=> String
    #   resp.desired_worker_status #=> String, one of "STOPPED"
    #   resp.update_interval_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/deadline-2023-10-12/UpdateWorkerSchedule AWS API Documentation
    #
    # @overload update_worker_schedule(params = {})
    # @param [Hash] params ({})
    def update_worker_schedule(params = {}, options = {})
      req = build_request(:update_worker_schedule, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Deadline')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-deadline'
      context[:gem_version] = '1.20.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                     | params                               | :delay   | :max_attempts |
    # | ------------------------------- | ------------------------------------ | -------- | ------------- |
    # | fleet_active                    | {Client#get_fleet}                   | 5        | 180           |
    # | job_create_complete             | {Client#get_job}                     | 1        | 120           |
    # | license_endpoint_deleted        | {Client#get_license_endpoint}        | 10       | 234           |
    # | license_endpoint_valid          | {Client#get_license_endpoint}        | 10       | 114           |
    # | queue_fleet_association_stopped | {Client#get_queue_fleet_association} | 10       | 60            |
    # | queue_limit_association_stopped | {Client#get_queue_limit_association} | 10       | 60            |
    # | queue_scheduling                | {Client#get_queue}                   | 10       | 70            |
    # | queue_scheduling_blocked        | {Client#get_queue}                   | 10       | 30            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        fleet_active: Waiters::FleetActive,
        job_create_complete: Waiters::JobCreateComplete,
        license_endpoint_deleted: Waiters::LicenseEndpointDeleted,
        license_endpoint_valid: Waiters::LicenseEndpointValid,
        queue_fleet_association_stopped: Waiters::QueueFleetAssociationStopped,
        queue_limit_association_stopped: Waiters::QueueLimitAssociationStopped,
        queue_scheduling: Waiters::QueueScheduling,
        queue_scheduling_blocked: Waiters::QueueSchedulingBlocked
      }
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
