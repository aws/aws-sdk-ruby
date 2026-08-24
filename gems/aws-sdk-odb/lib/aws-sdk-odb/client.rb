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

module Aws::Odb
  # An API client for Odb.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Odb::Client.new(
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

    @identifier = :odb

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
    add_plugin(Aws::Odb::Plugins::Endpoints)

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
    #   @option options [Aws::Odb::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Odb::EndpointParameters`.
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

    # Registers the Amazon Web Services Marketplace token for your Amazon
    # Web Services account to activate your Oracle Database@Amazon Web
    # Services subscription.
    #
    # @option params [required, String] :marketplace_registration_token
    #   The registration token that's generated by Amazon Web Services
    #   Marketplace and sent to Oracle Database@Amazon Web Services.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_marketplace_registration({
    #     marketplace_registration_token: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/AcceptMarketplaceRegistration AWS API Documentation
    #
    # @overload accept_marketplace_registration(params = {})
    # @param [Hash] params ({})
    def accept_marketplace_registration(params = {}, options = {})
      req = build_request(:accept_marketplace_registration, params)
      req.send_request(options)
    end

    # Associates an Amazon Web Services Identity and Access Management (IAM)
    # service role with a specified resource to enable Amazon Web Services
    # service integration.
    #
    # @option params [required, String] :iam_role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Identity and
    #   Access Management (IAM) service role to associate with the resource.
    #
    # @option params [required, String] :aws_integration
    #   The Amazon Web Services integration configuration settings for the
    #   Amazon Web Services Identity and Access Management (IAM) service role
    #   association.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the target resource to associate
    #   with the Amazon Web Services Identity and Access Management (IAM)
    #   service role.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_iam_role_to_resource({
    #     iam_role_arn: "RoleArn", # required
    #     aws_integration: "KmsTde", # required, accepts KmsTde
    #     resource_arn: "AssociateIamRoleToResourceInputResourceArnString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/AssociateIamRoleToResource AWS API Documentation
    #
    # @overload associate_iam_role_to_resource(params = {})
    # @param [Hash] params ({})
    def associate_iam_role_to_resource(params = {}, options = {})
      req = build_request(:associate_iam_role_to_resource, params)
      req.send_request(options)
    end

    # Adds virtual machines to the specified Exascale VM cluster.
    #
    # @option params [required, String] :exadb_vm_cluster_id
    #   The unique identifier of the Exascale VM cluster to add virtual
    #   machines to.
    #
    # @option params [required, Integer] :desired_node_count
    #   The desired number of nodes in the Exascale VM cluster after the
    #   association.
    #
    # @return [Types::AssociateVirtualMachinesToExadbVmClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateVirtualMachinesToExadbVmClusterOutput#display_name #display_name} => String
    #   * {Types::AssociateVirtualMachinesToExadbVmClusterOutput#status #status} => String
    #   * {Types::AssociateVirtualMachinesToExadbVmClusterOutput#status_reason #status_reason} => String
    #   * {Types::AssociateVirtualMachinesToExadbVmClusterOutput#exadb_vm_cluster_id #exadb_vm_cluster_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_virtual_machines_to_exadb_vm_cluster({
    #     exadb_vm_cluster_id: "ResourceIdOrArn", # required
    #     desired_node_count: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.exadb_vm_cluster_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/AssociateVirtualMachinesToExadbVmCluster AWS API Documentation
    #
    # @overload associate_virtual_machines_to_exadb_vm_cluster(params = {})
    # @param [Hash] params ({})
    def associate_virtual_machines_to_exadb_vm_cluster(params = {}, options = {})
      req = build_request(:associate_virtual_machines_to_exadb_vm_cluster, params)
      req.send_request(options)
    end

    # Creates a new Autonomous Database.
    #
    # @option params [String] :odb_network_id
    #   The unique identifier of the ODB network to be used for the Autonomous
    #   Database.
    #
    # @option params [String] :display_name
    #   The user-friendly name for the Autonomous Database. The name does not
    #   have to be unique.
    #
    # @option params [String] :db_name
    #   The name of the Autonomous Database. The name must begin with an
    #   alphabetic character and can contain a maximum of 30 alphanumeric
    #   characters. Special characters are not permitted. The name must be
    #   unique in the Amazon Web Services account.
    #
    # @option params [String] :admin_password
    #   The password for the `ADMIN` user of the Autonomous Database.
    #
    # @option params [Float] :compute_count
    #   The compute capacity, in number of Elastic CPUs (ECPUs) or Oracle CPUs
    #   (OCPUs), to assign to the Autonomous Database.
    #
    # @option params [Integer] :data_storage_size_in_t_bs
    #   The size, in terabytes (TB), of the data volume to allocate for the
    #   Autonomous Database.
    #
    # @option params [Integer] :data_storage_size_in_g_bs
    #   The size, in gigabytes (GB), of the data volume to allocate for the
    #   Autonomous Database.
    #
    # @option params [String] :db_workload
    #   The intended use of the Autonomous Database, such as transaction
    #   processing, data warehouse, JSON database, or APEX.
    #
    # @option params [Boolean] :is_auto_scaling_enabled
    #   Specifies whether to enable automatic scaling of the compute resources
    #   for the Autonomous Database.
    #
    # @option params [Boolean] :is_auto_scaling_for_storage_enabled
    #   Specifies whether to enable automatic scaling of the storage for the
    #   Autonomous Database.
    #
    # @option params [String] :license_model
    #   The Oracle license model to apply to the Autonomous Database.
    #
    # @option params [String] :character_set
    #   The character set to use for the Autonomous Database.
    #
    # @option params [String] :ncharacter_set
    #   The national character set to use for the Autonomous Database.
    #
    # @option params [String] :db_version
    #   The Oracle Database software version to use for the Autonomous
    #   Database.
    #
    # @option params [String] :database_edition
    #   The Oracle Database edition to apply to the Autonomous Database.
    #
    # @option params [String] :standby_allowlisted_ips_source
    #   The source of the allowlisted IP addresses for the standby Autonomous
    #   Database.
    #
    # @option params [String] :autonomous_maintenance_schedule_type
    #   The maintenance schedule type for the Autonomous Database.
    #
    # @option params [Integer] :backup_retention_period_in_days
    #   The retention period, in days, for automatic backups of the Autonomous
    #   Database.
    #
    # @option params [Float] :byol_compute_count_limit
    #   The maximum number of compute resources that you can allocate to the
    #   Autonomous Database under the bring-your-own-license (BYOL) model.
    #
    # @option params [Integer] :cpu_core_count
    #   The number of CPU cores to allocate to the Autonomous Database.
    #
    # @option params [Array<Types::CustomerContact>] :customer_contacts_to_send_to_oci
    #   The list of customer contacts to receive operational notifications
    #   from Oracle Cloud Infrastructure (OCI) for the Autonomous Database.
    #
    # @option params [String] :private_endpoint_ip
    #   The private endpoint IP address for the Autonomous Database.
    #
    # @option params [String] :private_endpoint_label
    #   The private endpoint label for the Autonomous Database.
    #
    # @option params [String] :resource_pool_leader_id
    #   The unique identifier of the resource pool leader Autonomous Database.
    #
    # @option params [Types::ResourcePoolSummary] :resource_pool_summary
    #   The configuration of the resource pool for the Autonomous Database.
    #
    # @option params [Array<Types::ScheduledOperationDetails>] :scheduled_operations
    #   The list of scheduled start and stop times for the Autonomous
    #   Database.
    #
    # @option params [Array<String>] :standby_allowlisted_ips
    #   The list of IP addresses that are allowed to access the standby
    #   Autonomous Database.
    #
    # @option params [Array<String>] :allowlisted_ips
    #   The list of IP addresses that are allowed to access the Autonomous
    #   Database.
    #
    # @option params [Types::TransportableTablespace] :transportable_tablespace
    #   The transportable tablespace configuration to use when creating the
    #   Autonomous Database.
    #
    # @option params [Boolean] :is_backup_retention_locked
    #   Specifies whether to lock the backup retention period of the
    #   Autonomous Database to prevent it from being shortened.
    #
    # @option params [Boolean] :is_local_data_guard_enabled
    #   Specifies whether to enable local Oracle Data Guard for the Autonomous
    #   Database.
    #
    # @option params [Boolean] :is_mtls_connection_required
    #   Specifies whether mutual TLS (mTLS) authentication is required to
    #   connect to the Autonomous Database.
    #
    # @option params [Array<Types::DatabaseTool>] :db_tools_details
    #   The list of database management tools to enable for the Autonomous
    #   Database.
    #
    # @option params [String] :source
    #   The source from which to create the Autonomous Database, such as a
    #   clone, backup, or cross-Region copy.
    #
    # @option params [Types::SourceConfiguration] :source_configuration
    #   The configuration details for the source used to create the Autonomous
    #   Database.
    #
    # @option params [String] :encryption_key_provider
    #   The provider of the encryption key to use for the Autonomous Database.
    #
    # @option params [Types::EncryptionKeyConfigurationInput] :encryption_key_configuration
    #   The configuration of the encryption key to use for the Autonomous
    #   Database.
    #
    # @option params [String] :admin_password_source
    #   The source of the admin password for the Autonomous Database. When set
    #   to `CUSTOMER_MANAGED_AWS_SECRET`, the admin password is retrieved from
    #   an Amazon Web Services Secrets Manager secret.
    #
    # @option params [Types::AdminPasswordSourceConfigurationInput] :admin_password_source_configuration
    #   The configuration of the admin password source for the Autonomous
    #   Database.
    #
    # @option params [String] :client_token
    #   A client-provided token to ensure the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The list of resource tags to apply to the Autonomous Database. Each
    #   tag is a key-value pair with no predefined name, type, or namespace.
    #
    # @return [Types::CreateAutonomousDatabaseOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAutonomousDatabaseOutput#autonomous_database_id #autonomous_database_id} => String
    #   * {Types::CreateAutonomousDatabaseOutput#display_name #display_name} => String
    #   * {Types::CreateAutonomousDatabaseOutput#status #status} => String
    #   * {Types::CreateAutonomousDatabaseOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_autonomous_database({
    #     odb_network_id: "ResourceIdOrArn",
    #     display_name: "ResourceDisplayName",
    #     db_name: "CreateAutonomousDatabaseInputDbNameString",
    #     admin_password: "CreateAutonomousDatabaseInputAdminPasswordString",
    #     compute_count: 1.0,
    #     data_storage_size_in_t_bs: 1,
    #     data_storage_size_in_g_bs: 1,
    #     db_workload: "OLTP", # accepts OLTP, AJD, APEX, LH
    #     is_auto_scaling_enabled: false,
    #     is_auto_scaling_for_storage_enabled: false,
    #     license_model: "BRING_YOUR_OWN_LICENSE", # accepts BRING_YOUR_OWN_LICENSE, LICENSE_INCLUDED
    #     character_set: "CreateAutonomousDatabaseInputCharacterSetString",
    #     ncharacter_set: "CreateAutonomousDatabaseInputNcharacterSetString",
    #     db_version: "CreateAutonomousDatabaseInputDbVersionString",
    #     database_edition: "STANDARD_EDITION", # accepts STANDARD_EDITION, ENTERPRISE_EDITION
    #     standby_allowlisted_ips_source: "PRIMARY", # accepts PRIMARY, SEPARATE, NOT_APPLICABLE
    #     autonomous_maintenance_schedule_type: "EARLY", # accepts EARLY, REGULAR
    #     backup_retention_period_in_days: 1,
    #     byol_compute_count_limit: 1.0,
    #     cpu_core_count: 1,
    #     customer_contacts_to_send_to_oci: [
    #       {
    #         email: "CustomerContactEmailString",
    #       },
    #     ],
    #     private_endpoint_ip: "String",
    #     private_endpoint_label: "String",
    #     resource_pool_leader_id: "ResourceIdOrArn",
    #     resource_pool_summary: {
    #       is_disabled: false,
    #       pool_size: 1,
    #       pool_storage_size_in_t_bs: 1,
    #       available_storage_capacity_in_t_bs: 1.0,
    #       total_compute_capacity: 1,
    #       available_compute_capacity: 1,
    #     },
    #     scheduled_operations: [
    #       {
    #         day_of_week: { # required
    #           name: "MONDAY", # accepts MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
    #         },
    #         scheduled_start_time: "String",
    #         scheduled_stop_time: "String",
    #       },
    #     ],
    #     standby_allowlisted_ips: ["String"],
    #     allowlisted_ips: ["String"],
    #     transportable_tablespace: {
    #       tts_bundle_url: "String",
    #     },
    #     is_backup_retention_locked: false,
    #     is_local_data_guard_enabled: false,
    #     is_mtls_connection_required: false,
    #     db_tools_details: [
    #       {
    #         is_enabled: false,
    #         name: "String",
    #         compute_count: 1.0,
    #         max_idle_time_in_minutes: 1,
    #       },
    #     ],
    #     source: "NONE", # accepts NONE, DATABASE, BACKUP_FROM_ID, BACKUP_FROM_TIMESTAMP, CROSS_REGION_DATAGUARD, CROSS_REGION_DISASTER_RECOVERY, CLONE_TO_REFRESHABLE
    #     source_configuration: {
    #       database_clone: {
    #         source_autonomous_database_id: "ResourceIdOrArn", # required
    #         clone_type: "FULL", # required, accepts FULL, METADATA, PARTIAL
    #       },
    #       restore_from_backup: {
    #         autonomous_database_backup_id: "ResourceIdOrArn", # required
    #         clone_type: "FULL", # required, accepts FULL, METADATA, PARTIAL
    #         clone_table_space_list: [1],
    #       },
    #       point_in_time_restore: {
    #         source_autonomous_database_id: "ResourceIdOrArn", # required
    #         clone_type: "FULL", # required, accepts FULL, METADATA, PARTIAL
    #         timestamp: Time.now,
    #         use_latest_available_backup_timestamp: false,
    #         clone_table_space_list: [1],
    #       },
    #       cross_region_data_guard: {
    #         source_autonomous_database_arn: "Arn", # required
    #       },
    #       cross_region_disaster_recovery: {
    #         source_autonomous_database_arn: "Arn", # required
    #         remote_disaster_recovery_type: "ADG", # required, accepts ADG, BACKUP_BASED
    #         is_replicate_automatic_backups: false,
    #       },
    #       clone_to_refreshable: {
    #         source_autonomous_database_id: "ResourceIdOrArn", # required
    #         refreshable_mode: "AUTOMATIC", # accepts AUTOMATIC, MANUAL
    #         auto_refresh_frequency_in_seconds: 1,
    #         auto_refresh_point_lag_in_seconds: 1,
    #         time_of_auto_refresh_start: Time.now,
    #         open_mode: "READ_ONLY", # accepts READ_ONLY, READ_WRITE
    #         clone_type: "FULL", # accepts FULL, METADATA, PARTIAL
    #       },
    #     },
    #     encryption_key_provider: "ORACLE_MANAGED", # accepts ORACLE_MANAGED, AWS_KMS
    #     encryption_key_configuration: {
    #       aws_encryption_key: {
    #         iam_role_arn: "RoleArn",
    #         external_id_type: "database_ocid", # accepts database_ocid, compartment_ocid, tenant_ocid
    #         kms_key_id: "KmsKeyIdOrArn",
    #       },
    #     },
    #     admin_password_source: "CUSTOMER_MANAGED_AWS_SECRET", # accepts CUSTOMER_MANAGED_AWS_SECRET, API_REQUEST_PARAMETER
    #     admin_password_source_configuration: {
    #       customer_managed_aws_secret: {
    #         secret_id: "SecretIdOrArn",
    #         iam_role_arn: "RoleArn",
    #         external_id_type: "database_ocid", # accepts database_ocid, compartment_ocid, tenant_ocid
    #       },
    #     },
    #     client_token: "CreateAutonomousDatabaseInputClientTokenString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.autonomous_database_id #=> String
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateAutonomousDatabase AWS API Documentation
    #
    # @overload create_autonomous_database(params = {})
    # @param [Hash] params ({})
    def create_autonomous_database(params = {}, options = {})
      req = build_request(:create_autonomous_database, params)
      req.send_request(options)
    end

    # Creates a new backup of the specified Autonomous Database.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database to back up.
    #
    # @option params [String] :display_name
    #   The user-friendly name for the Autonomous Database backup.
    #
    # @option params [Integer] :retention_period_in_days
    #   The retention period, in days, for the Autonomous Database backup.
    #
    # @option params [String] :client_token
    #   A client-provided token to ensure the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The list of resource tags to apply to the Autonomous Database backup.
    #   Each tag is a key-value pair with no predefined name, type, or
    #   namespace.
    #
    # @return [Types::CreateAutonomousDatabaseBackupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAutonomousDatabaseBackupOutput#display_name #display_name} => String
    #   * {Types::CreateAutonomousDatabaseBackupOutput#status #status} => String
    #   * {Types::CreateAutonomousDatabaseBackupOutput#status_reason #status_reason} => String
    #   * {Types::CreateAutonomousDatabaseBackupOutput#autonomous_database_backup_id #autonomous_database_backup_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_autonomous_database_backup({
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName",
    #     retention_period_in_days: 1,
    #     client_token: "CreateAutonomousDatabaseBackupInputClientTokenString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.autonomous_database_backup_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateAutonomousDatabaseBackup AWS API Documentation
    #
    # @overload create_autonomous_database_backup(params = {})
    # @param [Hash] params ({})
    def create_autonomous_database_backup(params = {}, options = {})
      req = build_request(:create_autonomous_database_backup, params)
      req.send_request(options)
    end

    # Creates a new wallet for the specified Autonomous Database.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database to create a wallet
    #   for.
    #
    # @option params [String] :wallet_type
    #   The type of wallet to create, either a regional wallet or an instance
    #   wallet.
    #
    # @option params [String] :password
    #   The password to encrypt the keys inside the wallet.
    #
    # @option params [String] :password_source
    #   The source of the password for encrypting the wallet. When set to
    #   `CUSTOMER_MANAGED_AWS_SECRET`, the password is retrieved from an
    #   Amazon Web Services Secrets Manager secret.
    #
    # @option params [Types::WalletPasswordSourceConfigurationInput] :password_source_configuration
    #   The configuration of the password source for the Autonomous Database
    #   wallet.
    #
    # @option params [String] :client_token
    #   A client-provided token to ensure the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAutonomousDatabaseWalletOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAutonomousDatabaseWalletOutput#autonomous_database_wallet_file #autonomous_database_wallet_file} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_autonomous_database_wallet({
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     wallet_type: "REGIONAL", # accepts REGIONAL, INSTANCE
    #     password: "CreateAutonomousDatabaseWalletInputPasswordString",
    #     password_source: "CUSTOMER_MANAGED_AWS_SECRET", # accepts CUSTOMER_MANAGED_AWS_SECRET, API_REQUEST_PARAMETER
    #     password_source_configuration: {
    #       customer_managed_aws_secret: {
    #         secret_id: "SecretIdOrArn",
    #         iam_role_arn: "RoleArn",
    #         external_id_type: "database_ocid", # accepts database_ocid, compartment_ocid, tenant_ocid
    #       },
    #     },
    #     client_token: "CreateAutonomousDatabaseWalletInputClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.autonomous_database_wallet_file #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateAutonomousDatabaseWallet AWS API Documentation
    #
    # @overload create_autonomous_database_wallet(params = {})
    # @param [Hash] params ({})
    def create_autonomous_database_wallet(params = {}, options = {})
      req = build_request(:create_autonomous_database_wallet, params)
      req.send_request(options)
    end

    # Creates a new Autonomous VM cluster in the specified Exadata
    # infrastructure.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Exadata infrastructure where the VM
    #   cluster will be created.
    #
    # @option params [required, String] :odb_network_id
    #   The unique identifier of the ODB network to be used for the VM
    #   cluster.
    #
    # @option params [required, String] :display_name
    #   The display name for the Autonomous VM cluster. The name does not need
    #   to be unique.
    #
    # @option params [String] :client_token
    #   A client-provided token to ensure idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Float] :autonomous_data_storage_size_in_t_bs
    #   The data disk group size to be allocated for Autonomous Databases, in
    #   terabytes (TB).
    #
    # @option params [required, Integer] :cpu_core_count_per_node
    #   The number of CPU cores to be enabled per VM cluster node.
    #
    # @option params [Array<String>] :db_servers
    #   The list of database servers to be used for the Autonomous VM cluster.
    #
    # @option params [String] :description
    #   A user-provided description of the Autonomous VM cluster.
    #
    # @option params [Boolean] :is_mtls_enabled_vm_cluster
    #   Specifies whether to enable mutual TLS (mTLS) authentication for the
    #   Autonomous VM cluster.
    #
    # @option params [String] :license_model
    #   The Oracle license model to apply to the Autonomous VM cluster.
    #
    # @option params [Types::MaintenanceWindow] :maintenance_window
    #   The scheduling details for the maintenance window. Patching and system
    #   updates take place during the maintenance window.
    #
    # @option params [required, Integer] :memory_per_oracle_compute_unit_in_g_bs
    #   The amount of memory to be allocated per OCPU, in GB.
    #
    # @option params [Integer] :scan_listener_port_non_tls
    #   The SCAN listener port for non-TLS (TCP) protocol.
    #
    # @option params [Integer] :scan_listener_port_tls
    #   The SCAN listener port for TLS (TCP) protocol.
    #
    # @option params [Hash<String,String>] :tags
    #   Free-form tags for this resource. Each tag is a key-value pair with no
    #   predefined name, type, or namespace.
    #
    # @option params [String] :time_zone
    #   The time zone to use for the Autonomous VM cluster.
    #
    # @option params [required, Integer] :total_container_databases
    #   The total number of Autonomous CDBs that you can create in the
    #   Autonomous VM cluster.
    #
    # @return [Types::CreateCloudAutonomousVmClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCloudAutonomousVmClusterOutput#display_name #display_name} => String
    #   * {Types::CreateCloudAutonomousVmClusterOutput#status #status} => String
    #   * {Types::CreateCloudAutonomousVmClusterOutput#status_reason #status_reason} => String
    #   * {Types::CreateCloudAutonomousVmClusterOutput#cloud_autonomous_vm_cluster_id #cloud_autonomous_vm_cluster_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_autonomous_vm_cluster({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     odb_network_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName", # required
    #     client_token: "CreateCloudAutonomousVmClusterInputClientTokenString",
    #     autonomous_data_storage_size_in_t_bs: 1.0, # required
    #     cpu_core_count_per_node: 1, # required
    #     db_servers: ["String"],
    #     description: "CreateCloudAutonomousVmClusterInputDescriptionString",
    #     is_mtls_enabled_vm_cluster: false,
    #     license_model: "BRING_YOUR_OWN_LICENSE", # accepts BRING_YOUR_OWN_LICENSE, LICENSE_INCLUDED
    #     maintenance_window: {
    #       custom_action_timeout_in_mins: 1,
    #       days_of_week: [
    #         {
    #           name: "MONDAY", # accepts MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
    #         },
    #       ],
    #       hours_of_day: [1],
    #       is_custom_action_timeout_enabled: false,
    #       lead_time_in_weeks: 1,
    #       months: [
    #         {
    #           name: "JANUARY", # accepts JANUARY, FEBRUARY, MARCH, APRIL, MAY, JUNE, JULY, AUGUST, SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER
    #         },
    #       ],
    #       patching_mode: "ROLLING", # accepts ROLLING, NONROLLING
    #       preference: "NO_PREFERENCE", # accepts NO_PREFERENCE, CUSTOM_PREFERENCE
    #       skip_ru: false,
    #       weeks_of_month: [1],
    #     },
    #     memory_per_oracle_compute_unit_in_g_bs: 1, # required
    #     scan_listener_port_non_tls: 1,
    #     scan_listener_port_tls: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     time_zone: "CreateCloudAutonomousVmClusterInputTimeZoneString",
    #     total_container_databases: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.cloud_autonomous_vm_cluster_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateCloudAutonomousVmCluster AWS API Documentation
    #
    # @overload create_cloud_autonomous_vm_cluster(params = {})
    # @param [Hash] params ({})
    def create_cloud_autonomous_vm_cluster(params = {}, options = {})
      req = build_request(:create_cloud_autonomous_vm_cluster, params)
      req.send_request(options)
    end

    # Creates an Exadata infrastructure.
    #
    # @option params [required, String] :display_name
    #   A user-friendly name for the Exadata infrastructure.
    #
    # @option params [required, String] :shape
    #   The model name of the Exadata infrastructure. For the list of valid
    #   model names, use the `ListDbSystemShapes` operation.
    #
    # @option params [String] :availability_zone
    #   The name of the Availability Zone (AZ) where the Exadata
    #   infrastructure is located.
    #
    #   This operation requires that you specify a value for either
    #   `availabilityZone` or `availabilityZoneId`.
    #
    #   Example: `us-east-1a`
    #
    # @option params [String] :availability_zone_id
    #   The AZ ID of the AZ where the Exadata infrastructure is located.
    #
    #   This operation requires that you specify a value for either
    #   `availabilityZone` or `availabilityZoneId`.
    #
    #   Example: `use1-az1`
    #
    # @option params [Hash<String,String>] :tags
    #   The list of resource tags to apply to the Exadata infrastructure.
    #
    # @option params [required, Integer] :compute_count
    #   The number of database servers for the Exadata infrastructure. Valid
    #   values for this parameter depend on the shape. To get information
    #   about the minimum and maximum values, use the `ListDbSystemShapes`
    #   operation.
    #
    # @option params [Array<Types::CustomerContact>] :customer_contacts_to_send_to_oci
    #   The email addresses of contacts to receive notification from Oracle
    #   about maintenance updates for the Exadata infrastructure.
    #
    # @option params [Types::MaintenanceWindow] :maintenance_window
    #   The maintenance window configuration for the Exadata Cloud
    #   infrastructure.
    #
    #   This allows you to define when maintenance operations such as patching
    #   and updates can be performed on the infrastructure.
    #
    # @option params [required, Integer] :storage_count
    #   The number of storage servers to activate for this Exadata
    #   infrastructure. Valid values for this parameter depend on the shape.
    #   To get information about the minimum and maximum values, use the
    #   `ListDbSystemShapes` operation.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency. The client token is
    #   valid for up to 24 hours after it's first used.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :database_server_type
    #   The database server model type of the Exadata infrastructure. For the
    #   list of valid model names, use the `ListDbSystemShapes` operation.
    #
    # @option params [String] :storage_server_type
    #   The storage server model type of the Exadata infrastructure. For the
    #   list of valid model names, use the `ListDbSystemShapes` operation.
    #
    # @return [Types::CreateCloudExadataInfrastructureOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCloudExadataInfrastructureOutput#display_name #display_name} => String
    #   * {Types::CreateCloudExadataInfrastructureOutput#status #status} => String
    #   * {Types::CreateCloudExadataInfrastructureOutput#status_reason #status_reason} => String
    #   * {Types::CreateCloudExadataInfrastructureOutput#cloud_exadata_infrastructure_id #cloud_exadata_infrastructure_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_exadata_infrastructure({
    #     display_name: "ResourceDisplayName", # required
    #     shape: "CreateCloudExadataInfrastructureInputShapeString", # required
    #     availability_zone: "CreateCloudExadataInfrastructureInputAvailabilityZoneString",
    #     availability_zone_id: "CreateCloudExadataInfrastructureInputAvailabilityZoneIdString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     compute_count: 1, # required
    #     customer_contacts_to_send_to_oci: [
    #       {
    #         email: "CustomerContactEmailString",
    #       },
    #     ],
    #     maintenance_window: {
    #       custom_action_timeout_in_mins: 1,
    #       days_of_week: [
    #         {
    #           name: "MONDAY", # accepts MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
    #         },
    #       ],
    #       hours_of_day: [1],
    #       is_custom_action_timeout_enabled: false,
    #       lead_time_in_weeks: 1,
    #       months: [
    #         {
    #           name: "JANUARY", # accepts JANUARY, FEBRUARY, MARCH, APRIL, MAY, JUNE, JULY, AUGUST, SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER
    #         },
    #       ],
    #       patching_mode: "ROLLING", # accepts ROLLING, NONROLLING
    #       preference: "NO_PREFERENCE", # accepts NO_PREFERENCE, CUSTOM_PREFERENCE
    #       skip_ru: false,
    #       weeks_of_month: [1],
    #     },
    #     storage_count: 1, # required
    #     client_token: "CreateCloudExadataInfrastructureInputClientTokenString",
    #     database_server_type: "CreateCloudExadataInfrastructureInputDatabaseServerTypeString",
    #     storage_server_type: "CreateCloudExadataInfrastructureInputStorageServerTypeString",
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.cloud_exadata_infrastructure_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateCloudExadataInfrastructure AWS API Documentation
    #
    # @overload create_cloud_exadata_infrastructure(params = {})
    # @param [Hash] params ({})
    def create_cloud_exadata_infrastructure(params = {}, options = {})
      req = build_request(:create_cloud_exadata_infrastructure, params)
      req.send_request(options)
    end

    # Creates a VM cluster on the specified Exadata infrastructure.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Exadata infrastructure for this VM
    #   cluster.
    #
    # @option params [required, Integer] :cpu_core_count
    #   The number of CPU cores to enable on the VM cluster.
    #
    # @option params [required, String] :display_name
    #   A user-friendly name for the VM cluster.
    #
    # @option params [required, String] :gi_version
    #   A valid software version of Oracle Grid Infrastructure (GI). To get
    #   the list of valid values, use the `ListGiVersions` operation and
    #   specify the shape of the Exadata infrastructure.
    #
    #   Example: `19.0.0.0`
    #
    # @option params [required, String] :hostname
    #   The host name for the VM cluster.
    #
    #   Constraints:
    #
    #   * Can't be "localhost" or "hostname".
    #
    #   * Can't contain "-version".
    #
    #   * The maximum length of the combined hostname and domain is 63
    #     characters.
    #
    #   * The hostname must be unique within the subnet.
    #
    # @option params [required, Array<String>] :ssh_public_keys
    #   The public key portion of one or more key pairs used for SSH access to
    #   the VM cluster.
    #
    # @option params [required, String] :odb_network_id
    #   The unique identifier of the ODB network for the VM cluster.
    #
    # @option params [String] :cluster_name
    #   A name for the Grid Infrastructure cluster. The name isn't case
    #   sensitive.
    #
    # @option params [Types::DataCollectionOptions] :data_collection_options
    #   The set of preferences for the various diagnostic collection options
    #   for the VM cluster.
    #
    # @option params [Float] :data_storage_size_in_t_bs
    #   The size of the data disk group, in terabytes (TBs), to allocate for
    #   the VM cluster.
    #
    # @option params [Integer] :db_node_storage_size_in_g_bs
    #   The amount of local node storage, in gigabytes (GB), to allocate for
    #   the VM cluster.
    #
    # @option params [Array<String>] :db_servers
    #   The list of database servers for the VM cluster.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of resource tags to apply to the VM cluster.
    #
    # @option params [Boolean] :is_local_backup_enabled
    #   Specifies whether to enable database backups to local Exadata storage
    #   for the VM cluster.
    #
    # @option params [Boolean] :is_sparse_diskgroup_enabled
    #   Specifies whether to create a sparse disk group for the VM cluster.
    #
    # @option params [String] :license_model
    #   The Oracle license model to apply to the VM cluster.
    #
    #   Default: `LICENSE_INCLUDED`
    #
    # @option params [Integer] :memory_size_in_g_bs
    #   The amount of memory, in gigabytes (GB), to allocate for the VM
    #   cluster.
    #
    # @option params [String] :system_version
    #   The version of the operating system of the image for the VM cluster.
    #
    # @option params [String] :time_zone
    #   The time zone for the VM cluster. For a list of valid values for time
    #   zone, you can check the options in the console.
    #
    #   Default: UTC
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency. The client token is
    #   valid for up to 24 hours after it's first used.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Integer] :scan_listener_port_tcp
    #   The port number for TCP connections to the single client access name
    #   (SCAN) listener.
    #
    #   Valid values: `1024–8999` with the following exceptions: `2484`,
    #   `6100`, `6200`, `7060`, `7070`, `7085`, and `7879`
    #
    #   Default: `1521`
    #
    # @return [Types::CreateCloudVmClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCloudVmClusterOutput#display_name #display_name} => String
    #   * {Types::CreateCloudVmClusterOutput#status #status} => String
    #   * {Types::CreateCloudVmClusterOutput#status_reason #status_reason} => String
    #   * {Types::CreateCloudVmClusterOutput#cloud_vm_cluster_id #cloud_vm_cluster_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cloud_vm_cluster({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     cpu_core_count: 1, # required
    #     display_name: "ResourceDisplayName", # required
    #     gi_version: "CreateCloudVmClusterInputGiVersionString", # required
    #     hostname: "Hostname", # required
    #     ssh_public_keys: ["String"], # required
    #     odb_network_id: "ResourceIdOrArn", # required
    #     cluster_name: "ClusterName",
    #     data_collection_options: {
    #       is_diagnostics_events_enabled: false,
    #       is_health_monitoring_enabled: false,
    #       is_incident_logs_enabled: false,
    #     },
    #     data_storage_size_in_t_bs: 1.0,
    #     db_node_storage_size_in_g_bs: 1,
    #     db_servers: ["String"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     is_local_backup_enabled: false,
    #     is_sparse_diskgroup_enabled: false,
    #     license_model: "BRING_YOUR_OWN_LICENSE", # accepts BRING_YOUR_OWN_LICENSE, LICENSE_INCLUDED
    #     memory_size_in_g_bs: 1,
    #     system_version: "CreateCloudVmClusterInputSystemVersionString",
    #     time_zone: "CreateCloudVmClusterInputTimeZoneString",
    #     client_token: "CreateCloudVmClusterInputClientTokenString",
    #     scan_listener_port_tcp: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.cloud_vm_cluster_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateCloudVmCluster AWS API Documentation
    #
    # @overload create_cloud_vm_cluster(params = {})
    # @param [Hash] params ({})
    def create_cloud_vm_cluster(params = {}, options = {})
      req = build_request(:create_cloud_vm_cluster, params)
      req.send_request(options)
    end

    # Creates an Exascale VM cluster.
    #
    # @option params [required, String] :display_name
    #   A user-friendly name for the Exascale VM cluster.
    #
    # @option params [required, Integer] :enabled_ecpu_count
    #   The number of ECPUs to enable for the Exascale VM cluster.
    #
    # @option params [required, String] :exascale_db_storage_vault_id
    #   The unique identifier of the Exascale storage vault for this Exascale
    #   VM cluster.
    #
    # @option params [required, String] :grid_image_id
    #   The Grid Infrastructure software image ID for the Exascale VM cluster.
    #
    # @option params [required, String] :hostname
    #   The host name for the Exascale VM cluster.
    #
    # @option params [required, Integer] :node_count
    #   The number of nodes in the Exascale VM cluster.
    #
    # @option params [required, String] :odb_network_id
    #   The unique identifier of the ODB network for the Exascale VM cluster.
    #
    # @option params [required, String] :shape
    #   The shape of the Exascale VM cluster.
    #
    # @option params [required, Array<String>] :ssh_public_keys
    #   The public key portion of one or more key pairs used for SSH access to
    #   the Exascale VM cluster.
    #
    # @option params [required, Integer] :total_ecpu_count
    #   The total number of ECPUs for the Exascale VM cluster.
    #
    # @option params [required, Integer] :vm_file_system_storage_total_size_in_g_bs
    #   The total amount of file system storage, in gigabytes (GB), for the
    #   Exascale VM cluster.
    #
    # @option params [String] :cluster_name
    #   A name for the Grid Infrastructure cluster. The name isn't case
    #   sensitive.
    #
    # @option params [Types::DataCollectionOptions] :data_collection_options
    #   The set of preferences for the various diagnostic collection options
    #   for the Exascale VM cluster.
    #
    # @option params [String] :license_model
    #   The Oracle license model to apply to the Exascale VM cluster.
    #
    # @option params [Integer] :scan_listener_port_tcp
    #   The port number for TCP connections to the single client access name
    #   (SCAN) listener.
    #
    # @option params [Integer] :scan_listener_port_tcp_ssl
    #   The port number for TCP connections with SSL to the single client
    #   access name (SCAN) listener.
    #
    # @option params [String] :shape_attribute
    #   The shape attribute for the Exascale VM cluster.
    #
    # @option params [String] :system_version
    #   The version of the operating system of the image for the Exascale VM
    #   cluster.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of resource tags to apply to the Exascale VM cluster.
    #
    # @option params [String] :time_zone
    #   The time zone for the Exascale VM cluster.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, the
    #   Amazon Web Services SDK automatically generates one and uses it for
    #   the request to ensure idempotency. The client token is valid for up to
    #   24 hours after it's first used.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateExadbVmClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateExadbVmClusterOutput#display_name #display_name} => String
    #   * {Types::CreateExadbVmClusterOutput#status #status} => String
    #   * {Types::CreateExadbVmClusterOutput#status_reason #status_reason} => String
    #   * {Types::CreateExadbVmClusterOutput#exadb_vm_cluster_id #exadb_vm_cluster_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_exadb_vm_cluster({
    #     display_name: "ResourceDisplayName", # required
    #     enabled_ecpu_count: 1, # required
    #     exascale_db_storage_vault_id: "ResourceIdOrArn", # required
    #     grid_image_id: "CreateExadbVmClusterInputGridImageIdString", # required
    #     hostname: "Hostname", # required
    #     node_count: 1, # required
    #     odb_network_id: "ResourceIdOrArn", # required
    #     shape: "CreateExadbVmClusterInputShapeString", # required
    #     ssh_public_keys: ["String"], # required
    #     total_ecpu_count: 1, # required
    #     vm_file_system_storage_total_size_in_g_bs: 1, # required
    #     cluster_name: "ClusterName",
    #     data_collection_options: {
    #       is_diagnostics_events_enabled: false,
    #       is_health_monitoring_enabled: false,
    #       is_incident_logs_enabled: false,
    #     },
    #     license_model: "BRING_YOUR_OWN_LICENSE", # accepts BRING_YOUR_OWN_LICENSE, LICENSE_INCLUDED
    #     scan_listener_port_tcp: 1,
    #     scan_listener_port_tcp_ssl: 1,
    #     shape_attribute: "SMART_STORAGE", # accepts SMART_STORAGE, BLOCK_STORAGE
    #     system_version: "CreateExadbVmClusterInputSystemVersionString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     time_zone: "CreateExadbVmClusterInputTimeZoneString",
    #     client_token: "CreateExadbVmClusterInputClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.exadb_vm_cluster_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateExadbVmCluster AWS API Documentation
    #
    # @overload create_exadb_vm_cluster(params = {})
    # @param [Hash] params ({})
    def create_exadb_vm_cluster(params = {}, options = {})
      req = build_request(:create_exadb_vm_cluster, params)
      req.send_request(options)
    end

    # Creates an Exascale storage vault.
    #
    # @option params [required, String] :display_name
    #   A user-friendly name for the Exascale storage vault.
    #
    # @option params [required, Integer] :high_capacity_database_storage_total_size_in_g_bs
    #   The total size of the high-capacity database storage, in gigabytes
    #   (GB), for the Exascale storage vault.
    #
    # @option params [Integer] :additional_flash_cache_in_percent
    #   The additional flash cache percentage for the Exascale storage vault.
    #
    # @option params [Integer] :autoscale_limit_in_g_bs
    #   The autoscale limit in gigabytes (GB) for the Exascale storage vault.
    #
    # @option params [String] :availability_zone_id
    #   The Availability Zone ID for the Exascale storage vault.
    #
    # @option params [String] :availability_zone
    #   The Availability Zone for the Exascale storage vault.
    #
    # @option params [String] :description
    #   A description of the Exascale storage vault.
    #
    # @option params [Boolean] :is_autoscale_enabled
    #   Specifies whether autoscaling is enabled for the Exascale storage
    #   vault.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of resource tags to apply to the Exascale storage vault.
    #
    # @option params [String] :time_zone
    #   The time zone for the Exascale storage vault.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, the
    #   Amazon Web Services SDK automatically generates one and uses it for
    #   the request to ensure idempotency. The client token is valid for up to
    #   24 hours after it's first used.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateExascaleDbStorageVaultOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateExascaleDbStorageVaultOutput#display_name #display_name} => String
    #   * {Types::CreateExascaleDbStorageVaultOutput#status #status} => String
    #   * {Types::CreateExascaleDbStorageVaultOutput#status_reason #status_reason} => String
    #   * {Types::CreateExascaleDbStorageVaultOutput#exascale_db_storage_vault_id #exascale_db_storage_vault_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_exascale_db_storage_vault({
    #     display_name: "ResourceDisplayName", # required
    #     high_capacity_database_storage_total_size_in_g_bs: 1, # required
    #     additional_flash_cache_in_percent: 1,
    #     autoscale_limit_in_g_bs: 1,
    #     availability_zone_id: "CreateExascaleDbStorageVaultInputAvailabilityZoneIdString",
    #     availability_zone: "CreateExascaleDbStorageVaultInputAvailabilityZoneString",
    #     description: "CreateExascaleDbStorageVaultInputDescriptionString",
    #     is_autoscale_enabled: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     time_zone: "CreateExascaleDbStorageVaultInputTimeZoneString",
    #     client_token: "CreateExascaleDbStorageVaultInputClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.exascale_db_storage_vault_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateExascaleDbStorageVault AWS API Documentation
    #
    # @overload create_exascale_db_storage_vault(params = {})
    # @param [Hash] params ({})
    def create_exascale_db_storage_vault(params = {}, options = {})
      req = build_request(:create_exascale_db_storage_vault, params)
      req.send_request(options)
    end

    # Creates an ODB network.
    #
    # @option params [required, String] :display_name
    #   A user-friendly name for the ODB network.
    #
    # @option params [String] :availability_zone
    #   The Amazon Web Services Availability Zone (AZ) where the ODB network
    #   is located.
    #
    #   This operation requires that you specify a value for either
    #   `availabilityZone` or `availabilityZoneId`.
    #
    # @option params [String] :availability_zone_id
    #   The AZ ID of the AZ where the ODB network is located.
    #
    #   This operation requires that you specify a value for either
    #   `availabilityZone` or `availabilityZoneId`.
    #
    # @option params [required, String] :client_subnet_cidr
    #   The CIDR range of the client subnet for the ODB network.
    #
    #   Constraints:
    #
    #   * Must not overlap with the CIDR range of the backup subnet.
    #
    #   * Must not overlap with the CIDR ranges of the VPCs that are connected
    #     to the ODB network.
    #
    #   * Must not use the following CIDR ranges that are reserved by OCI:
    #
    #     * `100.106.0.0/16` and `100.107.0.0/16`
    #
    #     * `169.254.0.0/16`
    #
    #     * `224.0.0.0 - 239.255.255.255`
    #
    #     * `240.0.0.0 - 255.255.255.255`
    #
    # @option params [String] :backup_subnet_cidr
    #   The CIDR range of the backup subnet for the ODB network.
    #
    #   Constraints:
    #
    #   * Must not overlap with the CIDR range of the client subnet.
    #
    #   * Must not overlap with the CIDR ranges of the VPCs that are connected
    #     to the ODB network.
    #
    #   * Must not use the following CIDR ranges that are reserved by OCI:
    #
    #     * `100.106.0.0/16` and `100.107.0.0/16`
    #
    #     * `169.254.0.0/16`
    #
    #     * `224.0.0.0 - 239.255.255.255`
    #
    #     * `240.0.0.0 - 255.255.255.255`
    #
    # @option params [String] :custom_domain_name
    #   The domain name to use for the resources in the ODB network.
    #
    # @option params [String] :default_dns_prefix
    #   The DNS prefix to the default DNS domain name. The default DNS domain
    #   name is oraclevcn.com.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency. The client token is
    #   valid for up to 24 hours after it's first used.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :s3_access
    #   Specifies the configuration for Amazon S3 access from the ODB network.
    #
    # @option params [String] :zero_etl_access
    #   Specifies the configuration for Zero-ETL access from the ODB network.
    #
    # @option params [String] :sts_access
    #   The Amazon Web Services Security Token Service (STS) access
    #   configuration for the ODB network.
    #
    # @option params [String] :kms_access
    #   The Amazon Web Services Key Management Service (KMS) access
    #   configuration for the ODB network.
    #
    # @option params [String] :s3_policy_document
    #   Specifies the endpoint policy for Amazon S3 access from the ODB
    #   network.
    #
    # @option params [String] :sts_policy_document
    #   The Amazon Web Services Security Token Service (STS) policy document
    #   that defines permissions for token service usage within the ODB
    #   network.
    #
    # @option params [String] :kms_policy_document
    #   The Amazon Web Services Key Management Service (KMS) policy document
    #   that defines permissions for key usage within the ODB network.
    #
    # @option params [Array<String>] :cross_region_s3_restore_sources_to_enable
    #   The cross-Region Amazon S3 restore sources to enable for the ODB
    #   network.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of resource tags to apply to the ODB network.
    #
    # @return [Types::CreateOdbNetworkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOdbNetworkOutput#display_name #display_name} => String
    #   * {Types::CreateOdbNetworkOutput#status #status} => String
    #   * {Types::CreateOdbNetworkOutput#status_reason #status_reason} => String
    #   * {Types::CreateOdbNetworkOutput#odb_network_id #odb_network_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_odb_network({
    #     display_name: "ResourceDisplayName", # required
    #     availability_zone: "CreateOdbNetworkInputAvailabilityZoneString",
    #     availability_zone_id: "CreateOdbNetworkInputAvailabilityZoneIdString",
    #     client_subnet_cidr: "CreateOdbNetworkInputClientSubnetCidrString", # required
    #     backup_subnet_cidr: "CreateOdbNetworkInputBackupSubnetCidrString",
    #     custom_domain_name: "CreateOdbNetworkInputCustomDomainNameString",
    #     default_dns_prefix: "CreateOdbNetworkInputDefaultDnsPrefixString",
    #     client_token: "CreateOdbNetworkInputClientTokenString",
    #     s3_access: "ENABLED", # accepts ENABLED, DISABLED
    #     zero_etl_access: "ENABLED", # accepts ENABLED, DISABLED
    #     sts_access: "ENABLED", # accepts ENABLED, DISABLED
    #     kms_access: "ENABLED", # accepts ENABLED, DISABLED
    #     s3_policy_document: "PolicyDocument",
    #     sts_policy_document: "PolicyDocument",
    #     kms_policy_document: "PolicyDocument",
    #     cross_region_s3_restore_sources_to_enable: ["String"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.odb_network_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateOdbNetwork AWS API Documentation
    #
    # @overload create_odb_network(params = {})
    # @param [Hash] params ({})
    def create_odb_network(params = {}, options = {})
      req = build_request(:create_odb_network, params)
      req.send_request(options)
    end

    # Creates a peering connection between an ODB network and a VPC.
    #
    # A peering connection enables private connectivity between the networks
    # for application-tier communication.
    #
    # @option params [required, String] :odb_network_id
    #   The unique identifier of the ODB network that initiates the peering
    #   connection.
    #
    # @option params [required, String] :peer_network_id
    #   The unique identifier of the peer network. This can be either a VPC ID
    #   or another ODB network ID.
    #
    # @option params [String] :display_name
    #   The display name for the ODB peering connection.
    #
    # @option params [Array<String>] :peer_network_cidrs_to_be_added
    #   A list of CIDR blocks to add to the peering connection. These CIDR
    #   blocks define the IP address ranges that can communicate through the
    #   peering connection.
    #
    # @option params [Array<String>] :peer_network_route_table_ids
    #   The unique identifier of the VPC route table for which a route to the
    #   ODB network is automatically created during peering connection
    #   establishment.
    #
    # @option params [String] :client_token
    #   The client token for the ODB peering connection request.
    #
    #   Constraints:
    #
    #   * Must be unique for each request.
    #
    #   ^
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to assign to the ODB peering connection.
    #
    # @return [Types::CreateOdbPeeringConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOdbPeeringConnectionOutput#display_name #display_name} => String
    #   * {Types::CreateOdbPeeringConnectionOutput#status #status} => String
    #   * {Types::CreateOdbPeeringConnectionOutput#status_reason #status_reason} => String
    #   * {Types::CreateOdbPeeringConnectionOutput#odb_peering_connection_id #odb_peering_connection_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_odb_peering_connection({
    #     odb_network_id: "ResourceIdOrArn", # required
    #     peer_network_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName",
    #     peer_network_cidrs_to_be_added: ["PeeredCidr"],
    #     peer_network_route_table_ids: ["PeerNetworkRouteTableId"],
    #     client_token: "CreateOdbPeeringConnectionInputClientTokenString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.odb_peering_connection_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/CreateOdbPeeringConnection AWS API Documentation
    #
    # @overload create_odb_peering_connection(params = {})
    # @param [Hash] params ({})
    def create_odb_peering_connection(params = {}, options = {})
      req = build_request(:create_odb_peering_connection, params)
      req.send_request(options)
    end

    # Deletes the specified Autonomous Database.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_autonomous_database({
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteAutonomousDatabase AWS API Documentation
    #
    # @overload delete_autonomous_database(params = {})
    # @param [Hash] params ({})
    def delete_autonomous_database(params = {}, options = {})
      req = build_request(:delete_autonomous_database, params)
      req.send_request(options)
    end

    # Deletes the specified Autonomous Database backup.
    #
    # @option params [required, String] :autonomous_database_backup_id
    #   The unique identifier of the Autonomous Database backup to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_autonomous_database_backup({
    #     autonomous_database_backup_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteAutonomousDatabaseBackup AWS API Documentation
    #
    # @overload delete_autonomous_database_backup(params = {})
    # @param [Hash] params ({})
    def delete_autonomous_database_backup(params = {}, options = {})
      req = build_request(:delete_autonomous_database_backup, params)
      req.send_request(options)
    end

    # Deletes an Autonomous VM cluster.
    #
    # @option params [required, String] :cloud_autonomous_vm_cluster_id
    #   The unique identifier of the Autonomous VM cluster to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cloud_autonomous_vm_cluster({
    #     cloud_autonomous_vm_cluster_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteCloudAutonomousVmCluster AWS API Documentation
    #
    # @overload delete_cloud_autonomous_vm_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cloud_autonomous_vm_cluster(params = {}, options = {})
      req = build_request(:delete_cloud_autonomous_vm_cluster, params)
      req.send_request(options)
    end

    # Deletes the specified Exadata infrastructure. Before you use this
    # operation, make sure to delete all of the VM clusters that are hosted
    # on this Exadata infrastructure.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Exadata infrastructure to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cloud_exadata_infrastructure({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteCloudExadataInfrastructure AWS API Documentation
    #
    # @overload delete_cloud_exadata_infrastructure(params = {})
    # @param [Hash] params ({})
    def delete_cloud_exadata_infrastructure(params = {}, options = {})
      req = build_request(:delete_cloud_exadata_infrastructure, params)
      req.send_request(options)
    end

    # Deletes the specified VM cluster.
    #
    # @option params [required, String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cloud_vm_cluster({
    #     cloud_vm_cluster_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteCloudVmCluster AWS API Documentation
    #
    # @overload delete_cloud_vm_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cloud_vm_cluster(params = {}, options = {})
      req = build_request(:delete_cloud_vm_cluster, params)
      req.send_request(options)
    end

    # Deletes the specified Exascale VM cluster.
    #
    # @option params [required, String] :exadb_vm_cluster_id
    #   The unique identifier of the Exascale VM cluster to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_exadb_vm_cluster({
    #     exadb_vm_cluster_id: "ResourceIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteExadbVmCluster AWS API Documentation
    #
    # @overload delete_exadb_vm_cluster(params = {})
    # @param [Hash] params ({})
    def delete_exadb_vm_cluster(params = {}, options = {})
      req = build_request(:delete_exadb_vm_cluster, params)
      req.send_request(options)
    end

    # Deletes the specified Exascale storage vault.
    #
    # @option params [required, String] :exascale_db_storage_vault_id
    #   The unique identifier of the Exascale storage vault to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_exascale_db_storage_vault({
    #     exascale_db_storage_vault_id: "ResourceIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteExascaleDbStorageVault AWS API Documentation
    #
    # @overload delete_exascale_db_storage_vault(params = {})
    # @param [Hash] params ({})
    def delete_exascale_db_storage_vault(params = {}, options = {})
      req = build_request(:delete_exascale_db_storage_vault, params)
      req.send_request(options)
    end

    # Deletes the specified ODB network.
    #
    # @option params [required, String] :odb_network_id
    #   The unique identifier of the ODB network to delete.
    #
    # @option params [required, Boolean] :delete_associated_resources
    #   Specifies whether to delete associated OCI networking resources along
    #   with the ODB network.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_odb_network({
    #     odb_network_id: "ResourceIdOrArn", # required
    #     delete_associated_resources: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteOdbNetwork AWS API Documentation
    #
    # @overload delete_odb_network(params = {})
    # @param [Hash] params ({})
    def delete_odb_network(params = {}, options = {})
      req = build_request(:delete_odb_network, params)
      req.send_request(options)
    end

    # Deletes an ODB peering connection.
    #
    # When you delete an ODB peering connection, the underlying VPC peering
    # connection is also deleted.
    #
    # @option params [required, String] :odb_peering_connection_id
    #   The unique identifier of the ODB peering connection to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_odb_peering_connection({
    #     odb_peering_connection_id: "ResourceIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DeleteOdbPeeringConnection AWS API Documentation
    #
    # @overload delete_odb_peering_connection(params = {})
    # @param [Hash] params ({})
    def delete_odb_peering_connection(params = {}, options = {})
      req = build_request(:delete_odb_peering_connection, params)
      req.send_request(options)
    end

    # Disassociates an Amazon Web Services Identity and Access Management
    # (IAM) service role from a specified resource to disable Amazon Web
    # Services service integration.
    #
    # @option params [required, String] :iam_role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Identity and
    #   Access Management (IAM) service role to disassociate from the
    #   resource.
    #
    # @option params [required, String] :aws_integration
    #   The Amazon Web Services integration configuration settings for the
    #   Amazon Web Services Identity and Access Management (IAM) service role
    #   disassociation.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the target resource to disassociate
    #   from the Amazon Web Services Identity and Access Management (IAM)
    #   service role.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_iam_role_from_resource({
    #     iam_role_arn: "RoleArn", # required
    #     aws_integration: "KmsTde", # required, accepts KmsTde
    #     resource_arn: "DisassociateIamRoleFromResourceInputResourceArnString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DisassociateIamRoleFromResource AWS API Documentation
    #
    # @overload disassociate_iam_role_from_resource(params = {})
    # @param [Hash] params ({})
    def disassociate_iam_role_from_resource(params = {}, options = {})
      req = build_request(:disassociate_iam_role_from_resource, params)
      req.send_request(options)
    end

    # Removes virtual machines from the specified Exascale VM cluster.
    #
    # @option params [required, String] :exadb_vm_cluster_id
    #   The unique identifier of the Exascale VM cluster to remove virtual
    #   machines from.
    #
    # @option params [required, Array<String>] :db_node_ids
    #   The list of DB node IDs to remove from the Exascale VM cluster.
    #
    # @return [Types::DisassociateVirtualMachinesFromExadbVmClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateVirtualMachinesFromExadbVmClusterOutput#display_name #display_name} => String
    #   * {Types::DisassociateVirtualMachinesFromExadbVmClusterOutput#status #status} => String
    #   * {Types::DisassociateVirtualMachinesFromExadbVmClusterOutput#status_reason #status_reason} => String
    #   * {Types::DisassociateVirtualMachinesFromExadbVmClusterOutput#exadb_vm_cluster_id #exadb_vm_cluster_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_virtual_machines_from_exadb_vm_cluster({
    #     exadb_vm_cluster_id: "ResourceIdOrArn", # required
    #     db_node_ids: ["ResourceId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.exadb_vm_cluster_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/DisassociateVirtualMachinesFromExadbVmCluster AWS API Documentation
    #
    # @overload disassociate_virtual_machines_from_exadb_vm_cluster(params = {})
    # @param [Hash] params ({})
    def disassociate_virtual_machines_from_exadb_vm_cluster(params = {}, options = {})
      req = build_request(:disassociate_virtual_machines_from_exadb_vm_cluster, params)
      req.send_request(options)
    end

    # Initiates a failover of the specified Autonomous Database to a standby
    # peer database.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database to fail over.
    #
    # @option params [String] :peer_db_arn
    #   The Amazon Resource Name (ARN) of the peer Autonomous Database to fail
    #   over to.
    #
    # @return [Types::FailoverAutonomousDatabaseOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FailoverAutonomousDatabaseOutput#autonomous_database_id #autonomous_database_id} => String
    #   * {Types::FailoverAutonomousDatabaseOutput#display_name #display_name} => String
    #   * {Types::FailoverAutonomousDatabaseOutput#status #status} => String
    #   * {Types::FailoverAutonomousDatabaseOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.failover_autonomous_database({
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     peer_db_arn: "ResourceArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.autonomous_database_id #=> String
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/FailoverAutonomousDatabase AWS API Documentation
    #
    # @overload failover_autonomous_database(params = {})
    # @param [Hash] params ({})
    def failover_autonomous_database(params = {}, options = {})
      req = build_request(:failover_autonomous_database, params)
      req.send_request(options)
    end

    # Gets information about a specific Autonomous Database.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database to retrieve
    #   information about.
    #
    # @return [Types::GetAutonomousDatabaseOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutonomousDatabaseOutput#autonomous_database #autonomous_database} => Types::AutonomousDatabase
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_autonomous_database({
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.autonomous_database.autonomous_database_id #=> String
    #   resp.autonomous_database.autonomous_database_arn #=> String
    #   resp.autonomous_database.oci_resource_anchor_name #=> String
    #   resp.autonomous_database.percent_progress #=> Float
    #   resp.autonomous_database.ocid #=> String
    #   resp.autonomous_database.oci_url #=> String
    #   resp.autonomous_database.display_name #=> String
    #   resp.autonomous_database.db_name #=> String
    #   resp.autonomous_database.source_id #=> String
    #   resp.autonomous_database.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.autonomous_database.status_reason #=> String
    #   resp.autonomous_database.database_type #=> String, one of "REGULAR", "CLONE"
    #   resp.autonomous_database.db_version #=> String
    #   resp.autonomous_database.db_workload #=> String, one of "OLTP", "AJD", "APEX", "LH"
    #   resp.autonomous_database.character_set #=> String
    #   resp.autonomous_database.ncharacter_set #=> String
    #   resp.autonomous_database.database_edition #=> String, one of "STANDARD_EDITION", "ENTERPRISE_EDITION"
    #   resp.autonomous_database.license_model #=> String, one of "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
    #   resp.autonomous_database.open_mode #=> String, one of "READ_ONLY", "READ_WRITE"
    #   resp.autonomous_database.permission_level #=> String, one of "RESTRICTED", "UNRESTRICTED"
    #   resp.autonomous_database.is_mtls_connection_required #=> Boolean
    #   resp.autonomous_database.autonomous_maintenance_schedule_type #=> String, one of "EARLY", "REGULAR"
    #   resp.autonomous_database.net_services_architecture #=> String, one of "DEDICATED", "SHARED"
    #   resp.autonomous_database.available_upgrade_versions #=> Array
    #   resp.autonomous_database.available_upgrade_versions[0] #=> String
    #   resp.autonomous_database.byol_compute_count_limit #=> Integer
    #   resp.autonomous_database.connection_string_details.all_connection_strings #=> Hash
    #   resp.autonomous_database.connection_string_details.all_connection_strings["String"] #=> String
    #   resp.autonomous_database.connection_string_details.dedicated #=> String
    #   resp.autonomous_database.connection_string_details.high #=> String
    #   resp.autonomous_database.connection_string_details.medium #=> String
    #   resp.autonomous_database.connection_string_details.low #=> String
    #   resp.autonomous_database.connection_string_details.profiles #=> Array
    #   resp.autonomous_database.connection_string_details.profiles[0].consumer_group #=> String
    #   resp.autonomous_database.connection_string_details.profiles[0].display_name #=> String
    #   resp.autonomous_database.connection_string_details.profiles[0].host_format #=> String
    #   resp.autonomous_database.connection_string_details.profiles[0].is_regional #=> Boolean
    #   resp.autonomous_database.connection_string_details.profiles[0].protocol #=> String
    #   resp.autonomous_database.connection_string_details.profiles[0].session_mode #=> String
    #   resp.autonomous_database.connection_string_details.profiles[0].syntax_format #=> String
    #   resp.autonomous_database.connection_string_details.profiles[0].tls_authentication #=> String
    #   resp.autonomous_database.connection_string_details.profiles[0].value #=> String
    #   resp.autonomous_database.service_console_url #=> String
    #   resp.autonomous_database.sql_web_developer_url #=> String
    #   resp.autonomous_database.customer_contacts #=> Array
    #   resp.autonomous_database.customer_contacts[0].email #=> String
    #   resp.autonomous_database.apex_details.apex_version #=> String
    #   resp.autonomous_database.apex_details.ords_version #=> String
    #   resp.autonomous_database.standby_db.availability_domain #=> String
    #   resp.autonomous_database.standby_db.lag_time_in_seconds #=> Integer
    #   resp.autonomous_database.standby_db.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.autonomous_database.standby_db.status_reason #=> String
    #   resp.autonomous_database.standby_db.maintenance_target_component #=> String
    #   resp.autonomous_database.standby_db.time_data_guard_role_changed #=> Time
    #   resp.autonomous_database.standby_db.time_disaster_recovery_role_changed #=> Time
    #   resp.autonomous_database.standby_db.time_maintenance_begin #=> Time
    #   resp.autonomous_database.standby_db.time_maintenance_end #=> Time
    #   resp.autonomous_database.local_standby_db.availability_domain #=> String
    #   resp.autonomous_database.local_standby_db.lag_time_in_seconds #=> Integer
    #   resp.autonomous_database.local_standby_db.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.autonomous_database.local_standby_db.status_reason #=> String
    #   resp.autonomous_database.local_standby_db.maintenance_target_component #=> String
    #   resp.autonomous_database.local_standby_db.time_data_guard_role_changed #=> Time
    #   resp.autonomous_database.local_standby_db.time_disaster_recovery_role_changed #=> Time
    #   resp.autonomous_database.local_standby_db.time_maintenance_begin #=> Time
    #   resp.autonomous_database.local_standby_db.time_maintenance_end #=> Time
    #   resp.autonomous_database.data_safe_status #=> String, one of "REGISTERING", "REGISTERED", "DEREGISTERING", "NOT_REGISTERED", "FAILED"
    #   resp.autonomous_database.database_management_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "NOT_ENABLED", "FAILED_ENABLING", "FAILED_DISABLING"
    #   resp.autonomous_database.operations_insights_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "NOT_ENABLED", "FAILED_ENABLING", "FAILED_DISABLING"
    #   resp.autonomous_database.availability_zone #=> String
    #   resp.autonomous_database.availability_zone_id #=> String
    #   resp.autonomous_database.maintenance_target_component #=> String
    #   resp.autonomous_database.connection_urls.apex_url #=> String
    #   resp.autonomous_database.connection_urls.database_transforms_url #=> String
    #   resp.autonomous_database.connection_urls.graph_studio_url #=> String
    #   resp.autonomous_database.connection_urls.machine_learning_notebook_url #=> String
    #   resp.autonomous_database.connection_urls.machine_learning_user_management_url #=> String
    #   resp.autonomous_database.connection_urls.mongo_db_url #=> String
    #   resp.autonomous_database.connection_urls.ords_url #=> String
    #   resp.autonomous_database.connection_urls.spatial_studio_url #=> String
    #   resp.autonomous_database.connection_urls.sql_dev_web_url #=> String
    #   resp.autonomous_database.db_tools_details #=> Array
    #   resp.autonomous_database.db_tools_details[0].is_enabled #=> Boolean
    #   resp.autonomous_database.db_tools_details[0].name #=> String
    #   resp.autonomous_database.db_tools_details[0].compute_count #=> Float
    #   resp.autonomous_database.db_tools_details[0].max_idle_time_in_minutes #=> Integer
    #   resp.autonomous_database.scheduled_operations #=> Array
    #   resp.autonomous_database.scheduled_operations[0].day_of_week.name #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.autonomous_database.scheduled_operations[0].scheduled_start_time #=> String
    #   resp.autonomous_database.scheduled_operations[0].scheduled_stop_time #=> String
    #   resp.autonomous_database.resource_pool_leader_id #=> String
    #   resp.autonomous_database.compute_count #=> Float
    #   resp.autonomous_database.compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.autonomous_database.cpu_core_count #=> Integer
    #   resp.autonomous_database.memory_per_oracle_compute_unit_in_g_bs #=> Integer
    #   resp.autonomous_database.provisionable_cpus #=> Array
    #   resp.autonomous_database.provisionable_cpus[0] #=> Integer
    #   resp.autonomous_database.is_auto_scaling_enabled #=> Boolean
    #   resp.autonomous_database.data_storage_size_in_t_bs #=> Float
    #   resp.autonomous_database.data_storage_size_in_g_bs #=> Integer
    #   resp.autonomous_database.used_data_storage_size_in_t_bs #=> Float
    #   resp.autonomous_database.used_data_storage_size_in_g_bs #=> Integer
    #   resp.autonomous_database.actual_used_data_storage_size_in_t_bs #=> Float
    #   resp.autonomous_database.allocated_storage_size_in_t_bs #=> Float
    #   resp.autonomous_database.in_memory_area_in_g_bs #=> Integer
    #   resp.autonomous_database.is_auto_scaling_for_storage_enabled #=> Boolean
    #   resp.autonomous_database.odb_network_id #=> String
    #   resp.autonomous_database.odb_network_arn #=> String
    #   resp.autonomous_database.private_endpoint #=> String
    #   resp.autonomous_database.private_endpoint_ip #=> String
    #   resp.autonomous_database.private_endpoint_label #=> String
    #   resp.autonomous_database.allowlisted_ips #=> Array
    #   resp.autonomous_database.allowlisted_ips[0] #=> String
    #   resp.autonomous_database.standby_allowlisted_ips #=> Array
    #   resp.autonomous_database.standby_allowlisted_ips[0] #=> String
    #   resp.autonomous_database.standby_allowlisted_ips_source #=> String, one of "PRIMARY", "SEPARATE", "NOT_APPLICABLE"
    #   resp.autonomous_database.is_local_data_guard_enabled #=> Boolean
    #   resp.autonomous_database.is_remote_data_guard_enabled #=> Boolean
    #   resp.autonomous_database.local_disaster_recovery_type #=> String, one of "ADG", "BACKUP_BASED"
    #   resp.autonomous_database.role #=> String, one of "PRIMARY", "STANDBY", "DISABLED_STANDBY", "BACKUP_COPY", "SNAPSHOT_STANDBY"
    #   resp.autonomous_database.peer_db_ids #=> Array
    #   resp.autonomous_database.peer_db_ids[0] #=> String
    #   resp.autonomous_database.failed_data_recovery_in_seconds #=> Integer
    #   resp.autonomous_database.local_adg_auto_failover_max_data_loss_limit #=> Integer
    #   resp.autonomous_database.remote_disaster_recovery_configuration.disaster_recovery_type #=> String, one of "ADG", "BACKUP_BASED"
    #   resp.autonomous_database.remote_disaster_recovery_configuration.is_replicate_automatic_backups #=> Boolean
    #   resp.autonomous_database.remote_disaster_recovery_configuration.is_snapshot_standby #=> Boolean
    #   resp.autonomous_database.remote_disaster_recovery_configuration.time_snapshot_standby_enabled_till #=> Time
    #   resp.autonomous_database.is_refreshable_clone #=> Boolean
    #   resp.autonomous_database.refreshable_mode #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.autonomous_database.refreshable_status #=> String, one of "REFRESHING", "NOT_REFRESHING"
    #   resp.autonomous_database.auto_refresh_frequency_in_seconds #=> Integer
    #   resp.autonomous_database.auto_refresh_point_lag_in_seconds #=> Integer
    #   resp.autonomous_database.is_reconnect_clone_enabled #=> Boolean
    #   resp.autonomous_database.clone_table_space_list #=> Array
    #   resp.autonomous_database.clone_table_space_list[0] #=> Integer
    #   resp.autonomous_database.backup_retention_period_in_days #=> Integer
    #   resp.autonomous_database.long_term_backup_schedule.is_disabled #=> Boolean
    #   resp.autonomous_database.long_term_backup_schedule.repeat_cadence #=> String, one of "ONE_TIME", "WEEKLY", "MONTHLY", "YEARLY"
    #   resp.autonomous_database.long_term_backup_schedule.retention_period_in_days #=> Integer
    #   resp.autonomous_database.long_term_backup_schedule.time_of_backup #=> Time
    #   resp.autonomous_database.is_backup_retention_locked #=> Boolean
    #   resp.autonomous_database.total_backup_storage_size_in_g_bs #=> Float
    #   resp.autonomous_database.resource_pool_summary.is_disabled #=> Boolean
    #   resp.autonomous_database.resource_pool_summary.pool_size #=> Integer
    #   resp.autonomous_database.resource_pool_summary.pool_storage_size_in_t_bs #=> Integer
    #   resp.autonomous_database.resource_pool_summary.available_storage_capacity_in_t_bs #=> Float
    #   resp.autonomous_database.resource_pool_summary.total_compute_capacity #=> Integer
    #   resp.autonomous_database.resource_pool_summary.available_compute_capacity #=> Integer
    #   resp.autonomous_database.encryption_summary.encryption_key_provider #=> String, one of "ORACLE_MANAGED", "AWS_KMS", "OKV", "OCI"
    #   resp.autonomous_database.encryption_summary.encryption_key_configuration.aws_encryption_key.iam_role_arn #=> String
    #   resp.autonomous_database.encryption_summary.encryption_key_configuration.aws_encryption_key.external_id_type #=> String, one of "database_ocid", "compartment_ocid", "tenant_ocid"
    #   resp.autonomous_database.encryption_summary.encryption_key_configuration.aws_encryption_key.kms_key_id #=> String
    #   resp.autonomous_database.encryption_summary.encryption_key_configuration.oci_encryption_key.kms_key_id #=> String
    #   resp.autonomous_database.encryption_summary.encryption_key_configuration.oci_encryption_key.vault_id #=> String
    #   resp.autonomous_database.encryption_summary.encryption_key_configuration.okv_encryption_key.certificate_directory_name #=> String
    #   resp.autonomous_database.encryption_summary.encryption_key_configuration.okv_encryption_key.certificate_id #=> String
    #   resp.autonomous_database.encryption_summary.encryption_key_configuration.okv_encryption_key.directory_name #=> String
    #   resp.autonomous_database.encryption_summary.encryption_key_configuration.okv_encryption_key.okv_kms_key #=> String
    #   resp.autonomous_database.encryption_summary.encryption_key_configuration.okv_encryption_key.okv_uri #=> String
    #   resp.autonomous_database.created_at #=> Time
    #   resp.autonomous_database.time_of_last_backup #=> Time
    #   resp.autonomous_database.time_maintenance_begin #=> Time
    #   resp.autonomous_database.time_maintenance_end #=> Time
    #   resp.autonomous_database.time_local_data_guard_enabled #=> Time
    #   resp.autonomous_database.time_data_guard_role_changed #=> Time
    #   resp.autonomous_database.time_of_last_switchover #=> Time
    #   resp.autonomous_database.time_of_last_failover #=> Time
    #   resp.autonomous_database.time_of_last_refresh #=> Time
    #   resp.autonomous_database.time_of_last_refresh_point #=> Time
    #   resp.autonomous_database.time_of_next_refresh #=> Time
    #   resp.autonomous_database.time_of_auto_refresh_start #=> Time
    #   resp.autonomous_database.time_deletion_of_free_autonomous_database #=> Time
    #   resp.autonomous_database.time_reclamation_of_free_autonomous_database #=> Time
    #   resp.autonomous_database.time_disaster_recovery_role_changed #=> Time
    #   resp.autonomous_database.time_until_reconnect_clone_enabled #=> Time
    #   resp.autonomous_database.next_long_term_backup_time_stamp #=> Time
    #   resp.autonomous_database.time_undeleted #=> Time
    #   resp.autonomous_database.admin_password_source_summary.admin_password_source #=> String, one of "CUSTOMER_MANAGED_AWS_SECRET", "API_REQUEST_PARAMETER"
    #   resp.autonomous_database.admin_password_source_summary.admin_password_source_configuration.customer_managed_aws_secret.iam_role_arn #=> String
    #   resp.autonomous_database.admin_password_source_summary.admin_password_source_configuration.customer_managed_aws_secret.secret_id #=> String
    #   resp.autonomous_database.admin_password_source_summary.admin_password_source_configuration.customer_managed_aws_secret.external_id_type #=> String, one of "database_ocid", "compartment_ocid", "tenant_ocid"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetAutonomousDatabase AWS API Documentation
    #
    # @overload get_autonomous_database(params = {})
    # @param [Hash] params ({})
    def get_autonomous_database(params = {}, options = {})
      req = build_request(:get_autonomous_database, params)
      req.send_request(options)
    end

    # Gets information about a specific Autonomous Database backup.
    #
    # @option params [required, String] :autonomous_database_backup_id
    #   The unique identifier of the Autonomous Database backup to retrieve
    #   information about.
    #
    # @return [Types::GetAutonomousDatabaseBackupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutonomousDatabaseBackupOutput#autonomous_database_backup #autonomous_database_backup} => Types::AutonomousDatabaseBackup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_autonomous_database_backup({
    #     autonomous_database_backup_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.autonomous_database_backup.autonomous_database_backup_id #=> String
    #   resp.autonomous_database_backup.autonomous_database_backup_arn #=> String
    #   resp.autonomous_database_backup.autonomous_database_id #=> String
    #   resp.autonomous_database_backup.ocid #=> String
    #   resp.autonomous_database_backup.display_name #=> String
    #   resp.autonomous_database_backup.db_version #=> String
    #   resp.autonomous_database_backup.status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "FAILED"
    #   resp.autonomous_database_backup.status_reason #=> String
    #   resp.autonomous_database_backup.is_automatic #=> Boolean
    #   resp.autonomous_database_backup.retention_period_in_days #=> Integer
    #   resp.autonomous_database_backup.size_in_t_bs #=> Float
    #   resp.autonomous_database_backup.time_available_till #=> Time
    #   resp.autonomous_database_backup.time_started #=> Time
    #   resp.autonomous_database_backup.time_ended #=> Time
    #   resp.autonomous_database_backup.type #=> String, one of "INCREMENTAL", "FULL", "LONGTERM", "VIRTUAL_FULL", "CUMULATIVE_INCREMENTAL", "ROLL_FORWARD_IMAGE_COPY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetAutonomousDatabaseBackup AWS API Documentation
    #
    # @overload get_autonomous_database_backup(params = {})
    # @param [Hash] params ({})
    def get_autonomous_database_backup(params = {}, options = {})
      req = build_request(:get_autonomous_database_backup, params)
      req.send_request(options)
    end

    # Gets the wallet details for the specified Autonomous Database.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database to retrieve wallet
    #   details for.
    #
    # @return [Types::GetAutonomousDatabaseWalletDetailsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutonomousDatabaseWalletDetailsOutput#autonomous_database_wallet_details #autonomous_database_wallet_details} => Types::AutonomousDatabaseWalletDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_autonomous_database_wallet_details({
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.autonomous_database_wallet_details.status #=> String, one of "ACTIVE", "UPDATING"
    #   resp.autonomous_database_wallet_details.time_rotated #=> Time
    #   resp.autonomous_database_wallet_details.password_source_summary.password_source #=> String, one of "CUSTOMER_MANAGED_AWS_SECRET", "API_REQUEST_PARAMETER"
    #   resp.autonomous_database_wallet_details.password_source_summary.password_source_configuration.customer_managed_aws_secret.iam_role_arn #=> String
    #   resp.autonomous_database_wallet_details.password_source_summary.password_source_configuration.customer_managed_aws_secret.secret_id #=> String
    #   resp.autonomous_database_wallet_details.password_source_summary.password_source_configuration.customer_managed_aws_secret.external_id_type #=> String, one of "database_ocid", "compartment_ocid", "tenant_ocid"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetAutonomousDatabaseWalletDetails AWS API Documentation
    #
    # @overload get_autonomous_database_wallet_details(params = {})
    # @param [Hash] params ({})
    def get_autonomous_database_wallet_details(params = {}, options = {})
      req = build_request(:get_autonomous_database_wallet_details, params)
      req.send_request(options)
    end

    # Gets information about a specific Autonomous VM cluster.
    #
    # @option params [required, String] :cloud_autonomous_vm_cluster_id
    #   The unique identifier of the Autonomous VM cluster to retrieve
    #   information about.
    #
    # @return [Types::GetCloudAutonomousVmClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudAutonomousVmClusterOutput#cloud_autonomous_vm_cluster #cloud_autonomous_vm_cluster} => Types::CloudAutonomousVmCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_autonomous_vm_cluster({
    #     cloud_autonomous_vm_cluster_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_autonomous_vm_cluster.cloud_autonomous_vm_cluster_id #=> String
    #   resp.cloud_autonomous_vm_cluster.cloud_autonomous_vm_cluster_arn #=> String
    #   resp.cloud_autonomous_vm_cluster.odb_network_id #=> String
    #   resp.cloud_autonomous_vm_cluster.odb_network_arn #=> String
    #   resp.cloud_autonomous_vm_cluster.oci_resource_anchor_name #=> String
    #   resp.cloud_autonomous_vm_cluster.percent_progress #=> Float
    #   resp.cloud_autonomous_vm_cluster.display_name #=> String
    #   resp.cloud_autonomous_vm_cluster.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.cloud_autonomous_vm_cluster.status_reason #=> String
    #   resp.cloud_autonomous_vm_cluster.cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_autonomous_vm_cluster.cloud_exadata_infrastructure_arn #=> String
    #   resp.cloud_autonomous_vm_cluster.autonomous_data_storage_percentage #=> Float
    #   resp.cloud_autonomous_vm_cluster.autonomous_data_storage_size_in_t_bs #=> Float
    #   resp.cloud_autonomous_vm_cluster.available_autonomous_data_storage_size_in_t_bs #=> Float
    #   resp.cloud_autonomous_vm_cluster.available_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_cluster.available_cpus #=> Float
    #   resp.cloud_autonomous_vm_cluster.compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.cloud_autonomous_vm_cluster.cpu_core_count #=> Integer
    #   resp.cloud_autonomous_vm_cluster.cpu_core_count_per_node #=> Integer
    #   resp.cloud_autonomous_vm_cluster.cpu_percentage #=> Float
    #   resp.cloud_autonomous_vm_cluster.data_storage_size_in_g_bs #=> Float
    #   resp.cloud_autonomous_vm_cluster.data_storage_size_in_t_bs #=> Float
    #   resp.cloud_autonomous_vm_cluster.db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_autonomous_vm_cluster.db_servers #=> Array
    #   resp.cloud_autonomous_vm_cluster.db_servers[0] #=> String
    #   resp.cloud_autonomous_vm_cluster.description #=> String
    #   resp.cloud_autonomous_vm_cluster.domain #=> String
    #   resp.cloud_autonomous_vm_cluster.exadata_storage_in_t_bs_lowest_scaled_value #=> Float
    #   resp.cloud_autonomous_vm_cluster.hostname #=> String
    #   resp.cloud_autonomous_vm_cluster.ocid #=> String
    #   resp.cloud_autonomous_vm_cluster.oci_url #=> String
    #   resp.cloud_autonomous_vm_cluster.is_mtls_enabled_vm_cluster #=> Boolean
    #   resp.cloud_autonomous_vm_cluster.license_model #=> String, one of "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.custom_action_timeout_in_mins #=> Integer
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.days_of_week #=> Array
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.days_of_week[0].name #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.hours_of_day #=> Array
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.hours_of_day[0] #=> Integer
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.is_custom_action_timeout_enabled #=> Boolean
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.lead_time_in_weeks #=> Integer
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.months #=> Array
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.months[0].name #=> String, one of "JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.patching_mode #=> String, one of "ROLLING", "NONROLLING"
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.preference #=> String, one of "NO_PREFERENCE", "CUSTOM_PREFERENCE"
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.skip_ru #=> Boolean
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.weeks_of_month #=> Array
    #   resp.cloud_autonomous_vm_cluster.maintenance_window.weeks_of_month[0] #=> Integer
    #   resp.cloud_autonomous_vm_cluster.max_acds_lowest_scaled_value #=> Integer
    #   resp.cloud_autonomous_vm_cluster.memory_per_oracle_compute_unit_in_g_bs #=> Integer
    #   resp.cloud_autonomous_vm_cluster.memory_size_in_g_bs #=> Integer
    #   resp.cloud_autonomous_vm_cluster.node_count #=> Integer
    #   resp.cloud_autonomous_vm_cluster.non_provisionable_autonomous_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_cluster.provisionable_autonomous_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_cluster.provisioned_autonomous_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_cluster.provisioned_cpus #=> Float
    #   resp.cloud_autonomous_vm_cluster.reclaimable_cpus #=> Float
    #   resp.cloud_autonomous_vm_cluster.reserved_cpus #=> Float
    #   resp.cloud_autonomous_vm_cluster.scan_listener_port_non_tls #=> Integer
    #   resp.cloud_autonomous_vm_cluster.scan_listener_port_tls #=> Integer
    #   resp.cloud_autonomous_vm_cluster.shape #=> String
    #   resp.cloud_autonomous_vm_cluster.created_at #=> Time
    #   resp.cloud_autonomous_vm_cluster.time_database_ssl_certificate_expires #=> Time
    #   resp.cloud_autonomous_vm_cluster.time_ords_certificate_expires #=> Time
    #   resp.cloud_autonomous_vm_cluster.time_zone #=> String
    #   resp.cloud_autonomous_vm_cluster.total_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_cluster.iam_roles #=> Array
    #   resp.cloud_autonomous_vm_cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cloud_autonomous_vm_cluster.iam_roles[0].status #=> String, one of "ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"
    #   resp.cloud_autonomous_vm_cluster.iam_roles[0].status_reason #=> String
    #   resp.cloud_autonomous_vm_cluster.iam_roles[0].aws_integration #=> String, one of "KmsTde"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetCloudAutonomousVmCluster AWS API Documentation
    #
    # @overload get_cloud_autonomous_vm_cluster(params = {})
    # @param [Hash] params ({})
    def get_cloud_autonomous_vm_cluster(params = {}, options = {})
      req = build_request(:get_cloud_autonomous_vm_cluster, params)
      req.send_request(options)
    end

    # Returns information about the specified Exadata infrastructure.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Exadata infrastructure.
    #
    # @return [Types::GetCloudExadataInfrastructureOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudExadataInfrastructureOutput#cloud_exadata_infrastructure #cloud_exadata_infrastructure} => Types::CloudExadataInfrastructure
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_exadata_infrastructure({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_exadata_infrastructure.cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_exadata_infrastructure.display_name #=> String
    #   resp.cloud_exadata_infrastructure.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.cloud_exadata_infrastructure.status_reason #=> String
    #   resp.cloud_exadata_infrastructure.cloud_exadata_infrastructure_arn #=> String
    #   resp.cloud_exadata_infrastructure.activated_storage_count #=> Integer
    #   resp.cloud_exadata_infrastructure.additional_storage_count #=> Integer
    #   resp.cloud_exadata_infrastructure.available_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure.availability_zone #=> String
    #   resp.cloud_exadata_infrastructure.availability_zone_id #=> String
    #   resp.cloud_exadata_infrastructure.compute_count #=> Integer
    #   resp.cloud_exadata_infrastructure.cpu_count #=> Integer
    #   resp.cloud_exadata_infrastructure.customer_contacts_to_send_to_oci #=> Array
    #   resp.cloud_exadata_infrastructure.customer_contacts_to_send_to_oci[0].email #=> String
    #   resp.cloud_exadata_infrastructure.data_storage_size_in_t_bs #=> Float
    #   resp.cloud_exadata_infrastructure.db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure.db_server_version #=> String
    #   resp.cloud_exadata_infrastructure.last_maintenance_run_id #=> String
    #   resp.cloud_exadata_infrastructure.maintenance_window.custom_action_timeout_in_mins #=> Integer
    #   resp.cloud_exadata_infrastructure.maintenance_window.days_of_week #=> Array
    #   resp.cloud_exadata_infrastructure.maintenance_window.days_of_week[0].name #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.cloud_exadata_infrastructure.maintenance_window.hours_of_day #=> Array
    #   resp.cloud_exadata_infrastructure.maintenance_window.hours_of_day[0] #=> Integer
    #   resp.cloud_exadata_infrastructure.maintenance_window.is_custom_action_timeout_enabled #=> Boolean
    #   resp.cloud_exadata_infrastructure.maintenance_window.lead_time_in_weeks #=> Integer
    #   resp.cloud_exadata_infrastructure.maintenance_window.months #=> Array
    #   resp.cloud_exadata_infrastructure.maintenance_window.months[0].name #=> String, one of "JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"
    #   resp.cloud_exadata_infrastructure.maintenance_window.patching_mode #=> String, one of "ROLLING", "NONROLLING"
    #   resp.cloud_exadata_infrastructure.maintenance_window.preference #=> String, one of "NO_PREFERENCE", "CUSTOM_PREFERENCE"
    #   resp.cloud_exadata_infrastructure.maintenance_window.skip_ru #=> Boolean
    #   resp.cloud_exadata_infrastructure.maintenance_window.weeks_of_month #=> Array
    #   resp.cloud_exadata_infrastructure.maintenance_window.weeks_of_month[0] #=> Integer
    #   resp.cloud_exadata_infrastructure.max_cpu_count #=> Integer
    #   resp.cloud_exadata_infrastructure.max_data_storage_in_t_bs #=> Float
    #   resp.cloud_exadata_infrastructure.max_db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure.max_memory_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure.memory_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure.monthly_db_server_version #=> String
    #   resp.cloud_exadata_infrastructure.monthly_storage_server_version #=> String
    #   resp.cloud_exadata_infrastructure.next_maintenance_run_id #=> String
    #   resp.cloud_exadata_infrastructure.oci_resource_anchor_name #=> String
    #   resp.cloud_exadata_infrastructure.oci_url #=> String
    #   resp.cloud_exadata_infrastructure.ocid #=> String
    #   resp.cloud_exadata_infrastructure.shape #=> String
    #   resp.cloud_exadata_infrastructure.storage_count #=> Integer
    #   resp.cloud_exadata_infrastructure.storage_server_version #=> String
    #   resp.cloud_exadata_infrastructure.created_at #=> Time
    #   resp.cloud_exadata_infrastructure.total_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure.percent_progress #=> Float
    #   resp.cloud_exadata_infrastructure.database_server_type #=> String
    #   resp.cloud_exadata_infrastructure.storage_server_type #=> String
    #   resp.cloud_exadata_infrastructure.compute_model #=> String, one of "ECPU", "OCPU"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetCloudExadataInfrastructure AWS API Documentation
    #
    # @overload get_cloud_exadata_infrastructure(params = {})
    # @param [Hash] params ({})
    def get_cloud_exadata_infrastructure(params = {}, options = {})
      req = build_request(:get_cloud_exadata_infrastructure, params)
      req.send_request(options)
    end

    # Retrieves information about unallocated resources in a specified Cloud
    # Exadata Infrastructure.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Cloud Exadata infrastructure for which to
    #   retrieve unallocated resources.
    #
    # @option params [Array<String>] :db_servers
    #   The database servers to include in the unallocated resources query.
    #
    # @return [Types::GetCloudExadataInfrastructureUnallocatedResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudExadataInfrastructureUnallocatedResourcesOutput#cloud_exadata_infrastructure_unallocated_resources #cloud_exadata_infrastructure_unallocated_resources} => Types::CloudExadataInfrastructureUnallocatedResources
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_exadata_infrastructure_unallocated_resources({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     db_servers: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_exadata_infrastructure_unallocated_resources.cloud_autonomous_vm_clusters #=> Array
    #   resp.cloud_exadata_infrastructure_unallocated_resources.cloud_autonomous_vm_clusters[0].cloud_autonomous_vm_cluster_id #=> String
    #   resp.cloud_exadata_infrastructure_unallocated_resources.cloud_autonomous_vm_clusters[0].unallocated_adb_storage_in_t_bs #=> Float
    #   resp.cloud_exadata_infrastructure_unallocated_resources.cloud_exadata_infrastructure_display_name #=> String
    #   resp.cloud_exadata_infrastructure_unallocated_resources.exadata_storage_in_t_bs #=> Float
    #   resp.cloud_exadata_infrastructure_unallocated_resources.cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_exadata_infrastructure_unallocated_resources.local_storage_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure_unallocated_resources.memory_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructure_unallocated_resources.ocpus #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetCloudExadataInfrastructureUnallocatedResources AWS API Documentation
    #
    # @overload get_cloud_exadata_infrastructure_unallocated_resources(params = {})
    # @param [Hash] params ({})
    def get_cloud_exadata_infrastructure_unallocated_resources(params = {}, options = {})
      req = build_request(:get_cloud_exadata_infrastructure_unallocated_resources, params)
      req.send_request(options)
    end

    # Returns information about the specified VM cluster.
    #
    # @option params [required, String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster.
    #
    # @return [Types::GetCloudVmClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCloudVmClusterOutput#cloud_vm_cluster #cloud_vm_cluster} => Types::CloudVmCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cloud_vm_cluster({
    #     cloud_vm_cluster_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cloud_vm_cluster.cloud_vm_cluster_id #=> String
    #   resp.cloud_vm_cluster.display_name #=> String
    #   resp.cloud_vm_cluster.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.cloud_vm_cluster.status_reason #=> String
    #   resp.cloud_vm_cluster.cloud_vm_cluster_arn #=> String
    #   resp.cloud_vm_cluster.cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_vm_cluster.cloud_exadata_infrastructure_arn #=> String
    #   resp.cloud_vm_cluster.cluster_name #=> String
    #   resp.cloud_vm_cluster.cpu_core_count #=> Integer
    #   resp.cloud_vm_cluster.data_collection_options.is_diagnostics_events_enabled #=> Boolean
    #   resp.cloud_vm_cluster.data_collection_options.is_health_monitoring_enabled #=> Boolean
    #   resp.cloud_vm_cluster.data_collection_options.is_incident_logs_enabled #=> Boolean
    #   resp.cloud_vm_cluster.data_storage_size_in_t_bs #=> Float
    #   resp.cloud_vm_cluster.db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_vm_cluster.db_servers #=> Array
    #   resp.cloud_vm_cluster.db_servers[0] #=> String
    #   resp.cloud_vm_cluster.disk_redundancy #=> String, one of "HIGH", "NORMAL"
    #   resp.cloud_vm_cluster.gi_version #=> String
    #   resp.cloud_vm_cluster.hostname #=> String
    #   resp.cloud_vm_cluster.iorm_config_cache.db_plans #=> Array
    #   resp.cloud_vm_cluster.iorm_config_cache.db_plans[0].db_name #=> String
    #   resp.cloud_vm_cluster.iorm_config_cache.db_plans[0].flash_cache_limit #=> String
    #   resp.cloud_vm_cluster.iorm_config_cache.db_plans[0].share #=> Integer
    #   resp.cloud_vm_cluster.iorm_config_cache.lifecycle_details #=> String
    #   resp.cloud_vm_cluster.iorm_config_cache.lifecycle_state #=> String, one of "BOOTSTRAPPING", "DISABLED", "ENABLED", "FAILED", "UPDATING"
    #   resp.cloud_vm_cluster.iorm_config_cache.objective #=> String, one of "AUTO", "BALANCED", "BASIC", "HIGH_THROUGHPUT", "LOW_LATENCY"
    #   resp.cloud_vm_cluster.is_local_backup_enabled #=> Boolean
    #   resp.cloud_vm_cluster.is_sparse_diskgroup_enabled #=> Boolean
    #   resp.cloud_vm_cluster.last_update_history_entry_id #=> String
    #   resp.cloud_vm_cluster.license_model #=> String, one of "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
    #   resp.cloud_vm_cluster.listener_port #=> Integer
    #   resp.cloud_vm_cluster.memory_size_in_g_bs #=> Integer
    #   resp.cloud_vm_cluster.node_count #=> Integer
    #   resp.cloud_vm_cluster.ocid #=> String
    #   resp.cloud_vm_cluster.oci_resource_anchor_name #=> String
    #   resp.cloud_vm_cluster.oci_url #=> String
    #   resp.cloud_vm_cluster.domain #=> String
    #   resp.cloud_vm_cluster.scan_dns_name #=> String
    #   resp.cloud_vm_cluster.scan_dns_record_id #=> String
    #   resp.cloud_vm_cluster.scan_ip_ids #=> Array
    #   resp.cloud_vm_cluster.scan_ip_ids[0] #=> String
    #   resp.cloud_vm_cluster.shape #=> String
    #   resp.cloud_vm_cluster.ssh_public_keys #=> Array
    #   resp.cloud_vm_cluster.ssh_public_keys[0] #=> String
    #   resp.cloud_vm_cluster.storage_size_in_g_bs #=> Integer
    #   resp.cloud_vm_cluster.system_version #=> String
    #   resp.cloud_vm_cluster.created_at #=> Time
    #   resp.cloud_vm_cluster.time_zone #=> String
    #   resp.cloud_vm_cluster.vip_ids #=> Array
    #   resp.cloud_vm_cluster.vip_ids[0] #=> String
    #   resp.cloud_vm_cluster.odb_network_id #=> String
    #   resp.cloud_vm_cluster.odb_network_arn #=> String
    #   resp.cloud_vm_cluster.percent_progress #=> Float
    #   resp.cloud_vm_cluster.compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.cloud_vm_cluster.iam_roles #=> Array
    #   resp.cloud_vm_cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.cloud_vm_cluster.iam_roles[0].status #=> String, one of "ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"
    #   resp.cloud_vm_cluster.iam_roles[0].status_reason #=> String
    #   resp.cloud_vm_cluster.iam_roles[0].aws_integration #=> String, one of "KmsTde"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetCloudVmCluster AWS API Documentation
    #
    # @overload get_cloud_vm_cluster(params = {})
    # @param [Hash] params ({})
    def get_cloud_vm_cluster(params = {}, options = {})
      req = build_request(:get_cloud_vm_cluster, params)
      req.send_request(options)
    end

    # Returns information about the specified DB node.
    #
    # @option params [String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster that contains the DB node. You
    #   must specify either this parameter or `exadbVmClusterId`.
    #
    # @option params [String] :exadb_vm_cluster_id
    #   The unique identifier of the Exascale VM cluster that contains the DB
    #   node. You must specify either this parameter or `cloudVmClusterId`.
    #
    # @option params [required, String] :db_node_id
    #   The unique identifier of the DB node to retrieve information about.
    #
    # @return [Types::GetDbNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDbNodeOutput#db_node #db_node} => Types::DbNode
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_db_node({
    #     cloud_vm_cluster_id: "ResourceId",
    #     exadb_vm_cluster_id: "ResourceId",
    #     db_node_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_node.db_node_id #=> String
    #   resp.db_node.db_node_arn #=> String
    #   resp.db_node.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"
    #   resp.db_node.status_reason #=> String
    #   resp.db_node.additional_details #=> String
    #   resp.db_node.backup_ip_id #=> String
    #   resp.db_node.backup_vnic_2_id #=> String
    #   resp.db_node.backup_vnic_id #=> String
    #   resp.db_node.cpu_core_count #=> Integer
    #   resp.db_node.db_node_storage_size_in_g_bs #=> Integer
    #   resp.db_node.db_server_id #=> String
    #   resp.db_node.db_system_id #=> String
    #   resp.db_node.fault_domain #=> String
    #   resp.db_node.host_ip_id #=> String
    #   resp.db_node.hostname #=> String
    #   resp.db_node.ocid #=> String
    #   resp.db_node.oci_resource_anchor_name #=> String
    #   resp.db_node.maintenance_type #=> String, one of "VMDB_REBOOT_MIGRATION"
    #   resp.db_node.memory_size_in_g_bs #=> Integer
    #   resp.db_node.software_storage_size_in_gb #=> Integer
    #   resp.db_node.created_at #=> Time
    #   resp.db_node.time_maintenance_window_end #=> String
    #   resp.db_node.time_maintenance_window_start #=> String
    #   resp.db_node.total_cpu_core_count #=> Integer
    #   resp.db_node.vnic2_id #=> String
    #   resp.db_node.vnic_id #=> String
    #   resp.db_node.private_ip_address #=> String
    #   resp.db_node.floating_ip_address #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetDbNode AWS API Documentation
    #
    # @overload get_db_node(params = {})
    # @param [Hash] params ({})
    def get_db_node(params = {}, options = {})
      req = build_request(:get_db_node, params)
      req.send_request(options)
    end

    # Returns information about the specified database server.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Oracle Exadata infrastructure that
    #   contains the database server.
    #
    # @option params [required, String] :db_server_id
    #   The unique identifier of the database server to retrieve information
    #   about.
    #
    # @return [Types::GetDbServerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDbServerOutput#db_server #db_server} => Types::DbServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_db_server({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     db_server_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_server.db_server_id #=> String
    #   resp.db_server.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.db_server.status_reason #=> String
    #   resp.db_server.cpu_core_count #=> Integer
    #   resp.db_server.db_node_storage_size_in_g_bs #=> Integer
    #   resp.db_server.db_server_patching_details.estimated_patch_duration #=> Integer
    #   resp.db_server.db_server_patching_details.patching_status #=> String, one of "COMPLETE", "FAILED", "MAINTENANCE_IN_PROGRESS", "SCHEDULED"
    #   resp.db_server.db_server_patching_details.time_patching_ended #=> String
    #   resp.db_server.db_server_patching_details.time_patching_started #=> String
    #   resp.db_server.display_name #=> String
    #   resp.db_server.exadata_infrastructure_id #=> String
    #   resp.db_server.ocid #=> String
    #   resp.db_server.oci_resource_anchor_name #=> String
    #   resp.db_server.max_cpu_count #=> Integer
    #   resp.db_server.max_db_node_storage_in_g_bs #=> Integer
    #   resp.db_server.max_memory_in_g_bs #=> Integer
    #   resp.db_server.memory_size_in_g_bs #=> Integer
    #   resp.db_server.shape #=> String
    #   resp.db_server.created_at #=> Time
    #   resp.db_server.vm_cluster_ids #=> Array
    #   resp.db_server.vm_cluster_ids[0] #=> String
    #   resp.db_server.compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.db_server.autonomous_vm_cluster_ids #=> Array
    #   resp.db_server.autonomous_vm_cluster_ids[0] #=> String
    #   resp.db_server.autonomous_virtual_machine_ids #=> Array
    #   resp.db_server.autonomous_virtual_machine_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetDbServer AWS API Documentation
    #
    # @overload get_db_server(params = {})
    # @param [Hash] params ({})
    def get_db_server(params = {}, options = {})
      req = build_request(:get_db_server, params)
      req.send_request(options)
    end

    # Returns information about the specified Exascale VM cluster.
    #
    # @option params [required, String] :exadb_vm_cluster_id
    #   The unique identifier of the Exascale VM cluster.
    #
    # @return [Types::GetExadbVmClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExadbVmClusterOutput#exadb_vm_cluster #exadb_vm_cluster} => Types::ExadbVmCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_exadb_vm_cluster({
    #     exadb_vm_cluster_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.exadb_vm_cluster.exadb_vm_cluster_id #=> String
    #   resp.exadb_vm_cluster.cluster_name #=> String
    #   resp.exadb_vm_cluster.created_at #=> Time
    #   resp.exadb_vm_cluster.data_collection_options.is_diagnostics_events_enabled #=> Boolean
    #   resp.exadb_vm_cluster.data_collection_options.is_health_monitoring_enabled #=> Boolean
    #   resp.exadb_vm_cluster.data_collection_options.is_incident_logs_enabled #=> Boolean
    #   resp.exadb_vm_cluster.display_name #=> String
    #   resp.exadb_vm_cluster.domain #=> String
    #   resp.exadb_vm_cluster.enabled_ecpu_count #=> Integer
    #   resp.exadb_vm_cluster.exadb_vm_cluster_arn #=> String
    #   resp.exadb_vm_cluster.exascale_db_storage_vault_arn #=> String
    #   resp.exadb_vm_cluster.exascale_db_storage_vault_id #=> String
    #   resp.exadb_vm_cluster.gi_version #=> String
    #   resp.exadb_vm_cluster.grid_image_id #=> String
    #   resp.exadb_vm_cluster.grid_image_type #=> String, one of "RELEASE_UPDATE", "CUSTOM_IMAGE"
    #   resp.exadb_vm_cluster.hostname #=> String
    #   resp.exadb_vm_cluster.iam_roles #=> Array
    #   resp.exadb_vm_cluster.iam_roles[0].iam_role_arn #=> String
    #   resp.exadb_vm_cluster.iam_roles[0].status #=> String, one of "ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"
    #   resp.exadb_vm_cluster.iam_roles[0].status_reason #=> String
    #   resp.exadb_vm_cluster.iam_roles[0].aws_integration #=> String, one of "KmsTde"
    #   resp.exadb_vm_cluster.iorm_config_cache.db_plans #=> Array
    #   resp.exadb_vm_cluster.iorm_config_cache.db_plans[0].db_name #=> String
    #   resp.exadb_vm_cluster.iorm_config_cache.db_plans[0].flash_cache_limit #=> String
    #   resp.exadb_vm_cluster.iorm_config_cache.db_plans[0].share #=> Integer
    #   resp.exadb_vm_cluster.iorm_config_cache.lifecycle_details #=> String
    #   resp.exadb_vm_cluster.iorm_config_cache.lifecycle_state #=> String, one of "BOOTSTRAPPING", "DISABLED", "ENABLED", "FAILED", "UPDATING"
    #   resp.exadb_vm_cluster.iorm_config_cache.objective #=> String, one of "AUTO", "BALANCED", "BASIC", "HIGH_THROUGHPUT", "LOW_LATENCY"
    #   resp.exadb_vm_cluster.last_update_history_entry_id #=> String
    #   resp.exadb_vm_cluster.license_model #=> String, one of "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
    #   resp.exadb_vm_cluster.listener_port #=> Integer
    #   resp.exadb_vm_cluster.memory_size_in_g_bs #=> Integer
    #   resp.exadb_vm_cluster.node_count #=> Integer
    #   resp.exadb_vm_cluster.ocid #=> String
    #   resp.exadb_vm_cluster.oci_resource_anchor_name #=> String
    #   resp.exadb_vm_cluster.oci_url #=> String
    #   resp.exadb_vm_cluster.odb_network_arn #=> String
    #   resp.exadb_vm_cluster.odb_network_id #=> String
    #   resp.exadb_vm_cluster.percent_progress #=> Float
    #   resp.exadb_vm_cluster.scan_dns_name #=> String
    #   resp.exadb_vm_cluster.scan_dns_record_id #=> String
    #   resp.exadb_vm_cluster.scan_ip_ids #=> Array
    #   resp.exadb_vm_cluster.scan_ip_ids[0] #=> String
    #   resp.exadb_vm_cluster.scan_listener_port_tcp #=> Integer
    #   resp.exadb_vm_cluster.scan_listener_port_tcp_ssl #=> Integer
    #   resp.exadb_vm_cluster.shape #=> String
    #   resp.exadb_vm_cluster.shape_attribute #=> String, one of "SMART_STORAGE", "BLOCK_STORAGE"
    #   resp.exadb_vm_cluster.snapshot_file_system_storage.total_size_in_g_bs #=> Integer
    #   resp.exadb_vm_cluster.ssh_public_keys #=> Array
    #   resp.exadb_vm_cluster.ssh_public_keys[0] #=> String
    #   resp.exadb_vm_cluster.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.exadb_vm_cluster.status_reason #=> String
    #   resp.exadb_vm_cluster.system_version #=> String
    #   resp.exadb_vm_cluster.time_zone #=> String
    #   resp.exadb_vm_cluster.total_ecpu_count #=> Integer
    #   resp.exadb_vm_cluster.total_file_system_storage.total_size_in_g_bs #=> Integer
    #   resp.exadb_vm_cluster.vip_ids #=> Array
    #   resp.exadb_vm_cluster.vip_ids[0] #=> String
    #   resp.exadb_vm_cluster.vm_file_system_storage.total_size_in_g_bs #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetExadbVmCluster AWS API Documentation
    #
    # @overload get_exadb_vm_cluster(params = {})
    # @param [Hash] params ({})
    def get_exadb_vm_cluster(params = {}, options = {})
      req = build_request(:get_exadb_vm_cluster, params)
      req.send_request(options)
    end

    # Returns information about the specified Exascale storage vault.
    #
    # @option params [required, String] :exascale_db_storage_vault_id
    #   The unique identifier of the Exascale storage vault.
    #
    # @return [Types::GetExascaleDbStorageVaultOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExascaleDbStorageVaultOutput#exascale_db_storage_vault #exascale_db_storage_vault} => Types::ExascaleDbStorageVault
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_exascale_db_storage_vault({
    #     exascale_db_storage_vault_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.exascale_db_storage_vault.exascale_db_storage_vault_id #=> String
    #   resp.exascale_db_storage_vault.additional_flash_cache_in_percent #=> Integer
    #   resp.exascale_db_storage_vault.attached_shape_attributes #=> Array
    #   resp.exascale_db_storage_vault.attached_shape_attributes[0] #=> String, one of "SMART_STORAGE", "BLOCK_STORAGE"
    #   resp.exascale_db_storage_vault.autoscale_limit_in_g_bs #=> Integer
    #   resp.exascale_db_storage_vault.availability_zone #=> String
    #   resp.exascale_db_storage_vault.availability_zone_id #=> String
    #   resp.exascale_db_storage_vault.created_at #=> Time
    #   resp.exascale_db_storage_vault.description #=> String
    #   resp.exascale_db_storage_vault.display_name #=> String
    #   resp.exascale_db_storage_vault.vm_cluster_arns #=> Array
    #   resp.exascale_db_storage_vault.vm_cluster_arns[0] #=> String
    #   resp.exascale_db_storage_vault.vm_cluster_count #=> Integer
    #   resp.exascale_db_storage_vault.vm_cluster_ids #=> Array
    #   resp.exascale_db_storage_vault.vm_cluster_ids[0] #=> String
    #   resp.exascale_db_storage_vault.exascale_db_storage_vault_arn #=> String
    #   resp.exascale_db_storage_vault.high_capacity_database_storage.available_size_in_g_bs #=> Integer
    #   resp.exascale_db_storage_vault.high_capacity_database_storage.total_size_in_g_bs #=> Integer
    #   resp.exascale_db_storage_vault.is_autoscale_enabled #=> Boolean
    #   resp.exascale_db_storage_vault.ocid #=> String
    #   resp.exascale_db_storage_vault.oci_resource_anchor_name #=> String
    #   resp.exascale_db_storage_vault.oci_url #=> String
    #   resp.exascale_db_storage_vault.percent_progress #=> Float
    #   resp.exascale_db_storage_vault.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.exascale_db_storage_vault.status_reason #=> String
    #   resp.exascale_db_storage_vault.time_zone #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetExascaleDbStorageVault AWS API Documentation
    #
    # @overload get_exascale_db_storage_vault(params = {})
    # @param [Hash] params ({})
    def get_exascale_db_storage_vault(params = {}, options = {})
      req = build_request(:get_exascale_db_storage_vault, params)
      req.send_request(options)
    end

    # Returns the tenancy activation link and onboarding status for your
    # Amazon Web Services account.
    #
    # @return [Types::GetOciOnboardingStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOciOnboardingStatusOutput#status #status} => String
    #   * {Types::GetOciOnboardingStatusOutput#existing_tenancy_activation_link #existing_tenancy_activation_link} => String
    #   * {Types::GetOciOnboardingStatusOutput#new_tenancy_activation_link #new_tenancy_activation_link} => String
    #   * {Types::GetOciOnboardingStatusOutput#oci_identity_domain #oci_identity_domain} => Types::OciIdentityDomain
    #   * {Types::GetOciOnboardingStatusOutput#autonomous_database_oci_integration_iam_roles #autonomous_database_oci_integration_iam_roles} => Array&lt;Types::OciIamRole&gt;
    #   * {Types::GetOciOnboardingStatusOutput#linked_oci_tenancy_id #linked_oci_tenancy_id} => String
    #   * {Types::GetOciOnboardingStatusOutput#linked_oci_compartment_id #linked_oci_compartment_id} => String
    #   * {Types::GetOciOnboardingStatusOutput#subscription_errors #subscription_errors} => Array&lt;Types::SubscriptionError&gt;
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "NOT_STARTED", "PENDING_LINK_GENERATION", "PENDING_CUSTOMER_ACTION", "PENDING_INITIALIZATION", "ACTIVATING", "ACTIVE_IN_HOME_REGION", "ACTIVE", "ACTIVE_LIMITED", "FAILED", "PUBLIC_OFFER_UNSUPPORTED", "SUSPENDED", "CANCELED"
    #   resp.existing_tenancy_activation_link #=> String
    #   resp.new_tenancy_activation_link #=> String
    #   resp.oci_identity_domain.oci_identity_domain_id #=> String
    #   resp.oci_identity_domain.oci_identity_domain_resource_url #=> String
    #   resp.oci_identity_domain.oci_identity_domain_url #=> String
    #   resp.oci_identity_domain.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.oci_identity_domain.status_reason #=> String
    #   resp.oci_identity_domain.account_setup_cloud_formation_url #=> String
    #   resp.autonomous_database_oci_integration_iam_roles #=> Array
    #   resp.autonomous_database_oci_integration_iam_roles[0].iam_role_arn #=> String
    #   resp.autonomous_database_oci_integration_iam_roles[0].aws_integration #=> String, one of "KmsTde", "SecretsManager"
    #   resp.autonomous_database_oci_integration_iam_roles[0].status #=> String, one of "PROVISIONING", "AVAILABLE", "PROVISION_FAILED", "TERMINATING", "TERMINATE_FAILED"
    #   resp.autonomous_database_oci_integration_iam_roles[0].status_reason #=> String
    #   resp.linked_oci_tenancy_id #=> String
    #   resp.linked_oci_compartment_id #=> String
    #   resp.subscription_errors #=> Array
    #   resp.subscription_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetOciOnboardingStatus AWS API Documentation
    #
    # @overload get_oci_onboarding_status(params = {})
    # @param [Hash] params ({})
    def get_oci_onboarding_status(params = {}, options = {})
      req = build_request(:get_oci_onboarding_status, params)
      req.send_request(options)
    end

    # Returns information about the specified ODB network.
    #
    # @option params [required, String] :odb_network_id
    #   The unique identifier of the ODB network.
    #
    # @return [Types::GetOdbNetworkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOdbNetworkOutput#odb_network #odb_network} => Types::OdbNetwork
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_odb_network({
    #     odb_network_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.odb_network.odb_network_id #=> String
    #   resp.odb_network.display_name #=> String
    #   resp.odb_network.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.odb_network.status_reason #=> String
    #   resp.odb_network.odb_network_arn #=> String
    #   resp.odb_network.availability_zone #=> String
    #   resp.odb_network.availability_zone_id #=> String
    #   resp.odb_network.client_subnet_cidr #=> String
    #   resp.odb_network.backup_subnet_cidr #=> String
    #   resp.odb_network.custom_domain_name #=> String
    #   resp.odb_network.default_dns_prefix #=> String
    #   resp.odb_network.peered_cidrs #=> Array
    #   resp.odb_network.peered_cidrs[0] #=> String
    #   resp.odb_network.oci_network_anchor_id #=> String
    #   resp.odb_network.oci_network_anchor_url #=> String
    #   resp.odb_network.oci_resource_anchor_name #=> String
    #   resp.odb_network.oci_vcn_id #=> String
    #   resp.odb_network.oci_vcn_url #=> String
    #   resp.odb_network.oci_dns_forwarding_configs #=> Array
    #   resp.odb_network.oci_dns_forwarding_configs[0].domain_name #=> String
    #   resp.odb_network.oci_dns_forwarding_configs[0].oci_dns_listener_ip #=> String
    #   resp.odb_network.created_at #=> Time
    #   resp.odb_network.percent_progress #=> Float
    #   resp.odb_network.managed_services.service_network_arn #=> String
    #   resp.odb_network.managed_services.resource_gateway_arn #=> String
    #   resp.odb_network.managed_services.managed_services_ipv_4_cidrs #=> Array
    #   resp.odb_network.managed_services.managed_services_ipv_4_cidrs[0] #=> String
    #   resp.odb_network.managed_services.service_network_endpoint.vpc_endpoint_id #=> String
    #   resp.odb_network.managed_services.service_network_endpoint.vpc_endpoint_type #=> String, one of "SERVICENETWORK"
    #   resp.odb_network.managed_services.managed_s3_backup_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_network.managed_services.managed_s3_backup_access.ipv4_addresses #=> Array
    #   resp.odb_network.managed_services.managed_s3_backup_access.ipv4_addresses[0] #=> String
    #   resp.odb_network.managed_services.zero_etl_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_network.managed_services.zero_etl_access.cidr #=> String
    #   resp.odb_network.managed_services.s3_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_network.managed_services.s3_access.ipv4_addresses #=> Array
    #   resp.odb_network.managed_services.s3_access.ipv4_addresses[0] #=> String
    #   resp.odb_network.managed_services.s3_access.domain_name #=> String
    #   resp.odb_network.managed_services.s3_access.s3_policy_document #=> String
    #   resp.odb_network.managed_services.sts_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_network.managed_services.sts_access.ipv4_addresses #=> Array
    #   resp.odb_network.managed_services.sts_access.ipv4_addresses[0] #=> String
    #   resp.odb_network.managed_services.sts_access.domain_name #=> String
    #   resp.odb_network.managed_services.sts_access.sts_policy_document #=> String
    #   resp.odb_network.managed_services.kms_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_network.managed_services.kms_access.ipv4_addresses #=> Array
    #   resp.odb_network.managed_services.kms_access.ipv4_addresses[0] #=> String
    #   resp.odb_network.managed_services.kms_access.domain_name #=> String
    #   resp.odb_network.managed_services.kms_access.kms_policy_document #=> String
    #   resp.odb_network.managed_services.cross_region_s3_restore_sources_access #=> Array
    #   resp.odb_network.managed_services.cross_region_s3_restore_sources_access[0].region #=> String
    #   resp.odb_network.managed_services.cross_region_s3_restore_sources_access[0].ipv4_addresses #=> Array
    #   resp.odb_network.managed_services.cross_region_s3_restore_sources_access[0].ipv4_addresses[0] #=> String
    #   resp.odb_network.managed_services.cross_region_s3_restore_sources_access[0].status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_network.ec2_placement_group_ids #=> Array
    #   resp.odb_network.ec2_placement_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetOdbNetwork AWS API Documentation
    #
    # @overload get_odb_network(params = {})
    # @param [Hash] params ({})
    def get_odb_network(params = {}, options = {})
      req = build_request(:get_odb_network, params)
      req.send_request(options)
    end

    # Retrieves information about an ODB peering connection.
    #
    # @option params [required, String] :odb_peering_connection_id
    #   The unique identifier of the ODB peering connection to retrieve
    #   information about.
    #
    # @return [Types::GetOdbPeeringConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOdbPeeringConnectionOutput#odb_peering_connection #odb_peering_connection} => Types::OdbPeeringConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_odb_peering_connection({
    #     odb_peering_connection_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.odb_peering_connection.odb_peering_connection_id #=> String
    #   resp.odb_peering_connection.display_name #=> String
    #   resp.odb_peering_connection.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.odb_peering_connection.status_reason #=> String
    #   resp.odb_peering_connection.odb_peering_connection_arn #=> String
    #   resp.odb_peering_connection.odb_network_arn #=> String
    #   resp.odb_peering_connection.peer_network_arn #=> String
    #   resp.odb_peering_connection.odb_peering_connection_type #=> String
    #   resp.odb_peering_connection.peer_network_cidrs #=> Array
    #   resp.odb_peering_connection.peer_network_cidrs[0] #=> String
    #   resp.odb_peering_connection.created_at #=> Time
    #   resp.odb_peering_connection.percent_progress #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/GetOdbPeeringConnection AWS API Documentation
    #
    # @overload get_odb_peering_connection(params = {})
    # @param [Hash] params ({})
    def get_odb_peering_connection(params = {}, options = {})
      req = build_request(:get_odb_peering_connection, params)
      req.send_request(options)
    end

    # Initializes the ODB service for the first time in an account.
    #
    # @option params [Boolean] :oci_identity_domain
    #   The Oracle Cloud Infrastructure (OCI) identity domain configuration
    #   for service initialization.
    #
    # @option params [String] :autonomous_database_oci_aws_secrets_manager_integration
    #   Specifies whether to enable or disable the OCI service-account role
    #   for Amazon Web Services Secrets Manager integration with Autonomous
    #   Database.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initialize_service({
    #     oci_identity_domain: false,
    #     autonomous_database_oci_aws_secrets_manager_integration: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/InitializeService AWS API Documentation
    #
    # @overload initialize_service(params = {})
    # @param [Hash] params ({})
    def initialize_service(params = {}, options = {})
      req = build_request(:initialize_service, params)
      req.send_request(options)
    end

    # Lists the backups of the specified Autonomous Database.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database whose backups you
    #   want to list.
    #
    # @option params [String] :status
    #   The status of the Autonomous Database backups to return results for.
    #
    # @option params [String] :type
    #   The type of the Autonomous Database backups to return results for.
    #
    # @return [Types::ListAutonomousDatabaseBackupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutonomousDatabaseBackupsOutput#next_token #next_token} => String
    #   * {Types::ListAutonomousDatabaseBackupsOutput#autonomous_database_backups #autonomous_database_backups} => Array&lt;Types::AutonomousDatabaseBackupSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_autonomous_database_backups({
    #     max_results: 1,
    #     next_token: "ListAutonomousDatabaseBackupsInputNextTokenString",
    #     autonomous_database_id: "ResourceId", # required
    #     status: "ACTIVE", # accepts ACTIVE, CREATING, UPDATING, DELETING, FAILED
    #     type: "INCREMENTAL", # accepts INCREMENTAL, FULL, LONGTERM, VIRTUAL_FULL, CUMULATIVE_INCREMENTAL, ROLL_FORWARD_IMAGE_COPY
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.autonomous_database_backups #=> Array
    #   resp.autonomous_database_backups[0].autonomous_database_backup_id #=> String
    #   resp.autonomous_database_backups[0].autonomous_database_backup_arn #=> String
    #   resp.autonomous_database_backups[0].autonomous_database_id #=> String
    #   resp.autonomous_database_backups[0].ocid #=> String
    #   resp.autonomous_database_backups[0].display_name #=> String
    #   resp.autonomous_database_backups[0].db_version #=> String
    #   resp.autonomous_database_backups[0].status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "FAILED"
    #   resp.autonomous_database_backups[0].status_reason #=> String
    #   resp.autonomous_database_backups[0].is_automatic #=> Boolean
    #   resp.autonomous_database_backups[0].retention_period_in_days #=> Integer
    #   resp.autonomous_database_backups[0].size_in_t_bs #=> Float
    #   resp.autonomous_database_backups[0].time_available_till #=> Time
    #   resp.autonomous_database_backups[0].time_started #=> Time
    #   resp.autonomous_database_backups[0].time_ended #=> Time
    #   resp.autonomous_database_backups[0].type #=> String, one of "INCREMENTAL", "FULL", "LONGTERM", "VIRTUAL_FULL", "CUMULATIVE_INCREMENTAL", "ROLL_FORWARD_IMAGE_COPY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListAutonomousDatabaseBackups AWS API Documentation
    #
    # @overload list_autonomous_database_backups(params = {})
    # @param [Hash] params ({})
    def list_autonomous_database_backups(params = {}, options = {})
      req = build_request(:list_autonomous_database_backups, params)
      req.send_request(options)
    end

    # Lists the available character sets for Autonomous Databases.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [String] :character_set_type
    #   The type of character set to return results for, either the database
    #   character set or the national character set.
    #
    # @return [Types::ListAutonomousDatabaseCharacterSetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutonomousDatabaseCharacterSetsOutput#next_token #next_token} => String
    #   * {Types::ListAutonomousDatabaseCharacterSetsOutput#autonomous_database_character_sets #autonomous_database_character_sets} => Array&lt;Types::AutonomousDatabaseCharacterSetSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_autonomous_database_character_sets({
    #     max_results: 1,
    #     next_token: "ListAutonomousDatabaseCharacterSetsInputNextTokenString",
    #     character_set_type: "DATABASE", # accepts DATABASE, NATIONAL
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.autonomous_database_character_sets #=> Array
    #   resp.autonomous_database_character_sets[0].character_set #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListAutonomousDatabaseCharacterSets AWS API Documentation
    #
    # @overload list_autonomous_database_character_sets(params = {})
    # @param [Hash] params ({})
    def list_autonomous_database_character_sets(params = {}, options = {})
      req = build_request(:list_autonomous_database_character_sets, params)
      req.send_request(options)
    end

    # Lists the clones of the specified Autonomous Database.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the source Autonomous Database whose clones
    #   you want to list.
    #
    # @return [Types::ListAutonomousDatabaseClonesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutonomousDatabaseClonesOutput#next_token #next_token} => String
    #   * {Types::ListAutonomousDatabaseClonesOutput#autonomous_database_clones #autonomous_database_clones} => Array&lt;Types::AutonomousDatabaseSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_autonomous_database_clones({
    #     max_results: 1,
    #     next_token: "ListAutonomousDatabaseClonesInputNextTokenString",
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.autonomous_database_clones #=> Array
    #   resp.autonomous_database_clones[0].autonomous_database_id #=> String
    #   resp.autonomous_database_clones[0].autonomous_database_arn #=> String
    #   resp.autonomous_database_clones[0].oci_resource_anchor_name #=> String
    #   resp.autonomous_database_clones[0].percent_progress #=> Float
    #   resp.autonomous_database_clones[0].ocid #=> String
    #   resp.autonomous_database_clones[0].oci_url #=> String
    #   resp.autonomous_database_clones[0].display_name #=> String
    #   resp.autonomous_database_clones[0].db_name #=> String
    #   resp.autonomous_database_clones[0].source_id #=> String
    #   resp.autonomous_database_clones[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.autonomous_database_clones[0].status_reason #=> String
    #   resp.autonomous_database_clones[0].database_type #=> String, one of "REGULAR", "CLONE"
    #   resp.autonomous_database_clones[0].db_version #=> String
    #   resp.autonomous_database_clones[0].db_workload #=> String, one of "OLTP", "AJD", "APEX", "LH"
    #   resp.autonomous_database_clones[0].character_set #=> String
    #   resp.autonomous_database_clones[0].ncharacter_set #=> String
    #   resp.autonomous_database_clones[0].database_edition #=> String, one of "STANDARD_EDITION", "ENTERPRISE_EDITION"
    #   resp.autonomous_database_clones[0].license_model #=> String, one of "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
    #   resp.autonomous_database_clones[0].open_mode #=> String, one of "READ_ONLY", "READ_WRITE"
    #   resp.autonomous_database_clones[0].permission_level #=> String, one of "RESTRICTED", "UNRESTRICTED"
    #   resp.autonomous_database_clones[0].is_mtls_connection_required #=> Boolean
    #   resp.autonomous_database_clones[0].autonomous_maintenance_schedule_type #=> String, one of "EARLY", "REGULAR"
    #   resp.autonomous_database_clones[0].net_services_architecture #=> String, one of "DEDICATED", "SHARED"
    #   resp.autonomous_database_clones[0].available_upgrade_versions #=> Array
    #   resp.autonomous_database_clones[0].available_upgrade_versions[0] #=> String
    #   resp.autonomous_database_clones[0].byol_compute_count_limit #=> Integer
    #   resp.autonomous_database_clones[0].connection_string_details.all_connection_strings #=> Hash
    #   resp.autonomous_database_clones[0].connection_string_details.all_connection_strings["String"] #=> String
    #   resp.autonomous_database_clones[0].connection_string_details.dedicated #=> String
    #   resp.autonomous_database_clones[0].connection_string_details.high #=> String
    #   resp.autonomous_database_clones[0].connection_string_details.medium #=> String
    #   resp.autonomous_database_clones[0].connection_string_details.low #=> String
    #   resp.autonomous_database_clones[0].connection_string_details.profiles #=> Array
    #   resp.autonomous_database_clones[0].connection_string_details.profiles[0].consumer_group #=> String
    #   resp.autonomous_database_clones[0].connection_string_details.profiles[0].display_name #=> String
    #   resp.autonomous_database_clones[0].connection_string_details.profiles[0].host_format #=> String
    #   resp.autonomous_database_clones[0].connection_string_details.profiles[0].is_regional #=> Boolean
    #   resp.autonomous_database_clones[0].connection_string_details.profiles[0].protocol #=> String
    #   resp.autonomous_database_clones[0].connection_string_details.profiles[0].session_mode #=> String
    #   resp.autonomous_database_clones[0].connection_string_details.profiles[0].syntax_format #=> String
    #   resp.autonomous_database_clones[0].connection_string_details.profiles[0].tls_authentication #=> String
    #   resp.autonomous_database_clones[0].connection_string_details.profiles[0].value #=> String
    #   resp.autonomous_database_clones[0].service_console_url #=> String
    #   resp.autonomous_database_clones[0].sql_web_developer_url #=> String
    #   resp.autonomous_database_clones[0].customer_contacts #=> Array
    #   resp.autonomous_database_clones[0].customer_contacts[0].email #=> String
    #   resp.autonomous_database_clones[0].apex_details.apex_version #=> String
    #   resp.autonomous_database_clones[0].apex_details.ords_version #=> String
    #   resp.autonomous_database_clones[0].standby_db.availability_domain #=> String
    #   resp.autonomous_database_clones[0].standby_db.lag_time_in_seconds #=> Integer
    #   resp.autonomous_database_clones[0].standby_db.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.autonomous_database_clones[0].standby_db.status_reason #=> String
    #   resp.autonomous_database_clones[0].standby_db.maintenance_target_component #=> String
    #   resp.autonomous_database_clones[0].standby_db.time_data_guard_role_changed #=> Time
    #   resp.autonomous_database_clones[0].standby_db.time_disaster_recovery_role_changed #=> Time
    #   resp.autonomous_database_clones[0].standby_db.time_maintenance_begin #=> Time
    #   resp.autonomous_database_clones[0].standby_db.time_maintenance_end #=> Time
    #   resp.autonomous_database_clones[0].local_standby_db.availability_domain #=> String
    #   resp.autonomous_database_clones[0].local_standby_db.lag_time_in_seconds #=> Integer
    #   resp.autonomous_database_clones[0].local_standby_db.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.autonomous_database_clones[0].local_standby_db.status_reason #=> String
    #   resp.autonomous_database_clones[0].local_standby_db.maintenance_target_component #=> String
    #   resp.autonomous_database_clones[0].local_standby_db.time_data_guard_role_changed #=> Time
    #   resp.autonomous_database_clones[0].local_standby_db.time_disaster_recovery_role_changed #=> Time
    #   resp.autonomous_database_clones[0].local_standby_db.time_maintenance_begin #=> Time
    #   resp.autonomous_database_clones[0].local_standby_db.time_maintenance_end #=> Time
    #   resp.autonomous_database_clones[0].data_safe_status #=> String, one of "REGISTERING", "REGISTERED", "DEREGISTERING", "NOT_REGISTERED", "FAILED"
    #   resp.autonomous_database_clones[0].database_management_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "NOT_ENABLED", "FAILED_ENABLING", "FAILED_DISABLING"
    #   resp.autonomous_database_clones[0].operations_insights_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "NOT_ENABLED", "FAILED_ENABLING", "FAILED_DISABLING"
    #   resp.autonomous_database_clones[0].availability_zone #=> String
    #   resp.autonomous_database_clones[0].availability_zone_id #=> String
    #   resp.autonomous_database_clones[0].maintenance_target_component #=> String
    #   resp.autonomous_database_clones[0].connection_urls.apex_url #=> String
    #   resp.autonomous_database_clones[0].connection_urls.database_transforms_url #=> String
    #   resp.autonomous_database_clones[0].connection_urls.graph_studio_url #=> String
    #   resp.autonomous_database_clones[0].connection_urls.machine_learning_notebook_url #=> String
    #   resp.autonomous_database_clones[0].connection_urls.machine_learning_user_management_url #=> String
    #   resp.autonomous_database_clones[0].connection_urls.mongo_db_url #=> String
    #   resp.autonomous_database_clones[0].connection_urls.ords_url #=> String
    #   resp.autonomous_database_clones[0].connection_urls.spatial_studio_url #=> String
    #   resp.autonomous_database_clones[0].connection_urls.sql_dev_web_url #=> String
    #   resp.autonomous_database_clones[0].db_tools_details #=> Array
    #   resp.autonomous_database_clones[0].db_tools_details[0].is_enabled #=> Boolean
    #   resp.autonomous_database_clones[0].db_tools_details[0].name #=> String
    #   resp.autonomous_database_clones[0].db_tools_details[0].compute_count #=> Float
    #   resp.autonomous_database_clones[0].db_tools_details[0].max_idle_time_in_minutes #=> Integer
    #   resp.autonomous_database_clones[0].scheduled_operations #=> Array
    #   resp.autonomous_database_clones[0].scheduled_operations[0].day_of_week.name #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.autonomous_database_clones[0].scheduled_operations[0].scheduled_start_time #=> String
    #   resp.autonomous_database_clones[0].scheduled_operations[0].scheduled_stop_time #=> String
    #   resp.autonomous_database_clones[0].resource_pool_leader_id #=> String
    #   resp.autonomous_database_clones[0].compute_count #=> Float
    #   resp.autonomous_database_clones[0].compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.autonomous_database_clones[0].cpu_core_count #=> Integer
    #   resp.autonomous_database_clones[0].memory_per_oracle_compute_unit_in_g_bs #=> Integer
    #   resp.autonomous_database_clones[0].provisionable_cpus #=> Array
    #   resp.autonomous_database_clones[0].provisionable_cpus[0] #=> Integer
    #   resp.autonomous_database_clones[0].is_auto_scaling_enabled #=> Boolean
    #   resp.autonomous_database_clones[0].data_storage_size_in_t_bs #=> Float
    #   resp.autonomous_database_clones[0].data_storage_size_in_g_bs #=> Integer
    #   resp.autonomous_database_clones[0].used_data_storage_size_in_t_bs #=> Float
    #   resp.autonomous_database_clones[0].used_data_storage_size_in_g_bs #=> Integer
    #   resp.autonomous_database_clones[0].actual_used_data_storage_size_in_t_bs #=> Float
    #   resp.autonomous_database_clones[0].allocated_storage_size_in_t_bs #=> Float
    #   resp.autonomous_database_clones[0].in_memory_area_in_g_bs #=> Integer
    #   resp.autonomous_database_clones[0].is_auto_scaling_for_storage_enabled #=> Boolean
    #   resp.autonomous_database_clones[0].odb_network_id #=> String
    #   resp.autonomous_database_clones[0].odb_network_arn #=> String
    #   resp.autonomous_database_clones[0].private_endpoint #=> String
    #   resp.autonomous_database_clones[0].private_endpoint_ip #=> String
    #   resp.autonomous_database_clones[0].private_endpoint_label #=> String
    #   resp.autonomous_database_clones[0].allowlisted_ips #=> Array
    #   resp.autonomous_database_clones[0].allowlisted_ips[0] #=> String
    #   resp.autonomous_database_clones[0].standby_allowlisted_ips #=> Array
    #   resp.autonomous_database_clones[0].standby_allowlisted_ips[0] #=> String
    #   resp.autonomous_database_clones[0].standby_allowlisted_ips_source #=> String, one of "PRIMARY", "SEPARATE", "NOT_APPLICABLE"
    #   resp.autonomous_database_clones[0].is_local_data_guard_enabled #=> Boolean
    #   resp.autonomous_database_clones[0].is_remote_data_guard_enabled #=> Boolean
    #   resp.autonomous_database_clones[0].local_disaster_recovery_type #=> String, one of "ADG", "BACKUP_BASED"
    #   resp.autonomous_database_clones[0].role #=> String, one of "PRIMARY", "STANDBY", "DISABLED_STANDBY", "BACKUP_COPY", "SNAPSHOT_STANDBY"
    #   resp.autonomous_database_clones[0].peer_db_ids #=> Array
    #   resp.autonomous_database_clones[0].peer_db_ids[0] #=> String
    #   resp.autonomous_database_clones[0].failed_data_recovery_in_seconds #=> Integer
    #   resp.autonomous_database_clones[0].local_adg_auto_failover_max_data_loss_limit #=> Integer
    #   resp.autonomous_database_clones[0].remote_disaster_recovery_configuration.disaster_recovery_type #=> String, one of "ADG", "BACKUP_BASED"
    #   resp.autonomous_database_clones[0].remote_disaster_recovery_configuration.is_replicate_automatic_backups #=> Boolean
    #   resp.autonomous_database_clones[0].remote_disaster_recovery_configuration.is_snapshot_standby #=> Boolean
    #   resp.autonomous_database_clones[0].remote_disaster_recovery_configuration.time_snapshot_standby_enabled_till #=> Time
    #   resp.autonomous_database_clones[0].is_refreshable_clone #=> Boolean
    #   resp.autonomous_database_clones[0].refreshable_mode #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.autonomous_database_clones[0].refreshable_status #=> String, one of "REFRESHING", "NOT_REFRESHING"
    #   resp.autonomous_database_clones[0].auto_refresh_frequency_in_seconds #=> Integer
    #   resp.autonomous_database_clones[0].auto_refresh_point_lag_in_seconds #=> Integer
    #   resp.autonomous_database_clones[0].is_reconnect_clone_enabled #=> Boolean
    #   resp.autonomous_database_clones[0].clone_table_space_list #=> Array
    #   resp.autonomous_database_clones[0].clone_table_space_list[0] #=> Integer
    #   resp.autonomous_database_clones[0].backup_retention_period_in_days #=> Integer
    #   resp.autonomous_database_clones[0].long_term_backup_schedule.is_disabled #=> Boolean
    #   resp.autonomous_database_clones[0].long_term_backup_schedule.repeat_cadence #=> String, one of "ONE_TIME", "WEEKLY", "MONTHLY", "YEARLY"
    #   resp.autonomous_database_clones[0].long_term_backup_schedule.retention_period_in_days #=> Integer
    #   resp.autonomous_database_clones[0].long_term_backup_schedule.time_of_backup #=> Time
    #   resp.autonomous_database_clones[0].is_backup_retention_locked #=> Boolean
    #   resp.autonomous_database_clones[0].total_backup_storage_size_in_g_bs #=> Float
    #   resp.autonomous_database_clones[0].resource_pool_summary.is_disabled #=> Boolean
    #   resp.autonomous_database_clones[0].resource_pool_summary.pool_size #=> Integer
    #   resp.autonomous_database_clones[0].resource_pool_summary.pool_storage_size_in_t_bs #=> Integer
    #   resp.autonomous_database_clones[0].resource_pool_summary.available_storage_capacity_in_t_bs #=> Float
    #   resp.autonomous_database_clones[0].resource_pool_summary.total_compute_capacity #=> Integer
    #   resp.autonomous_database_clones[0].resource_pool_summary.available_compute_capacity #=> Integer
    #   resp.autonomous_database_clones[0].encryption_summary.encryption_key_provider #=> String, one of "ORACLE_MANAGED", "AWS_KMS", "OKV", "OCI"
    #   resp.autonomous_database_clones[0].encryption_summary.encryption_key_configuration.aws_encryption_key.iam_role_arn #=> String
    #   resp.autonomous_database_clones[0].encryption_summary.encryption_key_configuration.aws_encryption_key.external_id_type #=> String, one of "database_ocid", "compartment_ocid", "tenant_ocid"
    #   resp.autonomous_database_clones[0].encryption_summary.encryption_key_configuration.aws_encryption_key.kms_key_id #=> String
    #   resp.autonomous_database_clones[0].encryption_summary.encryption_key_configuration.oci_encryption_key.kms_key_id #=> String
    #   resp.autonomous_database_clones[0].encryption_summary.encryption_key_configuration.oci_encryption_key.vault_id #=> String
    #   resp.autonomous_database_clones[0].encryption_summary.encryption_key_configuration.okv_encryption_key.certificate_directory_name #=> String
    #   resp.autonomous_database_clones[0].encryption_summary.encryption_key_configuration.okv_encryption_key.certificate_id #=> String
    #   resp.autonomous_database_clones[0].encryption_summary.encryption_key_configuration.okv_encryption_key.directory_name #=> String
    #   resp.autonomous_database_clones[0].encryption_summary.encryption_key_configuration.okv_encryption_key.okv_kms_key #=> String
    #   resp.autonomous_database_clones[0].encryption_summary.encryption_key_configuration.okv_encryption_key.okv_uri #=> String
    #   resp.autonomous_database_clones[0].created_at #=> Time
    #   resp.autonomous_database_clones[0].time_of_last_backup #=> Time
    #   resp.autonomous_database_clones[0].time_maintenance_begin #=> Time
    #   resp.autonomous_database_clones[0].time_maintenance_end #=> Time
    #   resp.autonomous_database_clones[0].time_local_data_guard_enabled #=> Time
    #   resp.autonomous_database_clones[0].time_data_guard_role_changed #=> Time
    #   resp.autonomous_database_clones[0].time_of_last_switchover #=> Time
    #   resp.autonomous_database_clones[0].time_of_last_failover #=> Time
    #   resp.autonomous_database_clones[0].time_of_last_refresh #=> Time
    #   resp.autonomous_database_clones[0].time_of_last_refresh_point #=> Time
    #   resp.autonomous_database_clones[0].time_of_next_refresh #=> Time
    #   resp.autonomous_database_clones[0].time_of_auto_refresh_start #=> Time
    #   resp.autonomous_database_clones[0].time_deletion_of_free_autonomous_database #=> Time
    #   resp.autonomous_database_clones[0].time_reclamation_of_free_autonomous_database #=> Time
    #   resp.autonomous_database_clones[0].time_disaster_recovery_role_changed #=> Time
    #   resp.autonomous_database_clones[0].time_until_reconnect_clone_enabled #=> Time
    #   resp.autonomous_database_clones[0].next_long_term_backup_time_stamp #=> Time
    #   resp.autonomous_database_clones[0].time_undeleted #=> Time
    #   resp.autonomous_database_clones[0].admin_password_source_summary.admin_password_source #=> String, one of "CUSTOMER_MANAGED_AWS_SECRET", "API_REQUEST_PARAMETER"
    #   resp.autonomous_database_clones[0].admin_password_source_summary.admin_password_source_configuration.customer_managed_aws_secret.iam_role_arn #=> String
    #   resp.autonomous_database_clones[0].admin_password_source_summary.admin_password_source_configuration.customer_managed_aws_secret.secret_id #=> String
    #   resp.autonomous_database_clones[0].admin_password_source_summary.admin_password_source_configuration.customer_managed_aws_secret.external_id_type #=> String, one of "database_ocid", "compartment_ocid", "tenant_ocid"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListAutonomousDatabaseClones AWS API Documentation
    #
    # @overload list_autonomous_database_clones(params = {})
    # @param [Hash] params ({})
    def list_autonomous_database_clones(params = {}, options = {})
      req = build_request(:list_autonomous_database_clones, params)
      req.send_request(options)
    end

    # Lists the peer databases of the specified Autonomous Database.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database whose peer databases
    #   you want to list.
    #
    # @return [Types::ListAutonomousDatabasePeersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutonomousDatabasePeersOutput#next_token #next_token} => String
    #   * {Types::ListAutonomousDatabasePeersOutput#autonomous_database_peers #autonomous_database_peers} => Array&lt;Types::AutonomousDatabasePeerSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_autonomous_database_peers({
    #     max_results: 1,
    #     next_token: "ListAutonomousDatabasePeersInputNextTokenString",
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.autonomous_database_peers #=> Array
    #   resp.autonomous_database_peers[0].autonomous_database_id #=> String
    #   resp.autonomous_database_peers[0].autonomous_database_arn #=> String
    #   resp.autonomous_database_peers[0].ocid #=> String
    #   resp.autonomous_database_peers[0].region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListAutonomousDatabasePeers AWS API Documentation
    #
    # @overload list_autonomous_database_peers(params = {})
    # @param [Hash] params ({})
    def list_autonomous_database_peers(params = {}, options = {})
      req = build_request(:list_autonomous_database_peers, params)
      req.send_request(options)
    end

    # Lists the available Oracle Database software versions for Autonomous
    # Databases.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [String] :db_workload
    #   The intended use of the Autonomous Database to return versions for,
    #   such as transaction processing, data warehouse, JSON database, or
    #   APEX.
    #
    # @return [Types::ListAutonomousDatabaseVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutonomousDatabaseVersionsOutput#next_token #next_token} => String
    #   * {Types::ListAutonomousDatabaseVersionsOutput#autonomous_database_versions #autonomous_database_versions} => Array&lt;Types::AutonomousDatabaseVersionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_autonomous_database_versions({
    #     max_results: 1,
    #     next_token: "ListAutonomousDatabaseVersionsInputNextTokenString",
    #     db_workload: "OLTP", # accepts OLTP, AJD, APEX, LH
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.autonomous_database_versions #=> Array
    #   resp.autonomous_database_versions[0].db_workload #=> String, one of "OLTP", "AJD", "APEX", "LH"
    #   resp.autonomous_database_versions[0].details #=> String
    #   resp.autonomous_database_versions[0].version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListAutonomousDatabaseVersions AWS API Documentation
    #
    # @overload list_autonomous_database_versions(params = {})
    # @param [Hash] params ({})
    def list_autonomous_database_versions(params = {}, options = {})
      req = build_request(:list_autonomous_database_versions, params)
      req.send_request(options)
    end

    # Returns information about the Autonomous Databases owned by your
    # Amazon Web Services account in the current Amazon Web Services Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @return [Types::ListAutonomousDatabasesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutonomousDatabasesOutput#next_token #next_token} => String
    #   * {Types::ListAutonomousDatabasesOutput#autonomous_databases #autonomous_databases} => Array&lt;Types::AutonomousDatabaseSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_autonomous_databases({
    #     max_results: 1,
    #     next_token: "ListAutonomousDatabasesInputNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.autonomous_databases #=> Array
    #   resp.autonomous_databases[0].autonomous_database_id #=> String
    #   resp.autonomous_databases[0].autonomous_database_arn #=> String
    #   resp.autonomous_databases[0].oci_resource_anchor_name #=> String
    #   resp.autonomous_databases[0].percent_progress #=> Float
    #   resp.autonomous_databases[0].ocid #=> String
    #   resp.autonomous_databases[0].oci_url #=> String
    #   resp.autonomous_databases[0].display_name #=> String
    #   resp.autonomous_databases[0].db_name #=> String
    #   resp.autonomous_databases[0].source_id #=> String
    #   resp.autonomous_databases[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.autonomous_databases[0].status_reason #=> String
    #   resp.autonomous_databases[0].database_type #=> String, one of "REGULAR", "CLONE"
    #   resp.autonomous_databases[0].db_version #=> String
    #   resp.autonomous_databases[0].db_workload #=> String, one of "OLTP", "AJD", "APEX", "LH"
    #   resp.autonomous_databases[0].character_set #=> String
    #   resp.autonomous_databases[0].ncharacter_set #=> String
    #   resp.autonomous_databases[0].database_edition #=> String, one of "STANDARD_EDITION", "ENTERPRISE_EDITION"
    #   resp.autonomous_databases[0].license_model #=> String, one of "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
    #   resp.autonomous_databases[0].open_mode #=> String, one of "READ_ONLY", "READ_WRITE"
    #   resp.autonomous_databases[0].permission_level #=> String, one of "RESTRICTED", "UNRESTRICTED"
    #   resp.autonomous_databases[0].is_mtls_connection_required #=> Boolean
    #   resp.autonomous_databases[0].autonomous_maintenance_schedule_type #=> String, one of "EARLY", "REGULAR"
    #   resp.autonomous_databases[0].net_services_architecture #=> String, one of "DEDICATED", "SHARED"
    #   resp.autonomous_databases[0].available_upgrade_versions #=> Array
    #   resp.autonomous_databases[0].available_upgrade_versions[0] #=> String
    #   resp.autonomous_databases[0].byol_compute_count_limit #=> Integer
    #   resp.autonomous_databases[0].connection_string_details.all_connection_strings #=> Hash
    #   resp.autonomous_databases[0].connection_string_details.all_connection_strings["String"] #=> String
    #   resp.autonomous_databases[0].connection_string_details.dedicated #=> String
    #   resp.autonomous_databases[0].connection_string_details.high #=> String
    #   resp.autonomous_databases[0].connection_string_details.medium #=> String
    #   resp.autonomous_databases[0].connection_string_details.low #=> String
    #   resp.autonomous_databases[0].connection_string_details.profiles #=> Array
    #   resp.autonomous_databases[0].connection_string_details.profiles[0].consumer_group #=> String
    #   resp.autonomous_databases[0].connection_string_details.profiles[0].display_name #=> String
    #   resp.autonomous_databases[0].connection_string_details.profiles[0].host_format #=> String
    #   resp.autonomous_databases[0].connection_string_details.profiles[0].is_regional #=> Boolean
    #   resp.autonomous_databases[0].connection_string_details.profiles[0].protocol #=> String
    #   resp.autonomous_databases[0].connection_string_details.profiles[0].session_mode #=> String
    #   resp.autonomous_databases[0].connection_string_details.profiles[0].syntax_format #=> String
    #   resp.autonomous_databases[0].connection_string_details.profiles[0].tls_authentication #=> String
    #   resp.autonomous_databases[0].connection_string_details.profiles[0].value #=> String
    #   resp.autonomous_databases[0].service_console_url #=> String
    #   resp.autonomous_databases[0].sql_web_developer_url #=> String
    #   resp.autonomous_databases[0].customer_contacts #=> Array
    #   resp.autonomous_databases[0].customer_contacts[0].email #=> String
    #   resp.autonomous_databases[0].apex_details.apex_version #=> String
    #   resp.autonomous_databases[0].apex_details.ords_version #=> String
    #   resp.autonomous_databases[0].standby_db.availability_domain #=> String
    #   resp.autonomous_databases[0].standby_db.lag_time_in_seconds #=> Integer
    #   resp.autonomous_databases[0].standby_db.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.autonomous_databases[0].standby_db.status_reason #=> String
    #   resp.autonomous_databases[0].standby_db.maintenance_target_component #=> String
    #   resp.autonomous_databases[0].standby_db.time_data_guard_role_changed #=> Time
    #   resp.autonomous_databases[0].standby_db.time_disaster_recovery_role_changed #=> Time
    #   resp.autonomous_databases[0].standby_db.time_maintenance_begin #=> Time
    #   resp.autonomous_databases[0].standby_db.time_maintenance_end #=> Time
    #   resp.autonomous_databases[0].local_standby_db.availability_domain #=> String
    #   resp.autonomous_databases[0].local_standby_db.lag_time_in_seconds #=> Integer
    #   resp.autonomous_databases[0].local_standby_db.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.autonomous_databases[0].local_standby_db.status_reason #=> String
    #   resp.autonomous_databases[0].local_standby_db.maintenance_target_component #=> String
    #   resp.autonomous_databases[0].local_standby_db.time_data_guard_role_changed #=> Time
    #   resp.autonomous_databases[0].local_standby_db.time_disaster_recovery_role_changed #=> Time
    #   resp.autonomous_databases[0].local_standby_db.time_maintenance_begin #=> Time
    #   resp.autonomous_databases[0].local_standby_db.time_maintenance_end #=> Time
    #   resp.autonomous_databases[0].data_safe_status #=> String, one of "REGISTERING", "REGISTERED", "DEREGISTERING", "NOT_REGISTERED", "FAILED"
    #   resp.autonomous_databases[0].database_management_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "NOT_ENABLED", "FAILED_ENABLING", "FAILED_DISABLING"
    #   resp.autonomous_databases[0].operations_insights_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "NOT_ENABLED", "FAILED_ENABLING", "FAILED_DISABLING"
    #   resp.autonomous_databases[0].availability_zone #=> String
    #   resp.autonomous_databases[0].availability_zone_id #=> String
    #   resp.autonomous_databases[0].maintenance_target_component #=> String
    #   resp.autonomous_databases[0].connection_urls.apex_url #=> String
    #   resp.autonomous_databases[0].connection_urls.database_transforms_url #=> String
    #   resp.autonomous_databases[0].connection_urls.graph_studio_url #=> String
    #   resp.autonomous_databases[0].connection_urls.machine_learning_notebook_url #=> String
    #   resp.autonomous_databases[0].connection_urls.machine_learning_user_management_url #=> String
    #   resp.autonomous_databases[0].connection_urls.mongo_db_url #=> String
    #   resp.autonomous_databases[0].connection_urls.ords_url #=> String
    #   resp.autonomous_databases[0].connection_urls.spatial_studio_url #=> String
    #   resp.autonomous_databases[0].connection_urls.sql_dev_web_url #=> String
    #   resp.autonomous_databases[0].db_tools_details #=> Array
    #   resp.autonomous_databases[0].db_tools_details[0].is_enabled #=> Boolean
    #   resp.autonomous_databases[0].db_tools_details[0].name #=> String
    #   resp.autonomous_databases[0].db_tools_details[0].compute_count #=> Float
    #   resp.autonomous_databases[0].db_tools_details[0].max_idle_time_in_minutes #=> Integer
    #   resp.autonomous_databases[0].scheduled_operations #=> Array
    #   resp.autonomous_databases[0].scheduled_operations[0].day_of_week.name #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.autonomous_databases[0].scheduled_operations[0].scheduled_start_time #=> String
    #   resp.autonomous_databases[0].scheduled_operations[0].scheduled_stop_time #=> String
    #   resp.autonomous_databases[0].resource_pool_leader_id #=> String
    #   resp.autonomous_databases[0].compute_count #=> Float
    #   resp.autonomous_databases[0].compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.autonomous_databases[0].cpu_core_count #=> Integer
    #   resp.autonomous_databases[0].memory_per_oracle_compute_unit_in_g_bs #=> Integer
    #   resp.autonomous_databases[0].provisionable_cpus #=> Array
    #   resp.autonomous_databases[0].provisionable_cpus[0] #=> Integer
    #   resp.autonomous_databases[0].is_auto_scaling_enabled #=> Boolean
    #   resp.autonomous_databases[0].data_storage_size_in_t_bs #=> Float
    #   resp.autonomous_databases[0].data_storage_size_in_g_bs #=> Integer
    #   resp.autonomous_databases[0].used_data_storage_size_in_t_bs #=> Float
    #   resp.autonomous_databases[0].used_data_storage_size_in_g_bs #=> Integer
    #   resp.autonomous_databases[0].actual_used_data_storage_size_in_t_bs #=> Float
    #   resp.autonomous_databases[0].allocated_storage_size_in_t_bs #=> Float
    #   resp.autonomous_databases[0].in_memory_area_in_g_bs #=> Integer
    #   resp.autonomous_databases[0].is_auto_scaling_for_storage_enabled #=> Boolean
    #   resp.autonomous_databases[0].odb_network_id #=> String
    #   resp.autonomous_databases[0].odb_network_arn #=> String
    #   resp.autonomous_databases[0].private_endpoint #=> String
    #   resp.autonomous_databases[0].private_endpoint_ip #=> String
    #   resp.autonomous_databases[0].private_endpoint_label #=> String
    #   resp.autonomous_databases[0].allowlisted_ips #=> Array
    #   resp.autonomous_databases[0].allowlisted_ips[0] #=> String
    #   resp.autonomous_databases[0].standby_allowlisted_ips #=> Array
    #   resp.autonomous_databases[0].standby_allowlisted_ips[0] #=> String
    #   resp.autonomous_databases[0].standby_allowlisted_ips_source #=> String, one of "PRIMARY", "SEPARATE", "NOT_APPLICABLE"
    #   resp.autonomous_databases[0].is_local_data_guard_enabled #=> Boolean
    #   resp.autonomous_databases[0].is_remote_data_guard_enabled #=> Boolean
    #   resp.autonomous_databases[0].local_disaster_recovery_type #=> String, one of "ADG", "BACKUP_BASED"
    #   resp.autonomous_databases[0].role #=> String, one of "PRIMARY", "STANDBY", "DISABLED_STANDBY", "BACKUP_COPY", "SNAPSHOT_STANDBY"
    #   resp.autonomous_databases[0].peer_db_ids #=> Array
    #   resp.autonomous_databases[0].peer_db_ids[0] #=> String
    #   resp.autonomous_databases[0].failed_data_recovery_in_seconds #=> Integer
    #   resp.autonomous_databases[0].local_adg_auto_failover_max_data_loss_limit #=> Integer
    #   resp.autonomous_databases[0].remote_disaster_recovery_configuration.disaster_recovery_type #=> String, one of "ADG", "BACKUP_BASED"
    #   resp.autonomous_databases[0].remote_disaster_recovery_configuration.is_replicate_automatic_backups #=> Boolean
    #   resp.autonomous_databases[0].remote_disaster_recovery_configuration.is_snapshot_standby #=> Boolean
    #   resp.autonomous_databases[0].remote_disaster_recovery_configuration.time_snapshot_standby_enabled_till #=> Time
    #   resp.autonomous_databases[0].is_refreshable_clone #=> Boolean
    #   resp.autonomous_databases[0].refreshable_mode #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.autonomous_databases[0].refreshable_status #=> String, one of "REFRESHING", "NOT_REFRESHING"
    #   resp.autonomous_databases[0].auto_refresh_frequency_in_seconds #=> Integer
    #   resp.autonomous_databases[0].auto_refresh_point_lag_in_seconds #=> Integer
    #   resp.autonomous_databases[0].is_reconnect_clone_enabled #=> Boolean
    #   resp.autonomous_databases[0].clone_table_space_list #=> Array
    #   resp.autonomous_databases[0].clone_table_space_list[0] #=> Integer
    #   resp.autonomous_databases[0].backup_retention_period_in_days #=> Integer
    #   resp.autonomous_databases[0].long_term_backup_schedule.is_disabled #=> Boolean
    #   resp.autonomous_databases[0].long_term_backup_schedule.repeat_cadence #=> String, one of "ONE_TIME", "WEEKLY", "MONTHLY", "YEARLY"
    #   resp.autonomous_databases[0].long_term_backup_schedule.retention_period_in_days #=> Integer
    #   resp.autonomous_databases[0].long_term_backup_schedule.time_of_backup #=> Time
    #   resp.autonomous_databases[0].is_backup_retention_locked #=> Boolean
    #   resp.autonomous_databases[0].total_backup_storage_size_in_g_bs #=> Float
    #   resp.autonomous_databases[0].resource_pool_summary.is_disabled #=> Boolean
    #   resp.autonomous_databases[0].resource_pool_summary.pool_size #=> Integer
    #   resp.autonomous_databases[0].resource_pool_summary.pool_storage_size_in_t_bs #=> Integer
    #   resp.autonomous_databases[0].resource_pool_summary.available_storage_capacity_in_t_bs #=> Float
    #   resp.autonomous_databases[0].resource_pool_summary.total_compute_capacity #=> Integer
    #   resp.autonomous_databases[0].resource_pool_summary.available_compute_capacity #=> Integer
    #   resp.autonomous_databases[0].encryption_summary.encryption_key_provider #=> String, one of "ORACLE_MANAGED", "AWS_KMS", "OKV", "OCI"
    #   resp.autonomous_databases[0].encryption_summary.encryption_key_configuration.aws_encryption_key.iam_role_arn #=> String
    #   resp.autonomous_databases[0].encryption_summary.encryption_key_configuration.aws_encryption_key.external_id_type #=> String, one of "database_ocid", "compartment_ocid", "tenant_ocid"
    #   resp.autonomous_databases[0].encryption_summary.encryption_key_configuration.aws_encryption_key.kms_key_id #=> String
    #   resp.autonomous_databases[0].encryption_summary.encryption_key_configuration.oci_encryption_key.kms_key_id #=> String
    #   resp.autonomous_databases[0].encryption_summary.encryption_key_configuration.oci_encryption_key.vault_id #=> String
    #   resp.autonomous_databases[0].encryption_summary.encryption_key_configuration.okv_encryption_key.certificate_directory_name #=> String
    #   resp.autonomous_databases[0].encryption_summary.encryption_key_configuration.okv_encryption_key.certificate_id #=> String
    #   resp.autonomous_databases[0].encryption_summary.encryption_key_configuration.okv_encryption_key.directory_name #=> String
    #   resp.autonomous_databases[0].encryption_summary.encryption_key_configuration.okv_encryption_key.okv_kms_key #=> String
    #   resp.autonomous_databases[0].encryption_summary.encryption_key_configuration.okv_encryption_key.okv_uri #=> String
    #   resp.autonomous_databases[0].created_at #=> Time
    #   resp.autonomous_databases[0].time_of_last_backup #=> Time
    #   resp.autonomous_databases[0].time_maintenance_begin #=> Time
    #   resp.autonomous_databases[0].time_maintenance_end #=> Time
    #   resp.autonomous_databases[0].time_local_data_guard_enabled #=> Time
    #   resp.autonomous_databases[0].time_data_guard_role_changed #=> Time
    #   resp.autonomous_databases[0].time_of_last_switchover #=> Time
    #   resp.autonomous_databases[0].time_of_last_failover #=> Time
    #   resp.autonomous_databases[0].time_of_last_refresh #=> Time
    #   resp.autonomous_databases[0].time_of_last_refresh_point #=> Time
    #   resp.autonomous_databases[0].time_of_next_refresh #=> Time
    #   resp.autonomous_databases[0].time_of_auto_refresh_start #=> Time
    #   resp.autonomous_databases[0].time_deletion_of_free_autonomous_database #=> Time
    #   resp.autonomous_databases[0].time_reclamation_of_free_autonomous_database #=> Time
    #   resp.autonomous_databases[0].time_disaster_recovery_role_changed #=> Time
    #   resp.autonomous_databases[0].time_until_reconnect_clone_enabled #=> Time
    #   resp.autonomous_databases[0].next_long_term_backup_time_stamp #=> Time
    #   resp.autonomous_databases[0].time_undeleted #=> Time
    #   resp.autonomous_databases[0].admin_password_source_summary.admin_password_source #=> String, one of "CUSTOMER_MANAGED_AWS_SECRET", "API_REQUEST_PARAMETER"
    #   resp.autonomous_databases[0].admin_password_source_summary.admin_password_source_configuration.customer_managed_aws_secret.iam_role_arn #=> String
    #   resp.autonomous_databases[0].admin_password_source_summary.admin_password_source_configuration.customer_managed_aws_secret.secret_id #=> String
    #   resp.autonomous_databases[0].admin_password_source_summary.admin_password_source_configuration.customer_managed_aws_secret.external_id_type #=> String, one of "database_ocid", "compartment_ocid", "tenant_ocid"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListAutonomousDatabases AWS API Documentation
    #
    # @overload list_autonomous_databases(params = {})
    # @param [Hash] params ({})
    def list_autonomous_databases(params = {}, options = {})
      req = build_request(:list_autonomous_databases, params)
      req.send_request(options)
    end

    # Lists all Autonomous VMs in an Autonomous VM cluster.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return per page.
    #
    # @option params [String] :next_token
    #   The pagination token to continue listing from.
    #
    # @option params [required, String] :cloud_autonomous_vm_cluster_id
    #   The unique identifier of the Autonomous VM cluster whose virtual
    #   machines you're listing.
    #
    # @return [Types::ListAutonomousVirtualMachinesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutonomousVirtualMachinesOutput#next_token #next_token} => String
    #   * {Types::ListAutonomousVirtualMachinesOutput#autonomous_virtual_machines #autonomous_virtual_machines} => Array&lt;Types::AutonomousVirtualMachineSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_autonomous_virtual_machines({
    #     max_results: 1,
    #     next_token: "ListAutonomousVirtualMachinesInputNextTokenString",
    #     cloud_autonomous_vm_cluster_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.autonomous_virtual_machines #=> Array
    #   resp.autonomous_virtual_machines[0].autonomous_virtual_machine_id #=> String
    #   resp.autonomous_virtual_machines[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.autonomous_virtual_machines[0].status_reason #=> String
    #   resp.autonomous_virtual_machines[0].vm_name #=> String
    #   resp.autonomous_virtual_machines[0].db_server_id #=> String
    #   resp.autonomous_virtual_machines[0].db_server_display_name #=> String
    #   resp.autonomous_virtual_machines[0].cpu_core_count #=> Integer
    #   resp.autonomous_virtual_machines[0].memory_size_in_g_bs #=> Integer
    #   resp.autonomous_virtual_machines[0].db_node_storage_size_in_g_bs #=> Integer
    #   resp.autonomous_virtual_machines[0].client_ip_address #=> String
    #   resp.autonomous_virtual_machines[0].cloud_autonomous_vm_cluster_id #=> String
    #   resp.autonomous_virtual_machines[0].ocid #=> String
    #   resp.autonomous_virtual_machines[0].oci_resource_anchor_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListAutonomousVirtualMachines AWS API Documentation
    #
    # @overload list_autonomous_virtual_machines(params = {})
    # @param [Hash] params ({})
    def list_autonomous_virtual_machines(params = {}, options = {})
      req = build_request(:list_autonomous_virtual_machines, params)
      req.send_request(options)
    end

    # Lists all Autonomous VM clusters in a specified Cloud Exadata
    # infrastructure.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return per page.
    #
    # @option params [String] :next_token
    #   The pagination token to continue listing from.
    #
    # @option params [String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Cloud Exadata Infrastructure that hosts
    #   the Autonomous VM clusters to be listed.
    #
    # @return [Types::ListCloudAutonomousVmClustersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCloudAutonomousVmClustersOutput#next_token #next_token} => String
    #   * {Types::ListCloudAutonomousVmClustersOutput#cloud_autonomous_vm_clusters #cloud_autonomous_vm_clusters} => Array&lt;Types::CloudAutonomousVmClusterSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cloud_autonomous_vm_clusters({
    #     max_results: 1,
    #     next_token: "ListCloudAutonomousVmClustersInputNextTokenString",
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.cloud_autonomous_vm_clusters #=> Array
    #   resp.cloud_autonomous_vm_clusters[0].cloud_autonomous_vm_cluster_id #=> String
    #   resp.cloud_autonomous_vm_clusters[0].cloud_autonomous_vm_cluster_arn #=> String
    #   resp.cloud_autonomous_vm_clusters[0].odb_network_id #=> String
    #   resp.cloud_autonomous_vm_clusters[0].odb_network_arn #=> String
    #   resp.cloud_autonomous_vm_clusters[0].oci_resource_anchor_name #=> String
    #   resp.cloud_autonomous_vm_clusters[0].percent_progress #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].display_name #=> String
    #   resp.cloud_autonomous_vm_clusters[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.cloud_autonomous_vm_clusters[0].status_reason #=> String
    #   resp.cloud_autonomous_vm_clusters[0].cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_autonomous_vm_clusters[0].cloud_exadata_infrastructure_arn #=> String
    #   resp.cloud_autonomous_vm_clusters[0].autonomous_data_storage_percentage #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].autonomous_data_storage_size_in_t_bs #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].available_autonomous_data_storage_size_in_t_bs #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].available_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].available_cpus #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.cloud_autonomous_vm_clusters[0].cpu_core_count #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].cpu_core_count_per_node #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].cpu_percentage #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].data_storage_size_in_g_bs #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].data_storage_size_in_t_bs #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].db_servers #=> Array
    #   resp.cloud_autonomous_vm_clusters[0].db_servers[0] #=> String
    #   resp.cloud_autonomous_vm_clusters[0].description #=> String
    #   resp.cloud_autonomous_vm_clusters[0].domain #=> String
    #   resp.cloud_autonomous_vm_clusters[0].exadata_storage_in_t_bs_lowest_scaled_value #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].hostname #=> String
    #   resp.cloud_autonomous_vm_clusters[0].ocid #=> String
    #   resp.cloud_autonomous_vm_clusters[0].oci_url #=> String
    #   resp.cloud_autonomous_vm_clusters[0].is_mtls_enabled_vm_cluster #=> Boolean
    #   resp.cloud_autonomous_vm_clusters[0].license_model #=> String, one of "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.custom_action_timeout_in_mins #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.days_of_week #=> Array
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.days_of_week[0].name #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.hours_of_day #=> Array
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.hours_of_day[0] #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.is_custom_action_timeout_enabled #=> Boolean
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.lead_time_in_weeks #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.months #=> Array
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.months[0].name #=> String, one of "JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.patching_mode #=> String, one of "ROLLING", "NONROLLING"
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.preference #=> String, one of "NO_PREFERENCE", "CUSTOM_PREFERENCE"
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.skip_ru #=> Boolean
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.weeks_of_month #=> Array
    #   resp.cloud_autonomous_vm_clusters[0].maintenance_window.weeks_of_month[0] #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].max_acds_lowest_scaled_value #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].memory_per_oracle_compute_unit_in_g_bs #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].memory_size_in_g_bs #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].node_count #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].non_provisionable_autonomous_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].provisionable_autonomous_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].provisioned_autonomous_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].provisioned_cpus #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].reclaimable_cpus #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].reserved_cpus #=> Float
    #   resp.cloud_autonomous_vm_clusters[0].scan_listener_port_non_tls #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].scan_listener_port_tls #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].shape #=> String
    #   resp.cloud_autonomous_vm_clusters[0].created_at #=> Time
    #   resp.cloud_autonomous_vm_clusters[0].time_database_ssl_certificate_expires #=> Time
    #   resp.cloud_autonomous_vm_clusters[0].time_ords_certificate_expires #=> Time
    #   resp.cloud_autonomous_vm_clusters[0].time_zone #=> String
    #   resp.cloud_autonomous_vm_clusters[0].total_container_databases #=> Integer
    #   resp.cloud_autonomous_vm_clusters[0].iam_roles #=> Array
    #   resp.cloud_autonomous_vm_clusters[0].iam_roles[0].iam_role_arn #=> String
    #   resp.cloud_autonomous_vm_clusters[0].iam_roles[0].status #=> String, one of "ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"
    #   resp.cloud_autonomous_vm_clusters[0].iam_roles[0].status_reason #=> String
    #   resp.cloud_autonomous_vm_clusters[0].iam_roles[0].aws_integration #=> String, one of "KmsTde"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListCloudAutonomousVmClusters AWS API Documentation
    #
    # @overload list_cloud_autonomous_vm_clusters(params = {})
    # @param [Hash] params ({})
    def list_cloud_autonomous_vm_clusters(params = {}, options = {})
      req = build_request(:list_cloud_autonomous_vm_clusters, params)
      req.send_request(options)
    end

    # Returns information about the Exadata infrastructures owned by your
    # Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @return [Types::ListCloudExadataInfrastructuresOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCloudExadataInfrastructuresOutput#next_token #next_token} => String
    #   * {Types::ListCloudExadataInfrastructuresOutput#cloud_exadata_infrastructures #cloud_exadata_infrastructures} => Array&lt;Types::CloudExadataInfrastructureSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cloud_exadata_infrastructures({
    #     max_results: 1,
    #     next_token: "ListCloudExadataInfrastructuresInputNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.cloud_exadata_infrastructures #=> Array
    #   resp.cloud_exadata_infrastructures[0].cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_exadata_infrastructures[0].display_name #=> String
    #   resp.cloud_exadata_infrastructures[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.cloud_exadata_infrastructures[0].status_reason #=> String
    #   resp.cloud_exadata_infrastructures[0].cloud_exadata_infrastructure_arn #=> String
    #   resp.cloud_exadata_infrastructures[0].activated_storage_count #=> Integer
    #   resp.cloud_exadata_infrastructures[0].additional_storage_count #=> Integer
    #   resp.cloud_exadata_infrastructures[0].available_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructures[0].availability_zone #=> String
    #   resp.cloud_exadata_infrastructures[0].availability_zone_id #=> String
    #   resp.cloud_exadata_infrastructures[0].compute_count #=> Integer
    #   resp.cloud_exadata_infrastructures[0].cpu_count #=> Integer
    #   resp.cloud_exadata_infrastructures[0].customer_contacts_to_send_to_oci #=> Array
    #   resp.cloud_exadata_infrastructures[0].customer_contacts_to_send_to_oci[0].email #=> String
    #   resp.cloud_exadata_infrastructures[0].data_storage_size_in_t_bs #=> Float
    #   resp.cloud_exadata_infrastructures[0].db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructures[0].db_server_version #=> String
    #   resp.cloud_exadata_infrastructures[0].last_maintenance_run_id #=> String
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.custom_action_timeout_in_mins #=> Integer
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.days_of_week #=> Array
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.days_of_week[0].name #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.hours_of_day #=> Array
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.hours_of_day[0] #=> Integer
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.is_custom_action_timeout_enabled #=> Boolean
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.lead_time_in_weeks #=> Integer
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.months #=> Array
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.months[0].name #=> String, one of "JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.patching_mode #=> String, one of "ROLLING", "NONROLLING"
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.preference #=> String, one of "NO_PREFERENCE", "CUSTOM_PREFERENCE"
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.skip_ru #=> Boolean
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.weeks_of_month #=> Array
    #   resp.cloud_exadata_infrastructures[0].maintenance_window.weeks_of_month[0] #=> Integer
    #   resp.cloud_exadata_infrastructures[0].max_cpu_count #=> Integer
    #   resp.cloud_exadata_infrastructures[0].max_data_storage_in_t_bs #=> Float
    #   resp.cloud_exadata_infrastructures[0].max_db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructures[0].max_memory_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructures[0].memory_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructures[0].monthly_db_server_version #=> String
    #   resp.cloud_exadata_infrastructures[0].monthly_storage_server_version #=> String
    #   resp.cloud_exadata_infrastructures[0].next_maintenance_run_id #=> String
    #   resp.cloud_exadata_infrastructures[0].oci_resource_anchor_name #=> String
    #   resp.cloud_exadata_infrastructures[0].oci_url #=> String
    #   resp.cloud_exadata_infrastructures[0].ocid #=> String
    #   resp.cloud_exadata_infrastructures[0].shape #=> String
    #   resp.cloud_exadata_infrastructures[0].storage_count #=> Integer
    #   resp.cloud_exadata_infrastructures[0].storage_server_version #=> String
    #   resp.cloud_exadata_infrastructures[0].created_at #=> Time
    #   resp.cloud_exadata_infrastructures[0].total_storage_size_in_g_bs #=> Integer
    #   resp.cloud_exadata_infrastructures[0].percent_progress #=> Float
    #   resp.cloud_exadata_infrastructures[0].database_server_type #=> String
    #   resp.cloud_exadata_infrastructures[0].storage_server_type #=> String
    #   resp.cloud_exadata_infrastructures[0].compute_model #=> String, one of "ECPU", "OCPU"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListCloudExadataInfrastructures AWS API Documentation
    #
    # @overload list_cloud_exadata_infrastructures(params = {})
    # @param [Hash] params ({})
    def list_cloud_exadata_infrastructures(params = {}, options = {})
      req = build_request(:list_cloud_exadata_infrastructures, params)
      req.send_request(options)
    end

    # Returns information about the VM clusters owned by your Amazon Web
    # Services account or only the ones on the specified Exadata
    # infrastructure.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Oracle Exadata infrastructure.
    #
    # @return [Types::ListCloudVmClustersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCloudVmClustersOutput#next_token #next_token} => String
    #   * {Types::ListCloudVmClustersOutput#cloud_vm_clusters #cloud_vm_clusters} => Array&lt;Types::CloudVmClusterSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cloud_vm_clusters({
    #     max_results: 1,
    #     next_token: "ListCloudVmClustersInputNextTokenString",
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.cloud_vm_clusters #=> Array
    #   resp.cloud_vm_clusters[0].cloud_vm_cluster_id #=> String
    #   resp.cloud_vm_clusters[0].display_name #=> String
    #   resp.cloud_vm_clusters[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.cloud_vm_clusters[0].status_reason #=> String
    #   resp.cloud_vm_clusters[0].cloud_vm_cluster_arn #=> String
    #   resp.cloud_vm_clusters[0].cloud_exadata_infrastructure_id #=> String
    #   resp.cloud_vm_clusters[0].cloud_exadata_infrastructure_arn #=> String
    #   resp.cloud_vm_clusters[0].cluster_name #=> String
    #   resp.cloud_vm_clusters[0].cpu_core_count #=> Integer
    #   resp.cloud_vm_clusters[0].data_collection_options.is_diagnostics_events_enabled #=> Boolean
    #   resp.cloud_vm_clusters[0].data_collection_options.is_health_monitoring_enabled #=> Boolean
    #   resp.cloud_vm_clusters[0].data_collection_options.is_incident_logs_enabled #=> Boolean
    #   resp.cloud_vm_clusters[0].data_storage_size_in_t_bs #=> Float
    #   resp.cloud_vm_clusters[0].db_node_storage_size_in_g_bs #=> Integer
    #   resp.cloud_vm_clusters[0].db_servers #=> Array
    #   resp.cloud_vm_clusters[0].db_servers[0] #=> String
    #   resp.cloud_vm_clusters[0].disk_redundancy #=> String, one of "HIGH", "NORMAL"
    #   resp.cloud_vm_clusters[0].gi_version #=> String
    #   resp.cloud_vm_clusters[0].hostname #=> String
    #   resp.cloud_vm_clusters[0].iorm_config_cache.db_plans #=> Array
    #   resp.cloud_vm_clusters[0].iorm_config_cache.db_plans[0].db_name #=> String
    #   resp.cloud_vm_clusters[0].iorm_config_cache.db_plans[0].flash_cache_limit #=> String
    #   resp.cloud_vm_clusters[0].iorm_config_cache.db_plans[0].share #=> Integer
    #   resp.cloud_vm_clusters[0].iorm_config_cache.lifecycle_details #=> String
    #   resp.cloud_vm_clusters[0].iorm_config_cache.lifecycle_state #=> String, one of "BOOTSTRAPPING", "DISABLED", "ENABLED", "FAILED", "UPDATING"
    #   resp.cloud_vm_clusters[0].iorm_config_cache.objective #=> String, one of "AUTO", "BALANCED", "BASIC", "HIGH_THROUGHPUT", "LOW_LATENCY"
    #   resp.cloud_vm_clusters[0].is_local_backup_enabled #=> Boolean
    #   resp.cloud_vm_clusters[0].is_sparse_diskgroup_enabled #=> Boolean
    #   resp.cloud_vm_clusters[0].last_update_history_entry_id #=> String
    #   resp.cloud_vm_clusters[0].license_model #=> String, one of "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
    #   resp.cloud_vm_clusters[0].listener_port #=> Integer
    #   resp.cloud_vm_clusters[0].memory_size_in_g_bs #=> Integer
    #   resp.cloud_vm_clusters[0].node_count #=> Integer
    #   resp.cloud_vm_clusters[0].ocid #=> String
    #   resp.cloud_vm_clusters[0].oci_resource_anchor_name #=> String
    #   resp.cloud_vm_clusters[0].oci_url #=> String
    #   resp.cloud_vm_clusters[0].domain #=> String
    #   resp.cloud_vm_clusters[0].scan_dns_name #=> String
    #   resp.cloud_vm_clusters[0].scan_dns_record_id #=> String
    #   resp.cloud_vm_clusters[0].scan_ip_ids #=> Array
    #   resp.cloud_vm_clusters[0].scan_ip_ids[0] #=> String
    #   resp.cloud_vm_clusters[0].shape #=> String
    #   resp.cloud_vm_clusters[0].ssh_public_keys #=> Array
    #   resp.cloud_vm_clusters[0].ssh_public_keys[0] #=> String
    #   resp.cloud_vm_clusters[0].storage_size_in_g_bs #=> Integer
    #   resp.cloud_vm_clusters[0].system_version #=> String
    #   resp.cloud_vm_clusters[0].created_at #=> Time
    #   resp.cloud_vm_clusters[0].time_zone #=> String
    #   resp.cloud_vm_clusters[0].vip_ids #=> Array
    #   resp.cloud_vm_clusters[0].vip_ids[0] #=> String
    #   resp.cloud_vm_clusters[0].odb_network_id #=> String
    #   resp.cloud_vm_clusters[0].odb_network_arn #=> String
    #   resp.cloud_vm_clusters[0].percent_progress #=> Float
    #   resp.cloud_vm_clusters[0].compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.cloud_vm_clusters[0].iam_roles #=> Array
    #   resp.cloud_vm_clusters[0].iam_roles[0].iam_role_arn #=> String
    #   resp.cloud_vm_clusters[0].iam_roles[0].status #=> String, one of "ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"
    #   resp.cloud_vm_clusters[0].iam_roles[0].status_reason #=> String
    #   resp.cloud_vm_clusters[0].iam_roles[0].aws_integration #=> String, one of "KmsTde"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListCloudVmClusters AWS API Documentation
    #
    # @overload list_cloud_vm_clusters(params = {})
    # @param [Hash] params ({})
    def list_cloud_vm_clusters(params = {}, options = {})
      req = build_request(:list_cloud_vm_clusters, params)
      req.send_request(options)
    end

    # Returns information about the DB nodes for the specified VM cluster.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster. You must specify either this
    #   parameter or `exadbVmClusterId`.
    #
    # @option params [String] :exadb_vm_cluster_id
    #   The unique identifier of the Exascale VM cluster. You must specify
    #   either this parameter or `cloudVmClusterId`.
    #
    # @return [Types::ListDbNodesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDbNodesOutput#next_token #next_token} => String
    #   * {Types::ListDbNodesOutput#db_nodes #db_nodes} => Array&lt;Types::DbNodeSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_db_nodes({
    #     max_results: 1,
    #     next_token: "ListDbNodesInputNextTokenString",
    #     cloud_vm_cluster_id: "ResourceId",
    #     exadb_vm_cluster_id: "ResourceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.db_nodes #=> Array
    #   resp.db_nodes[0].db_node_id #=> String
    #   resp.db_nodes[0].db_node_arn #=> String
    #   resp.db_nodes[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"
    #   resp.db_nodes[0].status_reason #=> String
    #   resp.db_nodes[0].additional_details #=> String
    #   resp.db_nodes[0].backup_ip_id #=> String
    #   resp.db_nodes[0].backup_vnic_2_id #=> String
    #   resp.db_nodes[0].backup_vnic_id #=> String
    #   resp.db_nodes[0].cpu_core_count #=> Integer
    #   resp.db_nodes[0].db_node_storage_size_in_g_bs #=> Integer
    #   resp.db_nodes[0].db_server_id #=> String
    #   resp.db_nodes[0].db_system_id #=> String
    #   resp.db_nodes[0].fault_domain #=> String
    #   resp.db_nodes[0].host_ip_id #=> String
    #   resp.db_nodes[0].hostname #=> String
    #   resp.db_nodes[0].ocid #=> String
    #   resp.db_nodes[0].oci_resource_anchor_name #=> String
    #   resp.db_nodes[0].maintenance_type #=> String, one of "VMDB_REBOOT_MIGRATION"
    #   resp.db_nodes[0].memory_size_in_g_bs #=> Integer
    #   resp.db_nodes[0].software_storage_size_in_gb #=> Integer
    #   resp.db_nodes[0].created_at #=> Time
    #   resp.db_nodes[0].time_maintenance_window_end #=> String
    #   resp.db_nodes[0].time_maintenance_window_start #=> String
    #   resp.db_nodes[0].total_cpu_core_count #=> Integer
    #   resp.db_nodes[0].vnic2_id #=> String
    #   resp.db_nodes[0].vnic_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListDbNodes AWS API Documentation
    #
    # @overload list_db_nodes(params = {})
    # @param [Hash] params ({})
    def list_db_nodes(params = {}, options = {})
      req = build_request(:list_db_nodes, params)
      req.send_request(options)
    end

    # Returns information about the database servers that belong to the
    # specified Exadata infrastructure.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Oracle Exadata infrastructure.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @return [Types::ListDbServersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDbServersOutput#next_token #next_token} => String
    #   * {Types::ListDbServersOutput#db_servers #db_servers} => Array&lt;Types::DbServerSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_db_servers({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     max_results: 1,
    #     next_token: "ListDbServersInputNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.db_servers #=> Array
    #   resp.db_servers[0].db_server_id #=> String
    #   resp.db_servers[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.db_servers[0].status_reason #=> String
    #   resp.db_servers[0].cpu_core_count #=> Integer
    #   resp.db_servers[0].db_node_storage_size_in_g_bs #=> Integer
    #   resp.db_servers[0].db_server_patching_details.estimated_patch_duration #=> Integer
    #   resp.db_servers[0].db_server_patching_details.patching_status #=> String, one of "COMPLETE", "FAILED", "MAINTENANCE_IN_PROGRESS", "SCHEDULED"
    #   resp.db_servers[0].db_server_patching_details.time_patching_ended #=> String
    #   resp.db_servers[0].db_server_patching_details.time_patching_started #=> String
    #   resp.db_servers[0].display_name #=> String
    #   resp.db_servers[0].exadata_infrastructure_id #=> String
    #   resp.db_servers[0].ocid #=> String
    #   resp.db_servers[0].oci_resource_anchor_name #=> String
    #   resp.db_servers[0].max_cpu_count #=> Integer
    #   resp.db_servers[0].max_db_node_storage_in_g_bs #=> Integer
    #   resp.db_servers[0].max_memory_in_g_bs #=> Integer
    #   resp.db_servers[0].memory_size_in_g_bs #=> Integer
    #   resp.db_servers[0].shape #=> String
    #   resp.db_servers[0].created_at #=> Time
    #   resp.db_servers[0].vm_cluster_ids #=> Array
    #   resp.db_servers[0].vm_cluster_ids[0] #=> String
    #   resp.db_servers[0].compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.db_servers[0].autonomous_vm_cluster_ids #=> Array
    #   resp.db_servers[0].autonomous_vm_cluster_ids[0] #=> String
    #   resp.db_servers[0].autonomous_virtual_machine_ids #=> Array
    #   resp.db_servers[0].autonomous_virtual_machine_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListDbServers AWS API Documentation
    #
    # @overload list_db_servers(params = {})
    # @param [Hash] params ({})
    def list_db_servers(params = {}, options = {})
      req = build_request(:list_db_servers, params)
      req.send_request(options)
    end

    # Returns information about the shapes that are available for an Exadata
    # infrastructure.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [String] :availability_zone
    #   The logical name of the AZ, for example, us-east-1a. This name varies
    #   depending on the account.
    #
    # @option params [String] :availability_zone_id
    #   The physical ID of the AZ, for example, use1-az4. This ID persists
    #   across accounts.
    #
    # @option params [String] :shape_family
    #   The shape family to filter results by.
    #
    # @return [Types::ListDbSystemShapesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDbSystemShapesOutput#next_token #next_token} => String
    #   * {Types::ListDbSystemShapesOutput#db_system_shapes #db_system_shapes} => Array&lt;Types::DbSystemShapeSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_db_system_shapes({
    #     max_results: 1,
    #     next_token: "ListDbSystemShapesInputNextTokenString",
    #     availability_zone: "ListDbSystemShapesInputAvailabilityZoneString",
    #     availability_zone_id: "ListDbSystemShapesInputAvailabilityZoneIdString",
    #     shape_family: "ListDbSystemShapesInputShapeFamilyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.db_system_shapes #=> Array
    #   resp.db_system_shapes[0].available_core_count #=> Integer
    #   resp.db_system_shapes[0].available_core_count_per_node #=> Integer
    #   resp.db_system_shapes[0].available_data_storage_in_t_bs #=> Integer
    #   resp.db_system_shapes[0].available_data_storage_per_server_in_t_bs #=> Integer
    #   resp.db_system_shapes[0].available_db_node_per_node_in_g_bs #=> Integer
    #   resp.db_system_shapes[0].available_db_node_storage_in_g_bs #=> Integer
    #   resp.db_system_shapes[0].available_memory_in_g_bs #=> Integer
    #   resp.db_system_shapes[0].available_memory_per_node_in_g_bs #=> Integer
    #   resp.db_system_shapes[0].core_count_increment #=> Integer
    #   resp.db_system_shapes[0].max_storage_count #=> Integer
    #   resp.db_system_shapes[0].maximum_node_count #=> Integer
    #   resp.db_system_shapes[0].min_core_count_per_node #=> Integer
    #   resp.db_system_shapes[0].min_data_storage_in_t_bs #=> Integer
    #   resp.db_system_shapes[0].min_db_node_storage_per_node_in_g_bs #=> Integer
    #   resp.db_system_shapes[0].min_memory_per_node_in_g_bs #=> Integer
    #   resp.db_system_shapes[0].min_storage_count #=> Integer
    #   resp.db_system_shapes[0].minimum_core_count #=> Integer
    #   resp.db_system_shapes[0].minimum_node_count #=> Integer
    #   resp.db_system_shapes[0].runtime_minimum_core_count #=> Integer
    #   resp.db_system_shapes[0].shape_family #=> String
    #   resp.db_system_shapes[0].shape_type #=> String, one of "AMD", "INTEL", "INTEL_FLEX_X9", "AMPERE_FLEX_A1"
    #   resp.db_system_shapes[0].shape_attributes #=> Array
    #   resp.db_system_shapes[0].shape_attributes[0] #=> String, one of "SMART_STORAGE", "BLOCK_STORAGE"
    #   resp.db_system_shapes[0].name #=> String
    #   resp.db_system_shapes[0].compute_model #=> String, one of "ECPU", "OCPU"
    #   resp.db_system_shapes[0].are_server_types_supported #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListDbSystemShapes AWS API Documentation
    #
    # @overload list_db_system_shapes(params = {})
    # @param [Hash] params ({})
    def list_db_system_shapes(params = {}, options = {})
      req = build_request(:list_db_system_shapes, params)
      req.send_request(options)
    end

    # Returns information about the Exascale VM clusters owned by your
    # Amazon Web Services account.
    #
    # @option params [String] :exascale_db_storage_vault_id
    #   The unique identifier of the Exascale storage vault to list the
    #   associated Exascale VM clusters.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @return [Types::ListExadbVmClustersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExadbVmClustersOutput#next_token #next_token} => String
    #   * {Types::ListExadbVmClustersOutput#exadb_vm_clusters #exadb_vm_clusters} => Array&lt;Types::ExadbVmClusterSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_exadb_vm_clusters({
    #     exascale_db_storage_vault_id: "ResourceIdOrArn",
    #     max_results: 1,
    #     next_token: "ListExadbVmClustersInputNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.exadb_vm_clusters #=> Array
    #   resp.exadb_vm_clusters[0].exadb_vm_cluster_id #=> String
    #   resp.exadb_vm_clusters[0].cluster_name #=> String
    #   resp.exadb_vm_clusters[0].created_at #=> Time
    #   resp.exadb_vm_clusters[0].data_collection_options.is_diagnostics_events_enabled #=> Boolean
    #   resp.exadb_vm_clusters[0].data_collection_options.is_health_monitoring_enabled #=> Boolean
    #   resp.exadb_vm_clusters[0].data_collection_options.is_incident_logs_enabled #=> Boolean
    #   resp.exadb_vm_clusters[0].display_name #=> String
    #   resp.exadb_vm_clusters[0].domain #=> String
    #   resp.exadb_vm_clusters[0].enabled_ecpu_count #=> Integer
    #   resp.exadb_vm_clusters[0].exadb_vm_cluster_arn #=> String
    #   resp.exadb_vm_clusters[0].exascale_db_storage_vault_arn #=> String
    #   resp.exadb_vm_clusters[0].exascale_db_storage_vault_id #=> String
    #   resp.exadb_vm_clusters[0].gi_version #=> String
    #   resp.exadb_vm_clusters[0].grid_image_id #=> String
    #   resp.exadb_vm_clusters[0].grid_image_type #=> String, one of "RELEASE_UPDATE", "CUSTOM_IMAGE"
    #   resp.exadb_vm_clusters[0].hostname #=> String
    #   resp.exadb_vm_clusters[0].iam_roles #=> Array
    #   resp.exadb_vm_clusters[0].iam_roles[0].iam_role_arn #=> String
    #   resp.exadb_vm_clusters[0].iam_roles[0].status #=> String, one of "ASSOCIATING", "DISASSOCIATING", "FAILED", "CONNECTED", "DISCONNECTED", "PARTIALLY_CONNECTED", "UNKNOWN"
    #   resp.exadb_vm_clusters[0].iam_roles[0].status_reason #=> String
    #   resp.exadb_vm_clusters[0].iam_roles[0].aws_integration #=> String, one of "KmsTde"
    #   resp.exadb_vm_clusters[0].iorm_config_cache.db_plans #=> Array
    #   resp.exadb_vm_clusters[0].iorm_config_cache.db_plans[0].db_name #=> String
    #   resp.exadb_vm_clusters[0].iorm_config_cache.db_plans[0].flash_cache_limit #=> String
    #   resp.exadb_vm_clusters[0].iorm_config_cache.db_plans[0].share #=> Integer
    #   resp.exadb_vm_clusters[0].iorm_config_cache.lifecycle_details #=> String
    #   resp.exadb_vm_clusters[0].iorm_config_cache.lifecycle_state #=> String, one of "BOOTSTRAPPING", "DISABLED", "ENABLED", "FAILED", "UPDATING"
    #   resp.exadb_vm_clusters[0].iorm_config_cache.objective #=> String, one of "AUTO", "BALANCED", "BASIC", "HIGH_THROUGHPUT", "LOW_LATENCY"
    #   resp.exadb_vm_clusters[0].last_update_history_entry_id #=> String
    #   resp.exadb_vm_clusters[0].license_model #=> String, one of "BRING_YOUR_OWN_LICENSE", "LICENSE_INCLUDED"
    #   resp.exadb_vm_clusters[0].listener_port #=> Integer
    #   resp.exadb_vm_clusters[0].memory_size_in_g_bs #=> Integer
    #   resp.exadb_vm_clusters[0].node_count #=> Integer
    #   resp.exadb_vm_clusters[0].ocid #=> String
    #   resp.exadb_vm_clusters[0].oci_resource_anchor_name #=> String
    #   resp.exadb_vm_clusters[0].oci_url #=> String
    #   resp.exadb_vm_clusters[0].odb_network_arn #=> String
    #   resp.exadb_vm_clusters[0].odb_network_id #=> String
    #   resp.exadb_vm_clusters[0].percent_progress #=> Float
    #   resp.exadb_vm_clusters[0].scan_dns_name #=> String
    #   resp.exadb_vm_clusters[0].scan_dns_record_id #=> String
    #   resp.exadb_vm_clusters[0].scan_ip_ids #=> Array
    #   resp.exadb_vm_clusters[0].scan_ip_ids[0] #=> String
    #   resp.exadb_vm_clusters[0].scan_listener_port_tcp #=> Integer
    #   resp.exadb_vm_clusters[0].scan_listener_port_tcp_ssl #=> Integer
    #   resp.exadb_vm_clusters[0].shape #=> String
    #   resp.exadb_vm_clusters[0].shape_attribute #=> String, one of "SMART_STORAGE", "BLOCK_STORAGE"
    #   resp.exadb_vm_clusters[0].snapshot_file_system_storage.total_size_in_g_bs #=> Integer
    #   resp.exadb_vm_clusters[0].ssh_public_keys #=> Array
    #   resp.exadb_vm_clusters[0].ssh_public_keys[0] #=> String
    #   resp.exadb_vm_clusters[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.exadb_vm_clusters[0].status_reason #=> String
    #   resp.exadb_vm_clusters[0].system_version #=> String
    #   resp.exadb_vm_clusters[0].time_zone #=> String
    #   resp.exadb_vm_clusters[0].total_ecpu_count #=> Integer
    #   resp.exadb_vm_clusters[0].total_file_system_storage.total_size_in_g_bs #=> Integer
    #   resp.exadb_vm_clusters[0].vip_ids #=> Array
    #   resp.exadb_vm_clusters[0].vip_ids[0] #=> String
    #   resp.exadb_vm_clusters[0].vm_file_system_storage.total_size_in_g_bs #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListExadbVmClusters AWS API Documentation
    #
    # @overload list_exadb_vm_clusters(params = {})
    # @param [Hash] params ({})
    def list_exadb_vm_clusters(params = {}, options = {})
      req = build_request(:list_exadb_vm_clusters, params)
      req.send_request(options)
    end

    # Returns information about the Exascale storage vaults owned by your
    # Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @return [Types::ListExascaleDbStorageVaultsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExascaleDbStorageVaultsOutput#next_token #next_token} => String
    #   * {Types::ListExascaleDbStorageVaultsOutput#exascale_db_storage_vaults #exascale_db_storage_vaults} => Array&lt;Types::ExascaleDbStorageVaultSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_exascale_db_storage_vaults({
    #     max_results: 1,
    #     next_token: "ListExascaleDbStorageVaultsInputNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.exascale_db_storage_vaults #=> Array
    #   resp.exascale_db_storage_vaults[0].exascale_db_storage_vault_id #=> String
    #   resp.exascale_db_storage_vaults[0].additional_flash_cache_in_percent #=> Integer
    #   resp.exascale_db_storage_vaults[0].attached_shape_attributes #=> Array
    #   resp.exascale_db_storage_vaults[0].attached_shape_attributes[0] #=> String, one of "SMART_STORAGE", "BLOCK_STORAGE"
    #   resp.exascale_db_storage_vaults[0].autoscale_limit_in_g_bs #=> Integer
    #   resp.exascale_db_storage_vaults[0].availability_zone #=> String
    #   resp.exascale_db_storage_vaults[0].availability_zone_id #=> String
    #   resp.exascale_db_storage_vaults[0].created_at #=> Time
    #   resp.exascale_db_storage_vaults[0].description #=> String
    #   resp.exascale_db_storage_vaults[0].display_name #=> String
    #   resp.exascale_db_storage_vaults[0].vm_cluster_arns #=> Array
    #   resp.exascale_db_storage_vaults[0].vm_cluster_arns[0] #=> String
    #   resp.exascale_db_storage_vaults[0].vm_cluster_count #=> Integer
    #   resp.exascale_db_storage_vaults[0].vm_cluster_ids #=> Array
    #   resp.exascale_db_storage_vaults[0].vm_cluster_ids[0] #=> String
    #   resp.exascale_db_storage_vaults[0].exascale_db_storage_vault_arn #=> String
    #   resp.exascale_db_storage_vaults[0].high_capacity_database_storage.available_size_in_g_bs #=> Integer
    #   resp.exascale_db_storage_vaults[0].high_capacity_database_storage.total_size_in_g_bs #=> Integer
    #   resp.exascale_db_storage_vaults[0].is_autoscale_enabled #=> Boolean
    #   resp.exascale_db_storage_vaults[0].ocid #=> String
    #   resp.exascale_db_storage_vaults[0].oci_resource_anchor_name #=> String
    #   resp.exascale_db_storage_vaults[0].oci_url #=> String
    #   resp.exascale_db_storage_vaults[0].percent_progress #=> Float
    #   resp.exascale_db_storage_vaults[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.exascale_db_storage_vaults[0].status_reason #=> String
    #   resp.exascale_db_storage_vaults[0].time_zone #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListExascaleDbStorageVaults AWS API Documentation
    #
    # @overload list_exascale_db_storage_vaults(params = {})
    # @param [Hash] params ({})
    def list_exascale_db_storage_vaults(params = {}, options = {})
      req = build_request(:list_exascale_db_storage_vaults, params)
      req.send_request(options)
    end

    # Returns a list of the Oracle Grid Infrastructure (GI) minor versions
    # for the specified major version.
    #
    # @option params [required, String] :gi_version
    #   The Oracle Grid Infrastructure (GI) major version.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [String] :shape_family
    #   The shape family for the GI minor version.
    #
    # @option params [String] :availability_zone
    #   The Availability Zone to filter GI minor versions.
    #
    # @option params [String] :availability_zone_id
    #   The Availability Zone ID to filter GI minor versions.
    #
    # @return [Types::ListGiMinorVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGiMinorVersionsOutput#next_token #next_token} => String
    #   * {Types::ListGiMinorVersionsOutput#gi_minor_versions #gi_minor_versions} => Array&lt;Types::GiMinorVersionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gi_minor_versions({
    #     gi_version: "ListGiMinorVersionsInputGiVersionString", # required
    #     max_results: 1,
    #     next_token: "ListGiMinorVersionsInputNextTokenString",
    #     shape_family: "ListGiMinorVersionsInputShapeFamilyString",
    #     availability_zone: "ListGiMinorVersionsInputAvailabilityZoneString",
    #     availability_zone_id: "ListGiMinorVersionsInputAvailabilityZoneIdString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.gi_minor_versions #=> Array
    #   resp.gi_minor_versions[0].version #=> String
    #   resp.gi_minor_versions[0].grid_image_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListGiMinorVersions AWS API Documentation
    #
    # @overload list_gi_minor_versions(params = {})
    # @param [Hash] params ({})
    def list_gi_minor_versions(params = {}, options = {})
      req = build_request(:list_gi_minor_versions, params)
      req.send_request(options)
    end

    # Returns information about Oracle Grid Infrastructure (GI) software
    # versions that are available for a VM cluster for the specified shape.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [String] :shape
    #   The shape to return GI versions for. For a list of valid shapes, use
    #   the `ListDbSystemShapes` operation..
    #
    # @return [Types::ListGiVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGiVersionsOutput#next_token #next_token} => String
    #   * {Types::ListGiVersionsOutput#gi_versions #gi_versions} => Array&lt;Types::GiVersionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gi_versions({
    #     max_results: 1,
    #     next_token: "ListGiVersionsInputNextTokenString",
    #     shape: "ListGiVersionsInputShapeString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.gi_versions #=> Array
    #   resp.gi_versions[0].version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListGiVersions AWS API Documentation
    #
    # @overload list_gi_versions(params = {})
    # @param [Hash] params ({})
    def list_gi_versions(params = {}, options = {})
      req = build_request(:list_gi_versions, params)
      req.send_request(options)
    end

    # Returns information about the ODB networks owned by your Amazon Web
    # Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @return [Types::ListOdbNetworksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOdbNetworksOutput#next_token #next_token} => String
    #   * {Types::ListOdbNetworksOutput#odb_networks #odb_networks} => Array&lt;Types::OdbNetworkSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_odb_networks({
    #     max_results: 1,
    #     next_token: "ListOdbNetworksInputNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.odb_networks #=> Array
    #   resp.odb_networks[0].odb_network_id #=> String
    #   resp.odb_networks[0].display_name #=> String
    #   resp.odb_networks[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.odb_networks[0].status_reason #=> String
    #   resp.odb_networks[0].odb_network_arn #=> String
    #   resp.odb_networks[0].availability_zone #=> String
    #   resp.odb_networks[0].availability_zone_id #=> String
    #   resp.odb_networks[0].client_subnet_cidr #=> String
    #   resp.odb_networks[0].backup_subnet_cidr #=> String
    #   resp.odb_networks[0].custom_domain_name #=> String
    #   resp.odb_networks[0].default_dns_prefix #=> String
    #   resp.odb_networks[0].peered_cidrs #=> Array
    #   resp.odb_networks[0].peered_cidrs[0] #=> String
    #   resp.odb_networks[0].oci_network_anchor_id #=> String
    #   resp.odb_networks[0].oci_network_anchor_url #=> String
    #   resp.odb_networks[0].oci_resource_anchor_name #=> String
    #   resp.odb_networks[0].oci_vcn_id #=> String
    #   resp.odb_networks[0].oci_vcn_url #=> String
    #   resp.odb_networks[0].oci_dns_forwarding_configs #=> Array
    #   resp.odb_networks[0].oci_dns_forwarding_configs[0].domain_name #=> String
    #   resp.odb_networks[0].oci_dns_forwarding_configs[0].oci_dns_listener_ip #=> String
    #   resp.odb_networks[0].created_at #=> Time
    #   resp.odb_networks[0].percent_progress #=> Float
    #   resp.odb_networks[0].managed_services.service_network_arn #=> String
    #   resp.odb_networks[0].managed_services.resource_gateway_arn #=> String
    #   resp.odb_networks[0].managed_services.managed_services_ipv_4_cidrs #=> Array
    #   resp.odb_networks[0].managed_services.managed_services_ipv_4_cidrs[0] #=> String
    #   resp.odb_networks[0].managed_services.service_network_endpoint.vpc_endpoint_id #=> String
    #   resp.odb_networks[0].managed_services.service_network_endpoint.vpc_endpoint_type #=> String, one of "SERVICENETWORK"
    #   resp.odb_networks[0].managed_services.managed_s3_backup_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_networks[0].managed_services.managed_s3_backup_access.ipv4_addresses #=> Array
    #   resp.odb_networks[0].managed_services.managed_s3_backup_access.ipv4_addresses[0] #=> String
    #   resp.odb_networks[0].managed_services.zero_etl_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_networks[0].managed_services.zero_etl_access.cidr #=> String
    #   resp.odb_networks[0].managed_services.s3_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_networks[0].managed_services.s3_access.ipv4_addresses #=> Array
    #   resp.odb_networks[0].managed_services.s3_access.ipv4_addresses[0] #=> String
    #   resp.odb_networks[0].managed_services.s3_access.domain_name #=> String
    #   resp.odb_networks[0].managed_services.s3_access.s3_policy_document #=> String
    #   resp.odb_networks[0].managed_services.sts_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_networks[0].managed_services.sts_access.ipv4_addresses #=> Array
    #   resp.odb_networks[0].managed_services.sts_access.ipv4_addresses[0] #=> String
    #   resp.odb_networks[0].managed_services.sts_access.domain_name #=> String
    #   resp.odb_networks[0].managed_services.sts_access.sts_policy_document #=> String
    #   resp.odb_networks[0].managed_services.kms_access.status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_networks[0].managed_services.kms_access.ipv4_addresses #=> Array
    #   resp.odb_networks[0].managed_services.kms_access.ipv4_addresses[0] #=> String
    #   resp.odb_networks[0].managed_services.kms_access.domain_name #=> String
    #   resp.odb_networks[0].managed_services.kms_access.kms_policy_document #=> String
    #   resp.odb_networks[0].managed_services.cross_region_s3_restore_sources_access #=> Array
    #   resp.odb_networks[0].managed_services.cross_region_s3_restore_sources_access[0].region #=> String
    #   resp.odb_networks[0].managed_services.cross_region_s3_restore_sources_access[0].ipv4_addresses #=> Array
    #   resp.odb_networks[0].managed_services.cross_region_s3_restore_sources_access[0].ipv4_addresses[0] #=> String
    #   resp.odb_networks[0].managed_services.cross_region_s3_restore_sources_access[0].status #=> String, one of "ENABLED", "ENABLING", "DISABLED", "DISABLING"
    #   resp.odb_networks[0].ec2_placement_group_ids #=> Array
    #   resp.odb_networks[0].ec2_placement_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListOdbNetworks AWS API Documentation
    #
    # @overload list_odb_networks(params = {})
    # @param [Hash] params ({})
    def list_odb_networks(params = {}, options = {})
      req = build_request(:list_odb_networks, params)
      req.send_request(options)
    end

    # Lists all ODB peering connections or those associated with a specific
    # ODB network.
    #
    # @option params [Integer] :max_results
    #   The maximum number of ODB peering connections to return in the
    #   response.
    #
    #   Default: `20`
    #
    #   Constraints:
    #
    #   * Must be between 1 and 100.
    #
    #   ^
    #
    # @option params [String] :next_token
    #   The pagination token for the next page of ODB peering connections.
    #
    # @option params [String] :odb_network_id
    #   The identifier of the ODB network to list peering connections for.
    #
    #   If not specified, lists all ODB peering connections in the account.
    #
    # @return [Types::ListOdbPeeringConnectionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOdbPeeringConnectionsOutput#next_token #next_token} => String
    #   * {Types::ListOdbPeeringConnectionsOutput#odb_peering_connections #odb_peering_connections} => Array&lt;Types::OdbPeeringConnectionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_odb_peering_connections({
    #     max_results: 1,
    #     next_token: "ListOdbPeeringConnectionsInputNextTokenString",
    #     odb_network_id: "ResourceIdOrArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.odb_peering_connections #=> Array
    #   resp.odb_peering_connections[0].odb_peering_connection_id #=> String
    #   resp.odb_peering_connections[0].display_name #=> String
    #   resp.odb_peering_connections[0].status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.odb_peering_connections[0].status_reason #=> String
    #   resp.odb_peering_connections[0].odb_peering_connection_arn #=> String
    #   resp.odb_peering_connections[0].odb_network_arn #=> String
    #   resp.odb_peering_connections[0].peer_network_arn #=> String
    #   resp.odb_peering_connections[0].odb_peering_connection_type #=> String
    #   resp.odb_peering_connections[0].peer_network_cidrs #=> Array
    #   resp.odb_peering_connections[0].peer_network_cidrs[0] #=> String
    #   resp.odb_peering_connections[0].created_at #=> Time
    #   resp.odb_peering_connections[0].percent_progress #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListOdbPeeringConnections AWS API Documentation
    #
    # @overload list_odb_peering_connections(params = {})
    # @param [Hash] params ({})
    def list_odb_peering_connections(params = {}, options = {})
      req = build_request(:list_odb_peering_connections, params)
      req.send_request(options)
    end

    # Returns information about the system versions that are available for a
    # VM cluster for the specified `giVersion` and `shape`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. To get the
    #   next page of items, make another request with the token returned in
    #   the output.
    #
    #   Default: `10`
    #
    # @option params [String] :next_token
    #   The token returned from a previous paginated request. Pagination
    #   continues from the end of the items returned by the previous request.
    #
    # @option params [required, String] :gi_version
    #   The software version of the Exadata Grid Infrastructure (GI).
    #
    # @option params [required, String] :shape
    #   The Exadata hardware system model.
    #
    # @return [Types::ListSystemVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSystemVersionsOutput#next_token #next_token} => String
    #   * {Types::ListSystemVersionsOutput#system_versions #system_versions} => Array&lt;Types::SystemVersionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_system_versions({
    #     max_results: 1,
    #     next_token: "ListSystemVersionsInputNextTokenString",
    #     gi_version: "ListSystemVersionsInputGiVersionString", # required
    #     shape: "ListSystemVersionsInputShapeString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.system_versions #=> Array
    #   resp.system_versions[0].gi_version #=> String
    #   resp.system_versions[0].shape #=> String
    #   resp.system_versions[0].system_versions #=> Array
    #   resp.system_versions[0].system_versions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListSystemVersions AWS API Documentation
    #
    # @overload list_system_versions(params = {})
    # @param [Hash] params ({})
    def list_system_versions(params = {}, options = {})
      req = build_request(:list_system_versions, params)
      req.send_request(options)
    end

    # Returns information about the tags applied to this resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Reboots the specified Autonomous Database.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database to reboot.
    #
    # @option params [Boolean] :is_online_reboot
    #   Specifies whether to perform an online reboot of the Autonomous
    #   Database without interrupting active connections.
    #
    # @return [Types::RebootAutonomousDatabaseOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootAutonomousDatabaseOutput#autonomous_database_id #autonomous_database_id} => String
    #   * {Types::RebootAutonomousDatabaseOutput#display_name #display_name} => String
    #   * {Types::RebootAutonomousDatabaseOutput#status #status} => String
    #   * {Types::RebootAutonomousDatabaseOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_autonomous_database({
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     is_online_reboot: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.autonomous_database_id #=> String
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/RebootAutonomousDatabase AWS API Documentation
    #
    # @overload reboot_autonomous_database(params = {})
    # @param [Hash] params ({})
    def reboot_autonomous_database(params = {}, options = {})
      req = build_request(:reboot_autonomous_database, params)
      req.send_request(options)
    end

    # Reboots the specified DB node in a VM cluster.
    #
    # @option params [String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster that contains the DB node to
    #   reboot. You must specify either this parameter or `exadbVmClusterId`.
    #
    # @option params [String] :exadb_vm_cluster_id
    #   The unique identifier of the Exascale VM cluster that contains the DB
    #   node to reboot. You must specify either this parameter or
    #   `cloudVmClusterId`.
    #
    # @option params [required, String] :db_node_id
    #   The unique identifier of the DB node to reboot.
    #
    # @return [Types::RebootDbNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootDbNodeOutput#db_node_id #db_node_id} => String
    #   * {Types::RebootDbNodeOutput#status #status} => String
    #   * {Types::RebootDbNodeOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_db_node({
    #     cloud_vm_cluster_id: "ResourceId",
    #     exadb_vm_cluster_id: "ResourceId",
    #     db_node_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_node_id #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/RebootDbNode AWS API Documentation
    #
    # @overload reboot_db_node(params = {})
    # @param [Hash] params ({})
    def reboot_db_node(params = {}, options = {})
      req = build_request(:reboot_db_node, params)
      req.send_request(options)
    end

    # Restores the specified Autonomous Database to a point in time.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database to restore.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :timestamp
    #   The date and time to which to restore the Autonomous Database.
    #
    # @return [Types::RestoreAutonomousDatabaseOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreAutonomousDatabaseOutput#autonomous_database_id #autonomous_database_id} => String
    #   * {Types::RestoreAutonomousDatabaseOutput#display_name #display_name} => String
    #   * {Types::RestoreAutonomousDatabaseOutput#status #status} => String
    #   * {Types::RestoreAutonomousDatabaseOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_autonomous_database({
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     timestamp: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.autonomous_database_id #=> String
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/RestoreAutonomousDatabase AWS API Documentation
    #
    # @overload restore_autonomous_database(params = {})
    # @param [Hash] params ({})
    def restore_autonomous_database(params = {}, options = {})
      req = build_request(:restore_autonomous_database, params)
      req.send_request(options)
    end

    # Shrinks the storage of the specified Autonomous Database to reclaim
    # unused space.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database to shrink.
    #
    # @return [Types::ShrinkAutonomousDatabaseOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ShrinkAutonomousDatabaseOutput#autonomous_database_id #autonomous_database_id} => String
    #   * {Types::ShrinkAutonomousDatabaseOutput#display_name #display_name} => String
    #   * {Types::ShrinkAutonomousDatabaseOutput#status #status} => String
    #   * {Types::ShrinkAutonomousDatabaseOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.shrink_autonomous_database({
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.autonomous_database_id #=> String
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/ShrinkAutonomousDatabase AWS API Documentation
    #
    # @overload shrink_autonomous_database(params = {})
    # @param [Hash] params ({})
    def shrink_autonomous_database(params = {}, options = {})
      req = build_request(:shrink_autonomous_database, params)
      req.send_request(options)
    end

    # Starts the specified Autonomous Database.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database to start.
    #
    # @return [Types::StartAutonomousDatabaseOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAutonomousDatabaseOutput#autonomous_database_id #autonomous_database_id} => String
    #   * {Types::StartAutonomousDatabaseOutput#display_name #display_name} => String
    #   * {Types::StartAutonomousDatabaseOutput#status #status} => String
    #   * {Types::StartAutonomousDatabaseOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_autonomous_database({
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.autonomous_database_id #=> String
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/StartAutonomousDatabase AWS API Documentation
    #
    # @overload start_autonomous_database(params = {})
    # @param [Hash] params ({})
    def start_autonomous_database(params = {}, options = {})
      req = build_request(:start_autonomous_database, params)
      req.send_request(options)
    end

    # Starts the specified DB node in a VM cluster.
    #
    # @option params [String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster that contains the DB node to
    #   start. You must specify either this parameter or `exadbVmClusterId`.
    #
    # @option params [String] :exadb_vm_cluster_id
    #   The unique identifier of the Exascale VM cluster that contains the DB
    #   node to start. You must specify either this parameter or
    #   `cloudVmClusterId`.
    #
    # @option params [required, String] :db_node_id
    #   The unique identifier of the DB node to start.
    #
    # @return [Types::StartDbNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDbNodeOutput#db_node_id #db_node_id} => String
    #   * {Types::StartDbNodeOutput#status #status} => String
    #   * {Types::StartDbNodeOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_db_node({
    #     cloud_vm_cluster_id: "ResourceId",
    #     exadb_vm_cluster_id: "ResourceId",
    #     db_node_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_node_id #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/StartDbNode AWS API Documentation
    #
    # @overload start_db_node(params = {})
    # @param [Hash] params ({})
    def start_db_node(params = {}, options = {})
      req = build_request(:start_db_node, params)
      req.send_request(options)
    end

    # Stops the specified Autonomous Database.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database to stop.
    #
    # @return [Types::StopAutonomousDatabaseOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopAutonomousDatabaseOutput#autonomous_database_id #autonomous_database_id} => String
    #   * {Types::StopAutonomousDatabaseOutput#display_name #display_name} => String
    #   * {Types::StopAutonomousDatabaseOutput#status #status} => String
    #   * {Types::StopAutonomousDatabaseOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_autonomous_database({
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.autonomous_database_id #=> String
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/StopAutonomousDatabase AWS API Documentation
    #
    # @overload stop_autonomous_database(params = {})
    # @param [Hash] params ({})
    def stop_autonomous_database(params = {}, options = {})
      req = build_request(:stop_autonomous_database, params)
      req.send_request(options)
    end

    # Stops the specified DB node in a VM cluster.
    #
    # @option params [String] :cloud_vm_cluster_id
    #   The unique identifier of the VM cluster that contains the DB node to
    #   stop. You must specify either this parameter or `exadbVmClusterId`.
    #
    # @option params [String] :exadb_vm_cluster_id
    #   The unique identifier of the Exascale VM cluster that contains the DB
    #   node to stop. You must specify either this parameter or
    #   `cloudVmClusterId`.
    #
    # @option params [required, String] :db_node_id
    #   The unique identifier of the DB node to stop.
    #
    # @return [Types::StopDbNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopDbNodeOutput#db_node_id #db_node_id} => String
    #   * {Types::StopDbNodeOutput#status #status} => String
    #   * {Types::StopDbNodeOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_db_node({
    #     cloud_vm_cluster_id: "ResourceId",
    #     exadb_vm_cluster_id: "ResourceId",
    #     db_node_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_node_id #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "STOPPING", "STOPPED", "STARTING"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/StopDbNode AWS API Documentation
    #
    # @overload stop_db_node(params = {})
    # @param [Hash] params ({})
    def stop_db_node(params = {}, options = {})
      req = build_request(:stop_db_node, params)
      req.send_request(options)
    end

    # Performs a switchover of the specified Autonomous Database to a
    # standby peer database.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database to switch over.
    #
    # @option params [String] :peer_db_arn
    #   The Amazon Resource Name (ARN) of the peer Autonomous Database to
    #   switch over to.
    #
    # @return [Types::SwitchoverAutonomousDatabaseOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SwitchoverAutonomousDatabaseOutput#autonomous_database_id #autonomous_database_id} => String
    #   * {Types::SwitchoverAutonomousDatabaseOutput#display_name #display_name} => String
    #   * {Types::SwitchoverAutonomousDatabaseOutput#status #status} => String
    #   * {Types::SwitchoverAutonomousDatabaseOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.switchover_autonomous_database({
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     peer_db_arn: "ResourceArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.autonomous_database_id #=> String
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/SwitchoverAutonomousDatabase AWS API Documentation
    #
    # @overload switchover_autonomous_database(params = {})
    # @param [Hash] params ({})
    def switchover_autonomous_database(params = {}, options = {})
      req = build_request(:switchover_autonomous_database, params)
      req.send_request(options)
    end

    # Applies tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to apply tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of tags to apply to the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The names (keys) of the tags to remove from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the properties of an Autonomous Database.
    #
    # @option params [required, String] :autonomous_database_id
    #   The unique identifier of the Autonomous Database to update.
    #
    # @option params [String] :admin_password
    #   The new password for the `ADMIN` user of the Autonomous Database.
    #
    # @option params [Float] :compute_count
    #   The compute capacity, in number of ECPUs or OCPUs, to assign to the
    #   Autonomous Database.
    #
    # @option params [Integer] :cpu_core_count
    #   The number of CPU cores to allocate to the Autonomous Database.
    #
    # @option params [Integer] :data_storage_size_in_t_bs
    #   The size, in terabytes (TB), of the data volume to allocate for the
    #   Autonomous Database.
    #
    # @option params [Integer] :data_storage_size_in_g_bs
    #   The size, in gigabytes (GB), of the data volume to allocate for the
    #   Autonomous Database.
    #
    # @option params [String] :display_name
    #   The new user-friendly name for the Autonomous Database.
    #
    # @option params [String] :db_name
    #   The new name of the Autonomous Database.
    #
    # @option params [String] :db_version
    #   The Oracle Database software version to use for the Autonomous
    #   Database.
    #
    # @option params [String] :db_workload
    #   The intended use of the Autonomous Database, such as transaction
    #   processing, data warehouse, JSON database, or APEX.
    #
    # @option params [Array<Types::DatabaseTool>] :db_tools_details
    #   The list of database management tools to enable for the Autonomous
    #   Database.
    #
    # @option params [String] :database_edition
    #   The Oracle Database edition to apply to the Autonomous Database.
    #
    # @option params [String] :license_model
    #   The Oracle license model to apply to the Autonomous Database.
    #
    # @option params [Boolean] :is_auto_scaling_enabled
    #   Specifies whether to enable automatic scaling of the compute resources
    #   for the Autonomous Database.
    #
    # @option params [Boolean] :is_auto_scaling_for_storage_enabled
    #   Specifies whether to enable automatic scaling of the storage for the
    #   Autonomous Database.
    #
    # @option params [Boolean] :is_backup_retention_locked
    #   Specifies whether to lock the backup retention period of the
    #   Autonomous Database to prevent it from being shortened.
    #
    # @option params [Boolean] :is_local_data_guard_enabled
    #   Specifies whether to enable local Oracle Data Guard for the Autonomous
    #   Database.
    #
    # @option params [Boolean] :is_mtls_connection_required
    #   Specifies whether mutual TLS (mTLS) authentication is required to
    #   connect to the Autonomous Database.
    #
    # @option params [Boolean] :is_refreshable_clone
    #   Specifies whether the Autonomous Database is a refreshable clone.
    #
    # @option params [Boolean] :is_disconnect_peer
    #   Specifies whether to disconnect the Autonomous Database from its peer
    #   database.
    #
    # @option params [Integer] :backup_retention_period_in_days
    #   The retention period, in days, for automatic backups of the Autonomous
    #   Database.
    #
    # @option params [Float] :byol_compute_count_limit
    #   The maximum number of compute resources that you can allocate to the
    #   Autonomous Database under the bring-your-own-license (BYOL) model.
    #
    # @option params [Integer] :local_adg_auto_failover_max_data_loss_limit
    #   The maximum data loss limit, in seconds, for automatic failover to the
    #   local Oracle Data Guard standby database.
    #
    # @option params [String] :autonomous_maintenance_schedule_type
    #   The maintenance schedule type for the Autonomous Database.
    #
    # @option params [Array<Types::CustomerContact>] :customer_contacts_to_send_to_oci
    #   The list of customer contacts to receive operational notifications
    #   from OCI for the Autonomous Database.
    #
    # @option params [Array<Types::ScheduledOperationDetails>] :scheduled_operations
    #   The list of scheduled start and stop times for the Autonomous
    #   Database.
    #
    # @option params [Types::LongTermBackupSchedule] :long_term_backup_schedule
    #   The long-term backup schedule for the Autonomous Database.
    #
    # @option params [String] :open_mode
    #   The mode in which to open the Autonomous Database, either read-only or
    #   read/write.
    #
    # @option params [String] :permission_level
    #   The permission level of the Autonomous Database.
    #
    # @option params [String] :refreshable_mode
    #   The refresh mode of the refreshable clone Autonomous Database.
    #
    # @option params [String] :private_endpoint_ip
    #   The private endpoint IP address for the Autonomous Database.
    #
    # @option params [String] :private_endpoint_label
    #   The private endpoint label for the Autonomous Database.
    #
    # @option params [String] :peer_db_id
    #   The unique identifier of the peer Autonomous Database.
    #
    # @option params [String] :resource_pool_leader_id
    #   The unique identifier of the resource pool leader Autonomous Database.
    #
    # @option params [Types::ResourcePoolSummary] :resource_pool_summary
    #   The configuration of the resource pool for the Autonomous Database.
    #
    # @option params [String] :standby_allowlisted_ips_source
    #   The source of the allowlisted IP addresses for the standby Autonomous
    #   Database.
    #
    # @option params [Array<String>] :standby_allowlisted_ips
    #   The list of IP addresses that are allowed to access the standby
    #   Autonomous Database.
    #
    # @option params [Array<String>] :allowlisted_ips
    #   The list of IP addresses that are allowed to access the Autonomous
    #   Database.
    #
    # @option params [Integer] :auto_refresh_frequency_in_seconds
    #   The frequency, in seconds, at which the refreshable clone Autonomous
    #   Database is automatically refreshed.
    #
    # @option params [Integer] :auto_refresh_point_lag_in_seconds
    #   The time lag, in seconds, between the refreshable clone and its source
    #   Autonomous Database.
    #
    # @option params [Time,DateTime,Date,Integer,String] :time_of_auto_refresh_start
    #   The date and time at which the automatic refresh of the refreshable
    #   clone Autonomous Database starts.
    #
    # @option params [String] :encryption_key_provider
    #   The provider of the encryption key to use for the Autonomous Database.
    #
    # @option params [Types::EncryptionKeyConfigurationInput] :encryption_key_configuration
    #   The configuration of the encryption key to use for the Autonomous
    #   Database.
    #
    # @option params [String] :admin_password_source
    #   The source of the admin password for the Autonomous Database. When set
    #   to `CUSTOMER_MANAGED_AWS_SECRET`, the admin password is retrieved from
    #   an Amazon Web Services Secrets Manager secret.
    #
    # @option params [Types::AdminPasswordSourceConfigurationInput] :admin_password_source_configuration
    #   The configuration of the admin password source for the Autonomous
    #   Database.
    #
    # @return [Types::UpdateAutonomousDatabaseOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAutonomousDatabaseOutput#autonomous_database_id #autonomous_database_id} => String
    #   * {Types::UpdateAutonomousDatabaseOutput#display_name #display_name} => String
    #   * {Types::UpdateAutonomousDatabaseOutput#status #status} => String
    #   * {Types::UpdateAutonomousDatabaseOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_autonomous_database({
    #     autonomous_database_id: "ResourceIdOrArn", # required
    #     admin_password: "UpdateAutonomousDatabaseInputAdminPasswordString",
    #     compute_count: 1.0,
    #     cpu_core_count: 1,
    #     data_storage_size_in_t_bs: 1,
    #     data_storage_size_in_g_bs: 1,
    #     display_name: "ResourceDisplayName",
    #     db_name: "UpdateAutonomousDatabaseInputDbNameString",
    #     db_version: "UpdateAutonomousDatabaseInputDbVersionString",
    #     db_workload: "OLTP", # accepts OLTP, AJD, APEX, LH
    #     db_tools_details: [
    #       {
    #         is_enabled: false,
    #         name: "String",
    #         compute_count: 1.0,
    #         max_idle_time_in_minutes: 1,
    #       },
    #     ],
    #     database_edition: "STANDARD_EDITION", # accepts STANDARD_EDITION, ENTERPRISE_EDITION
    #     license_model: "BRING_YOUR_OWN_LICENSE", # accepts BRING_YOUR_OWN_LICENSE, LICENSE_INCLUDED
    #     is_auto_scaling_enabled: false,
    #     is_auto_scaling_for_storage_enabled: false,
    #     is_backup_retention_locked: false,
    #     is_local_data_guard_enabled: false,
    #     is_mtls_connection_required: false,
    #     is_refreshable_clone: false,
    #     is_disconnect_peer: false,
    #     backup_retention_period_in_days: 1,
    #     byol_compute_count_limit: 1.0,
    #     local_adg_auto_failover_max_data_loss_limit: 1,
    #     autonomous_maintenance_schedule_type: "EARLY", # accepts EARLY, REGULAR
    #     customer_contacts_to_send_to_oci: [
    #       {
    #         email: "CustomerContactEmailString",
    #       },
    #     ],
    #     scheduled_operations: [
    #       {
    #         day_of_week: { # required
    #           name: "MONDAY", # accepts MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
    #         },
    #         scheduled_start_time: "String",
    #         scheduled_stop_time: "String",
    #       },
    #     ],
    #     long_term_backup_schedule: {
    #       is_disabled: false,
    #       repeat_cadence: "ONE_TIME", # accepts ONE_TIME, WEEKLY, MONTHLY, YEARLY
    #       retention_period_in_days: 1,
    #       time_of_backup: Time.now,
    #     },
    #     open_mode: "READ_ONLY", # accepts READ_ONLY, READ_WRITE
    #     permission_level: "RESTRICTED", # accepts RESTRICTED, UNRESTRICTED
    #     refreshable_mode: "AUTOMATIC", # accepts AUTOMATIC, MANUAL
    #     private_endpoint_ip: "String",
    #     private_endpoint_label: "String",
    #     peer_db_id: "ResourceIdOrArn",
    #     resource_pool_leader_id: "ResourceIdOrArn",
    #     resource_pool_summary: {
    #       is_disabled: false,
    #       pool_size: 1,
    #       pool_storage_size_in_t_bs: 1,
    #       available_storage_capacity_in_t_bs: 1.0,
    #       total_compute_capacity: 1,
    #       available_compute_capacity: 1,
    #     },
    #     standby_allowlisted_ips_source: "PRIMARY", # accepts PRIMARY, SEPARATE, NOT_APPLICABLE
    #     standby_allowlisted_ips: ["String"],
    #     allowlisted_ips: ["String"],
    #     auto_refresh_frequency_in_seconds: 1,
    #     auto_refresh_point_lag_in_seconds: 1,
    #     time_of_auto_refresh_start: Time.now,
    #     encryption_key_provider: "ORACLE_MANAGED", # accepts ORACLE_MANAGED, AWS_KMS
    #     encryption_key_configuration: {
    #       aws_encryption_key: {
    #         iam_role_arn: "RoleArn",
    #         external_id_type: "database_ocid", # accepts database_ocid, compartment_ocid, tenant_ocid
    #         kms_key_id: "KmsKeyIdOrArn",
    #       },
    #     },
    #     admin_password_source: "CUSTOMER_MANAGED_AWS_SECRET", # accepts CUSTOMER_MANAGED_AWS_SECRET, API_REQUEST_PARAMETER
    #     admin_password_source_configuration: {
    #       customer_managed_aws_secret: {
    #         secret_id: "SecretIdOrArn",
    #         iam_role_arn: "RoleArn",
    #         external_id_type: "database_ocid", # accepts database_ocid, compartment_ocid, tenant_ocid
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.autonomous_database_id #=> String
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS", "STOPPING", "STOPPED", "STARTING", "UNAVAILABLE", "RESTORE_IN_PROGRESS", "RESTORE_FAILED", "BACKUP_IN_PROGRESS", "SCALE_IN_PROGRESS", "AVAILABLE_NEEDS_ATTENTION", "RESTARTING", "RECREATING", "ROLE_CHANGE_IN_PROGRESS", "UPGRADING", "INACCESSIBLE", "STANDBY"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/UpdateAutonomousDatabase AWS API Documentation
    #
    # @overload update_autonomous_database(params = {})
    # @param [Hash] params ({})
    def update_autonomous_database(params = {}, options = {})
      req = build_request(:update_autonomous_database, params)
      req.send_request(options)
    end

    # Updates the properties of an Autonomous Database backup.
    #
    # @option params [required, String] :autonomous_database_backup_id
    #   The unique identifier of the Autonomous Database backup to update.
    #
    # @option params [Integer] :retention_period_in_days
    #   The retention period, in days, for the Autonomous Database backup.
    #
    # @return [Types::UpdateAutonomousDatabaseBackupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAutonomousDatabaseBackupOutput#display_name #display_name} => String
    #   * {Types::UpdateAutonomousDatabaseBackupOutput#status #status} => String
    #   * {Types::UpdateAutonomousDatabaseBackupOutput#status_reason #status_reason} => String
    #   * {Types::UpdateAutonomousDatabaseBackupOutput#autonomous_database_backup_id #autonomous_database_backup_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_autonomous_database_backup({
    #     autonomous_database_backup_id: "ResourceId", # required
    #     retention_period_in_days: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.autonomous_database_backup_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/UpdateAutonomousDatabaseBackup AWS API Documentation
    #
    # @overload update_autonomous_database_backup(params = {})
    # @param [Hash] params ({})
    def update_autonomous_database_backup(params = {}, options = {})
      req = build_request(:update_autonomous_database_backup, params)
      req.send_request(options)
    end

    # Updates the properties of an Exadata infrastructure resource.
    #
    # @option params [required, String] :cloud_exadata_infrastructure_id
    #   The unique identifier of the Exadata infrastructure to update.
    #
    # @option params [Types::MaintenanceWindow] :maintenance_window
    #   The scheduling details for the maintenance window. Patching and system
    #   updates take place during the maintenance window.
    #
    # @return [Types::UpdateCloudExadataInfrastructureOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCloudExadataInfrastructureOutput#display_name #display_name} => String
    #   * {Types::UpdateCloudExadataInfrastructureOutput#status #status} => String
    #   * {Types::UpdateCloudExadataInfrastructureOutput#status_reason #status_reason} => String
    #   * {Types::UpdateCloudExadataInfrastructureOutput#cloud_exadata_infrastructure_id #cloud_exadata_infrastructure_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cloud_exadata_infrastructure({
    #     cloud_exadata_infrastructure_id: "ResourceIdOrArn", # required
    #     maintenance_window: {
    #       custom_action_timeout_in_mins: 1,
    #       days_of_week: [
    #         {
    #           name: "MONDAY", # accepts MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
    #         },
    #       ],
    #       hours_of_day: [1],
    #       is_custom_action_timeout_enabled: false,
    #       lead_time_in_weeks: 1,
    #       months: [
    #         {
    #           name: "JANUARY", # accepts JANUARY, FEBRUARY, MARCH, APRIL, MAY, JUNE, JULY, AUGUST, SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER
    #         },
    #       ],
    #       patching_mode: "ROLLING", # accepts ROLLING, NONROLLING
    #       preference: "NO_PREFERENCE", # accepts NO_PREFERENCE, CUSTOM_PREFERENCE
    #       skip_ru: false,
    #       weeks_of_month: [1],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.cloud_exadata_infrastructure_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/UpdateCloudExadataInfrastructure AWS API Documentation
    #
    # @overload update_cloud_exadata_infrastructure(params = {})
    # @param [Hash] params ({})
    def update_cloud_exadata_infrastructure(params = {}, options = {})
      req = build_request(:update_cloud_exadata_infrastructure, params)
      req.send_request(options)
    end

    # Updates the specified Exascale VM cluster.
    #
    # @option params [required, String] :exadb_vm_cluster_id
    #   The unique identifier of the Exascale VM cluster to update.
    #
    # @option params [Types::DataCollectionOptions] :data_collection_options
    #   The set of preferences for the various diagnostic collection options
    #   for the Exascale VM cluster.
    #
    # @option params [String] :display_name
    #   A new user-friendly name for the Exascale VM cluster.
    #
    # @option params [Integer] :enabled_ecpu_count
    #   The number of ECPUs to enable for the Exascale VM cluster.
    #
    # @option params [String] :grid_image_id
    #   The Grid Infrastructure software image ID for the Exascale VM cluster.
    #
    # @option params [String] :license_model
    #   The Oracle license model to apply to the Exascale VM cluster.
    #
    # @option params [Array<String>] :ssh_public_keys
    #   The public key portion of one or more key pairs used for SSH access to
    #   the Exascale VM cluster.
    #
    # @option params [String] :system_version
    #   The version of the operating system of the image for the Exascale VM
    #   cluster.
    #
    # @option params [Integer] :total_ecpu_count
    #   The total number of ECPUs for the Exascale VM cluster.
    #
    # @option params [String] :update_action
    #   The update action to perform on the Exascale VM cluster.
    #
    # @option params [Integer] :vm_file_system_storage_total_size_in_g_bs
    #   The total amount of file system storage, in gigabytes (GB), for the
    #   Exascale VM cluster.
    #
    # @return [Types::UpdateExadbVmClusterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateExadbVmClusterOutput#display_name #display_name} => String
    #   * {Types::UpdateExadbVmClusterOutput#status #status} => String
    #   * {Types::UpdateExadbVmClusterOutput#status_reason #status_reason} => String
    #   * {Types::UpdateExadbVmClusterOutput#exadb_vm_cluster_id #exadb_vm_cluster_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_exadb_vm_cluster({
    #     exadb_vm_cluster_id: "ResourceIdOrArn", # required
    #     data_collection_options: {
    #       is_diagnostics_events_enabled: false,
    #       is_health_monitoring_enabled: false,
    #       is_incident_logs_enabled: false,
    #     },
    #     display_name: "ResourceDisplayName",
    #     enabled_ecpu_count: 1,
    #     grid_image_id: "UpdateExadbVmClusterInputGridImageIdString",
    #     license_model: "BRING_YOUR_OWN_LICENSE", # accepts BRING_YOUR_OWN_LICENSE, LICENSE_INCLUDED
    #     ssh_public_keys: ["String"],
    #     system_version: "UpdateExadbVmClusterInputSystemVersionString",
    #     total_ecpu_count: 1,
    #     update_action: "ROLLING_APPLY", # accepts ROLLING_APPLY, NON_ROLLING_APPLY, PRECHECK, ROLLBACK
    #     vm_file_system_storage_total_size_in_g_bs: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.exadb_vm_cluster_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/UpdateExadbVmCluster AWS API Documentation
    #
    # @overload update_exadb_vm_cluster(params = {})
    # @param [Hash] params ({})
    def update_exadb_vm_cluster(params = {}, options = {})
      req = build_request(:update_exadb_vm_cluster, params)
      req.send_request(options)
    end

    # Updates the specified Exascale storage vault.
    #
    # @option params [required, String] :exascale_db_storage_vault_id
    #   The unique identifier of the Exascale storage vault to update.
    #
    # @option params [Integer] :additional_flash_cache_in_percent
    #   The additional flash cache percentage for the Exascale storage vault.
    #
    # @option params [Integer] :autoscale_limit_in_g_bs
    #   The autoscale limit in gigabytes (GB) for the Exascale storage vault.
    #
    # @option params [String] :description
    #   A new description for the Exascale storage vault.
    #
    # @option params [String] :display_name
    #   A new user-friendly name for the Exascale storage vault.
    #
    # @option params [Integer] :high_capacity_database_storage_total_size_in_g_bs
    #   The total size of the high-capacity database storage, in gigabytes
    #   (GB), for the Exascale storage vault.
    #
    # @option params [Boolean] :is_autoscale_enabled
    #   Specifies whether autoscaling is enabled for the Exascale storage
    #   vault.
    #
    # @return [Types::UpdateExascaleDbStorageVaultOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateExascaleDbStorageVaultOutput#display_name #display_name} => String
    #   * {Types::UpdateExascaleDbStorageVaultOutput#status #status} => String
    #   * {Types::UpdateExascaleDbStorageVaultOutput#status_reason #status_reason} => String
    #   * {Types::UpdateExascaleDbStorageVaultOutput#exascale_db_storage_vault_id #exascale_db_storage_vault_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_exascale_db_storage_vault({
    #     exascale_db_storage_vault_id: "ResourceIdOrArn", # required
    #     additional_flash_cache_in_percent: 1,
    #     autoscale_limit_in_g_bs: 1,
    #     description: "UpdateExascaleDbStorageVaultInputDescriptionString",
    #     display_name: "ResourceDisplayName",
    #     high_capacity_database_storage_total_size_in_g_bs: 1,
    #     is_autoscale_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.exascale_db_storage_vault_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/UpdateExascaleDbStorageVault AWS API Documentation
    #
    # @overload update_exascale_db_storage_vault(params = {})
    # @param [Hash] params ({})
    def update_exascale_db_storage_vault(params = {}, options = {})
      req = build_request(:update_exascale_db_storage_vault, params)
      req.send_request(options)
    end

    # Updates properties of a specified ODB network.
    #
    # @option params [required, String] :odb_network_id
    #   The unique identifier of the ODB network to update.
    #
    # @option params [String] :display_name
    #   The new user-friendly name of the ODB network.
    #
    # @option params [Array<String>] :peered_cidrs_to_be_added
    #   The list of CIDR ranges from the peered VPC that allow access to the
    #   ODB network.
    #
    # @option params [Array<String>] :peered_cidrs_to_be_removed
    #   The list of CIDR ranges from the peered VPC to remove from the ODB
    #   network.
    #
    # @option params [String] :s3_access
    #   Specifies the updated configuration for Amazon S3 access from the ODB
    #   network.
    #
    # @option params [String] :zero_etl_access
    #   Specifies the updated configuration for Zero-ETL access from the ODB
    #   network.
    #
    # @option params [String] :sts_access
    #   The Amazon Web Services Security Token Service (STS) access
    #   configuration for the ODB network.
    #
    # @option params [String] :kms_access
    #   The Amazon Web Services Key Management Service (KMS) access
    #   configuration for the ODB network.
    #
    # @option params [String] :s3_policy_document
    #   Specifies the updated endpoint policy for Amazon S3 access from the
    #   ODB network.
    #
    # @option params [String] :sts_policy_document
    #   The Amazon Web Services Security Token Service (STS) policy document
    #   that defines permissions for token service usage within the ODB
    #   network.
    #
    # @option params [String] :kms_policy_document
    #   The Amazon Web Services Key Management Service (KMS) policy document
    #   that defines permissions for key usage within the ODB network.
    #
    # @option params [Array<String>] :cross_region_s3_restore_sources_to_enable
    #   The cross-Region Amazon S3 restore sources to enable for the ODB
    #   network.
    #
    # @option params [Array<String>] :cross_region_s3_restore_sources_to_disable
    #   The cross-Region Amazon S3 restore sources to disable for the ODB
    #   network.
    #
    # @return [Types::UpdateOdbNetworkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOdbNetworkOutput#display_name #display_name} => String
    #   * {Types::UpdateOdbNetworkOutput#status #status} => String
    #   * {Types::UpdateOdbNetworkOutput#status_reason #status_reason} => String
    #   * {Types::UpdateOdbNetworkOutput#odb_network_id #odb_network_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_odb_network({
    #     odb_network_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName",
    #     peered_cidrs_to_be_added: ["String"],
    #     peered_cidrs_to_be_removed: ["String"],
    #     s3_access: "ENABLED", # accepts ENABLED, DISABLED
    #     zero_etl_access: "ENABLED", # accepts ENABLED, DISABLED
    #     sts_access: "ENABLED", # accepts ENABLED, DISABLED
    #     kms_access: "ENABLED", # accepts ENABLED, DISABLED
    #     s3_policy_document: "PolicyDocument",
    #     sts_policy_document: "PolicyDocument",
    #     kms_policy_document: "PolicyDocument",
    #     cross_region_s3_restore_sources_to_enable: ["String"],
    #     cross_region_s3_restore_sources_to_disable: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.odb_network_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/UpdateOdbNetwork AWS API Documentation
    #
    # @overload update_odb_network(params = {})
    # @param [Hash] params ({})
    def update_odb_network(params = {}, options = {})
      req = build_request(:update_odb_network, params)
      req.send_request(options)
    end

    # Modifies the settings of an Oracle Database@Amazon Web Services
    # peering connection. You can update the display name and add or remove
    # CIDR blocks from the peering connection.
    #
    # @option params [required, String] :odb_peering_connection_id
    #   The identifier of the Oracle Database@Amazon Web Services peering
    #   connection to update.
    #
    # @option params [String] :display_name
    #   A new display name for the peering connection.
    #
    # @option params [Array<String>] :peer_network_cidrs_to_be_added
    #   A list of CIDR blocks to add to the peering connection. These CIDR
    #   blocks define the IP address ranges that can communicate through the
    #   peering connection. The CIDR blocks must not overlap with existing
    #   CIDR blocks in the Oracle Database@Amazon Web Services network.
    #
    # @option params [Array<String>] :peer_network_cidrs_to_be_removed
    #   A list of CIDR blocks to remove from the peering connection. The CIDR
    #   blocks must currently exist in the peering connection.
    #
    # @return [Types::UpdateOdbPeeringConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOdbPeeringConnectionOutput#display_name #display_name} => String
    #   * {Types::UpdateOdbPeeringConnectionOutput#status #status} => String
    #   * {Types::UpdateOdbPeeringConnectionOutput#status_reason #status_reason} => String
    #   * {Types::UpdateOdbPeeringConnectionOutput#odb_peering_connection_id #odb_peering_connection_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_odb_peering_connection({
    #     odb_peering_connection_id: "ResourceIdOrArn", # required
    #     display_name: "ResourceDisplayName",
    #     peer_network_cidrs_to_be_added: ["PeeredCidr"],
    #     peer_network_cidrs_to_be_removed: ["PeeredCidr"],
    #   })
    #
    # @example Response structure
    #
    #   resp.display_name #=> String
    #   resp.status #=> String, one of "AVAILABLE", "FAILED", "PROVISIONING", "TERMINATED", "TERMINATING", "UPDATING", "MAINTENANCE_IN_PROGRESS"
    #   resp.status_reason #=> String
    #   resp.odb_peering_connection_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/odb-2024-08-20/UpdateOdbPeeringConnection AWS API Documentation
    #
    # @overload update_odb_peering_connection(params = {})
    # @param [Hash] params ({})
    def update_odb_peering_connection(params = {}, options = {})
      req = build_request(:update_odb_peering_connection, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Odb')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-odb'
      context[:gem_version] = '1.27.0'
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
