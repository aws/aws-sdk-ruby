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

module Aws::QApps
  # An API client for QApps.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::QApps::Client.new(
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

    @identifier = :qapps

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
    add_plugin(Aws::QApps::Plugins::Endpoints)

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
    #   @option options [Aws::QApps::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::QApps::EndpointParameters`.
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

    # Associates a rating or review for a library item with the user
    # submitting the request. This increments the rating count for the
    # specified library item.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier for the Amazon Q Business application
    #   environment instance.
    #
    # @option params [required, String] :library_item_id
    #   The unique identifier of the library item to associate the review
    #   with.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Increase the rating counter by 1 for the related app for this user
    #
    #   resp = client.associate_library_item_review({
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_library_item_review({
    #     instance_id: "InstanceId", # required
    #     library_item_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/AssociateLibraryItemReview AWS API Documentation
    #
    # @overload associate_library_item_review(params = {})
    # @param [Hash] params ({})
    def associate_library_item_review(params = {}, options = {})
      req = build_request(:associate_library_item_review, params)
      req.send_request(options)
    end

    # This operation creates a link between the user's identity calling the
    # operation and a specific Q App. This is useful to mark the Q App as a
    # *favorite* for the user if the user doesn't own the Amazon Q App so
    # they can still run it and see it in their inventory of Q Apps.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :app_id
    #   The ID of the Amazon Q App to associate with the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Links an Amazon Q App to the invoker's list of apps
    #
    #   resp = client.associate_q_app_with_user({
    #     app_id: "393e77fb-0a30-4f47-ad30-75d71aeaed8a", 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_q_app_with_user({
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/AssociateQAppWithUser AWS API Documentation
    #
    # @overload associate_q_app_with_user(params = {})
    # @param [Hash] params ({})
    def associate_q_app_with_user(params = {}, options = {})
      req = build_request(:associate_q_app_with_user, params)
      req.send_request(options)
    end

    # Creates Categories for the Amazon Q Business application environment
    # instance. Web experience users use Categories to tag and filter
    # library items. For more information, see [Custom labels for Amazon Q
    # Apps][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, Array<Types::BatchCreateCategoryInputCategory>] :categories
    #   The list of category objects to be created
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Creates the categories for the library
    #
    #   resp = client.batch_create_category({
    #     categories: [
    #       {
    #         id: "549abfe0-f5c4-45a2-bb9b-c05987a49c6d", 
    #         title: "HR", 
    #       }, 
    #       {
    #         id: "18cbebaa-196a-4aa5-a840-88d548e07f8f", 
    #         title: "Marketing", 
    #       }, 
    #     ], 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_category({
    #     instance_id: "InstanceId", # required
    #     categories: [ # required
    #       {
    #         id: "UUID",
    #         title: "BatchCreateCategoryInputCategoryTitleString", # required
    #         color: "BatchCreateCategoryInputCategoryColorString",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/BatchCreateCategory AWS API Documentation
    #
    # @overload batch_create_category(params = {})
    # @param [Hash] params ({})
    def batch_create_category(params = {}, options = {})
      req = build_request(:batch_create_category, params)
      req.send_request(options)
    end

    # Deletes Categories for the Amazon Q Business application environment
    # instance. Web experience users use Categories to tag and filter
    # library items. For more information, see [Custom labels for Amazon Q
    # Apps][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, Array<String>] :categories
    #   The list of IDs of the categories to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Deletes the categories in the library
    #
    #   resp = client.batch_delete_category({
    #     categories: [
    #       "9c871ed4-1c41-4065-aefe-321cd4b61cf8", 
    #     ], 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_category({
    #     instance_id: "InstanceId", # required
    #     categories: ["UUID"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/BatchDeleteCategory AWS API Documentation
    #
    # @overload batch_delete_category(params = {})
    # @param [Hash] params ({})
    def batch_delete_category(params = {}, options = {})
      req = build_request(:batch_delete_category, params)
      req.send_request(options)
    end

    # Updates Categories for the Amazon Q Business application environment
    # instance. Web experience users use Categories to tag and filter
    # library items. For more information, see [Custom labels for Amazon Q
    # Apps][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, Array<Types::CategoryInput>] :categories
    #   The list of categories to be updated with their new values.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Updates the categories in the library
    #
    #   resp = client.batch_update_category({
    #     categories: [
    #       {
    #         id: "549abfe0-f5c4-45a2-bb9b-c05987a49c6d", 
    #         title: "HR Management", 
    #       }, 
    #       {
    #         id: "18cbebaa-196a-4aa5-a840-88d548e07f8f", 
    #         title: "Sales", 
    #       }, 
    #     ], 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_category({
    #     instance_id: "InstanceId", # required
    #     categories: [ # required
    #       {
    #         id: "UUID", # required
    #         title: "CategoryInputTitleString", # required
    #         color: "CategoryInputColorString",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/BatchUpdateCategory AWS API Documentation
    #
    # @overload batch_update_category(params = {})
    # @param [Hash] params ({})
    def batch_update_category(params = {}, options = {})
      req = build_request(:batch_update_category, params)
      req.send_request(options)
    end

    # Creates a new library item for an Amazon Q App, allowing it to be
    # discovered and used by other allowed users.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :app_id
    #   The unique identifier of the Amazon Q App to publish to the library.
    #
    # @option params [required, Integer] :app_version
    #   The version of the Amazon Q App to publish to the library.
    #
    # @option params [required, Array<String>] :categories
    #   The categories to associate with the library item for easier
    #   discovery.
    #
    # @return [Types::CreateLibraryItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLibraryItemOutput#library_item_id #library_item_id} => String
    #   * {Types::CreateLibraryItemOutput#status #status} => String
    #   * {Types::CreateLibraryItemOutput#created_at #created_at} => Time
    #   * {Types::CreateLibraryItemOutput#created_by #created_by} => String
    #   * {Types::CreateLibraryItemOutput#updated_at #updated_at} => Time
    #   * {Types::CreateLibraryItemOutput#updated_by #updated_by} => String
    #   * {Types::CreateLibraryItemOutput#rating_count #rating_count} => Integer
    #   * {Types::CreateLibraryItemOutput#is_verified #is_verified} => Boolean
    #
    #
    # @example Example: Create a Library Item
    #
    #   resp = client.create_library_item({
    #     app_id: "7a11f34b-42d4-4bc8-b668-ae4a788dae1e", 
    #     app_version: 6, 
    #     categories: [
    #       "9c871ed4-1c41-4065-aefe-321cd4b61cf8", 
    #     ], 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_at: Time.parse("2024-05-21T23:17:27.350Z"), 
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #     is_verified: false, 
    #     library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316", 
    #     rating_count: 0, 
    #     status: "PUBLISHED", 
    #     updated_at: Time.parse("2024-05-21T23:17:27.350Z"), 
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_library_item({
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #     app_version: 1, # required
    #     categories: ["UUID"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.library_item_id #=> String
    #   resp.status #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.rating_count #=> Integer
    #   resp.is_verified #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/CreateLibraryItem AWS API Documentation
    #
    # @overload create_library_item(params = {})
    # @param [Hash] params ({})
    def create_library_item(params = {}, options = {})
      req = build_request(:create_library_item, params)
      req.send_request(options)
    end

    # Creates a presigned URL for an S3 POST operation to upload a file. You
    # can use this URL to set a default file for a `FileUploadCard` in a Q
    # App definition or to provide a file for a single Q App run. The
    # `scope` parameter determines how the file will be used, either at the
    # app definition level or the app session level.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :card_id
    #   The unique identifier of the card the file is associated with.
    #
    # @option params [required, String] :app_id
    #   The unique identifier of the Q App the file is associated with.
    #
    # @option params [required, String] :file_contents_sha_256
    #   The Base64-encoded SHA-256 digest of the contents of the file to be
    #   uploaded.
    #
    # @option params [required, String] :file_name
    #   The name of the file to be uploaded.
    #
    # @option params [required, String] :scope
    #   Whether the file is associated with a Q App definition or a specific Q
    #   App session.
    #
    # @option params [String] :session_id
    #   The unique identifier of the Q App session the file is associated
    #   with, if applicable.
    #
    # @return [Types::CreatePresignedUrlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePresignedUrlOutput#file_id #file_id} => String
    #   * {Types::CreatePresignedUrlOutput#presigned_url #presigned_url} => String
    #   * {Types::CreatePresignedUrlOutput#presigned_url_fields #presigned_url_fields} => Hash&lt;String,String&gt;
    #   * {Types::CreatePresignedUrlOutput#presigned_url_expiration #presigned_url_expiration} => Time
    #
    #
    # @example Example: Upload a file to a specific session
    #
    #   resp = client.create_presigned_url({
    #     app_id: "4263767c-d889-4cb2-a8f6-8b649bc66af0", 
    #     card_id: "82f69028-22a9-4bea-8727-0eabf58e9fed", 
    #     file_contents_sha_256: "wXY7GD8m4fmHhdtuQyBdXzNQpdCseVwBcOBIlzfm+kg=", 
    #     file_name: "myFile.txt", 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     scope: "SESSION", 
    #     session_id: "4f0e5b87-9d38-41cd-9eb4-ebce2f2917cc", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_id: "412aa1b4-341c-45af-936d-da52f8a1a3b4", 
    #     presigned_url: "https://qapps-uploaded-files-us-east-1-c819fab7cf78c9205158297913deb9e0.s3.us-east-1.amazonaws.com/", 
    #     presigned_url_expiration: Time.parse("2024-09-14T00:11:54.232Z"), 
    #     presigned_url_fields: {
    #       "x-amz-checksum-sha256" => "wXY7GD8m4fmHhdtuQyBdXzNQpdCseVwBcOBIlzfm+kg=", 
    #       "x-amz-server-side-encryption" => "aws:kms", 
    #       "x-amz-server-side-encryption-aws-kms-key-id" => "0a6a474b-f2ca-46ea-9e72-deea9077d92f", 
    #       "x-amz-server-side-encryption-context" => "eyJBUFBMSUNBVElPTl9JRCI6IjAxMjM0NTY3ODkwMSJ9", 
    #     }, 
    #   }
    #
    # @example Example: Upload a file into a application
    #
    #   resp = client.create_presigned_url({
    #     app_id: "4263767c-d889-4cb2-a8f6-8b649bc66af0", 
    #     card_id: "7a11f34b-42d4-4bc8-b668-ae4a788dae1e", 
    #     file_contents_sha_256: "wXY7GD8m4fmHhdtuQyBdXzNQpdCseVwBcOBIlzfm+kg=", 
    #     file_name: "anApplicationFile.txt", 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     scope: "APPLICATION", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_id: "412aa1b4-341c-45af-936d-da52f8a1a3b4", 
    #     presigned_url: "https://qapps-uploaded-files-us-east-1-c819fab7cf78c9205158297913deb9e0.s3.us-east-1.amazonaws.com/", 
    #     presigned_url_expiration: Time.parse("2024-09-14T00:11:54.232Z"), 
    #     presigned_url_fields: {
    #       "x-amz-checksum-sha256" => "wXY7GD8m4fmHhdtuQyBdXzNQpdCseVwBcOBIlzfm+kg=", 
    #       "x-amz-server-side-encryption" => "aws:kms", 
    #       "x-amz-server-side-encryption-aws-kms-key-id" => "0a6a474b-f2ca-46ea-9e72-deea9077d92f", 
    #       "x-amz-server-side-encryption-context" => "eyJBUFBMSUNBVElPTl9JRCI6IjAxMjM0NTY3ODkwMSJ9", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_presigned_url({
    #     instance_id: "InstanceId", # required
    #     card_id: "UUID", # required
    #     app_id: "UUID", # required
    #     file_contents_sha_256: "CreatePresignedUrlInputFileContentsSha256String", # required
    #     file_name: "Filename", # required
    #     scope: "APPLICATION", # required, accepts APPLICATION, SESSION
    #     session_id: "UUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.file_id #=> String
    #   resp.presigned_url #=> String
    #   resp.presigned_url_fields #=> Hash
    #   resp.presigned_url_fields["String"] #=> String
    #   resp.presigned_url_expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/CreatePresignedUrl AWS API Documentation
    #
    # @overload create_presigned_url(params = {})
    # @param [Hash] params ({})
    def create_presigned_url(params = {}, options = {})
      req = build_request(:create_presigned_url, params)
      req.send_request(options)
    end

    # Creates a new Amazon Q App based on the provided definition. The Q App
    # definition specifies the cards and flow of the Q App. This operation
    # also calculates the dependencies between the cards by inspecting the
    # references in the prompts.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :title
    #   The title of the new Q App.
    #
    # @option params [String] :description
    #   The description of the new Q App.
    #
    # @option params [required, Types::AppDefinitionInput] :app_definition
    #   The definition of the new Q App, specifying the cards and flow.
    #
    # @option params [Hash<String,String>] :tags
    #   Optional tags to associate with the new Q App.
    #
    # @return [Types::CreateQAppOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQAppOutput#app_id #app_id} => String
    #   * {Types::CreateQAppOutput#app_arn #app_arn} => String
    #   * {Types::CreateQAppOutput#title #title} => String
    #   * {Types::CreateQAppOutput#description #description} => String
    #   * {Types::CreateQAppOutput#initial_prompt #initial_prompt} => String
    #   * {Types::CreateQAppOutput#app_version #app_version} => Integer
    #   * {Types::CreateQAppOutput#status #status} => String
    #   * {Types::CreateQAppOutput#created_at #created_at} => Time
    #   * {Types::CreateQAppOutput#created_by #created_by} => String
    #   * {Types::CreateQAppOutput#updated_at #updated_at} => Time
    #   * {Types::CreateQAppOutput#updated_by #updated_by} => String
    #   * {Types::CreateQAppOutput#required_capabilities #required_capabilities} => Array&lt;String&gt;
    #
    #
    # @example Example: A basic application with 1 text input card and 1 output card
    #
    #   resp = client.create_q_app({
    #     app_definition: {
    #       cards: [
    #         {
    #           text_input: {
    #             type: "text-input", 
    #             id: "4cf94d96-8819-45c2-98cc-58c56b35c72f", 
    #             title: "Color Base", 
    #           }, 
    #         }, 
    #         {
    #           q_query: {
    #             type: "q-query", 
    #             id: "18870b94-1e63-40e0-8c12-669c90ac5acc", 
    #             prompt: "Recommend me a list of colors that go well with @4cf94d96-8819-45c2-98cc-58c56b35c72f", 
    #             title: "Recommended Palette", 
    #           }, 
    #         }, 
    #       ], 
    #       initial_prompt: "Create an app that recommend a list of colors based on input.", 
    #     }, 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     title: "Color Palette Generator", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     app_arn: "arn:aws:qapps:us-west-2:123456789012:app/7212ff04-de7b-4831-bd80-45d6975ba1b0", 
    #     app_id: "7212ff04-de7b-4831-bd80-45d6975ba1b0", 
    #     app_version: 1, 
    #     created_at: Time.parse("2024-05-14T00:11:54.232Z"), 
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #     initial_prompt: "Create an app that recommend a list of colors based on input.", 
    #     required_capabilities: [
    #       "CreatorMode", 
    #     ], 
    #     status: "DRAFT", 
    #     title: "Color Palette Generator", 
    #     updated_at: Time.parse("2024-05-14T00:13:26.168Z"), 
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_q_app({
    #     instance_id: "InstanceId", # required
    #     title: "Title", # required
    #     description: "Description",
    #     app_definition: { # required
    #       cards: [ # required
    #         {
    #           text_input: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input", # required, accepts text-input, q-query, file-upload, q-plugin, form-input
    #             placeholder: "Placeholder",
    #             default_value: "Default",
    #           },
    #           q_query: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input", # required, accepts text-input, q-query, file-upload, q-plugin, form-input
    #             prompt: "Prompt", # required
    #             output_source: "approved-sources", # accepts approved-sources, llm
    #             attribute_filter: {
    #               and_all_filters: [
    #                 {
    #                   # recursive AttributeFilter
    #                 },
    #               ],
    #               or_all_filters: [
    #                 {
    #                   # recursive AttributeFilter
    #                 },
    #               ],
    #               not_filter: {
    #                 # recursive AttributeFilter
    #               },
    #               equals_to: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               contains_all: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               contains_any: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               greater_than: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               greater_than_or_equals: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               less_than: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               less_than_or_equals: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #             },
    #           },
    #           q_plugin: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input", # required, accepts text-input, q-query, file-upload, q-plugin, form-input
    #             prompt: "Prompt", # required
    #             plugin_id: "PluginId", # required
    #             action_identifier: "ActionIdentifier",
    #           },
    #           file_upload: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input", # required, accepts text-input, q-query, file-upload, q-plugin, form-input
    #             filename: "Filename",
    #             file_id: "UUID",
    #             allow_override: false,
    #           },
    #           form_input: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input", # required, accepts text-input, q-query, file-upload, q-plugin, form-input
    #             metadata: { # required
    #               schema: { # required
    #               },
    #             },
    #             compute_mode: "append", # accepts append, replace
    #           },
    #         },
    #       ],
    #       initial_prompt: "InitialPrompt",
    #     },
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.app_arn #=> String
    #   resp.title #=> String
    #   resp.description #=> String
    #   resp.initial_prompt #=> String
    #   resp.app_version #=> Integer
    #   resp.status #=> String, one of "PUBLISHED", "DRAFT", "DELETED"
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.required_capabilities #=> Array
    #   resp.required_capabilities[0] #=> String, one of "FileUpload", "CreatorMode", "RetrievalMode", "PluginMode"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/CreateQApp AWS API Documentation
    #
    # @overload create_q_app(params = {})
    # @param [Hash] params ({})
    def create_q_app(params = {}, options = {})
      req = build_request(:create_q_app, params)
      req.send_request(options)
    end

    # Deletes a library item for an Amazon Q App, removing it from the
    # library so it can no longer be discovered or used by other users.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :library_item_id
    #   The unique identifier of the library item to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a library item
    #
    #   resp = client.delete_library_item({
    #     instance_id: "3642ba81-344c-42fd-a480-9119a5a5f26b", 
    #     library_item_id: "72088fd4-78b6-43da-bfb8-8621323c3cfb", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_library_item({
    #     instance_id: "InstanceId", # required
    #     library_item_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/DeleteLibraryItem AWS API Documentation
    #
    # @overload delete_library_item(params = {})
    # @param [Hash] params ({})
    def delete_library_item(params = {}, options = {})
      req = build_request(:delete_library_item, params)
      req.send_request(options)
    end

    # Deletes an Amazon Q App owned by the user. If the Q App was previously
    # published to the library, it is also removed from the library.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :app_id
    #   The unique identifier of the Q App to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete an Amazon Q App
    #
    #   resp = client.delete_q_app({
    #     app_id: "393e77fb-0a30-4f47-ad30-75d71aeaed8a", 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_q_app({
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/DeleteQApp AWS API Documentation
    #
    # @overload delete_q_app(params = {})
    # @param [Hash] params ({})
    def delete_q_app(params = {}, options = {})
      req = build_request(:delete_q_app, params)
      req.send_request(options)
    end

    # Describes read permissions for a Amazon Q App in Amazon Q Business
    # application environment instance.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :app_id
    #   The unique identifier of the Amazon Q App for which to retrieve
    #   permissions.
    #
    # @return [Types::DescribeQAppPermissionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQAppPermissionsOutput#resource_arn #resource_arn} => String
    #   * {Types::DescribeQAppPermissionsOutput#app_id #app_id} => String
    #   * {Types::DescribeQAppPermissionsOutput#permissions #permissions} => Array&lt;Types::PermissionOutput&gt;
    #
    #
    # @example Example: Describe permissions for the app
    #
    #   resp = client.describe_q_app_permissions({
    #     app_id: "fe0acf86-49e5-4def-a0c2-40ce0cafee14", 
    #     instance_id: "01793661-ad73-4c7d-8eaa-1c95a10151c2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     app_id: "fe0acf86-49e5-4def-a0c2-40ce0cafee14", 
    #     permissions: [
    #       {
    #         action: "write", 
    #         principal: {
    #           email: "user1@example.com", 
    #           user_id: "f8f15330-b091-708b-d46e-adb0d914b699", 
    #         }, 
    #       }, 
    #       {
    #         action: "read", 
    #         principal: {
    #           email: "user2@example.com", 
    #           user_id: "c81133d0-10d1-70eb-aaa3-d427ea6fc0f3", 
    #         }, 
    #       }, 
    #     ], 
    #     resource_arn: "arn:aws:qapps:us-west-2:111111111111:application/01793661-ad73-4c7d-8eaa-1c95a10151c2/qapp/fe0acf86-49e5-4def-a0c2-40ce0cafee14", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_q_app_permissions({
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.app_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].action #=> String, one of "read", "write"
    #   resp.permissions[0].principal.user_id #=> String
    #   resp.permissions[0].principal.user_type #=> String, one of "owner", "user"
    #   resp.permissions[0].principal.email #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/DescribeQAppPermissions AWS API Documentation
    #
    # @overload describe_q_app_permissions(params = {})
    # @param [Hash] params ({})
    def describe_q_app_permissions(params = {}, options = {})
      req = build_request(:describe_q_app_permissions, params)
      req.send_request(options)
    end

    # Removes a rating or review previously submitted by the user for a
    # library item.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :library_item_id
    #   The unique identifier of the library item to remove the review from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Decrease the rating counter by 1 for the related app for this user
    #
    #   resp = client.disassociate_library_item_review({
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_library_item_review({
    #     instance_id: "InstanceId", # required
    #     library_item_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/DisassociateLibraryItemReview AWS API Documentation
    #
    # @overload disassociate_library_item_review(params = {})
    # @param [Hash] params ({})
    def disassociate_library_item_review(params = {}, options = {})
      req = build_request(:disassociate_library_item_review, params)
      req.send_request(options)
    end

    # Disassociates a Q App from a user removing the user's access to run
    # the Q App.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :app_id
    #   The unique identifier of the Q App to disassociate from the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Unlinks an Amazon Q App from the invoker's list of apps
    #
    #   resp = client.disassociate_q_app_from_user({
    #     app_id: "393e77fb-0a30-4f47-ad30-75d71aeaed8a", 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_q_app_from_user({
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/DisassociateQAppFromUser AWS API Documentation
    #
    # @overload disassociate_q_app_from_user(params = {})
    # @param [Hash] params ({})
    def disassociate_q_app_from_user(params = {}, options = {})
      req = build_request(:disassociate_q_app_from_user, params)
      req.send_request(options)
    end

    # Exports the collected data of a Q App data collection session.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the Q App data collection session.
    #
    # @return [Types::ExportQAppSessionDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportQAppSessionDataOutput#csv_file_link #csv_file_link} => String
    #   * {Types::ExportQAppSessionDataOutput#expires_at #expires_at} => Time
    #   * {Types::ExportQAppSessionDataOutput#session_arn #session_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_q_app_session_data({
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.csv_file_link #=> String
    #   resp.expires_at #=> Time
    #   resp.session_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ExportQAppSessionData AWS API Documentation
    #
    # @overload export_q_app_session_data(params = {})
    # @param [Hash] params ({})
    def export_q_app_session_data(params = {}, options = {})
      req = build_request(:export_q_app_session_data, params)
      req.send_request(options)
    end

    # Retrieves details about a library item for an Amazon Q App, including
    # its metadata, categories, ratings, and usage statistics.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :library_item_id
    #   The unique identifier of the library item to retrieve.
    #
    # @option params [String] :app_id
    #   The unique identifier of the Amazon Q App associated with the library
    #   item.
    #
    # @return [Types::GetLibraryItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLibraryItemOutput#library_item_id #library_item_id} => String
    #   * {Types::GetLibraryItemOutput#app_id #app_id} => String
    #   * {Types::GetLibraryItemOutput#app_version #app_version} => Integer
    #   * {Types::GetLibraryItemOutput#categories #categories} => Array&lt;Types::Category&gt;
    #   * {Types::GetLibraryItemOutput#status #status} => String
    #   * {Types::GetLibraryItemOutput#created_at #created_at} => Time
    #   * {Types::GetLibraryItemOutput#created_by #created_by} => String
    #   * {Types::GetLibraryItemOutput#updated_at #updated_at} => Time
    #   * {Types::GetLibraryItemOutput#updated_by #updated_by} => String
    #   * {Types::GetLibraryItemOutput#rating_count #rating_count} => Integer
    #   * {Types::GetLibraryItemOutput#is_rated_by_user #is_rated_by_user} => Boolean
    #   * {Types::GetLibraryItemOutput#user_count #user_count} => Integer
    #   * {Types::GetLibraryItemOutput#is_verified #is_verified} => Boolean
    #
    #
    # @example Example: Retrieve a library item
    #
    #   resp = client.get_library_item({
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     library_item_id: "18cbebaa-196a-4aa5-a840-88d548e07f8f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     app_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     app_version: 1, 
    #     categories: [
    #       {
    #         id: "9c871ed4-1c41-4065-aefe-321cd4b61cf8", 
    #         title: "HR", 
    #       }, 
    #       {
    #         id: "fdc4b483-c4e2-44c9-b4b2-6c850bbdb579", 
    #         title: "General", 
    #       }, 
    #       {
    #         id: "c1c4e374-118c-446f-81fb-cba6225d88da", 
    #         title: "IT", 
    #       }, 
    #     ], 
    #     created_at: Time.parse("2024-05-08T16:09:56.080Z"), 
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #     is_rated_by_user: false, 
    #     is_verified: false, 
    #     library_item_id: "18cbebaa-196a-4aa5-a840-88d548e07f8f", 
    #     rating_count: 0, 
    #     status: "PUBLISHED", 
    #     updated_at: Time.parse("2024-05-08T16:09:56.080Z"), 
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #     user_count: 1, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_library_item({
    #     instance_id: "InstanceId", # required
    #     library_item_id: "UUID", # required
    #     app_id: "UUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.library_item_id #=> String
    #   resp.app_id #=> String
    #   resp.app_version #=> Integer
    #   resp.categories #=> Array
    #   resp.categories[0].id #=> String
    #   resp.categories[0].title #=> String
    #   resp.categories[0].color #=> String
    #   resp.categories[0].app_count #=> Integer
    #   resp.status #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.rating_count #=> Integer
    #   resp.is_rated_by_user #=> Boolean
    #   resp.user_count #=> Integer
    #   resp.is_verified #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/GetLibraryItem AWS API Documentation
    #
    # @overload get_library_item(params = {})
    # @param [Hash] params ({})
    def get_library_item(params = {}, options = {})
      req = build_request(:get_library_item, params)
      req.send_request(options)
    end

    # Retrieves the full details of an Q App, including its definition
    # specifying the cards and flow.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :app_id
    #   The unique identifier of the Q App to retrieve.
    #
    # @option params [Integer] :app_version
    #   The version of the Q App.
    #
    # @return [Types::GetQAppOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQAppOutput#app_id #app_id} => String
    #   * {Types::GetQAppOutput#app_arn #app_arn} => String
    #   * {Types::GetQAppOutput#title #title} => String
    #   * {Types::GetQAppOutput#description #description} => String
    #   * {Types::GetQAppOutput#initial_prompt #initial_prompt} => String
    #   * {Types::GetQAppOutput#app_version #app_version} => Integer
    #   * {Types::GetQAppOutput#status #status} => String
    #   * {Types::GetQAppOutput#created_at #created_at} => Time
    #   * {Types::GetQAppOutput#created_by #created_by} => String
    #   * {Types::GetQAppOutput#updated_at #updated_at} => Time
    #   * {Types::GetQAppOutput#updated_by #updated_by} => String
    #   * {Types::GetQAppOutput#required_capabilities #required_capabilities} => Array&lt;String&gt;
    #   * {Types::GetQAppOutput#app_definition #app_definition} => Types::AppDefinition
    #
    #
    # @example Example: A basic application with 1 text input card and 1 output card
    #
    #   resp = client.get_q_app({
    #     app_id: "3d110749-efc3-427c-87e8-15e966e5c168", 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     app_arn: "arn:aws:qapps:us-west-2:123456789012:app/7212ff04-de7b-4831-bd80-45d6975ba1b0", 
    #     app_definition: {
    #       app_definition_version: "1", 
    #       cards: [
    #         {
    #           text_input: {
    #             type: "text-input", 
    #             dependencies: [
    #             ], 
    #             id: "4cf94d96-8819-45c2-98cc-58c56b35c72f", 
    #             title: "Color Base", 
    #           }, 
    #         }, 
    #         {
    #           q_query: {
    #             type: "q-query", 
    #             dependencies: [
    #               "91e4513d-6981-454a-9329-329c9302eef4", 
    #             ], 
    #             id: "18870b94-1e63-40e0-8c12-669c90ac5acc", 
    #             output_source: "llm", 
    #             prompt: "Recommend me a list of colors that go well with @91e4513d-6981-454a-9329-329c9302eef4 ", 
    #             title: "Recommended Palette", 
    #           }, 
    #         }, 
    #       ], 
    #     }, 
    #     app_id: "7212ff04-de7b-4831-bd80-45d6975ba1b0", 
    #     app_version: 1, 
    #     created_at: Time.parse("2024-05-14T00:11:54.232Z"), 
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #     status: "DRAFT", 
    #     title: "Color Palette Generator", 
    #     updated_at: Time.parse("2024-05-14T00:13:26.168Z"), 
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_q_app({
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #     app_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.app_arn #=> String
    #   resp.title #=> String
    #   resp.description #=> String
    #   resp.initial_prompt #=> String
    #   resp.app_version #=> Integer
    #   resp.status #=> String, one of "PUBLISHED", "DRAFT", "DELETED"
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.required_capabilities #=> Array
    #   resp.required_capabilities[0] #=> String, one of "FileUpload", "CreatorMode", "RetrievalMode", "PluginMode"
    #   resp.app_definition.app_definition_version #=> String
    #   resp.app_definition.cards #=> Array
    #   resp.app_definition.cards[0].text_input.id #=> String
    #   resp.app_definition.cards[0].text_input.title #=> String
    #   resp.app_definition.cards[0].text_input.dependencies #=> Array
    #   resp.app_definition.cards[0].text_input.dependencies[0] #=> String
    #   resp.app_definition.cards[0].text_input.type #=> String, one of "text-input", "q-query", "file-upload", "q-plugin", "form-input"
    #   resp.app_definition.cards[0].text_input.placeholder #=> String
    #   resp.app_definition.cards[0].text_input.default_value #=> String
    #   resp.app_definition.cards[0].q_query.id #=> String
    #   resp.app_definition.cards[0].q_query.title #=> String
    #   resp.app_definition.cards[0].q_query.dependencies #=> Array
    #   resp.app_definition.cards[0].q_query.dependencies[0] #=> String
    #   resp.app_definition.cards[0].q_query.type #=> String, one of "text-input", "q-query", "file-upload", "q-plugin", "form-input"
    #   resp.app_definition.cards[0].q_query.prompt #=> String
    #   resp.app_definition.cards[0].q_query.output_source #=> String, one of "approved-sources", "llm"
    #   resp.app_definition.cards[0].q_query.attribute_filter.and_all_filters #=> Array
    #   resp.app_definition.cards[0].q_query.attribute_filter.and_all_filters[0] #=> Types::AttributeFilter
    #   resp.app_definition.cards[0].q_query.attribute_filter.or_all_filters #=> Array
    #   resp.app_definition.cards[0].q_query.attribute_filter.or_all_filters[0] #=> Types::AttributeFilter
    #   resp.app_definition.cards[0].q_query.attribute_filter.not_filter #=> Types::AttributeFilter
    #   resp.app_definition.cards[0].q_query.attribute_filter.equals_to.name #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.equals_to.value.string_value #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.equals_to.value.string_list_value #=> Array
    #   resp.app_definition.cards[0].q_query.attribute_filter.equals_to.value.string_list_value[0] #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.equals_to.value.long_value #=> Integer
    #   resp.app_definition.cards[0].q_query.attribute_filter.equals_to.value.date_value #=> Time
    #   resp.app_definition.cards[0].q_query.attribute_filter.contains_all.name #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.contains_all.value.string_value #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.contains_all.value.string_list_value #=> Array
    #   resp.app_definition.cards[0].q_query.attribute_filter.contains_all.value.string_list_value[0] #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.contains_all.value.long_value #=> Integer
    #   resp.app_definition.cards[0].q_query.attribute_filter.contains_all.value.date_value #=> Time
    #   resp.app_definition.cards[0].q_query.attribute_filter.contains_any.name #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.contains_any.value.string_value #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.contains_any.value.string_list_value #=> Array
    #   resp.app_definition.cards[0].q_query.attribute_filter.contains_any.value.string_list_value[0] #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.contains_any.value.long_value #=> Integer
    #   resp.app_definition.cards[0].q_query.attribute_filter.contains_any.value.date_value #=> Time
    #   resp.app_definition.cards[0].q_query.attribute_filter.greater_than.name #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.greater_than.value.string_value #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.greater_than.value.string_list_value #=> Array
    #   resp.app_definition.cards[0].q_query.attribute_filter.greater_than.value.string_list_value[0] #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.greater_than.value.long_value #=> Integer
    #   resp.app_definition.cards[0].q_query.attribute_filter.greater_than.value.date_value #=> Time
    #   resp.app_definition.cards[0].q_query.attribute_filter.greater_than_or_equals.name #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.greater_than_or_equals.value.string_value #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.greater_than_or_equals.value.string_list_value #=> Array
    #   resp.app_definition.cards[0].q_query.attribute_filter.greater_than_or_equals.value.string_list_value[0] #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.greater_than_or_equals.value.long_value #=> Integer
    #   resp.app_definition.cards[0].q_query.attribute_filter.greater_than_or_equals.value.date_value #=> Time
    #   resp.app_definition.cards[0].q_query.attribute_filter.less_than.name #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.less_than.value.string_value #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.less_than.value.string_list_value #=> Array
    #   resp.app_definition.cards[0].q_query.attribute_filter.less_than.value.string_list_value[0] #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.less_than.value.long_value #=> Integer
    #   resp.app_definition.cards[0].q_query.attribute_filter.less_than.value.date_value #=> Time
    #   resp.app_definition.cards[0].q_query.attribute_filter.less_than_or_equals.name #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.less_than_or_equals.value.string_value #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.less_than_or_equals.value.string_list_value #=> Array
    #   resp.app_definition.cards[0].q_query.attribute_filter.less_than_or_equals.value.string_list_value[0] #=> String
    #   resp.app_definition.cards[0].q_query.attribute_filter.less_than_or_equals.value.long_value #=> Integer
    #   resp.app_definition.cards[0].q_query.attribute_filter.less_than_or_equals.value.date_value #=> Time
    #   resp.app_definition.cards[0].q_query.memory_references #=> Array
    #   resp.app_definition.cards[0].q_query.memory_references[0] #=> String
    #   resp.app_definition.cards[0].q_plugin.id #=> String
    #   resp.app_definition.cards[0].q_plugin.title #=> String
    #   resp.app_definition.cards[0].q_plugin.dependencies #=> Array
    #   resp.app_definition.cards[0].q_plugin.dependencies[0] #=> String
    #   resp.app_definition.cards[0].q_plugin.type #=> String, one of "text-input", "q-query", "file-upload", "q-plugin", "form-input"
    #   resp.app_definition.cards[0].q_plugin.prompt #=> String
    #   resp.app_definition.cards[0].q_plugin.plugin_type #=> String, one of "SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK", "CUSTOM", "ASANA", "ATLASSIAN_CONFLUENCE", "GOOGLE_CALENDAR", "JIRA_CLOUD", "MICROSOFT_EXCHANGE", "MICROSOFT_TEAMS", "PAGERDUTY_ADVANCE", "SALESFORCE_CRM", "SERVICENOW_NOW_PLATFORM", "SMARTSHEET", "ZENDESK_SUITE"
    #   resp.app_definition.cards[0].q_plugin.plugin_id #=> String
    #   resp.app_definition.cards[0].q_plugin.action_identifier #=> String
    #   resp.app_definition.cards[0].file_upload.id #=> String
    #   resp.app_definition.cards[0].file_upload.title #=> String
    #   resp.app_definition.cards[0].file_upload.dependencies #=> Array
    #   resp.app_definition.cards[0].file_upload.dependencies[0] #=> String
    #   resp.app_definition.cards[0].file_upload.type #=> String, one of "text-input", "q-query", "file-upload", "q-plugin", "form-input"
    #   resp.app_definition.cards[0].file_upload.filename #=> String
    #   resp.app_definition.cards[0].file_upload.file_id #=> String
    #   resp.app_definition.cards[0].file_upload.allow_override #=> Boolean
    #   resp.app_definition.cards[0].form_input.id #=> String
    #   resp.app_definition.cards[0].form_input.title #=> String
    #   resp.app_definition.cards[0].form_input.dependencies #=> Array
    #   resp.app_definition.cards[0].form_input.dependencies[0] #=> String
    #   resp.app_definition.cards[0].form_input.type #=> String, one of "text-input", "q-query", "file-upload", "q-plugin", "form-input"
    #   resp.app_definition.cards[0].form_input.compute_mode #=> String, one of "append", "replace"
    #   resp.app_definition.can_edit #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/GetQApp AWS API Documentation
    #
    # @overload get_q_app(params = {})
    # @param [Hash] params ({})
    def get_q_app(params = {}, options = {})
      req = build_request(:get_q_app, params)
      req.send_request(options)
    end

    # Retrieves the current state and results for an active session of an
    # Amazon Q App.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the Q App session to retrieve.
    #
    # @return [Types::GetQAppSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQAppSessionOutput#session_id #session_id} => String
    #   * {Types::GetQAppSessionOutput#session_arn #session_arn} => String
    #   * {Types::GetQAppSessionOutput#session_name #session_name} => String
    #   * {Types::GetQAppSessionOutput#app_version #app_version} => Integer
    #   * {Types::GetQAppSessionOutput#latest_published_app_version #latest_published_app_version} => Integer
    #   * {Types::GetQAppSessionOutput#status #status} => String
    #   * {Types::GetQAppSessionOutput#card_status #card_status} => Hash&lt;String,Types::CardStatus&gt;
    #   * {Types::GetQAppSessionOutput#user_is_host #user_is_host} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_q_app_session({
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.session_arn #=> String
    #   resp.session_name #=> String
    #   resp.app_version #=> Integer
    #   resp.latest_published_app_version #=> Integer
    #   resp.status #=> String, one of "IN_PROGRESS", "WAITING", "COMPLETED", "ERROR"
    #   resp.card_status #=> Hash
    #   resp.card_status["UUID"].current_state #=> String, one of "IN_PROGRESS", "WAITING", "COMPLETED", "ERROR"
    #   resp.card_status["UUID"].current_value #=> String
    #   resp.card_status["UUID"].submissions #=> Array
    #   resp.card_status["UUID"].submissions[0].submission_id #=> String
    #   resp.card_status["UUID"].submissions[0].timestamp #=> Time
    #   resp.user_is_host #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/GetQAppSession AWS API Documentation
    #
    # @overload get_q_app_session(params = {})
    # @param [Hash] params ({})
    def get_q_app_session(params = {}, options = {})
      req = build_request(:get_q_app_session, params)
      req.send_request(options)
    end

    # Retrieves the current configuration of a Q App session.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the Q App session.
    #
    # @return [Types::GetQAppSessionMetadataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQAppSessionMetadataOutput#session_id #session_id} => String
    #   * {Types::GetQAppSessionMetadataOutput#session_arn #session_arn} => String
    #   * {Types::GetQAppSessionMetadataOutput#session_name #session_name} => String
    #   * {Types::GetQAppSessionMetadataOutput#sharing_configuration #sharing_configuration} => Types::SessionSharingConfiguration
    #   * {Types::GetQAppSessionMetadataOutput#session_owner #session_owner} => Boolean
    #
    #
    # @example Example: Retrieves an existing session metadata for an Amazon Q App
    #
    #   resp = client.get_q_app_session_metadata({
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     session_id: "56ae47c3-10bc-4c2c-8b27-9b9fe23b3edb", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     session_arn: "arn:aws:qapps:us-west-2:0123456789012:application/cbea8329-41c0-4566-a112-19250921a220/qapp/387ccac9-4717-489f-841f-729b7d7de355/session/56ae47c3-10bc-4c2c-8b27-9b9fe23b3edb", 
    #     session_id: "56ae47c3-10bc-4c2c-8b27-9b9fe23b3edb", 
    #     session_name: "Trip itinerary collection session", 
    #     session_owner: true, 
    #     sharing_configuration: {
    #       accept_responses: true, 
    #       enabled: true, 
    #       reveal_cards: false, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_q_app_session_metadata({
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.session_arn #=> String
    #   resp.session_name #=> String
    #   resp.sharing_configuration.enabled #=> Boolean
    #   resp.sharing_configuration.accept_responses #=> Boolean
    #   resp.sharing_configuration.reveal_cards #=> Boolean
    #   resp.session_owner #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/GetQAppSessionMetadata AWS API Documentation
    #
    # @overload get_q_app_session_metadata(params = {})
    # @param [Hash] params ({})
    def get_q_app_session_metadata(params = {}, options = {})
      req = build_request(:get_q_app_session_metadata, params)
      req.send_request(options)
    end

    # Uploads a file that can then be used either as a default in a
    # `FileUploadCard` from Q App definition or as a file that is used
    # inside a single Q App run. The purpose of the document is determined
    # by a scope parameter that indicates whether it is at the app
    # definition level or at the app session level.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :card_id
    #   The unique identifier of the card the file is associated with.
    #
    # @option params [required, String] :app_id
    #   The unique identifier of the Q App the file is associated with.
    #
    # @option params [required, String] :file_contents_base_64
    #   The base64-encoded contents of the file to upload.
    #
    # @option params [required, String] :file_name
    #   The name of the file being uploaded.
    #
    # @option params [required, String] :scope
    #   Whether the file is associated with a Q App definition or a specific Q
    #   App session.
    #
    # @option params [String] :session_id
    #   The unique identifier of the Q App session the file is associated
    #   with, if applicable.
    #
    # @return [Types::ImportDocumentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportDocumentOutput#file_id #file_id} => String
    #
    #
    # @example Example: Upload a file to a specific session
    #
    #   resp = client.import_document({
    #     app_id: "4263767c-d889-4cb2-a8f6-8b649bc66af0", 
    #     card_id: "82f69028-22a9-4bea-8727-0eabf58e9fed", 
    #     file_contents_base_64: "data:text/plain;base64,SomeFileEncodedInBase64", 
    #     file_name: "myFile.txt", 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     scope: "SESSION", 
    #     session_id: "4f0e5b87-9d38-41cd-9eb4-ebce2f2917cc", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_id: "412aa1b4-341c-45af-936d-da52f8a1a3b4", 
    #   }
    #
    # @example Example: Upload a file into a application
    #
    #   resp = client.import_document({
    #     app_id: "4263767c-d889-4cb2-a8f6-8b649bc66af0", 
    #     card_id: "7a11f34b-42d4-4bc8-b668-ae4a788dae1e", 
    #     file_contents_base_64: "data:text/plain;base64,SomeFileEncodedInBase64", 
    #     file_name: "anApplicationFile.txt", 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     scope: "APPLICATION", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     file_id: "bc1a0cc9-076a-4e82-9a6c-f4d2d8a22489", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_document({
    #     instance_id: "InstanceId", # required
    #     card_id: "UUID", # required
    #     app_id: "UUID", # required
    #     file_contents_base_64: "String", # required
    #     file_name: "Filename", # required
    #     scope: "APPLICATION", # required, accepts APPLICATION, SESSION
    #     session_id: "UUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.file_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ImportDocument AWS API Documentation
    #
    # @overload import_document(params = {})
    # @param [Hash] params ({})
    def import_document(params = {}, options = {})
      req = build_request(:import_document, params)
      req.send_request(options)
    end

    # Lists the categories of a Amazon Q Business application environment
    # instance. For more information, see [Custom labels for Amazon Q
    # Apps][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @return [Types::ListCategoriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCategoriesOutput#categories #categories} => Array&lt;Types::Category&gt;
    #
    #
    # @example Example: List categories available for the library items in this instance
    #
    #   resp = client.list_categories({
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     categories: [
    #       {
    #         app_count: 10, 
    #         color: "#FF6600", 
    #         id: "549abfe0-f5c4-45a2-bb9b-c05987a49c6d", 
    #         title: "HR", 
    #       }, 
    #       {
    #         app_count: 11, 
    #         color: "#FFFF00", 
    #         id: "18cbebaa-196a-4aa5-a840-88d548e07f8f", 
    #         title: "Marketing", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_categories({
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.categories #=> Array
    #   resp.categories[0].id #=> String
    #   resp.categories[0].title #=> String
    #   resp.categories[0].color #=> String
    #   resp.categories[0].app_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ListCategories AWS API Documentation
    #
    # @overload list_categories(params = {})
    # @param [Hash] params ({})
    def list_categories(params = {}, options = {})
      req = build_request(:list_categories, params)
      req.send_request(options)
    end

    # Lists the library items for Amazon Q Apps that are published and
    # available for users in your Amazon Web Services account.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [Integer] :limit
    #   The maximum number of library items to return in the response.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [String] :category_id
    #   Optional category to filter the library items by.
    #
    # @return [Types::ListLibraryItemsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLibraryItemsOutput#library_items #library_items} => Array&lt;Types::LibraryItemMember&gt;
    #   * {Types::ListLibraryItemsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List at most 3 library items for this instance
    #
    #   resp = client.list_library_items({
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     limit: 3, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     library_items: [
    #       {
    #         app_id: "7a11f34b-42d4-4bc8-b668-ae4a788dae1e", 
    #         app_version: 6, 
    #         categories: [
    #           {
    #             id: "9c871ed4-1c41-4065-aefe-321cd4b61cf8", 
    #             title: "HR", 
    #           }, 
    #           {
    #             id: "c1c4e374-118c-446f-81fb-cba6225d88da", 
    #             title: "IT", 
    #           }, 
    #         ], 
    #         created_at: Time.parse("2024-05-21T23:17:27.350Z"), 
    #         created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #         is_rated_by_user: true, 
    #         is_verified: false, 
    #         library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316", 
    #         rating_count: 3, 
    #         status: "PUBLISHED", 
    #         updated_at: Time.parse("2024-05-21T23:17:27.350Z"), 
    #         updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #         user_count: 5, 
    #       }, 
    #       {
    #         app_id: "201272ac-d474-4a97-991c-5520dae04026", 
    #         app_version: 1, 
    #         categories: [
    #           {
    #             id: "fdc4b483-c4e2-44c9-b4b2-6c850bbdb579", 
    #             title: "General", 
    #           }, 
    #         ], 
    #         created_at: Time.parse("2024-05-08T16:09:56.080Z"), 
    #         created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #         is_rated_by_user: false, 
    #         is_verified: false, 
    #         library_item_id: "18cbebaa-196a-4aa5-a840-88d548e07f8f", 
    #         rating_count: 5, 
    #         status: "PUBLISHED", 
    #         updated_at: Time.parse("2024-05-08T16:09:56.080Z"), 
    #         updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #         user_count: 8, 
    #       }, 
    #       {
    #         app_id: "1802f57f-079a-4b5b-839a-79bbe2e21b3c", 
    #         app_version: 1, 
    #         categories: [
    #           {
    #             id: "fdc4b483-c4e2-44c9-b4b2-6c850bbdb579", 
    #             title: "General", 
    #           }, 
    #         ], 
    #         created_at: Time.parse("2024-05-07T22:57:59.327Z"), 
    #         created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #         is_rated_by_user: false, 
    #         is_verified: false, 
    #         library_item_id: "549abfe0-f5c4-45a2-bb9b-c05987a49c6d", 
    #         rating_count: 8, 
    #         status: "PUBLISHED", 
    #         updated_at: Time.parse("2024-05-07T22:57:59.327Z"), 
    #         updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #         user_count: 12, 
    #       }, 
    #     ], 
    #     next_token: "YW5vdGhlclRva2VuIQ==", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_library_items({
    #     instance_id: "InstanceId", # required
    #     limit: 1,
    #     next_token: "PaginationToken",
    #     category_id: "UUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.library_items #=> Array
    #   resp.library_items[0].library_item_id #=> String
    #   resp.library_items[0].app_id #=> String
    #   resp.library_items[0].app_version #=> Integer
    #   resp.library_items[0].categories #=> Array
    #   resp.library_items[0].categories[0].id #=> String
    #   resp.library_items[0].categories[0].title #=> String
    #   resp.library_items[0].categories[0].color #=> String
    #   resp.library_items[0].categories[0].app_count #=> Integer
    #   resp.library_items[0].status #=> String
    #   resp.library_items[0].created_at #=> Time
    #   resp.library_items[0].created_by #=> String
    #   resp.library_items[0].updated_at #=> Time
    #   resp.library_items[0].updated_by #=> String
    #   resp.library_items[0].rating_count #=> Integer
    #   resp.library_items[0].is_rated_by_user #=> Boolean
    #   resp.library_items[0].user_count #=> Integer
    #   resp.library_items[0].is_verified #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ListLibraryItems AWS API Documentation
    #
    # @overload list_library_items(params = {})
    # @param [Hash] params ({})
    def list_library_items(params = {}, options = {})
      req = build_request(:list_library_items, params)
      req.send_request(options)
    end

    # Lists the collected data of a Q App data collection session.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the Q App data collection session.
    #
    # @return [Types::ListQAppSessionDataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQAppSessionDataOutput#session_id #session_id} => String
    #   * {Types::ListQAppSessionDataOutput#session_arn #session_arn} => String
    #   * {Types::ListQAppSessionDataOutput#session_data #session_data} => Array&lt;Types::QAppSessionData&gt;
    #   * {Types::ListQAppSessionDataOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_q_app_session_data({
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.session_arn #=> String
    #   resp.session_data #=> Array
    #   resp.session_data[0].card_id #=> String
    #   resp.session_data[0].user.user_id #=> String
    #   resp.session_data[0].submission_id #=> String
    #   resp.session_data[0].timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ListQAppSessionData AWS API Documentation
    #
    # @overload list_q_app_session_data(params = {})
    # @param [Hash] params ({})
    def list_q_app_session_data(params = {}, options = {})
      req = build_request(:list_q_app_session_data, params)
      req.send_request(options)
    end

    # Lists the Amazon Q Apps owned by or associated with the user either
    # because they created it or because they used it from the library in
    # the past. The user identity is extracted from the credentials used to
    # invoke this operation..
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [Integer] :limit
    #   The maximum number of Q Apps to return in the response.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @return [Types::ListQAppsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQAppsOutput#apps #apps} => Array&lt;Types::UserAppItem&gt;
    #   * {Types::ListQAppsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List at most 3 Amazon Q Apps in an Q Business application
    #
    #   resp = client.list_q_apps({
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     limit: 3, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     apps: [
    #       {
    #         app_arn: "arn:aws:qapps:us-west-2:..../7b9fe303-18bb-4643-952c-bfcf9f4c427f", 
    #         app_id: "7b9fe303-18bb-4643-952c-bfcf9f4c427f", 
    #         created_at: Time.parse("2024-05-21T04:09:10.401Z"), 
    #         description: "Description 1", 
    #         is_verified: false, 
    #         status: "DRAFT", 
    #         title: "App 1", 
    #       }, 
    #       {
    #         app_arn: "arn:aws:qapps:us-west-2:..../dd178fd6-ad3d-49b3-a32d-e915cf423e37", 
    #         app_id: "dd178fd6-ad3d-49b3-a32d-e915cf423e37", 
    #         created_at: Time.parse("2024-05-21T04:09:10.401Z"), 
    #         description: "Description 2", 
    #         is_verified: true, 
    #         status: "PUBLISHED", 
    #         title: "App 2", 
    #       }, 
    #       {
    #         app_arn: "arn:aws:qapps:us-west-2:..../3274b744-1a13-4aad-953f-eda2e4149e6e", 
    #         app_id: "3274b744-1a13-4aad-953f-eda2e4149e6e", 
    #         created_at: Time.parse("2024-05-21T04:09:10.401Z"), 
    #         description: "Description 3", 
    #         is_verified: false, 
    #         status: "DRAFT", 
    #         title: "App 3", 
    #       }, 
    #     ], 
    #     next_token: "bXlzdGVyaW91c1BhZ2luYXRpb25Ub2tlbg==", 
    #   }
    #
    # @example Example: Retrieve the next page of Amazon Q Apps
    #
    #   resp = client.list_q_apps({
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     limit: 3, 
    #     next_token: "bXlzdGVyaW91c1BhZ2luYXRpb25Ub2tlbg==", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     apps: [
    #       {
    #         app_arn: "arn:aws:qapps:us-west-2:..../bec8ee64-2635-41e8-aace-e1e418f4f295", 
    #         app_id: "bec8ee64-2635-41e8-aace-e1e418f4f295", 
    #         created_at: Time.parse("2024-05-21T04:09:10.401Z"), 
    #         description: "Description 4", 
    #         is_verified: true, 
    #         status: "PUBLISHED", 
    #         title: "App 4", 
    #       }, 
    #       {
    #         app_arn: "arn:aws:qapps:us-west-2:..../c380a45d-bd77-45b0-a0e5-8a266c1d8bc4", 
    #         app_id: "c380a45d-bd77-45b0-a0e5-8a266c1d8bc4", 
    #         created_at: Time.parse("2024-05-21T04:09:10.401Z"), 
    #         description: "Description 5", 
    #         is_verified: false, 
    #         status: "PUBLISHED", 
    #         title: "App 5", 
    #       }, 
    #       {
    #         app_arn: "arn:aws:qapps:us-west-2:..../afc4ee80-9722-4396-85a6-7aeaff52c177", 
    #         app_id: "afc4ee80-9722-4396-85a6-7aeaff52c177", 
    #         created_at: Time.parse("2024-05-21T04:09:10.401Z"), 
    #         description: "Description 6", 
    #         is_verified: false, 
    #         status: "PUBLISHED", 
    #         title: "App 6", 
    #       }, 
    #     ], 
    #     next_token: "YW5vdGhlclRva2VuIQ==", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_q_apps({
    #     instance_id: "InstanceId", # required
    #     limit: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.apps #=> Array
    #   resp.apps[0].app_id #=> String
    #   resp.apps[0].app_arn #=> String
    #   resp.apps[0].title #=> String
    #   resp.apps[0].description #=> String
    #   resp.apps[0].created_at #=> Time
    #   resp.apps[0].can_edit #=> Boolean
    #   resp.apps[0].status #=> String
    #   resp.apps[0].is_verified #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ListQApps AWS API Documentation
    #
    # @overload list_q_apps(params = {})
    # @param [Hash] params ({})
    def list_q_apps(params = {}, options = {})
      req = build_request(:list_q_apps, params)
      req.send_request(options)
    end

    # Lists the tags associated with an Amazon Q Apps resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags should be
    #   listed.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: A call to list tags for a resource
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:qapps:us-west-2:123456789012:application/3642ba81-344c-42fd-a480-9119a5a5f26b/qapp/7212ff04-de7b-4831-bd80-45d6975ba1b0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "department" => "HR", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Generates an Amazon Q App definition based on either a conversation or
    # a problem statement provided as input.The resulting app definition can
    # be used to call `CreateQApp`. This API doesn't create Amazon Q Apps
    # directly.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [Types::PredictQAppInputOptions] :options
    #   The input to generate the Q App definition from, either a conversation
    #   or problem statement.
    #
    # @return [Types::PredictQAppOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PredictQAppOutput#app #app} => Types::PredictAppDefinition
    #   * {Types::PredictQAppOutput#problem_statement #problem_statement} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.predict_q_app({
    #     instance_id: "InstanceId", # required
    #     options: {
    #       conversation: [
    #         {
    #           body: "ConversationMessageBodyString", # required
    #           type: "USER", # required, accepts USER, SYSTEM
    #         },
    #       ],
    #       problem_statement: "PredictQAppInputOptionsProblemStatementString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app.title #=> String
    #   resp.app.description #=> String
    #   resp.app.app_definition.cards #=> Array
    #   resp.app.app_definition.cards[0].text_input.title #=> String
    #   resp.app.app_definition.cards[0].text_input.id #=> String
    #   resp.app.app_definition.cards[0].text_input.type #=> String, one of "text-input", "q-query", "file-upload", "q-plugin", "form-input"
    #   resp.app.app_definition.cards[0].text_input.placeholder #=> String
    #   resp.app.app_definition.cards[0].text_input.default_value #=> String
    #   resp.app.app_definition.cards[0].q_query.title #=> String
    #   resp.app.app_definition.cards[0].q_query.id #=> String
    #   resp.app.app_definition.cards[0].q_query.type #=> String, one of "text-input", "q-query", "file-upload", "q-plugin", "form-input"
    #   resp.app.app_definition.cards[0].q_query.prompt #=> String
    #   resp.app.app_definition.cards[0].q_query.output_source #=> String, one of "approved-sources", "llm"
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.and_all_filters #=> Array
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.and_all_filters[0] #=> Types::AttributeFilter
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.or_all_filters #=> Array
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.or_all_filters[0] #=> Types::AttributeFilter
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.not_filter #=> Types::AttributeFilter
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.equals_to.name #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.equals_to.value.string_value #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.equals_to.value.string_list_value #=> Array
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.equals_to.value.string_list_value[0] #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.equals_to.value.long_value #=> Integer
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.equals_to.value.date_value #=> Time
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.contains_all.name #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.contains_all.value.string_value #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.contains_all.value.string_list_value #=> Array
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.contains_all.value.string_list_value[0] #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.contains_all.value.long_value #=> Integer
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.contains_all.value.date_value #=> Time
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.contains_any.name #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.contains_any.value.string_value #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.contains_any.value.string_list_value #=> Array
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.contains_any.value.string_list_value[0] #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.contains_any.value.long_value #=> Integer
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.contains_any.value.date_value #=> Time
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.greater_than.name #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.greater_than.value.string_value #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.greater_than.value.string_list_value #=> Array
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.greater_than.value.string_list_value[0] #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.greater_than.value.long_value #=> Integer
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.greater_than.value.date_value #=> Time
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.greater_than_or_equals.name #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.greater_than_or_equals.value.string_value #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.greater_than_or_equals.value.string_list_value #=> Array
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.greater_than_or_equals.value.string_list_value[0] #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.greater_than_or_equals.value.long_value #=> Integer
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.greater_than_or_equals.value.date_value #=> Time
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.less_than.name #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.less_than.value.string_value #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.less_than.value.string_list_value #=> Array
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.less_than.value.string_list_value[0] #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.less_than.value.long_value #=> Integer
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.less_than.value.date_value #=> Time
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.less_than_or_equals.name #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.less_than_or_equals.value.string_value #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.less_than_or_equals.value.string_list_value #=> Array
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.less_than_or_equals.value.string_list_value[0] #=> String
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.less_than_or_equals.value.long_value #=> Integer
    #   resp.app.app_definition.cards[0].q_query.attribute_filter.less_than_or_equals.value.date_value #=> Time
    #   resp.app.app_definition.cards[0].q_plugin.title #=> String
    #   resp.app.app_definition.cards[0].q_plugin.id #=> String
    #   resp.app.app_definition.cards[0].q_plugin.type #=> String, one of "text-input", "q-query", "file-upload", "q-plugin", "form-input"
    #   resp.app.app_definition.cards[0].q_plugin.prompt #=> String
    #   resp.app.app_definition.cards[0].q_plugin.plugin_id #=> String
    #   resp.app.app_definition.cards[0].q_plugin.action_identifier #=> String
    #   resp.app.app_definition.cards[0].file_upload.title #=> String
    #   resp.app.app_definition.cards[0].file_upload.id #=> String
    #   resp.app.app_definition.cards[0].file_upload.type #=> String, one of "text-input", "q-query", "file-upload", "q-plugin", "form-input"
    #   resp.app.app_definition.cards[0].file_upload.filename #=> String
    #   resp.app.app_definition.cards[0].file_upload.file_id #=> String
    #   resp.app.app_definition.cards[0].file_upload.allow_override #=> Boolean
    #   resp.app.app_definition.cards[0].form_input.title #=> String
    #   resp.app.app_definition.cards[0].form_input.id #=> String
    #   resp.app.app_definition.cards[0].form_input.type #=> String, one of "text-input", "q-query", "file-upload", "q-plugin", "form-input"
    #   resp.app.app_definition.cards[0].form_input.compute_mode #=> String, one of "append", "replace"
    #   resp.app.app_definition.initial_prompt #=> String
    #   resp.problem_statement #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/PredictQApp AWS API Documentation
    #
    # @overload predict_q_app(params = {})
    # @param [Hash] params ({})
    def predict_q_app(params = {}, options = {})
      req = build_request(:predict_q_app, params)
      req.send_request(options)
    end

    # Starts a new session for an Amazon Q App, allowing inputs to be
    # provided and the app to be run.
    #
    # <note markdown="1"> Each Q App session will be condensed into a single conversation in the
    # web experience.
    #
    #  </note>
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :app_id
    #   The unique identifier of the Q App to start a session for.
    #
    # @option params [required, Integer] :app_version
    #   The version of the Q App to use for the session.
    #
    # @option params [Array<Types::CardValue>] :initial_values
    #   Optional initial input values to provide for the Q App session.
    #
    # @option params [String] :session_id
    #   The unique identifier of the a Q App session.
    #
    # @option params [Hash<String,String>] :tags
    #   Optional tags to associate with the new Q App session.
    #
    # @return [Types::StartQAppSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartQAppSessionOutput#session_id #session_id} => String
    #   * {Types::StartQAppSessionOutput#session_arn #session_arn} => String
    #
    #
    # @example Example: Start a session for an Amazon Q App using version 1, passing in initial values for one card
    #
    #   resp = client.start_q_app_session({
    #     app_id: "65e7dce7-226a-47f9-b689-22850becef89", 
    #     app_version: 1, 
    #     initial_values: [
    #       {
    #         value: "What is the circumference of Earth?", 
    #         card_id: "6fb5b404-3b7b-48a4-8a8b-56406922a606", 
    #       }, 
    #     ], 
    #     instance_id: "4cc5e4c2-d2a2-4188-a114-9ca125b4aedc", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     session_arn: "arn:aws:qapps:us-west-2:0123456789012:application/a929ecd6-5765-4ec7-bd3e-2ca90098b18e/qapp/65e7dce7-226a-47f9-b689-22850becef89/session/1fca878e-64c5-4dc4-b1d9-c93effed4e82", 
    #     session_id: "1fca878e-64c5-4dc4-b1d9-c93effed4e82", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_q_app_session({
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #     app_version: 1, # required
    #     initial_values: [
    #       {
    #         card_id: "UUID", # required
    #         value: "CardValueValueString", # required
    #         submission_mutation: {
    #           submission_id: "UUID", # required
    #           mutation_type: "edit", # required, accepts edit, delete, add
    #         },
    #       },
    #     ],
    #     session_id: "String",
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.session_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/StartQAppSession AWS API Documentation
    #
    # @overload start_q_app_session(params = {})
    # @param [Hash] params ({})
    def start_q_app_session(params = {}, options = {})
      req = build_request(:start_q_app_session, params)
      req.send_request(options)
    end

    # Stops an active session for an Amazon Q App.This deletes all data
    # related to the session and makes it invalid for future uses. The
    # results of the session will be persisted as part of the conversation.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the Q App session to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_q_app_session({
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/StopQAppSession AWS API Documentation
    #
    # @overload stop_q_app_session(params = {})
    # @param [Hash] params ({})
    def stop_q_app_session(params = {}, options = {})
      req = build_request(:stop_q_app_session, params)
      req.send_request(options)
    end

    # Associates tags with an Amazon Q Apps resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: A call to tag a resource
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:qapps:us-west-2:123456789012:application/3642ba81-344c-42fd-a480-9119a5a5f26b/qapp/7212ff04-de7b-4831-bd80-45d6975ba1b0", 
    #     tags: {
    #       "department" => "HR", 
    #     }, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Disassociates tags from an Amazon Q Apps resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to disassociate the tag
    #   from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to disassociate from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: A call to untag a resource
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:qapps:us-west-2:123456789012:application/3642ba81-344c-42fd-a480-9119a5a5f26b/qapp/7212ff04-de7b-4831-bd80-45d6975ba1b0", 
    #     tag_keys: [
    #       "department", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the library item for an Amazon Q App.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :library_item_id
    #   The unique identifier of the library item to update.
    #
    # @option params [String] :status
    #   The new status to set for the library item, such as "Published" or
    #   "Hidden".
    #
    # @option params [Array<String>] :categories
    #   The new categories to associate with the library item.
    #
    # @return [Types::UpdateLibraryItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLibraryItemOutput#library_item_id #library_item_id} => String
    #   * {Types::UpdateLibraryItemOutput#app_id #app_id} => String
    #   * {Types::UpdateLibraryItemOutput#app_version #app_version} => Integer
    #   * {Types::UpdateLibraryItemOutput#categories #categories} => Array&lt;Types::Category&gt;
    #   * {Types::UpdateLibraryItemOutput#status #status} => String
    #   * {Types::UpdateLibraryItemOutput#created_at #created_at} => Time
    #   * {Types::UpdateLibraryItemOutput#created_by #created_by} => String
    #   * {Types::UpdateLibraryItemOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateLibraryItemOutput#updated_by #updated_by} => String
    #   * {Types::UpdateLibraryItemOutput#rating_count #rating_count} => Integer
    #   * {Types::UpdateLibraryItemOutput#is_rated_by_user #is_rated_by_user} => Boolean
    #   * {Types::UpdateLibraryItemOutput#user_count #user_count} => Integer
    #   * {Types::UpdateLibraryItemOutput#is_verified #is_verified} => Boolean
    #
    #
    # @example Example: Sets the status of a library item to DISABLED
    #
    #   resp = client.update_library_item({
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316", 
    #     status: "DISABLED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     app_id: "7a11f34b-42d4-4bc8-b668-ae4a788dae1e", 
    #     app_version: 6, 
    #     categories: [
    #       {
    #         id: "9c871ed4-1c41-4065-aefe-321cd4b61cf8", 
    #         title: "HR", 
    #       }, 
    #       {
    #         id: "fdc4b483-c4e2-44c9-b4b2-6c850bbdb579", 
    #         title: "General", 
    #       }, 
    #       {
    #         id: "c1c4e374-118c-446f-81fb-cba6225d88da", 
    #         title: "IT", 
    #       }, 
    #     ], 
    #     created_at: Time.parse("2024-05-21T23:17:27.350Z"), 
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #     is_verified: false, 
    #     library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316", 
    #     rating_count: 24, 
    #     status: "DISABLED", 
    #     updated_at: Time.parse("2024-05-28T19:43:48.577Z"), 
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_library_item({
    #     instance_id: "InstanceId", # required
    #     library_item_id: "UUID", # required
    #     status: "PUBLISHED", # accepts PUBLISHED, DISABLED
    #     categories: ["UUID"],
    #   })
    #
    # @example Response structure
    #
    #   resp.library_item_id #=> String
    #   resp.app_id #=> String
    #   resp.app_version #=> Integer
    #   resp.categories #=> Array
    #   resp.categories[0].id #=> String
    #   resp.categories[0].title #=> String
    #   resp.categories[0].color #=> String
    #   resp.categories[0].app_count #=> Integer
    #   resp.status #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.rating_count #=> Integer
    #   resp.is_rated_by_user #=> Boolean
    #   resp.user_count #=> Integer
    #   resp.is_verified #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UpdateLibraryItem AWS API Documentation
    #
    # @overload update_library_item(params = {})
    # @param [Hash] params ({})
    def update_library_item(params = {}, options = {})
      req = build_request(:update_library_item, params)
      req.send_request(options)
    end

    # Updates the verification status of a library item for an Amazon Q App.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :library_item_id
    #   The unique identifier of the updated library item.
    #
    # @option params [Boolean] :is_verified
    #   The verification status of the library item
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Update a library item to be verified
    #
    #   resp = client.update_library_item_metadata({
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     is_verified: true, 
    #     library_item_id: "cb9ecf72-8563-450d-9db9-994f98297316", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_library_item_metadata({
    #     instance_id: "InstanceId", # required
    #     library_item_id: "UUID", # required
    #     is_verified: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UpdateLibraryItemMetadata AWS API Documentation
    #
    # @overload update_library_item_metadata(params = {})
    # @param [Hash] params ({})
    def update_library_item_metadata(params = {}, options = {})
      req = build_request(:update_library_item_metadata, params)
      req.send_request(options)
    end

    # Updates an existing Amazon Q App, allowing modifications to its title,
    # description, and definition.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :app_id
    #   The unique identifier of the Q App to update.
    #
    # @option params [String] :title
    #   The new title for the Q App.
    #
    # @option params [String] :description
    #   The new description for the Q App.
    #
    # @option params [Types::AppDefinitionInput] :app_definition
    #   The new definition specifying the cards and flow for the Q App.
    #
    # @return [Types::UpdateQAppOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateQAppOutput#app_id #app_id} => String
    #   * {Types::UpdateQAppOutput#app_arn #app_arn} => String
    #   * {Types::UpdateQAppOutput#title #title} => String
    #   * {Types::UpdateQAppOutput#description #description} => String
    #   * {Types::UpdateQAppOutput#initial_prompt #initial_prompt} => String
    #   * {Types::UpdateQAppOutput#app_version #app_version} => Integer
    #   * {Types::UpdateQAppOutput#status #status} => String
    #   * {Types::UpdateQAppOutput#created_at #created_at} => Time
    #   * {Types::UpdateQAppOutput#created_by #created_by} => String
    #   * {Types::UpdateQAppOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateQAppOutput#updated_by #updated_by} => String
    #   * {Types::UpdateQAppOutput#required_capabilities #required_capabilities} => Array&lt;String&gt;
    #
    #
    # @example Example: Updating the title of an app
    #
    #   resp = client.update_q_app({
    #     app_id: "7212ff04-de7b-4831-bd80-45d6975ba1b0", 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     title: "This is the new title", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     app_arn: "arn:aws:qapps:us-west-2:123456789012:app/7212ff04-de7b-4831-bd80-45d6975ba1b0", 
    #     app_id: "7212ff04-de7b-4831-bd80-45d6975ba1b0", 
    #     app_version: 2, 
    #     created_at: Time.parse("2024-05-14T00:11:54.232Z"), 
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #     required_capabilities: [
    #       "CreatorMode", 
    #     ], 
    #     status: "DRAFT", 
    #     title: "This is the new title", 
    #     updated_at: Time.parse("2024-05-17T23:15:08.571Z"), 
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #   }
    #
    # @example Example: Updating the app so it has a single q-query card
    #
    #   resp = client.update_q_app({
    #     app_definition: {
    #       cards: [
    #         {
    #           q_query: {
    #             type: "q-query", 
    #             id: "18870b94-1e63-40e0-8c12-669c90ac5acc", 
    #             prompt: "Recommend me an itinerary for a trip", 
    #             title: "Trip Ideas", 
    #           }, 
    #         }, 
    #       ], 
    #     }, 
    #     app_id: "7212ff04-de7b-4831-bd80-45d6975ba1b0", 
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     app_arn: "arn:aws:qapps:us-west-2:123456789012:app/7212ff04-de7b-4831-bd80-45d6975ba1b0", 
    #     app_id: "7212ff04-de7b-4831-bd80-45d6975ba1b0", 
    #     app_version: 99, 
    #     created_at: Time.parse("2024-05-14T00:11:54.232Z"), 
    #     created_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #     required_capabilities: [
    #       "CreatorMode", 
    #     ], 
    #     status: "DRAFT", 
    #     title: "Previous Title Stays the Same", 
    #     updated_at: Time.parse("2024-05-17T23:15:08.571Z"), 
    #     updated_by: "a841e300-40c1-7062-fa34-5b46dadbbaac", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_q_app({
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #     title: "Title",
    #     description: "Description",
    #     app_definition: {
    #       cards: [ # required
    #         {
    #           text_input: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input", # required, accepts text-input, q-query, file-upload, q-plugin, form-input
    #             placeholder: "Placeholder",
    #             default_value: "Default",
    #           },
    #           q_query: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input", # required, accepts text-input, q-query, file-upload, q-plugin, form-input
    #             prompt: "Prompt", # required
    #             output_source: "approved-sources", # accepts approved-sources, llm
    #             attribute_filter: {
    #               and_all_filters: [
    #                 {
    #                   # recursive AttributeFilter
    #                 },
    #               ],
    #               or_all_filters: [
    #                 {
    #                   # recursive AttributeFilter
    #                 },
    #               ],
    #               not_filter: {
    #                 # recursive AttributeFilter
    #               },
    #               equals_to: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               contains_all: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               contains_any: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               greater_than: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               greater_than_or_equals: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               less_than: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #               less_than_or_equals: {
    #                 name: "DocumentAttributeKey", # required
    #                 value: { # required
    #                   string_value: "DocumentAttributeValueStringValueString",
    #                   string_list_value: ["PlatoString"],
    #                   long_value: 1,
    #                   date_value: Time.now,
    #                 },
    #               },
    #             },
    #           },
    #           q_plugin: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input", # required, accepts text-input, q-query, file-upload, q-plugin, form-input
    #             prompt: "Prompt", # required
    #             plugin_id: "PluginId", # required
    #             action_identifier: "ActionIdentifier",
    #           },
    #           file_upload: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input", # required, accepts text-input, q-query, file-upload, q-plugin, form-input
    #             filename: "Filename",
    #             file_id: "UUID",
    #             allow_override: false,
    #           },
    #           form_input: {
    #             title: "Title", # required
    #             id: "UUID", # required
    #             type: "text-input", # required, accepts text-input, q-query, file-upload, q-plugin, form-input
    #             metadata: { # required
    #               schema: { # required
    #               },
    #             },
    #             compute_mode: "append", # accepts append, replace
    #           },
    #         },
    #       ],
    #       initial_prompt: "InitialPrompt",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app_id #=> String
    #   resp.app_arn #=> String
    #   resp.title #=> String
    #   resp.description #=> String
    #   resp.initial_prompt #=> String
    #   resp.app_version #=> Integer
    #   resp.status #=> String, one of "PUBLISHED", "DRAFT", "DELETED"
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.required_capabilities #=> Array
    #   resp.required_capabilities[0] #=> String, one of "FileUpload", "CreatorMode", "RetrievalMode", "PluginMode"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UpdateQApp AWS API Documentation
    #
    # @overload update_q_app(params = {})
    # @param [Hash] params ({})
    def update_q_app(params = {}, options = {})
      req = build_request(:update_q_app, params)
      req.send_request(options)
    end

    # Updates read permissions for a Amazon Q App in Amazon Q Business
    # application environment instance.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :app_id
    #   The unique identifier of the Amazon Q App for which permissions are
    #   being updated.
    #
    # @option params [Array<Types::PermissionInput>] :grant_permissions
    #   The list of permissions to grant for the Amazon Q App.
    #
    # @option params [Array<Types::PermissionInput>] :revoke_permissions
    #   The list of permissions to revoke for the Amazon Q App.
    #
    # @return [Types::UpdateQAppPermissionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateQAppPermissionsOutput#resource_arn #resource_arn} => String
    #   * {Types::UpdateQAppPermissionsOutput#app_id #app_id} => String
    #   * {Types::UpdateQAppPermissionsOutput#permissions #permissions} => Array&lt;Types::PermissionOutput&gt;
    #
    #
    # @example Example: Grant permissions for the app
    #
    #   resp = client.update_q_app_permissions({
    #     app_id: "fe0acf86-49e5-4def-a0c2-40ce0cafee14", 
    #     grant_permissions: [
    #       {
    #         action: "read", 
    #         principal: "user2@example.com", 
    #       }, 
    #     ], 
    #     instance_id: "01793661-ad73-4c7d-8eaa-1c95a10151c2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     app_id: "fe0acf86-49e5-4def-a0c2-40ce0cafee14", 
    #     permissions: [
    #       {
    #         action: "write", 
    #         principal: {
    #           email: "user1@example.com", 
    #           user_id: "f8f15330-b091-708b-d46e-adb0d914b699", 
    #         }, 
    #       }, 
    #       {
    #         action: "read", 
    #         principal: {
    #           email: "user2@example.com", 
    #           user_id: "c81133d0-10d1-70eb-aaa3-d427ea6fc0f3", 
    #         }, 
    #       }, 
    #     ], 
    #     resource_arn: "arn:aws:qapps:us-west-2:111111111111:application/01793661-ad73-4c7d-8eaa-1c95a10151c2/qapp/fe0acf86-49e5-4def-a0c2-40ce0cafee14", 
    #   }
    #
    # @example Example: Revoke permissions for the app
    #
    #   resp = client.update_q_app_permissions({
    #     app_id: "fe0acf86-49e5-4def-a0c2-40ce0cafee14", 
    #     instance_id: "01793661-ad73-4c7d-8eaa-1c95a10151c2", 
    #     revoke_permissions: [
    #       {
    #         action: "read", 
    #         principal: "user2@example.com", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     app_id: "fe0acf86-49e5-4def-a0c2-40ce0cafee14", 
    #     permissions: [
    #       {
    #         action: "write", 
    #         principal: {
    #           email: "user1@example.com", 
    #           user_id: "f8f15330-b091-708b-d46e-adb0d914b699", 
    #         }, 
    #       }, 
    #     ], 
    #     resource_arn: "arn:aws:qapps:us-west-2:111111111111:application/01793661-ad73-4c7d-8eaa-1c95a10151c2/qapp/fe0acf86-49e5-4def-a0c2-40ce0cafee14", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_q_app_permissions({
    #     instance_id: "InstanceId", # required
    #     app_id: "UUID", # required
    #     grant_permissions: [
    #       {
    #         action: "read", # required, accepts read, write
    #         principal: "PermissionInputPrincipalString", # required
    #       },
    #     ],
    #     revoke_permissions: [
    #       {
    #         action: "read", # required, accepts read, write
    #         principal: "PermissionInputPrincipalString", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.app_id #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].action #=> String, one of "read", "write"
    #   resp.permissions[0].principal.user_id #=> String
    #   resp.permissions[0].principal.user_type #=> String, one of "owner", "user"
    #   resp.permissions[0].principal.email #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UpdateQAppPermissions AWS API Documentation
    #
    # @overload update_q_app_permissions(params = {})
    # @param [Hash] params ({})
    def update_q_app_permissions(params = {}, options = {})
      req = build_request(:update_q_app_permissions, params)
      req.send_request(options)
    end

    # Updates the session for a given Q App `sessionId`. This is only valid
    # when at least one card of the session is in the `WAITING` state. Data
    # for each `WAITING` card can be provided as input. If inputs are not
    # provided, the call will be accepted but session will not move forward.
    # Inputs for cards that are not in the `WAITING` status will be ignored.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the Q App session to provide input for.
    #
    # @option params [Array<Types::CardValue>] :values
    #   The input values to provide for the current state of the Q App
    #   session.
    #
    # @return [Types::UpdateQAppSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateQAppSessionOutput#session_id #session_id} => String
    #   * {Types::UpdateQAppSessionOutput#session_arn #session_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_q_app_session({
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #     values: [
    #       {
    #         card_id: "UUID", # required
    #         value: "CardValueValueString", # required
    #         submission_mutation: {
    #           submission_id: "UUID", # required
    #           mutation_type: "edit", # required, accepts edit, delete, add
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.session_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UpdateQAppSession AWS API Documentation
    #
    # @overload update_q_app_session(params = {})
    # @param [Hash] params ({})
    def update_q_app_session(params = {}, options = {})
      req = build_request(:update_q_app_session, params)
      req.send_request(options)
    end

    # Updates the configuration metadata of a session for a given Q App
    # `sessionId`.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier of the Amazon Q Business application environment
    #   instance.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the Q App session to update configuration
    #   for.
    #
    # @option params [String] :session_name
    #   The new name for the Q App session.
    #
    # @option params [required, Types::SessionSharingConfiguration] :sharing_configuration
    #   The new sharing configuration for the Q App data collection session.
    #
    # @return [Types::UpdateQAppSessionMetadataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateQAppSessionMetadataOutput#session_id #session_id} => String
    #   * {Types::UpdateQAppSessionMetadataOutput#session_arn #session_arn} => String
    #   * {Types::UpdateQAppSessionMetadataOutput#session_name #session_name} => String
    #   * {Types::UpdateQAppSessionMetadataOutput#sharing_configuration #sharing_configuration} => Types::SessionSharingConfiguration
    #
    #
    # @example Example: Updates an existing session metadata for an Amazon Q App
    #
    #   resp = client.update_q_app_session_metadata({
    #     instance_id: "0b95c9c4-89cc-4aa8-9aae-aa91cbec699f", 
    #     session_id: "56ae47c3-10bc-4c2c-8b27-9b9fe23b3edb", 
    #     session_name: "Trip itinerary collection session", 
    #     sharing_configuration: {
    #       accept_responses: true, 
    #       enabled: true, 
    #       reveal_cards: false, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     session_arn: "arn:aws:qapps:us-west-2:0123456789012:application/cbea8329-41c0-4566-a112-19250921a220/qapp/387ccac9-4717-489f-841f-729b7d7de355/session/56ae47c3-10bc-4c2c-8b27-9b9fe23b3edb", 
    #     session_id: "56ae47c3-10bc-4c2c-8b27-9b9fe23b3edb", 
    #     session_name: "Trip itinerary collection session", 
    #     sharing_configuration: {
    #       accept_responses: true, 
    #       enabled: true, 
    #       reveal_cards: false, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_q_app_session_metadata({
    #     instance_id: "InstanceId", # required
    #     session_id: "UUID", # required
    #     session_name: "SessionName",
    #     sharing_configuration: { # required
    #       enabled: false, # required
    #       accept_responses: false,
    #       reveal_cards: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.session_arn #=> String
    #   resp.session_name #=> String
    #   resp.sharing_configuration.enabled #=> Boolean
    #   resp.sharing_configuration.accept_responses #=> Boolean
    #   resp.sharing_configuration.reveal_cards #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UpdateQAppSessionMetadata AWS API Documentation
    #
    # @overload update_q_app_session_metadata(params = {})
    # @param [Hash] params ({})
    def update_q_app_session_metadata(params = {}, options = {})
      req = build_request(:update_q_app_session_metadata, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::QApps')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-qapps'
      context[:gem_version] = '1.18.0'
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
