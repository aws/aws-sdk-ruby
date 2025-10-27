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

module Aws::MarketplaceCatalog
  # An API client for MarketplaceCatalog.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MarketplaceCatalog::Client.new(
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

    @identifier = :marketplacecatalog

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
    add_plugin(Aws::MarketplaceCatalog::Plugins::Endpoints)

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
    #   @option options [Aws::MarketplaceCatalog::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MarketplaceCatalog::EndpointParameters`.
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

    # Returns metadata and content for multiple entities. This is the Batch
    # version of the `DescribeEntity` API and uses the same IAM permission
    # action as `DescribeEntity` API.
    #
    # @option params [required, Array<Types::EntityRequest>] :entity_request_list
    #   List of entity IDs and the catalogs the entities are present in.
    #
    # @return [Types::BatchDescribeEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDescribeEntitiesResponse#entity_details #entity_details} => Hash&lt;String,Types::EntityDetail&gt;
    #   * {Types::BatchDescribeEntitiesResponse#errors #errors} => Hash&lt;String,Types::BatchDescribeErrorDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_describe_entities({
    #     entity_request_list: [ # required
    #       {
    #         catalog: "Catalog", # required
    #         entity_id: "EntityId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_details #=> Hash
    #   resp.entity_details["EntityId"].entity_type #=> String
    #   resp.entity_details["EntityId"].entity_arn #=> String
    #   resp.entity_details["EntityId"].entity_identifier #=> String
    #   resp.entity_details["EntityId"].last_modified_date #=> String
    #   resp.errors #=> Hash
    #   resp.errors["EntityId"].error_code #=> String
    #   resp.errors["EntityId"].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/BatchDescribeEntities AWS API Documentation
    #
    # @overload batch_describe_entities(params = {})
    # @param [Hash] params ({})
    def batch_describe_entities(params = {}, options = {})
      req = build_request(:batch_describe_entities, params)
      req.send_request(options)
    end

    # Used to cancel an open change request. Must be sent before the status
    # of the request changes to `APPLYING`, the final stage of completing
    # your change request. You can describe a change during the 60-day
    # request history retention period for API calls.
    #
    # @option params [required, String] :catalog
    #   Required. The catalog related to the request. Fixed value:
    #   `AWSMarketplace`.
    #
    # @option params [required, String] :change_set_id
    #   Required. The unique identifier of the `StartChangeSet` request that
    #   you want to cancel.
    #
    # @return [Types::CancelChangeSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelChangeSetResponse#change_set_id #change_set_id} => String
    #   * {Types::CancelChangeSetResponse#change_set_arn #change_set_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_change_set({
    #     catalog: "Catalog", # required
    #     change_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_set_id #=> String
    #   resp.change_set_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/CancelChangeSet AWS API Documentation
    #
    # @overload cancel_change_set(params = {})
    # @param [Hash] params ({})
    def cancel_change_set(params = {}, options = {})
      req = build_request(:cancel_change_set, params)
      req.send_request(options)
    end

    # Deletes a resource-based policy on an entity that is identified by its
    # resource ARN.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the entity resource that is
    #   associated with the resource policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "ResourceARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Provides information about a given change set.
    #
    # @option params [required, String] :catalog
    #   Required. The catalog related to the request. Fixed value:
    #   `AWSMarketplace`
    #
    # @option params [required, String] :change_set_id
    #   Required. The unique identifier for the `StartChangeSet` request that
    #   you want to describe the details for.
    #
    # @return [Types::DescribeChangeSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChangeSetResponse#change_set_id #change_set_id} => String
    #   * {Types::DescribeChangeSetResponse#change_set_arn #change_set_arn} => String
    #   * {Types::DescribeChangeSetResponse#change_set_name #change_set_name} => String
    #   * {Types::DescribeChangeSetResponse#intent #intent} => String
    #   * {Types::DescribeChangeSetResponse#start_time #start_time} => String
    #   * {Types::DescribeChangeSetResponse#end_time #end_time} => String
    #   * {Types::DescribeChangeSetResponse#status #status} => String
    #   * {Types::DescribeChangeSetResponse#failure_code #failure_code} => String
    #   * {Types::DescribeChangeSetResponse#failure_description #failure_description} => String
    #   * {Types::DescribeChangeSetResponse#change_set #change_set} => Array&lt;Types::ChangeSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_change_set({
    #     catalog: "Catalog", # required
    #     change_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_set_id #=> String
    #   resp.change_set_arn #=> String
    #   resp.change_set_name #=> String
    #   resp.intent #=> String, one of "VALIDATE", "APPLY"
    #   resp.start_time #=> String
    #   resp.end_time #=> String
    #   resp.status #=> String, one of "PREPARING", "APPLYING", "SUCCEEDED", "CANCELLED", "FAILED"
    #   resp.failure_code #=> String, one of "CLIENT_ERROR", "SERVER_FAULT"
    #   resp.failure_description #=> String
    #   resp.change_set #=> Array
    #   resp.change_set[0].change_type #=> String
    #   resp.change_set[0].entity.type #=> String
    #   resp.change_set[0].entity.identifier #=> String
    #   resp.change_set[0].details #=> String
    #   resp.change_set[0].error_detail_list #=> Array
    #   resp.change_set[0].error_detail_list[0].error_code #=> String
    #   resp.change_set[0].error_detail_list[0].error_message #=> String
    #   resp.change_set[0].change_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DescribeChangeSet AWS API Documentation
    #
    # @overload describe_change_set(params = {})
    # @param [Hash] params ({})
    def describe_change_set(params = {}, options = {})
      req = build_request(:describe_change_set, params)
      req.send_request(options)
    end

    # Returns the metadata and content of the entity.
    #
    # @option params [required, String] :catalog
    #   Required. The catalog related to the request. Fixed value:
    #   `AWSMarketplace`
    #
    # @option params [required, String] :entity_id
    #   Required. The unique ID of the entity to describe.
    #
    # @return [Types::DescribeEntityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEntityResponse#entity_type #entity_type} => String
    #   * {Types::DescribeEntityResponse#entity_identifier #entity_identifier} => String
    #   * {Types::DescribeEntityResponse#entity_arn #entity_arn} => String
    #   * {Types::DescribeEntityResponse#last_modified_date #last_modified_date} => String
    #   * {Types::DescribeEntityResponse#details #details} => String
    #   * {Types::DescribeEntityResponse#details_document #details_document} => Hash,Array,String,Numeric,Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entity({
    #     catalog: "Catalog", # required
    #     entity_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_type #=> String
    #   resp.entity_identifier #=> String
    #   resp.entity_arn #=> String
    #   resp.last_modified_date #=> String
    #   resp.details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DescribeEntity AWS API Documentation
    #
    # @overload describe_entity(params = {})
    # @param [Hash] params ({})
    def describe_entity(params = {}, options = {})
      req = build_request(:describe_entity, params)
      req.send_request(options)
    end

    # Gets a resource-based policy of an entity that is identified by its
    # resource ARN.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the entity resource that is
    #   associated with the resource policy.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "ResourceARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Returns the list of change sets owned by the account being used to
    # make the call. You can filter this list by providing any combination
    # of `entityId`, `ChangeSetName`, and status. If you provide more than
    # one filter, the API operation applies a logical AND between the
    # filters.
    #
    # You can describe a change during the 60-day request history retention
    # period for API calls.
    #
    # @option params [required, String] :catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #
    # @option params [Array<Types::Filter>] :filter_list
    #   An array of filter objects.
    #
    # @option params [Types::Sort] :sort
    #   An object that contains two attributes, `SortBy` and `SortOrder`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned by a single call. This value
    #   must be provided in the next call to retrieve the next set of results.
    #   By default, this value is 20.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @return [Types::ListChangeSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChangeSetsResponse#change_set_summary_list #change_set_summary_list} => Array&lt;Types::ChangeSetSummaryListItem&gt;
    #   * {Types::ListChangeSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_change_sets({
    #     catalog: "Catalog", # required
    #     filter_list: [
    #       {
    #         name: "FilterName",
    #         value_list: ["FilterValueContent"],
    #       },
    #     ],
    #     sort: {
    #       sort_by: "SortBy",
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.change_set_summary_list #=> Array
    #   resp.change_set_summary_list[0].change_set_id #=> String
    #   resp.change_set_summary_list[0].change_set_arn #=> String
    #   resp.change_set_summary_list[0].change_set_name #=> String
    #   resp.change_set_summary_list[0].start_time #=> String
    #   resp.change_set_summary_list[0].end_time #=> String
    #   resp.change_set_summary_list[0].status #=> String, one of "PREPARING", "APPLYING", "SUCCEEDED", "CANCELLED", "FAILED"
    #   resp.change_set_summary_list[0].entity_id_list #=> Array
    #   resp.change_set_summary_list[0].entity_id_list[0] #=> String
    #   resp.change_set_summary_list[0].failure_code #=> String, one of "CLIENT_ERROR", "SERVER_FAULT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ListChangeSets AWS API Documentation
    #
    # @overload list_change_sets(params = {})
    # @param [Hash] params ({})
    def list_change_sets(params = {}, options = {})
      req = build_request(:list_change_sets, params)
      req.send_request(options)
    end

    # Provides the list of entities of a given type.
    #
    # @option params [required, String] :catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #
    # @option params [required, String] :entity_type
    #   The type of entities to retrieve. Valid values are: `AmiProduct`,
    #   `ContainerProduct`, `DataProduct`, `SaaSProduct`, `ProcurementPolicy`,
    #   `Experience`, `Audience`, `BrandingSettings`, `Offer`, `Seller`,
    #   `ResaleAuthorization`.
    #
    # @option params [Array<Types::Filter>] :filter_list
    #   An array of filter objects. Each filter object contains two
    #   attributes, `filterName` and `filterValues`.
    #
    # @option params [Types::Sort] :sort
    #   An object that contains two attributes, `SortBy` and `SortOrder`.
    #
    # @option params [String] :next_token
    #   The value of the next token, if it exists. Null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   Specifies the upper limit of the elements on a single page. If a value
    #   isn't provided, the default value is 20.
    #
    # @option params [String] :ownership_type
    #   Filters the returned set of entities based on their owner. The default
    #   is `SELF`. To list entities shared with you through AWS Resource
    #   Access Manager (AWS RAM), set to `SHARED`. Entities shared through the
    #   AWS Marketplace Catalog API `PutResourcePolicy` operation can't be
    #   discovered through the `SHARED` parameter.
    #
    # @option params [Types::EntityTypeFilters] :entity_type_filters
    #   A Union object containing filter shapes for all `EntityType`s. Each
    #   `EntityTypeFilter` shape will have filters applicable for that
    #   `EntityType` that can be used to search or filter entities.
    #
    # @option params [Types::EntityTypeSort] :entity_type_sort
    #   A Union object containing `Sort` shapes for all `EntityType`s. Each
    #   `EntityTypeSort` shape will have `SortBy` and `SortOrder` applicable
    #   for fields on that `EntityType`. This can be used to sort the results
    #   of the filter query.
    #
    # @return [Types::ListEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntitiesResponse#entity_summary_list #entity_summary_list} => Array&lt;Types::EntitySummary&gt;
    #   * {Types::ListEntitiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entities({
    #     catalog: "Catalog", # required
    #     entity_type: "EntityType", # required
    #     filter_list: [
    #       {
    #         name: "FilterName",
    #         value_list: ["FilterValueContent"],
    #       },
    #     ],
    #     sort: {
    #       sort_by: "SortBy",
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     ownership_type: "SELF", # accepts SELF, SHARED
    #     entity_type_filters: {
    #       data_product_filters: {
    #         entity_id: {
    #           value_list: ["DataProductEntityIdString"],
    #         },
    #         product_title: {
    #           value_list: ["DataProductTitleString"],
    #           wild_card_value: "DataProductTitleString",
    #         },
    #         visibility: {
    #           value_list: ["Limited"], # accepts Limited, Public, Restricted, Unavailable, Draft
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601",
    #           },
    #         },
    #       },
    #       saa_s_product_filters: {
    #         entity_id: {
    #           value_list: ["SaaSProductEntityIdString"],
    #         },
    #         product_title: {
    #           value_list: ["SaaSProductTitleString"],
    #           wild_card_value: "SaaSProductTitleString",
    #         },
    #         visibility: {
    #           value_list: ["Limited"], # accepts Limited, Public, Restricted, Draft
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601",
    #           },
    #         },
    #       },
    #       ami_product_filters: {
    #         entity_id: {
    #           value_list: ["AmiProductEntityIdString"],
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601",
    #           },
    #         },
    #         product_title: {
    #           value_list: ["AmiProductTitleString"],
    #           wild_card_value: "AmiProductTitleString",
    #         },
    #         visibility: {
    #           value_list: ["Limited"], # accepts Limited, Public, Restricted, Draft
    #         },
    #       },
    #       offer_filters: {
    #         entity_id: {
    #           value_list: ["OfferEntityIdString"],
    #         },
    #         name: {
    #           value_list: ["OfferNameString"],
    #           wild_card_value: "OfferNameString",
    #         },
    #         product_id: {
    #           value_list: ["OfferProductIdString"],
    #         },
    #         resale_authorization_id: {
    #           value_list: ["OfferResaleAuthorizationIdString"],
    #         },
    #         release_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601",
    #           },
    #         },
    #         availability_end_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601",
    #           },
    #         },
    #         buyer_accounts: {
    #           wild_card_value: "OfferBuyerAccountsFilterWildcard",
    #         },
    #         state: {
    #           value_list: ["Draft"], # accepts Draft, Released
    #         },
    #         targeting: {
    #           value_list: ["BuyerAccounts"], # accepts BuyerAccounts, ParticipatingPrograms, CountryCodes, None
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601",
    #           },
    #         },
    #       },
    #       container_product_filters: {
    #         entity_id: {
    #           value_list: ["ContainerProductEntityIdString"],
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601",
    #           },
    #         },
    #         product_title: {
    #           value_list: ["ContainerProductTitleString"],
    #           wild_card_value: "ContainerProductTitleString",
    #         },
    #         visibility: {
    #           value_list: ["Limited"], # accepts Limited, Public, Restricted, Draft
    #         },
    #       },
    #       resale_authorization_filters: {
    #         entity_id: {
    #           value_list: ["ResaleAuthorizationEntityIdString"],
    #         },
    #         name: {
    #           value_list: ["ResaleAuthorizationNameString"],
    #           wild_card_value: "ResaleAuthorizationNameFilterWildcard",
    #         },
    #         product_id: {
    #           value_list: ["ResaleAuthorizationProductIdString"],
    #           wild_card_value: "ResaleAuthorizationProductIdFilterWildcard",
    #         },
    #         created_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601",
    #           },
    #           value_list: ["DateTimeISO8601"],
    #         },
    #         availability_end_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601",
    #           },
    #           value_list: ["DateTimeISO8601"],
    #         },
    #         manufacturer_account_id: {
    #           value_list: ["ResaleAuthorizationManufacturerAccountIdString"],
    #           wild_card_value: "ResaleAuthorizationManufacturerAccountIdFilterWildcard",
    #         },
    #         product_name: {
    #           value_list: ["ResaleAuthorizationProductNameString"],
    #           wild_card_value: "ResaleAuthorizationProductNameFilterWildcard",
    #         },
    #         manufacturer_legal_name: {
    #           value_list: ["ResaleAuthorizationManufacturerLegalNameString"],
    #           wild_card_value: "ResaleAuthorizationManufacturerLegalNameFilterWildcard",
    #         },
    #         reseller_account_id: {
    #           value_list: ["ResaleAuthorizationResellerAccountIDString"],
    #           wild_card_value: "ResaleAuthorizationResellerAccountIDFilterWildcard",
    #         },
    #         reseller_legal_name: {
    #           value_list: ["ResaleAuthorizationResellerLegalNameString"],
    #           wild_card_value: "ResaleAuthorizationResellerLegalNameFilterWildcard",
    #         },
    #         status: {
    #           value_list: ["Draft"], # accepts Draft, Active, Restricted
    #         },
    #         offer_extended_status: {
    #           value_list: ["ResaleAuthorizationOfferExtendedStatusString"],
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601",
    #           },
    #         },
    #       },
    #       machine_learning_product_filters: {
    #         entity_id: {
    #           value_list: ["MachineLearningProductEntityIdString"],
    #         },
    #         last_modified_date: {
    #           date_range: {
    #             after_value: "DateTimeISO8601",
    #             before_value: "DateTimeISO8601",
    #           },
    #         },
    #         product_title: {
    #           value_list: ["MachineLearningProductTitleString"],
    #           wild_card_value: "MachineLearningProductTitleString",
    #         },
    #         visibility: {
    #           value_list: ["Limited"], # accepts Limited, Public, Restricted, Draft
    #         },
    #       },
    #     },
    #     entity_type_sort: {
    #       data_product_sort: {
    #         sort_by: "EntityId", # accepts EntityId, ProductTitle, Visibility, LastModifiedDate
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #       saa_s_product_sort: {
    #         sort_by: "EntityId", # accepts EntityId, ProductTitle, Visibility, LastModifiedDate, DeliveryOptionTypes
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #       ami_product_sort: {
    #         sort_by: "EntityId", # accepts EntityId, LastModifiedDate, ProductTitle, Visibility
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #       offer_sort: {
    #         sort_by: "EntityId", # accepts EntityId, Name, ProductId, ResaleAuthorizationId, ReleaseDate, AvailabilityEndDate, BuyerAccounts, State, Targeting, LastModifiedDate
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #       container_product_sort: {
    #         sort_by: "EntityId", # accepts EntityId, LastModifiedDate, ProductTitle, Visibility, CompatibleAWSServices
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #       resale_authorization_sort: {
    #         sort_by: "EntityId", # accepts EntityId, Name, ProductId, ProductName, ManufacturerAccountId, ManufacturerLegalName, ResellerAccountID, ResellerLegalName, Status, OfferExtendedStatus, CreatedDate, AvailabilityEndDate, LastModifiedDate
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #       machine_learning_product_sort: {
    #         sort_by: "EntityId", # accepts EntityId, LastModifiedDate, ProductTitle, Visibility
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_summary_list #=> Array
    #   resp.entity_summary_list[0].name #=> String
    #   resp.entity_summary_list[0].entity_type #=> String
    #   resp.entity_summary_list[0].entity_id #=> String
    #   resp.entity_summary_list[0].entity_arn #=> String
    #   resp.entity_summary_list[0].last_modified_date #=> String
    #   resp.entity_summary_list[0].visibility #=> String
    #   resp.entity_summary_list[0].ami_product_summary.product_title #=> String
    #   resp.entity_summary_list[0].ami_product_summary.visibility #=> String, one of "Limited", "Public", "Restricted", "Draft"
    #   resp.entity_summary_list[0].container_product_summary.product_title #=> String
    #   resp.entity_summary_list[0].container_product_summary.visibility #=> String, one of "Limited", "Public", "Restricted", "Draft"
    #   resp.entity_summary_list[0].data_product_summary.product_title #=> String
    #   resp.entity_summary_list[0].data_product_summary.visibility #=> String, one of "Limited", "Public", "Restricted", "Unavailable", "Draft"
    #   resp.entity_summary_list[0].saa_s_product_summary.product_title #=> String
    #   resp.entity_summary_list[0].saa_s_product_summary.visibility #=> String, one of "Limited", "Public", "Restricted", "Draft"
    #   resp.entity_summary_list[0].offer_summary.name #=> String
    #   resp.entity_summary_list[0].offer_summary.product_id #=> String
    #   resp.entity_summary_list[0].offer_summary.resale_authorization_id #=> String
    #   resp.entity_summary_list[0].offer_summary.release_date #=> String
    #   resp.entity_summary_list[0].offer_summary.availability_end_date #=> String
    #   resp.entity_summary_list[0].offer_summary.buyer_accounts #=> Array
    #   resp.entity_summary_list[0].offer_summary.buyer_accounts[0] #=> String
    #   resp.entity_summary_list[0].offer_summary.state #=> String, one of "Draft", "Released"
    #   resp.entity_summary_list[0].offer_summary.targeting #=> Array
    #   resp.entity_summary_list[0].offer_summary.targeting[0] #=> String, one of "BuyerAccounts", "ParticipatingPrograms", "CountryCodes", "None"
    #   resp.entity_summary_list[0].resale_authorization_summary.name #=> String
    #   resp.entity_summary_list[0].resale_authorization_summary.product_id #=> String
    #   resp.entity_summary_list[0].resale_authorization_summary.product_name #=> String
    #   resp.entity_summary_list[0].resale_authorization_summary.manufacturer_account_id #=> String
    #   resp.entity_summary_list[0].resale_authorization_summary.manufacturer_legal_name #=> String
    #   resp.entity_summary_list[0].resale_authorization_summary.reseller_account_id #=> String
    #   resp.entity_summary_list[0].resale_authorization_summary.reseller_legal_name #=> String
    #   resp.entity_summary_list[0].resale_authorization_summary.status #=> String, one of "Draft", "Active", "Restricted"
    #   resp.entity_summary_list[0].resale_authorization_summary.offer_extended_status #=> String
    #   resp.entity_summary_list[0].resale_authorization_summary.created_date #=> String
    #   resp.entity_summary_list[0].resale_authorization_summary.availability_end_date #=> String
    #   resp.entity_summary_list[0].machine_learning_product_summary.product_title #=> String
    #   resp.entity_summary_list[0].machine_learning_product_summary.visibility #=> String, one of "Limited", "Public", "Restricted", "Draft"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ListEntities AWS API Documentation
    #
    # @overload list_entities(params = {})
    # @param [Hash] params ({})
    def list_entities(params = {}, options = {})
      req = build_request(:list_entities, params)
      req.send_request(options)
    end

    # Lists all tags that have been added to a resource (either an
    # [entity][1] or [change set][2]).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities
    # [2]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets
    #
    # @option params [required, String] :resource_arn
    #   Required. The Amazon Resource Name (ARN) associated with the resource
    #   you want to list tags on.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_arn #resource_arn} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Attaches a resource-based policy to an entity. Examples of an entity
    # include: `AmiProduct` and `ContainerProduct`.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the entity resource you want to
    #   associate with a resource policy.
    #
    # @option params [required, String] :policy
    #   The policy document to set; formatted in JSON.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     resource_arn: "ResourceARN", # required
    #     policy: "ResourcePolicyJson", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Allows you to request changes for your entities. Within a single
    # `ChangeSet`, you can't start the same change type against the same
    # entity multiple times. Additionally, when a `ChangeSet` is running,
    # all the entities targeted by the different changes are locked until
    # the change set has completed (either succeeded, cancelled, or failed).
    # If you try to start a change set containing a change against an entity
    # that is already locked, you will receive a `ResourceInUseException`
    # error.
    #
    # For example, you can't start the `ChangeSet` described in the
    # [example][1] later in this topic because it contains two changes to
    # run the same change type (`AddRevisions`) against the same entity
    # (`entity-id@1`).
    #
    # For more information about working with change sets, see [ Working
    # with change sets][2]. For information about change types for
    # single-AMI products, see [Working with single-AMI products][3]. Also,
    # for more information about change types available for container-based
    # products, see [Working with container products][4].
    #
    # To download "DetailsDocument" shapes, see [Python][5] and [Java][6]
    # shapes on GitHub.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples
    # [2]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets
    # [3]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#working-with-single-AMI-products
    # [4]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/container-products.html#working-with-container-products
    # [5]: https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-python
    # [6]: https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-java/tree/main
    #
    # @option params [required, String] :catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #
    # @option params [required, Array<Types::Change>] :change_set
    #   Array of `change` object.
    #
    # @option params [String] :change_set_name
    #   Optional case sensitive string of up to 100 ASCII characters. The
    #   change set name can be used to filter the list of change sets.
    #
    # @option params [String] :client_request_token
    #   A unique token to identify the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :change_set_tags
    #   A list of objects specifying each key name and value for the
    #   `ChangeSetTags` property.
    #
    # @option params [String] :intent
    #   The intent related to the request. The default is `APPLY`. To test
    #   your request before applying changes to your entities, use `VALIDATE`.
    #   This feature is currently available for adding versions to single-AMI
    #   products. For more information, see [Add a new version][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#ami-add-version
    #
    # @return [Types::StartChangeSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartChangeSetResponse#change_set_id #change_set_id} => String
    #   * {Types::StartChangeSetResponse#change_set_arn #change_set_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_change_set({
    #     catalog: "Catalog", # required
    #     change_set: [ # required
    #       {
    #         change_type: "ChangeType", # required
    #         entity: { # required
    #           type: "EntityType", # required
    #           identifier: "Identifier",
    #         },
    #         entity_tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         details: "Json",
    #         details_document: {
    #         },
    #         change_name: "ChangeName",
    #       },
    #     ],
    #     change_set_name: "ChangeSetName",
    #     client_request_token: "ClientRequestToken",
    #     change_set_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     intent: "VALIDATE", # accepts VALIDATE, APPLY
    #   })
    #
    # @example Response structure
    #
    #   resp.change_set_id #=> String
    #   resp.change_set_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/StartChangeSet AWS API Documentation
    #
    # @overload start_change_set(params = {})
    # @param [Hash] params ({})
    def start_change_set(params = {}, options = {})
      req = build_request(:start_change_set, params)
      req.send_request(options)
    end

    # Tags a resource (either an [entity][1] or [change set][2]).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities
    # [2]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets
    #
    # @option params [required, String] :resource_arn
    #   Required. The Amazon Resource Name (ARN) associated with the resource
    #   you want to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Required. A list of objects specifying each key name and value. Number
    #   of objects allowed: 1-50.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag or list of tags from a resource (either an [entity][1]
    # or [change set][2]).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities
    # [2]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets
    #
    # @option params [required, String] :resource_arn
    #   Required. The Amazon Resource Name (ARN) associated with the resource
    #   you want to remove the tag from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Required. A list of key names of tags to be removed. Number of strings
    #   allowed: 0-256.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/UntagResource AWS API Documentation
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
        Aws::Telemetry.module_to_tracer_name('Aws::MarketplaceCatalog')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-marketplacecatalog'
      context[:gem_version] = '1.68.0'
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
