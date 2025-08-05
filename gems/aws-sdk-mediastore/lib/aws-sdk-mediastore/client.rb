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

module Aws::MediaStore
  # An API client for MediaStore.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MediaStore::Client.new(
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

    @identifier = :mediastore

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
    add_plugin(Aws::MediaStore::Plugins::Endpoints)

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
    #   @option options [Aws::MediaStore::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MediaStore::EndpointParameters`.
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

    # Creates a storage container to hold objects. A container is similar to
    # a bucket in the Amazon S3 service.
    #
    # @option params [required, String] :container_name
    #   The name for the container. The name must be from 1 to 255 characters.
    #   Container names must be unique to your AWS account within a specific
    #   region. As an example, you could create a container named `movies` in
    #   every region, as long as you don’t have an existing container with
    #   that name.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key:value pairs that you define. These values can be
    #   anything that you want. Typically, the tag key represents a category
    #   (such as "environment") and the tag value represents a specific
    #   value within that category (such as "test," "development," or
    #   "production"). You can add up to 50 tags to each container. For more
    #   information about tagging, including naming and usage conventions, see
    #   [Tagging Resources in MediaStore][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html
    #
    # @return [Types::CreateContainerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContainerOutput#container #container} => Types::Container
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_container({
    #     container_name: "ContainerName", # required
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
    #   resp.container.endpoint #=> String
    #   resp.container.creation_time #=> Time
    #   resp.container.arn #=> String
    #   resp.container.name #=> String
    #   resp.container.status #=> String, one of "ACTIVE", "CREATING", "DELETING"
    #   resp.container.access_logging_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/CreateContainer AWS API Documentation
    #
    # @overload create_container(params = {})
    # @param [Hash] params ({})
    def create_container(params = {}, options = {})
      req = build_request(:create_container, params)
      req.send_request(options)
    end

    # Deletes the specified container. Before you make a `DeleteContainer`
    # request, delete any objects in the container or in any folders in the
    # container. You can delete only empty containers.
    #
    # @option params [required, String] :container_name
    #   The name of the container to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_container({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteContainer AWS API Documentation
    #
    # @overload delete_container(params = {})
    # @param [Hash] params ({})
    def delete_container(params = {}, options = {})
      req = build_request(:delete_container, params)
      req.send_request(options)
    end

    # Deletes the access policy that is associated with the specified
    # container.
    #
    # @option params [required, String] :container_name
    #   The name of the container that holds the policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_container_policy({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteContainerPolicy AWS API Documentation
    #
    # @overload delete_container_policy(params = {})
    # @param [Hash] params ({})
    def delete_container_policy(params = {}, options = {})
      req = build_request(:delete_container_policy, params)
      req.send_request(options)
    end

    # Deletes the cross-origin resource sharing (CORS) configuration
    # information that is set for the container.
    #
    # To use this operation, you must have permission to perform the
    # `MediaStore:DeleteCorsPolicy` action. The container owner has this
    # permission by default and can grant this permission to others.
    #
    # @option params [required, String] :container_name
    #   The name of the container to remove the policy from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cors_policy({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteCorsPolicy AWS API Documentation
    #
    # @overload delete_cors_policy(params = {})
    # @param [Hash] params ({})
    def delete_cors_policy(params = {}, options = {})
      req = build_request(:delete_cors_policy, params)
      req.send_request(options)
    end

    # Removes an object lifecycle policy from a container. It takes up to 20
    # minutes for the change to take effect.
    #
    # @option params [required, String] :container_name
    #   The name of the container that holds the object lifecycle policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lifecycle_policy({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteLifecyclePolicy AWS API Documentation
    #
    # @overload delete_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def delete_lifecycle_policy(params = {}, options = {})
      req = build_request(:delete_lifecycle_policy, params)
      req.send_request(options)
    end

    # Deletes the metric policy that is associated with the specified
    # container. If there is no metric policy associated with the container,
    # MediaStore doesn't send metrics to CloudWatch.
    #
    # @option params [required, String] :container_name
    #   The name of the container that is associated with the metric policy
    #   that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_metric_policy({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DeleteMetricPolicy AWS API Documentation
    #
    # @overload delete_metric_policy(params = {})
    # @param [Hash] params ({})
    def delete_metric_policy(params = {}, options = {})
      req = build_request(:delete_metric_policy, params)
      req.send_request(options)
    end

    # Retrieves the properties of the requested container. This request is
    # commonly used to retrieve the endpoint of a container. An endpoint is
    # a value assigned by the service when a new container is created. A
    # container's endpoint does not change after it has been assigned. The
    # `DescribeContainer` request returns a single `Container` object based
    # on `ContainerName`. To return all `Container` objects that are
    # associated with a specified AWS account, use ListContainers.
    #
    # @option params [String] :container_name
    #   The name of the container to query.
    #
    # @return [Types::DescribeContainerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContainerOutput#container #container} => Types::Container
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_container({
    #     container_name: "ContainerName",
    #   })
    #
    # @example Response structure
    #
    #   resp.container.endpoint #=> String
    #   resp.container.creation_time #=> Time
    #   resp.container.arn #=> String
    #   resp.container.name #=> String
    #   resp.container.status #=> String, one of "ACTIVE", "CREATING", "DELETING"
    #   resp.container.access_logging_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/DescribeContainer AWS API Documentation
    #
    # @overload describe_container(params = {})
    # @param [Hash] params ({})
    def describe_container(params = {}, options = {})
      req = build_request(:describe_container, params)
      req.send_request(options)
    end

    # Retrieves the access policy for the specified container. For
    # information about the data that is included in an access policy, see
    # the [AWS Identity and Access Management User Guide][1].
    #
    #
    #
    # [1]: https://aws.amazon.com/documentation/iam/
    #
    # @option params [required, String] :container_name
    #   The name of the container.
    #
    # @return [Types::GetContainerPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContainerPolicyOutput#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_container_policy({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetContainerPolicy AWS API Documentation
    #
    # @overload get_container_policy(params = {})
    # @param [Hash] params ({})
    def get_container_policy(params = {}, options = {})
      req = build_request(:get_container_policy, params)
      req.send_request(options)
    end

    # Returns the cross-origin resource sharing (CORS) configuration
    # information that is set for the container.
    #
    # To use this operation, you must have permission to perform the
    # `MediaStore:GetCorsPolicy` action. By default, the container owner has
    # this permission and can grant it to others.
    #
    # @option params [required, String] :container_name
    #   The name of the container that the policy is assigned to.
    #
    # @return [Types::GetCorsPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCorsPolicyOutput#cors_policy #cors_policy} => Array&lt;Types::CorsRule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cors_policy({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cors_policy #=> Array
    #   resp.cors_policy[0].allowed_origins #=> Array
    #   resp.cors_policy[0].allowed_origins[0] #=> String
    #   resp.cors_policy[0].allowed_methods #=> Array
    #   resp.cors_policy[0].allowed_methods[0] #=> String, one of "PUT", "GET", "DELETE", "HEAD"
    #   resp.cors_policy[0].allowed_headers #=> Array
    #   resp.cors_policy[0].allowed_headers[0] #=> String
    #   resp.cors_policy[0].max_age_seconds #=> Integer
    #   resp.cors_policy[0].expose_headers #=> Array
    #   resp.cors_policy[0].expose_headers[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetCorsPolicy AWS API Documentation
    #
    # @overload get_cors_policy(params = {})
    # @param [Hash] params ({})
    def get_cors_policy(params = {}, options = {})
      req = build_request(:get_cors_policy, params)
      req.send_request(options)
    end

    # Retrieves the object lifecycle policy that is assigned to a container.
    #
    # @option params [required, String] :container_name
    #   The name of the container that the object lifecycle policy is assigned
    #   to.
    #
    # @return [Types::GetLifecyclePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLifecyclePolicyOutput#lifecycle_policy #lifecycle_policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_policy({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetLifecyclePolicy AWS API Documentation
    #
    # @overload get_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def get_lifecycle_policy(params = {}, options = {})
      req = build_request(:get_lifecycle_policy, params)
      req.send_request(options)
    end

    # Returns the metric policy for the specified container.
    #
    # @option params [required, String] :container_name
    #   The name of the container that is associated with the metric policy.
    #
    # @return [Types::GetMetricPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMetricPolicyOutput#metric_policy #metric_policy} => Types::MetricPolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metric_policy({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_policy.container_level_metrics #=> String, one of "ENABLED", "DISABLED"
    #   resp.metric_policy.metric_policy_rules #=> Array
    #   resp.metric_policy.metric_policy_rules[0].object_group #=> String
    #   resp.metric_policy.metric_policy_rules[0].object_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/GetMetricPolicy AWS API Documentation
    #
    # @overload get_metric_policy(params = {})
    # @param [Hash] params ({})
    def get_metric_policy(params = {}, options = {})
      req = build_request(:get_metric_policy, params)
      req.send_request(options)
    end

    # Lists the properties of all containers in AWS Elemental MediaStore.
    #
    # You can query to receive all the containers in one response. Or you
    # can include the `MaxResults` parameter to receive a limited number of
    # containers in each response. In this case, the response includes a
    # token. To get the next set of containers, send the command again, this
    # time with the `NextToken` parameter (with the returned token as its
    # value). The next set of responses appears, with a token if there are
    # still more containers to receive.
    #
    # See also DescribeContainer, which gets the properties of one
    # container.
    #
    # @option params [String] :next_token
    #   Only if you used `MaxResults` in the first command, enter the token
    #   (which was included in the previous response) to obtain the next set
    #   of containers. This token is included in a response only if there
    #   actually are more containers to list.
    #
    # @option params [Integer] :max_results
    #   Enter the maximum number of containers in the response. Use from 1 to
    #   255 characters.
    #
    # @return [Types::ListContainersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContainersOutput#containers #containers} => Array&lt;Types::Container&gt;
    #   * {Types::ListContainersOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_containers({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.containers #=> Array
    #   resp.containers[0].endpoint #=> String
    #   resp.containers[0].creation_time #=> Time
    #   resp.containers[0].arn #=> String
    #   resp.containers[0].name #=> String
    #   resp.containers[0].status #=> String, one of "ACTIVE", "CREATING", "DELETING"
    #   resp.containers[0].access_logging_enabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/ListContainers AWS API Documentation
    #
    # @overload list_containers(params = {})
    # @param [Hash] params ({})
    def list_containers(params = {}, options = {})
      req = build_request(:list_containers, params)
      req.send_request(options)
    end

    # Returns a list of the tags assigned to the specified container.
    #
    # @option params [required, String] :resource
    #   The Amazon Resource Name (ARN) for the container.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource: "ContainerARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates an access policy for the specified container to restrict the
    # users and clients that can access it. For information about the data
    # that is included in an access policy, see the [AWS Identity and Access
    # Management User Guide][1].
    #
    # For this release of the REST API, you can create only one policy for a
    # container. If you enter `PutContainerPolicy` twice, the second command
    # modifies the existing policy.
    #
    #
    #
    # [1]: https://aws.amazon.com/documentation/iam/
    #
    # @option params [required, String] :container_name
    #   The name of the container.
    #
    # @option params [required, String] :policy
    #   The contents of the policy, which includes the following:
    #
    #   * One `Version` tag
    #
    #   * One `Statement` tag that contains the standard tags for the policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_container_policy({
    #     container_name: "ContainerName", # required
    #     policy: "ContainerPolicy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutContainerPolicy AWS API Documentation
    #
    # @overload put_container_policy(params = {})
    # @param [Hash] params ({})
    def put_container_policy(params = {}, options = {})
      req = build_request(:put_container_policy, params)
      req.send_request(options)
    end

    # Sets the cross-origin resource sharing (CORS) configuration on a
    # container so that the container can service cross-origin requests. For
    # example, you might want to enable a request whose origin is
    # http://www.example.com to access your AWS Elemental MediaStore
    # container at my.example.container.com by using the browser's
    # XMLHttpRequest capability.
    #
    # To enable CORS on a container, you attach a CORS policy to the
    # container. In the CORS policy, you configure rules that identify
    # origins and the HTTP methods that can be executed on your container.
    # The policy can contain up to 398,000 characters. You can add up to 100
    # rules to a CORS policy. If more than one rule applies, the service
    # uses the first applicable rule listed.
    #
    # To learn more about CORS, see [Cross-Origin Resource Sharing (CORS) in
    # AWS Elemental MediaStore][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediastore/latest/ug/cors-policy.html
    #
    # @option params [required, String] :container_name
    #   The name of the container that you want to assign the CORS policy to.
    #
    # @option params [required, Array<Types::CorsRule>] :cors_policy
    #   The CORS policy to apply to the container.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_cors_policy({
    #     container_name: "ContainerName", # required
    #     cors_policy: [ # required
    #       {
    #         allowed_origins: ["Origin"], # required
    #         allowed_methods: ["PUT"], # accepts PUT, GET, DELETE, HEAD
    #         allowed_headers: ["Header"], # required
    #         max_age_seconds: 1,
    #         expose_headers: ["Header"],
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutCorsPolicy AWS API Documentation
    #
    # @overload put_cors_policy(params = {})
    # @param [Hash] params ({})
    def put_cors_policy(params = {}, options = {})
      req = build_request(:put_cors_policy, params)
      req.send_request(options)
    end

    # Writes an object lifecycle policy to a container. If the container
    # already has an object lifecycle policy, the service replaces the
    # existing policy with the new policy. It takes up to 20 minutes for the
    # change to take effect.
    #
    # For information about how to construct an object lifecycle policy, see
    # [Components of an Object Lifecycle Policy][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediastore/latest/ug/policies-object-lifecycle-components.html
    #
    # @option params [required, String] :container_name
    #   The name of the container that you want to assign the object lifecycle
    #   policy to.
    #
    # @option params [required, String] :lifecycle_policy
    #   The object lifecycle policy to apply to the container.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lifecycle_policy({
    #     container_name: "ContainerName", # required
    #     lifecycle_policy: "LifecyclePolicy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutLifecyclePolicy AWS API Documentation
    #
    # @overload put_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def put_lifecycle_policy(params = {}, options = {})
      req = build_request(:put_lifecycle_policy, params)
      req.send_request(options)
    end

    # The metric policy that you want to add to the container. A metric
    # policy allows AWS Elemental MediaStore to send metrics to Amazon
    # CloudWatch. It takes up to 20 minutes for the new policy to take
    # effect.
    #
    # @option params [required, String] :container_name
    #   The name of the container that you want to add the metric policy to.
    #
    # @option params [required, Types::MetricPolicy] :metric_policy
    #   The metric policy that you want to associate with the container. In
    #   the policy, you must indicate whether you want MediaStore to send
    #   container-level metrics. You can also include up to five rules to
    #   define groups of objects that you want MediaStore to send object-level
    #   metrics for. If you include rules in the policy, construct each rule
    #   with both of the following:
    #
    #   * An object group that defines which objects to include in the group.
    #     The definition can be a path or a file name, but it can't have more
    #     than 900 characters. Valid characters are: a-z, A-Z, 0-9, \_
    #     (underscore), = (equal), : (colon), . (period), - (hyphen), ~
    #     (tilde), / (forward slash), and * (asterisk). Wildcards (*) are
    #     acceptable.
    #
    #   * An object group name that allows you to refer to the object group.
    #     The name can't have more than 30 characters. Valid characters are:
    #     a-z, A-Z, 0-9, and \_ (underscore).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_metric_policy({
    #     container_name: "ContainerName", # required
    #     metric_policy: { # required
    #       container_level_metrics: "ENABLED", # required, accepts ENABLED, DISABLED
    #       metric_policy_rules: [
    #         {
    #           object_group: "ObjectGroup", # required
    #           object_group_name: "ObjectGroupName", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/PutMetricPolicy AWS API Documentation
    #
    # @overload put_metric_policy(params = {})
    # @param [Hash] params ({})
    def put_metric_policy(params = {}, options = {})
      req = build_request(:put_metric_policy, params)
      req.send_request(options)
    end

    # Starts access logging on the specified container. When you enable
    # access logging on a container, MediaStore delivers access logs for
    # objects stored in that container to Amazon CloudWatch Logs.
    #
    # @option params [required, String] :container_name
    #   The name of the container that you want to start access logging on.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_access_logging({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/StartAccessLogging AWS API Documentation
    #
    # @overload start_access_logging(params = {})
    # @param [Hash] params ({})
    def start_access_logging(params = {}, options = {})
      req = build_request(:start_access_logging, params)
      req.send_request(options)
    end

    # Stops access logging on the specified container. When you stop access
    # logging on a container, MediaStore stops sending access logs to Amazon
    # CloudWatch Logs. These access logs are not saved and are not
    # retrievable.
    #
    # @option params [required, String] :container_name
    #   The name of the container that you want to stop access logging on.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_access_logging({
    #     container_name: "ContainerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/StopAccessLogging AWS API Documentation
    #
    # @overload stop_access_logging(params = {})
    # @param [Hash] params ({})
    def stop_access_logging(params = {}, options = {})
      req = build_request(:stop_access_logging, params)
      req.send_request(options)
    end

    # Adds tags to the specified AWS Elemental MediaStore container. Tags
    # are key:value pairs that you can associate with AWS resources. For
    # example, the tag key might be "customer" and the tag value might be
    # "companyA." You can specify one or more tags to add to each
    # container. You can add up to 50 tags to each container. For more
    # information about tagging, including naming and usage conventions, see
    # [Tagging Resources in MediaStore][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html
    #
    # @option params [required, String] :resource
    #   The Amazon Resource Name (ARN) for the container.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   An array of key:value pairs that you want to add to the container. You
    #   need to specify only the tags that you want to add or update. For
    #   example, suppose a container already has two tags (customer:CompanyA
    #   and priority:High). You want to change the priority tag and also add a
    #   third tag (type:Contract). For TagResource, you specify the following
    #   tags: priority:Medium, type:Contract. The result is that your
    #   container has three tags: customer:CompanyA, priority:Medium, and
    #   type:Contract.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource: "ContainerARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the specified container. You can specify one or more
    # tags to remove.
    #
    # @option params [required, String] :resource
    #   The Amazon Resource Name (ARN) for the container.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A comma-separated list of keys for tags that you want to remove from
    #   the container. For example, if your container has two tags
    #   (customer:CompanyA and priority:High) and you want to remove one of
    #   the tags (priority:High), you specify the key for the tag that you
    #   want to remove (priority).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource: "ContainerARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-2017-09-01/UntagResource AWS API Documentation
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
        Aws::Telemetry.module_to_tracer_name('Aws::MediaStore')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-mediastore'
      context[:gem_version] = '1.76.0'
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
