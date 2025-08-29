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

module Aws::CleanRoomsML
  # An API client for CleanRoomsML.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CleanRoomsML::Client.new(
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

    @identifier = :cleanroomsml

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
    add_plugin(Aws::CleanRoomsML::Plugins::Endpoints)

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
    #   @option options [Aws::CleanRoomsML::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CleanRoomsML::EndpointParameters`.
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

    # Submits a request to cancel the trained model job.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the trained model job that you want to cancel.
    #
    # @option params [required, String] :trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model job that you want
    #   to cancel.
    #
    # @option params [String] :version_identifier
    #   The version identifier of the trained model to cancel. This parameter
    #   allows you to specify which version of the trained model you want to
    #   cancel when multiple versions exist.
    #
    #   If `versionIdentifier` is not specified, the base model will be
    #   cancelled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_trained_model({
    #     membership_identifier: "UUID", # required
    #     trained_model_arn: "TrainedModelArn", # required
    #     version_identifier: "UUID",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CancelTrainedModel AWS API Documentation
    #
    # @overload cancel_trained_model(params = {})
    # @param [Hash] params ({})
    def cancel_trained_model(params = {}, options = {})
      req = build_request(:cancel_trained_model, params)
      req.send_request(options)
    end

    # Submits a request to cancel a trained model inference job.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the trained model inference job that you want to
    #   cancel.
    #
    # @option params [required, String] :trained_model_inference_job_arn
    #   The Amazon Resource Name (ARN) of the trained model inference job that
    #   you want to cancel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_trained_model_inference_job({
    #     membership_identifier: "UUID", # required
    #     trained_model_inference_job_arn: "TrainedModelInferenceJobArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CancelTrainedModelInferenceJob AWS API Documentation
    #
    # @overload cancel_trained_model_inference_job(params = {})
    # @param [Hash] params ({})
    def cancel_trained_model_inference_job(params = {}, options = {})
      req = build_request(:cancel_trained_model_inference_job, params)
      req.send_request(options)
    end

    # Defines the information necessary to create an audience model. An
    # audience model is a machine learning model that Clean Rooms ML trains
    # to measure similarity between users. Clean Rooms ML manages training
    # and storing the audience model. The audience model can be used in
    # multiple calls to the StartAudienceGenerationJob API.
    #
    # @option params [Time,DateTime,Date,Integer,String] :training_data_start_time
    #   The start date and time of the training window.
    #
    # @option params [Time,DateTime,Date,Integer,String] :training_data_end_time
    #   The end date and time of the training window.
    #
    # @option params [required, String] :name
    #   The name of the audience model resource.
    #
    # @option params [required, String] :training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset for this
    #   audience model.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key. This key is used to
    #   encrypt and decrypt customer-owned data in the trained ML model and
    #   the associated data.
    #
    # @option params [Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then Clean
    #     Rooms ML considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @option params [String] :description
    #   The description of the audience model.
    #
    # @return [Types::CreateAudienceModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAudienceModelResponse#audience_model_arn #audience_model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_audience_model({
    #     training_data_start_time: Time.now,
    #     training_data_end_time: Time.now,
    #     name: "NameString", # required
    #     training_dataset_arn: "TrainingDatasetArn", # required
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.audience_model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateAudienceModel AWS API Documentation
    #
    # @overload create_audience_model(params = {})
    # @param [Hash] params ({})
    def create_audience_model(params = {}, options = {})
      req = build_request(:create_audience_model, params)
      req.send_request(options)
    end

    # Defines the information necessary to create a configured audience
    # model.
    #
    # @option params [required, String] :name
    #   The name of the configured audience model.
    #
    # @option params [required, String] :audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model to use for the
    #   configured audience model.
    #
    # @option params [required, Types::ConfiguredAudienceModelOutputConfig] :output_config
    #   Configure the Amazon S3 location and IAM Role for audiences created
    #   using this configured audience model. Each audience will have a unique
    #   location. The IAM Role must have `s3:PutObject` permission on the
    #   destination Amazon S3 location. If the destination is protected with
    #   Amazon S3 KMS-SSE, then the Role must also have the required KMS
    #   permissions.
    #
    # @option params [String] :description
    #   The description of the configured audience model.
    #
    # @option params [required, Array<String>] :shared_audience_metrics
    #   Whether audience metrics are shared.
    #
    # @option params [Integer] :min_matching_seed_size
    #   The minimum number of users from the seed audience that must match
    #   with users in the training data of the audience model. The default
    #   value is 500.
    #
    # @option params [Types::AudienceSizeConfig] :audience_size_config
    #   Configure the list of output sizes of audiences that can be created
    #   using this configured audience model. A request to
    #   StartAudienceGenerationJob that uses this configured audience model
    #   must have an `audienceSize` selected from this list. You can use the
    #   `ABSOLUTE` AudienceSize to configure out audience sizes using the
    #   count of identifiers in the output. You can use the `Percentage`
    #   AudienceSize to configure sizes in the range 1-100 percent.
    #
    # @option params [Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then Clean
    #     Rooms ML considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @option params [String] :child_resource_tag_on_create_policy
    #   Configure how the service tags audience generation jobs created using
    #   this configured audience model. If you specify `NONE`, the tags from
    #   the StartAudienceGenerationJob request determine the tags of the
    #   audience generation job. If you specify `FROM_PARENT_RESOURCE`, the
    #   audience generation job inherits the tags from the configured audience
    #   model, by default. Tags in the StartAudienceGenerationJob will
    #   override the default.
    #
    #   When the client is in a different account than the configured audience
    #   model, the tags from the client are never applied to a resource in the
    #   caller's account.
    #
    # @return [Types::CreateConfiguredAudienceModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfiguredAudienceModelResponse#configured_audience_model_arn #configured_audience_model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configured_audience_model({
    #     name: "NameString", # required
    #     audience_model_arn: "AudienceModelArn", # required
    #     output_config: { # required
    #       destination: { # required
    #         s3_destination: { # required
    #           s3_uri: "S3Path", # required
    #         },
    #       },
    #       role_arn: "IamRoleArn", # required
    #     },
    #     description: "ResourceDescription",
    #     shared_audience_metrics: ["ALL"], # required, accepts ALL, NONE
    #     min_matching_seed_size: 1,
    #     audience_size_config: {
    #       audience_size_type: "ABSOLUTE", # required, accepts ABSOLUTE, PERCENTAGE
    #       audience_size_bins: [1], # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     child_resource_tag_on_create_policy: "FROM_PARENT_RESOURCE", # accepts FROM_PARENT_RESOURCE, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_audience_model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateConfiguredAudienceModel AWS API Documentation
    #
    # @overload create_configured_audience_model(params = {})
    # @param [Hash] params ({})
    def create_configured_audience_model(params = {}, options = {})
      req = build_request(:create_configured_audience_model, params)
      req.send_request(options)
    end

    # Creates a configured model algorithm using a container image stored in
    # an ECR repository.
    #
    # @option params [required, String] :name
    #   The name of the configured model algorithm.
    #
    # @option params [String] :description
    #   The description of the configured model algorithm.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the role that is used to access the
    #   repository.
    #
    # @option params [Types::ContainerConfig] :training_container_config
    #   Configuration information for the training container, including
    #   entrypoints and arguments.
    #
    # @option params [Types::InferenceContainerConfig] :inference_container_config
    #   Configuration information for the inference container that is used
    #   when you run an inference job on a configured model algorithm.
    #
    # @option params [Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then Clean
    #     Rooms ML considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key. This key is used to
    #   encrypt and decrypt customer-owned data in the configured ML model
    #   algorithm and associated data.
    #
    # @return [Types::CreateConfiguredModelAlgorithmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfiguredModelAlgorithmResponse#configured_model_algorithm_arn #configured_model_algorithm_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configured_model_algorithm({
    #     name: "NameString", # required
    #     description: "ResourceDescription",
    #     role_arn: "IamRoleArn", # required
    #     training_container_config: {
    #       image_uri: "AlgorithmImage", # required
    #       entrypoint: ["ContainerEntrypointString"],
    #       arguments: ["ContainerArgument"],
    #       metric_definitions: [
    #         {
    #           name: "MetricName", # required
    #           regex: "MetricRegex", # required
    #         },
    #       ],
    #     },
    #     inference_container_config: {
    #       image_uri: "AlgorithmImage", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_model_algorithm_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateConfiguredModelAlgorithm AWS API Documentation
    #
    # @overload create_configured_model_algorithm(params = {})
    # @param [Hash] params ({})
    def create_configured_model_algorithm(params = {}, options = {})
      req = build_request(:create_configured_model_algorithm, params)
      req.send_request(options)
    end

    # Associates a configured model algorithm to a collaboration for use by
    # any member of the collaboration.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the member who is associating this configured
    #   model algorithm.
    #
    # @option params [required, String] :configured_model_algorithm_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm that
    #   you want to associate.
    #
    # @option params [required, String] :name
    #   The name of the configured model algorithm association.
    #
    # @option params [String] :description
    #   The description of the configured model algorithm association.
    #
    # @option params [Types::PrivacyConfiguration] :privacy_configuration
    #   Specifies the privacy configuration information for the configured
    #   model algorithm association. This information includes the maximum
    #   data size that can be exported.
    #
    # @option params [Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then Clean
    #     Rooms ML considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @return [Types::CreateConfiguredModelAlgorithmAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfiguredModelAlgorithmAssociationResponse#configured_model_algorithm_association_arn #configured_model_algorithm_association_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configured_model_algorithm_association({
    #     membership_identifier: "UUID", # required
    #     configured_model_algorithm_arn: "ConfiguredModelAlgorithmArn", # required
    #     name: "NameString", # required
    #     description: "ResourceDescription",
    #     privacy_configuration: {
    #       policies: { # required
    #         trained_models: {
    #           container_logs: [
    #             {
    #               allowed_account_ids: ["String"], # required
    #               filter_pattern: "LogsConfigurationPolicyFilterPatternString",
    #             },
    #           ],
    #           container_metrics: {
    #             noise_level: "HIGH", # required, accepts HIGH, MEDIUM, LOW, NONE
    #           },
    #           max_artifact_size: {
    #             unit: "GB", # required, accepts GB
    #             value: 1.0, # required
    #           },
    #         },
    #         trained_model_exports: {
    #           max_size: { # required
    #             unit: "GB", # required, accepts GB
    #             value: 1.0, # required
    #           },
    #           files_to_export: ["MODEL"], # required, accepts MODEL, OUTPUT
    #         },
    #         trained_model_inference_jobs: {
    #           container_logs: [
    #             {
    #               allowed_account_ids: ["String"], # required
    #               filter_pattern: "LogsConfigurationPolicyFilterPatternString",
    #             },
    #           ],
    #           max_output_size: {
    #             unit: "GB", # required, accepts GB
    #             value: 1.0, # required
    #           },
    #         },
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_model_algorithm_association_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateConfiguredModelAlgorithmAssociation AWS API Documentation
    #
    # @overload create_configured_model_algorithm_association(params = {})
    # @param [Hash] params ({})
    def create_configured_model_algorithm_association(params = {}, options = {})
      req = build_request(:create_configured_model_algorithm_association, params)
      req.send_request(options)
    end

    # Provides the information to create an ML input channel. An ML input
    # channel is the result of a query that can be used for ML modeling.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the member that is creating the ML input channel.
    #
    # @option params [required, Array<String>] :configured_model_algorithm_associations
    #   The associated configured model algorithms that are necessary to
    #   create this ML input channel.
    #
    # @option params [required, Types::InputChannel] :input_channel
    #   The input data that is used to create this ML input channel.
    #
    # @option params [required, String] :name
    #   The name of the ML input channel.
    #
    # @option params [required, Integer] :retention_in_days
    #   The number of days that the data in the ML input channel is retained.
    #
    # @option params [String] :description
    #   The description of the ML input channel.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that is used to access
    #   the input channel.
    #
    # @option params [Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then Clean
    #     Rooms ML considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @return [Types::CreateMLInputChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMLInputChannelResponse#ml_input_channel_arn #ml_input_channel_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ml_input_channel({
    #     membership_identifier: "UUID", # required
    #     configured_model_algorithm_associations: ["ConfiguredModelAlgorithmAssociationArn"], # required
    #     input_channel: { # required
    #       data_source: { # required
    #         protected_query_input_parameters: {
    #           sql_parameters: { # required
    #             query_string: "ProtectedQuerySQLParametersQueryStringString",
    #             analysis_template_arn: "AnalysisTemplateArn",
    #             parameters: {
    #               "ParameterKey" => "ParameterValue",
    #             },
    #           },
    #           compute_configuration: {
    #             worker: {
    #               type: "CR.1X", # accepts CR.1X, CR.4X
    #               number: 1,
    #             },
    #           },
    #           result_format: "CSV", # accepts CSV, PARQUET
    #         },
    #       },
    #       role_arn: "IamRoleArn", # required
    #     },
    #     name: "NameString", # required
    #     retention_in_days: 1, # required
    #     description: "ResourceDescription",
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.ml_input_channel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateMLInputChannel AWS API Documentation
    #
    # @overload create_ml_input_channel(params = {})
    # @param [Hash] params ({})
    def create_ml_input_channel(params = {}, options = {})
      req = build_request(:create_ml_input_channel, params)
      req.send_request(options)
    end

    # Creates a trained model from an associated configured model algorithm
    # using data from any member of the collaboration.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the member that is creating the trained model.
    #
    # @option params [required, String] :name
    #   The name of the trained model.
    #
    # @option params [required, String] :configured_model_algorithm_association_arn
    #   The associated configured model algorithm used to train this model.
    #
    # @option params [Hash<String,String>] :hyperparameters
    #   Algorithm-specific parameters that influence the quality of the model.
    #   You set hyperparameters before you start the learning process.
    #
    # @option params [Hash<String,String>] :environment
    #   The environment variables to set in the Docker container.
    #
    # @option params [required, Types::ResourceConfig] :resource_config
    #   Information about the EC2 resources that are used to train this model.
    #
    # @option params [Types::StoppingCondition] :stopping_condition
    #   The criteria that is used to stop model training.
    #
    # @option params [Array<Types::IncrementalTrainingDataChannel>] :incremental_training_data_channels
    #   Specifies the incremental training data channels for the trained
    #   model.
    #
    #   Incremental training allows you to create a new trained model with
    #   updates without retraining from scratch. You can specify up to one
    #   incremental training data channel that references a previously trained
    #   model and its version.
    #
    #   Limit: Maximum of 20 channels total (including both
    #   `incrementalTrainingDataChannels` and `dataChannels`).
    #
    # @option params [required, Array<Types::ModelTrainingDataChannel>] :data_channels
    #   Defines the data channels that are used as input for the trained model
    #   request.
    #
    #   Limit: Maximum of 20 channels total (including both `dataChannels` and
    #   `incrementalTrainingDataChannels`).
    #
    # @option params [String] :training_input_mode
    #   The input mode for accessing the training data. This parameter
    #   determines how the training data is made available to the training
    #   algorithm. Valid values are:
    #
    #   * `File` - The training data is downloaded to the training instance
    #     and made available as files.
    #
    #   * `FastFile` - The training data is streamed directly from Amazon S3
    #     to the training algorithm, providing faster access for large
    #     datasets.
    #
    #   * `Pipe` - The training data is streamed to the training algorithm
    #     using named pipes, which can improve performance for certain
    #     algorithms.
    #
    # @option params [String] :description
    #   The description of the trained model.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key. This key is used to
    #   encrypt and decrypt customer-owned data in the trained ML model and
    #   the associated data.
    #
    # @option params [Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then Clean
    #     Rooms ML considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @return [Types::CreateTrainedModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrainedModelResponse#trained_model_arn #trained_model_arn} => String
    #   * {Types::CreateTrainedModelResponse#version_identifier #version_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trained_model({
    #     membership_identifier: "UUID", # required
    #     name: "NameString", # required
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #     hyperparameters: {
    #       "HyperParametersKeyString" => "HyperParametersValueString",
    #     },
    #     environment: {
    #       "EnvironmentKeyString" => "EnvironmentValueString",
    #     },
    #     resource_config: { # required
    #       instance_count: 1,
    #       instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.8xlarge, ml.c6i.4xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
    #       volume_size_in_gb: 1, # required
    #     },
    #     stopping_condition: {
    #       max_runtime_in_seconds: 1,
    #     },
    #     incremental_training_data_channels: [
    #       {
    #         trained_model_arn: "TrainedModelArn", # required
    #         version_identifier: "UUID",
    #         channel_name: "ModelTrainingDataChannelName", # required
    #       },
    #     ],
    #     data_channels: [ # required
    #       {
    #         ml_input_channel_arn: "MLInputChannelArn", # required
    #         channel_name: "ModelTrainingDataChannelName", # required
    #         s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #       },
    #     ],
    #     training_input_mode: "File", # accepts File, FastFile, Pipe
    #     description: "ResourceDescription",
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.trained_model_arn #=> String
    #   resp.version_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateTrainedModel AWS API Documentation
    #
    # @overload create_trained_model(params = {})
    # @param [Hash] params ({})
    def create_trained_model(params = {}, options = {})
      req = build_request(:create_trained_model, params)
      req.send_request(options)
    end

    # Defines the information necessary to create a training dataset. In
    # Clean Rooms ML, the `TrainingDataset` is metadata that points to a
    # Glue table, which is read only during `AudienceModel` creation.
    #
    # @option params [required, String] :name
    #   The name of the training dataset. This name must be unique in your
    #   account and region.
    #
    # @option params [required, String] :role_arn
    #   The ARN of the IAM role that Clean Rooms ML can assume to read the
    #   data referred to in the `dataSource` field of each dataset.
    #
    #   Passing a role across AWS accounts is not allowed. If you pass a role
    #   that isn't in your account, you get an `AccessDeniedException` error.
    #
    # @option params [required, Array<Types::Dataset>] :training_data
    #   An array of information that lists the Dataset objects, which
    #   specifies the dataset type and details on its location and schema. You
    #   must provide a role that has read access to these tables.
    #
    # @option params [Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then Clean
    #     Rooms ML considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @option params [String] :description
    #   The description of the training dataset.
    #
    # @return [Types::CreateTrainingDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrainingDatasetResponse#training_dataset_arn #training_dataset_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_training_dataset({
    #     name: "NameString", # required
    #     role_arn: "IamRoleArn", # required
    #     training_data: [ # required
    #       {
    #         type: "INTERACTIONS", # required, accepts INTERACTIONS
    #         input_config: { # required
    #           schema: [ # required
    #             {
    #               column_name: "ColumnName", # required
    #               column_types: ["USER_ID"], # required, accepts USER_ID, ITEM_ID, TIMESTAMP, CATEGORICAL_FEATURE, NUMERICAL_FEATURE
    #             },
    #           ],
    #           data_source: { # required
    #             glue_data_source: { # required
    #               table_name: "GlueTableName", # required
    #               database_name: "GlueDatabaseName", # required
    #               catalog_id: "AccountId",
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.training_dataset_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateTrainingDataset AWS API Documentation
    #
    # @overload create_training_dataset(params = {})
    # @param [Hash] params ({})
    def create_training_dataset(params = {}, options = {})
      req = build_request(:create_training_dataset, params)
      req.send_request(options)
    end

    # Deletes the specified audience generation job, and removes all data
    # associated with the job.
    #
    # @option params [required, String] :audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that you
    #   want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_audience_generation_job({
    #     audience_generation_job_arn: "AudienceGenerationJobArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteAudienceGenerationJob AWS API Documentation
    #
    # @overload delete_audience_generation_job(params = {})
    # @param [Hash] params ({})
    def delete_audience_generation_job(params = {}, options = {})
      req = build_request(:delete_audience_generation_job, params)
      req.send_request(options)
    end

    # Specifies an audience model that you want to delete. You can't delete
    # an audience model if there are any configured audience models that
    # depend on the audience model.
    #
    # @option params [required, String] :audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model that you want to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_audience_model({
    #     audience_model_arn: "AudienceModelArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteAudienceModel AWS API Documentation
    #
    # @overload delete_audience_model(params = {})
    # @param [Hash] params ({})
    def delete_audience_model(params = {}, options = {})
      req = build_request(:delete_audience_model, params)
      req.send_request(options)
    end

    # Deletes the specified configured audience model. You can't delete a
    # configured audience model if there are any lookalike models that use
    # the configured audience model. If you delete a configured audience
    # model, it will be removed from any collaborations that it is
    # associated to.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configured_audience_model({
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteConfiguredAudienceModel AWS API Documentation
    #
    # @overload delete_configured_audience_model(params = {})
    # @param [Hash] params ({})
    def delete_configured_audience_model(params = {}, options = {})
      req = build_request(:delete_configured_audience_model, params)
      req.send_request(options)
    end

    # Deletes the specified configured audience model policy.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model policy
    #   that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configured_audience_model_policy({
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteConfiguredAudienceModelPolicy AWS API Documentation
    #
    # @overload delete_configured_audience_model_policy(params = {})
    # @param [Hash] params ({})
    def delete_configured_audience_model_policy(params = {}, options = {})
      req = build_request(:delete_configured_audience_model_policy, params)
      req.send_request(options)
    end

    # Deletes a configured model algorithm.
    #
    # @option params [required, String] :configured_model_algorithm_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm that
    #   you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configured_model_algorithm({
    #     configured_model_algorithm_arn: "ConfiguredModelAlgorithmArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteConfiguredModelAlgorithm AWS API Documentation
    #
    # @overload delete_configured_model_algorithm(params = {})
    # @param [Hash] params ({})
    def delete_configured_model_algorithm(params = {}, options = {})
      req = build_request(:delete_configured_model_algorithm, params)
      req.send_request(options)
    end

    # Deletes a configured model algorithm association.
    #
    # @option params [required, String] :configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that you want to delete.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the member that is deleting the configured model
    #   algorithm association.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configured_model_algorithm_association({
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #     membership_identifier: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteConfiguredModelAlgorithmAssociation AWS API Documentation
    #
    # @overload delete_configured_model_algorithm_association(params = {})
    # @param [Hash] params ({})
    def delete_configured_model_algorithm_association(params = {}, options = {})
      req = build_request(:delete_configured_model_algorithm_association, params)
      req.send_request(options)
    end

    # Deletes a ML modeling configuration.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the of the member that is deleting the ML
    #   modeling configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ml_configuration({
    #     membership_identifier: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteMLConfiguration AWS API Documentation
    #
    # @overload delete_ml_configuration(params = {})
    # @param [Hash] params ({})
    def delete_ml_configuration(params = {}, options = {})
      req = build_request(:delete_ml_configuration, params)
      req.send_request(options)
    end

    # Provides the information necessary to delete an ML input channel.
    #
    # @option params [required, String] :ml_input_channel_arn
    #   The Amazon Resource Name (ARN) of the ML input channel that you want
    #   to delete.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the membership that contains the ML input channel
    #   you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ml_input_channel_data({
    #     ml_input_channel_arn: "MLInputChannelArn", # required
    #     membership_identifier: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteMLInputChannelData AWS API Documentation
    #
    # @overload delete_ml_input_channel_data(params = {})
    # @param [Hash] params ({})
    def delete_ml_input_channel_data(params = {}, options = {})
      req = build_request(:delete_ml_input_channel_data, params)
      req.send_request(options)
    end

    # Deletes the model artifacts stored by the service.
    #
    # @option params [required, String] :trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model whose output you
    #   want to delete.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the member that is deleting the trained model
    #   output.
    #
    # @option params [String] :version_identifier
    #   The version identifier of the trained model to delete. If not
    #   specified, the operation will delete the base version of the trained
    #   model. When specified, only the particular version will be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trained_model_output({
    #     trained_model_arn: "TrainedModelArn", # required
    #     membership_identifier: "UUID", # required
    #     version_identifier: "UUID",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteTrainedModelOutput AWS API Documentation
    #
    # @overload delete_trained_model_output(params = {})
    # @param [Hash] params ({})
    def delete_trained_model_output(params = {}, options = {})
      req = build_request(:delete_trained_model_output, params)
      req.send_request(options)
    end

    # Specifies a training dataset that you want to delete. You can't
    # delete a training dataset if there are any audience models that depend
    # on the training dataset. In Clean Rooms ML, the `TrainingDataset` is
    # metadata that points to a Glue table, which is read only during
    # `AudienceModel` creation. This action deletes the metadata.
    #
    # @option params [required, String] :training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset that you want
    #   to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_training_dataset({
    #     training_dataset_arn: "TrainingDatasetArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteTrainingDataset AWS API Documentation
    #
    # @overload delete_training_dataset(params = {})
    # @param [Hash] params ({})
    def delete_training_dataset(params = {}, options = {})
      req = build_request(:delete_training_dataset, params)
      req.send_request(options)
    end

    # Returns information about an audience generation job.
    #
    # @option params [required, String] :audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that you
    #   are interested in.
    #
    # @return [Types::GetAudienceGenerationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAudienceGenerationJobResponse#create_time #create_time} => Time
    #   * {Types::GetAudienceGenerationJobResponse#update_time #update_time} => Time
    #   * {Types::GetAudienceGenerationJobResponse#audience_generation_job_arn #audience_generation_job_arn} => String
    #   * {Types::GetAudienceGenerationJobResponse#name #name} => String
    #   * {Types::GetAudienceGenerationJobResponse#description #description} => String
    #   * {Types::GetAudienceGenerationJobResponse#status #status} => String
    #   * {Types::GetAudienceGenerationJobResponse#status_details #status_details} => Types::StatusDetails
    #   * {Types::GetAudienceGenerationJobResponse#configured_audience_model_arn #configured_audience_model_arn} => String
    #   * {Types::GetAudienceGenerationJobResponse#seed_audience #seed_audience} => Types::AudienceGenerationJobDataSource
    #   * {Types::GetAudienceGenerationJobResponse#include_seed_in_output #include_seed_in_output} => Boolean
    #   * {Types::GetAudienceGenerationJobResponse#collaboration_id #collaboration_id} => String
    #   * {Types::GetAudienceGenerationJobResponse#metrics #metrics} => Types::AudienceQualityMetrics
    #   * {Types::GetAudienceGenerationJobResponse#started_by #started_by} => String
    #   * {Types::GetAudienceGenerationJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetAudienceGenerationJobResponse#protected_query_identifier #protected_query_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_audience_generation_job({
    #     audience_generation_job_arn: "AudienceGenerationJobArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.audience_generation_job_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.status_details.status_code #=> String
    #   resp.status_details.message #=> String
    #   resp.configured_audience_model_arn #=> String
    #   resp.seed_audience.data_source.s3_uri #=> String
    #   resp.seed_audience.role_arn #=> String
    #   resp.seed_audience.sql_parameters.query_string #=> String
    #   resp.seed_audience.sql_parameters.analysis_template_arn #=> String
    #   resp.seed_audience.sql_parameters.parameters #=> Hash
    #   resp.seed_audience.sql_parameters.parameters["ParameterKey"] #=> String
    #   resp.seed_audience.sql_compute_configuration.worker.type #=> String, one of "CR.1X", "CR.4X"
    #   resp.seed_audience.sql_compute_configuration.worker.number #=> Integer
    #   resp.include_seed_in_output #=> Boolean
    #   resp.collaboration_id #=> String
    #   resp.metrics.relevance_metrics #=> Array
    #   resp.metrics.relevance_metrics[0].audience_size.type #=> String, one of "ABSOLUTE", "PERCENTAGE"
    #   resp.metrics.relevance_metrics[0].audience_size.value #=> Integer
    #   resp.metrics.relevance_metrics[0].score #=> Float
    #   resp.metrics.recall_metric #=> Float
    #   resp.started_by #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.protected_query_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetAudienceGenerationJob AWS API Documentation
    #
    # @overload get_audience_generation_job(params = {})
    # @param [Hash] params ({})
    def get_audience_generation_job(params = {}, options = {})
      req = build_request(:get_audience_generation_job, params)
      req.send_request(options)
    end

    # Returns information about an audience model
    #
    # @option params [required, String] :audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model that you are
    #   interested in.
    #
    # @return [Types::GetAudienceModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAudienceModelResponse#create_time #create_time} => Time
    #   * {Types::GetAudienceModelResponse#update_time #update_time} => Time
    #   * {Types::GetAudienceModelResponse#training_data_start_time #training_data_start_time} => Time
    #   * {Types::GetAudienceModelResponse#training_data_end_time #training_data_end_time} => Time
    #   * {Types::GetAudienceModelResponse#audience_model_arn #audience_model_arn} => String
    #   * {Types::GetAudienceModelResponse#name #name} => String
    #   * {Types::GetAudienceModelResponse#training_dataset_arn #training_dataset_arn} => String
    #   * {Types::GetAudienceModelResponse#status #status} => String
    #   * {Types::GetAudienceModelResponse#status_details #status_details} => Types::StatusDetails
    #   * {Types::GetAudienceModelResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::GetAudienceModelResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetAudienceModelResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_audience_model({
    #     audience_model_arn: "AudienceModelArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.training_data_start_time #=> Time
    #   resp.training_data_end_time #=> Time
    #   resp.audience_model_arn #=> String
    #   resp.name #=> String
    #   resp.training_dataset_arn #=> String
    #   resp.status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.status_details.status_code #=> String
    #   resp.status_details.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetAudienceModel AWS API Documentation
    #
    # @overload get_audience_model(params = {})
    # @param [Hash] params ({})
    def get_audience_model(params = {}, options = {})
      req = build_request(:get_audience_model, params)
      req.send_request(options)
    end

    # Returns information about the configured model algorithm association
    # in a collaboration.
    #
    # @option params [required, String] :configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that you want to return information about.
    #
    # @option params [required, String] :collaboration_identifier
    #   The collaboration ID for the collaboration that contains the
    #   configured model algorithm association that you want to return
    #   information about.
    #
    # @return [Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse#create_time #create_time} => Time
    #   * {Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse#update_time #update_time} => Time
    #   * {Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse#configured_model_algorithm_association_arn #configured_model_algorithm_association_arn} => String
    #   * {Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse#membership_identifier #membership_identifier} => String
    #   * {Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse#collaboration_identifier #collaboration_identifier} => String
    #   * {Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse#configured_model_algorithm_arn #configured_model_algorithm_arn} => String
    #   * {Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse#name #name} => String
    #   * {Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse#description #description} => String
    #   * {Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse#creator_account_id #creator_account_id} => String
    #   * {Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse#privacy_configuration #privacy_configuration} => Types::PrivacyConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_collaboration_configured_model_algorithm_association({
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #     collaboration_identifier: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.configured_model_algorithm_association_arn #=> String
    #   resp.membership_identifier #=> String
    #   resp.collaboration_identifier #=> String
    #   resp.configured_model_algorithm_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.creator_account_id #=> String
    #   resp.privacy_configuration.policies.trained_models.container_logs #=> Array
    #   resp.privacy_configuration.policies.trained_models.container_logs[0].allowed_account_ids #=> Array
    #   resp.privacy_configuration.policies.trained_models.container_logs[0].allowed_account_ids[0] #=> String
    #   resp.privacy_configuration.policies.trained_models.container_logs[0].filter_pattern #=> String
    #   resp.privacy_configuration.policies.trained_models.container_metrics.noise_level #=> String, one of "HIGH", "MEDIUM", "LOW", "NONE"
    #   resp.privacy_configuration.policies.trained_models.max_artifact_size.unit #=> String, one of "GB"
    #   resp.privacy_configuration.policies.trained_models.max_artifact_size.value #=> Float
    #   resp.privacy_configuration.policies.trained_model_exports.max_size.unit #=> String, one of "GB"
    #   resp.privacy_configuration.policies.trained_model_exports.max_size.value #=> Float
    #   resp.privacy_configuration.policies.trained_model_exports.files_to_export #=> Array
    #   resp.privacy_configuration.policies.trained_model_exports.files_to_export[0] #=> String, one of "MODEL", "OUTPUT"
    #   resp.privacy_configuration.policies.trained_model_inference_jobs.container_logs #=> Array
    #   resp.privacy_configuration.policies.trained_model_inference_jobs.container_logs[0].allowed_account_ids #=> Array
    #   resp.privacy_configuration.policies.trained_model_inference_jobs.container_logs[0].allowed_account_ids[0] #=> String
    #   resp.privacy_configuration.policies.trained_model_inference_jobs.container_logs[0].filter_pattern #=> String
    #   resp.privacy_configuration.policies.trained_model_inference_jobs.max_output_size.unit #=> String, one of "GB"
    #   resp.privacy_configuration.policies.trained_model_inference_jobs.max_output_size.value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetCollaborationConfiguredModelAlgorithmAssociation AWS API Documentation
    #
    # @overload get_collaboration_configured_model_algorithm_association(params = {})
    # @param [Hash] params ({})
    def get_collaboration_configured_model_algorithm_association(params = {}, options = {})
      req = build_request(:get_collaboration_configured_model_algorithm_association, params)
      req.send_request(options)
    end

    # Returns information about a specific ML input channel in a
    # collaboration.
    #
    # @option params [required, String] :ml_input_channel_arn
    #   The Amazon Resource Name (ARN) of the ML input channel that you want
    #   to get.
    #
    # @option params [required, String] :collaboration_identifier
    #   The collaboration ID of the collaboration that contains the ML input
    #   channel that you want to get.
    #
    # @return [Types::GetCollaborationMLInputChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCollaborationMLInputChannelResponse#create_time #create_time} => Time
    #   * {Types::GetCollaborationMLInputChannelResponse#update_time #update_time} => Time
    #   * {Types::GetCollaborationMLInputChannelResponse#creator_account_id #creator_account_id} => String
    #   * {Types::GetCollaborationMLInputChannelResponse#membership_identifier #membership_identifier} => String
    #   * {Types::GetCollaborationMLInputChannelResponse#collaboration_identifier #collaboration_identifier} => String
    #   * {Types::GetCollaborationMLInputChannelResponse#ml_input_channel_arn #ml_input_channel_arn} => String
    #   * {Types::GetCollaborationMLInputChannelResponse#name #name} => String
    #   * {Types::GetCollaborationMLInputChannelResponse#configured_model_algorithm_associations #configured_model_algorithm_associations} => Array&lt;String&gt;
    #   * {Types::GetCollaborationMLInputChannelResponse#status #status} => String
    #   * {Types::GetCollaborationMLInputChannelResponse#status_details #status_details} => Types::StatusDetails
    #   * {Types::GetCollaborationMLInputChannelResponse#retention_in_days #retention_in_days} => Integer
    #   * {Types::GetCollaborationMLInputChannelResponse#number_of_records #number_of_records} => Integer
    #   * {Types::GetCollaborationMLInputChannelResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_collaboration_ml_input_channel({
    #     ml_input_channel_arn: "MLInputChannelArn", # required
    #     collaboration_identifier: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.creator_account_id #=> String
    #   resp.membership_identifier #=> String
    #   resp.collaboration_identifier #=> String
    #   resp.ml_input_channel_arn #=> String
    #   resp.name #=> String
    #   resp.configured_model_algorithm_associations #=> Array
    #   resp.configured_model_algorithm_associations[0] #=> String
    #   resp.status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE"
    #   resp.status_details.status_code #=> String
    #   resp.status_details.message #=> String
    #   resp.retention_in_days #=> Integer
    #   resp.number_of_records #=> Integer
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetCollaborationMLInputChannel AWS API Documentation
    #
    # @overload get_collaboration_ml_input_channel(params = {})
    # @param [Hash] params ({})
    def get_collaboration_ml_input_channel(params = {}, options = {})
      req = build_request(:get_collaboration_ml_input_channel, params)
      req.send_request(options)
    end

    # Returns information about a trained model in a collaboration.
    #
    # @option params [required, String] :trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that you want to
    #   return information about.
    #
    # @option params [required, String] :collaboration_identifier
    #   The collaboration ID that contains the trained model that you want to
    #   return information about.
    #
    # @option params [String] :version_identifier
    #   The version identifier of the trained model to retrieve. If not
    #   specified, the operation returns information about the latest version
    #   of the trained model.
    #
    # @return [Types::GetCollaborationTrainedModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCollaborationTrainedModelResponse#membership_identifier #membership_identifier} => String
    #   * {Types::GetCollaborationTrainedModelResponse#collaboration_identifier #collaboration_identifier} => String
    #   * {Types::GetCollaborationTrainedModelResponse#trained_model_arn #trained_model_arn} => String
    #   * {Types::GetCollaborationTrainedModelResponse#version_identifier #version_identifier} => String
    #   * {Types::GetCollaborationTrainedModelResponse#incremental_training_data_channels #incremental_training_data_channels} => Array&lt;Types::IncrementalTrainingDataChannelOutput&gt;
    #   * {Types::GetCollaborationTrainedModelResponse#name #name} => String
    #   * {Types::GetCollaborationTrainedModelResponse#description #description} => String
    #   * {Types::GetCollaborationTrainedModelResponse#status #status} => String
    #   * {Types::GetCollaborationTrainedModelResponse#status_details #status_details} => Types::StatusDetails
    #   * {Types::GetCollaborationTrainedModelResponse#configured_model_algorithm_association_arn #configured_model_algorithm_association_arn} => String
    #   * {Types::GetCollaborationTrainedModelResponse#resource_config #resource_config} => Types::ResourceConfig
    #   * {Types::GetCollaborationTrainedModelResponse#training_input_mode #training_input_mode} => String
    #   * {Types::GetCollaborationTrainedModelResponse#stopping_condition #stopping_condition} => Types::StoppingCondition
    #   * {Types::GetCollaborationTrainedModelResponse#metrics_status #metrics_status} => String
    #   * {Types::GetCollaborationTrainedModelResponse#metrics_status_details #metrics_status_details} => String
    #   * {Types::GetCollaborationTrainedModelResponse#logs_status #logs_status} => String
    #   * {Types::GetCollaborationTrainedModelResponse#logs_status_details #logs_status_details} => String
    #   * {Types::GetCollaborationTrainedModelResponse#training_container_image_digest #training_container_image_digest} => String
    #   * {Types::GetCollaborationTrainedModelResponse#create_time #create_time} => Time
    #   * {Types::GetCollaborationTrainedModelResponse#update_time #update_time} => Time
    #   * {Types::GetCollaborationTrainedModelResponse#creator_account_id #creator_account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_collaboration_trained_model({
    #     trained_model_arn: "TrainedModelArn", # required
    #     collaboration_identifier: "UUID", # required
    #     version_identifier: "UUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.membership_identifier #=> String
    #   resp.collaboration_identifier #=> String
    #   resp.trained_model_arn #=> String
    #   resp.version_identifier #=> String
    #   resp.incremental_training_data_channels #=> Array
    #   resp.incremental_training_data_channels[0].channel_name #=> String
    #   resp.incremental_training_data_channels[0].version_identifier #=> String
    #   resp.incremental_training_data_channels[0].model_name #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED"
    #   resp.status_details.status_code #=> String
    #   resp.status_details.message #=> String
    #   resp.configured_model_algorithm_association_arn #=> String
    #   resp.resource_config.instance_count #=> Integer
    #   resp.resource_config.instance_type #=> String, one of "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.g4dn.xlarge", "ml.g4dn.2xlarge", "ml.g4dn.4xlarge", "ml.g4dn.8xlarge", "ml.g4dn.12xlarge", "ml.g4dn.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.p3dn.24xlarge", "ml.p4d.24xlarge", "ml.p4de.24xlarge", "ml.p5.48xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.c5n.xlarge", "ml.c5n.2xlarge", "ml.c5n.4xlarge", "ml.c5n.9xlarge", "ml.c5n.18xlarge", "ml.g5.xlarge", "ml.g5.2xlarge", "ml.g5.4xlarge", "ml.g5.8xlarge", "ml.g5.16xlarge", "ml.g5.12xlarge", "ml.g5.24xlarge", "ml.g5.48xlarge", "ml.trn1.2xlarge", "ml.trn1.32xlarge", "ml.trn1n.32xlarge", "ml.m6i.large", "ml.m6i.xlarge", "ml.m6i.2xlarge", "ml.m6i.4xlarge", "ml.m6i.8xlarge", "ml.m6i.12xlarge", "ml.m6i.16xlarge", "ml.m6i.24xlarge", "ml.m6i.32xlarge", "ml.c6i.xlarge", "ml.c6i.2xlarge", "ml.c6i.8xlarge", "ml.c6i.4xlarge", "ml.c6i.12xlarge", "ml.c6i.16xlarge", "ml.c6i.24xlarge", "ml.c6i.32xlarge", "ml.r5d.large", "ml.r5d.xlarge", "ml.r5d.2xlarge", "ml.r5d.4xlarge", "ml.r5d.8xlarge", "ml.r5d.12xlarge", "ml.r5d.16xlarge", "ml.r5d.24xlarge", "ml.t3.medium", "ml.t3.large", "ml.t3.xlarge", "ml.t3.2xlarge", "ml.r5.large", "ml.r5.xlarge", "ml.r5.2xlarge", "ml.r5.4xlarge", "ml.r5.8xlarge", "ml.r5.12xlarge", "ml.r5.16xlarge", "ml.r5.24xlarge"
    #   resp.resource_config.volume_size_in_gb #=> Integer
    #   resp.training_input_mode #=> String, one of "File", "FastFile", "Pipe"
    #   resp.stopping_condition.max_runtime_in_seconds #=> Integer
    #   resp.metrics_status #=> String, one of "PUBLISH_SUCCEEDED", "PUBLISH_FAILED"
    #   resp.metrics_status_details #=> String
    #   resp.logs_status #=> String, one of "PUBLISH_SUCCEEDED", "PUBLISH_FAILED"
    #   resp.logs_status_details #=> String
    #   resp.training_container_image_digest #=> String
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.creator_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetCollaborationTrainedModel AWS API Documentation
    #
    # @overload get_collaboration_trained_model(params = {})
    # @param [Hash] params ({})
    def get_collaboration_trained_model(params = {}, options = {})
      req = build_request(:get_collaboration_trained_model, params)
      req.send_request(options)
    end

    # Returns information about a specified configured audience model.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you are interested in.
    #
    # @return [Types::GetConfiguredAudienceModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfiguredAudienceModelResponse#create_time #create_time} => Time
    #   * {Types::GetConfiguredAudienceModelResponse#update_time #update_time} => Time
    #   * {Types::GetConfiguredAudienceModelResponse#configured_audience_model_arn #configured_audience_model_arn} => String
    #   * {Types::GetConfiguredAudienceModelResponse#name #name} => String
    #   * {Types::GetConfiguredAudienceModelResponse#audience_model_arn #audience_model_arn} => String
    #   * {Types::GetConfiguredAudienceModelResponse#output_config #output_config} => Types::ConfiguredAudienceModelOutputConfig
    #   * {Types::GetConfiguredAudienceModelResponse#description #description} => String
    #   * {Types::GetConfiguredAudienceModelResponse#status #status} => String
    #   * {Types::GetConfiguredAudienceModelResponse#shared_audience_metrics #shared_audience_metrics} => Array&lt;String&gt;
    #   * {Types::GetConfiguredAudienceModelResponse#min_matching_seed_size #min_matching_seed_size} => Integer
    #   * {Types::GetConfiguredAudienceModelResponse#audience_size_config #audience_size_config} => Types::AudienceSizeConfig
    #   * {Types::GetConfiguredAudienceModelResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetConfiguredAudienceModelResponse#child_resource_tag_on_create_policy #child_resource_tag_on_create_policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configured_audience_model({
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.configured_audience_model_arn #=> String
    #   resp.name #=> String
    #   resp.audience_model_arn #=> String
    #   resp.output_config.destination.s3_destination.s3_uri #=> String
    #   resp.output_config.role_arn #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "ACTIVE"
    #   resp.shared_audience_metrics #=> Array
    #   resp.shared_audience_metrics[0] #=> String, one of "ALL", "NONE"
    #   resp.min_matching_seed_size #=> Integer
    #   resp.audience_size_config.audience_size_type #=> String, one of "ABSOLUTE", "PERCENTAGE"
    #   resp.audience_size_config.audience_size_bins #=> Array
    #   resp.audience_size_config.audience_size_bins[0] #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.child_resource_tag_on_create_policy #=> String, one of "FROM_PARENT_RESOURCE", "NONE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredAudienceModel AWS API Documentation
    #
    # @overload get_configured_audience_model(params = {})
    # @param [Hash] params ({})
    def get_configured_audience_model(params = {}, options = {})
      req = build_request(:get_configured_audience_model, params)
      req.send_request(options)
    end

    # Returns information about a configured audience model policy.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you are interested in.
    #
    # @return [Types::GetConfiguredAudienceModelPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfiguredAudienceModelPolicyResponse#configured_audience_model_arn #configured_audience_model_arn} => String
    #   * {Types::GetConfiguredAudienceModelPolicyResponse#configured_audience_model_policy #configured_audience_model_policy} => String
    #   * {Types::GetConfiguredAudienceModelPolicyResponse#policy_hash #policy_hash} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configured_audience_model_policy({
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_audience_model_arn #=> String
    #   resp.configured_audience_model_policy #=> String
    #   resp.policy_hash #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredAudienceModelPolicy AWS API Documentation
    #
    # @overload get_configured_audience_model_policy(params = {})
    # @param [Hash] params ({})
    def get_configured_audience_model_policy(params = {}, options = {})
      req = build_request(:get_configured_audience_model_policy, params)
      req.send_request(options)
    end

    # Returns information about a configured model algorithm.
    #
    # @option params [required, String] :configured_model_algorithm_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm that
    #   you want to return information about.
    #
    # @return [Types::GetConfiguredModelAlgorithmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfiguredModelAlgorithmResponse#create_time #create_time} => Time
    #   * {Types::GetConfiguredModelAlgorithmResponse#update_time #update_time} => Time
    #   * {Types::GetConfiguredModelAlgorithmResponse#configured_model_algorithm_arn #configured_model_algorithm_arn} => String
    #   * {Types::GetConfiguredModelAlgorithmResponse#name #name} => String
    #   * {Types::GetConfiguredModelAlgorithmResponse#training_container_config #training_container_config} => Types::ContainerConfig
    #   * {Types::GetConfiguredModelAlgorithmResponse#inference_container_config #inference_container_config} => Types::InferenceContainerConfig
    #   * {Types::GetConfiguredModelAlgorithmResponse#role_arn #role_arn} => String
    #   * {Types::GetConfiguredModelAlgorithmResponse#description #description} => String
    #   * {Types::GetConfiguredModelAlgorithmResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetConfiguredModelAlgorithmResponse#kms_key_arn #kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configured_model_algorithm({
    #     configured_model_algorithm_arn: "ConfiguredModelAlgorithmArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.configured_model_algorithm_arn #=> String
    #   resp.name #=> String
    #   resp.training_container_config.image_uri #=> String
    #   resp.training_container_config.entrypoint #=> Array
    #   resp.training_container_config.entrypoint[0] #=> String
    #   resp.training_container_config.arguments #=> Array
    #   resp.training_container_config.arguments[0] #=> String
    #   resp.training_container_config.metric_definitions #=> Array
    #   resp.training_container_config.metric_definitions[0].name #=> String
    #   resp.training_container_config.metric_definitions[0].regex #=> String
    #   resp.inference_container_config.image_uri #=> String
    #   resp.role_arn #=> String
    #   resp.description #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredModelAlgorithm AWS API Documentation
    #
    # @overload get_configured_model_algorithm(params = {})
    # @param [Hash] params ({})
    def get_configured_model_algorithm(params = {}, options = {})
      req = build_request(:get_configured_model_algorithm, params)
      req.send_request(options)
    end

    # Returns information about a configured model algorithm association.
    #
    # @option params [required, String] :configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that you want to return information about.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the member that created the configured model
    #   algorithm association.
    #
    # @return [Types::GetConfiguredModelAlgorithmAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfiguredModelAlgorithmAssociationResponse#create_time #create_time} => Time
    #   * {Types::GetConfiguredModelAlgorithmAssociationResponse#update_time #update_time} => Time
    #   * {Types::GetConfiguredModelAlgorithmAssociationResponse#configured_model_algorithm_association_arn #configured_model_algorithm_association_arn} => String
    #   * {Types::GetConfiguredModelAlgorithmAssociationResponse#membership_identifier #membership_identifier} => String
    #   * {Types::GetConfiguredModelAlgorithmAssociationResponse#collaboration_identifier #collaboration_identifier} => String
    #   * {Types::GetConfiguredModelAlgorithmAssociationResponse#configured_model_algorithm_arn #configured_model_algorithm_arn} => String
    #   * {Types::GetConfiguredModelAlgorithmAssociationResponse#name #name} => String
    #   * {Types::GetConfiguredModelAlgorithmAssociationResponse#privacy_configuration #privacy_configuration} => Types::PrivacyConfiguration
    #   * {Types::GetConfiguredModelAlgorithmAssociationResponse#description #description} => String
    #   * {Types::GetConfiguredModelAlgorithmAssociationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configured_model_algorithm_association({
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #     membership_identifier: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.configured_model_algorithm_association_arn #=> String
    #   resp.membership_identifier #=> String
    #   resp.collaboration_identifier #=> String
    #   resp.configured_model_algorithm_arn #=> String
    #   resp.name #=> String
    #   resp.privacy_configuration.policies.trained_models.container_logs #=> Array
    #   resp.privacy_configuration.policies.trained_models.container_logs[0].allowed_account_ids #=> Array
    #   resp.privacy_configuration.policies.trained_models.container_logs[0].allowed_account_ids[0] #=> String
    #   resp.privacy_configuration.policies.trained_models.container_logs[0].filter_pattern #=> String
    #   resp.privacy_configuration.policies.trained_models.container_metrics.noise_level #=> String, one of "HIGH", "MEDIUM", "LOW", "NONE"
    #   resp.privacy_configuration.policies.trained_models.max_artifact_size.unit #=> String, one of "GB"
    #   resp.privacy_configuration.policies.trained_models.max_artifact_size.value #=> Float
    #   resp.privacy_configuration.policies.trained_model_exports.max_size.unit #=> String, one of "GB"
    #   resp.privacy_configuration.policies.trained_model_exports.max_size.value #=> Float
    #   resp.privacy_configuration.policies.trained_model_exports.files_to_export #=> Array
    #   resp.privacy_configuration.policies.trained_model_exports.files_to_export[0] #=> String, one of "MODEL", "OUTPUT"
    #   resp.privacy_configuration.policies.trained_model_inference_jobs.container_logs #=> Array
    #   resp.privacy_configuration.policies.trained_model_inference_jobs.container_logs[0].allowed_account_ids #=> Array
    #   resp.privacy_configuration.policies.trained_model_inference_jobs.container_logs[0].allowed_account_ids[0] #=> String
    #   resp.privacy_configuration.policies.trained_model_inference_jobs.container_logs[0].filter_pattern #=> String
    #   resp.privacy_configuration.policies.trained_model_inference_jobs.max_output_size.unit #=> String, one of "GB"
    #   resp.privacy_configuration.policies.trained_model_inference_jobs.max_output_size.value #=> Float
    #   resp.description #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredModelAlgorithmAssociation AWS API Documentation
    #
    # @overload get_configured_model_algorithm_association(params = {})
    # @param [Hash] params ({})
    def get_configured_model_algorithm_association(params = {}, options = {})
      req = build_request(:get_configured_model_algorithm_association, params)
      req.send_request(options)
    end

    # Returns information about a specific ML configuration.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the member that owns the ML configuration you
    #   want to return information about.
    #
    # @return [Types::GetMLConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLConfigurationResponse#membership_identifier #membership_identifier} => String
    #   * {Types::GetMLConfigurationResponse#default_output_location #default_output_location} => Types::MLOutputConfiguration
    #   * {Types::GetMLConfigurationResponse#create_time #create_time} => Time
    #   * {Types::GetMLConfigurationResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_configuration({
    #     membership_identifier: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.membership_identifier #=> String
    #   resp.default_output_location.destination.s3_destination.s3_uri #=> String
    #   resp.default_output_location.role_arn #=> String
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetMLConfiguration AWS API Documentation
    #
    # @overload get_ml_configuration(params = {})
    # @param [Hash] params ({})
    def get_ml_configuration(params = {}, options = {})
      req = build_request(:get_ml_configuration, params)
      req.send_request(options)
    end

    # Returns information about an ML input channel.
    #
    # @option params [required, String] :ml_input_channel_arn
    #   The Amazon Resource Name (ARN) of the ML input channel that you want
    #   to get.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the membership that contains the ML input channel
    #   that you want to get.
    #
    # @return [Types::GetMLInputChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLInputChannelResponse#create_time #create_time} => Time
    #   * {Types::GetMLInputChannelResponse#update_time #update_time} => Time
    #   * {Types::GetMLInputChannelResponse#membership_identifier #membership_identifier} => String
    #   * {Types::GetMLInputChannelResponse#collaboration_identifier #collaboration_identifier} => String
    #   * {Types::GetMLInputChannelResponse#input_channel #input_channel} => Types::InputChannel
    #   * {Types::GetMLInputChannelResponse#protected_query_identifier #protected_query_identifier} => String
    #   * {Types::GetMLInputChannelResponse#ml_input_channel_arn #ml_input_channel_arn} => String
    #   * {Types::GetMLInputChannelResponse#name #name} => String
    #   * {Types::GetMLInputChannelResponse#configured_model_algorithm_associations #configured_model_algorithm_associations} => Array&lt;String&gt;
    #   * {Types::GetMLInputChannelResponse#status #status} => String
    #   * {Types::GetMLInputChannelResponse#status_details #status_details} => Types::StatusDetails
    #   * {Types::GetMLInputChannelResponse#retention_in_days #retention_in_days} => Integer
    #   * {Types::GetMLInputChannelResponse#number_of_records #number_of_records} => Integer
    #   * {Types::GetMLInputChannelResponse#number_of_files #number_of_files} => Float
    #   * {Types::GetMLInputChannelResponse#size_in_gb #size_in_gb} => Float
    #   * {Types::GetMLInputChannelResponse#description #description} => String
    #   * {Types::GetMLInputChannelResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::GetMLInputChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_input_channel({
    #     ml_input_channel_arn: "MLInputChannelArn", # required
    #     membership_identifier: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.membership_identifier #=> String
    #   resp.collaboration_identifier #=> String
    #   resp.input_channel.data_source.protected_query_input_parameters.sql_parameters.query_string #=> String
    #   resp.input_channel.data_source.protected_query_input_parameters.sql_parameters.analysis_template_arn #=> String
    #   resp.input_channel.data_source.protected_query_input_parameters.sql_parameters.parameters #=> Hash
    #   resp.input_channel.data_source.protected_query_input_parameters.sql_parameters.parameters["ParameterKey"] #=> String
    #   resp.input_channel.data_source.protected_query_input_parameters.compute_configuration.worker.type #=> String, one of "CR.1X", "CR.4X"
    #   resp.input_channel.data_source.protected_query_input_parameters.compute_configuration.worker.number #=> Integer
    #   resp.input_channel.data_source.protected_query_input_parameters.result_format #=> String, one of "CSV", "PARQUET"
    #   resp.input_channel.role_arn #=> String
    #   resp.protected_query_identifier #=> String
    #   resp.ml_input_channel_arn #=> String
    #   resp.name #=> String
    #   resp.configured_model_algorithm_associations #=> Array
    #   resp.configured_model_algorithm_associations[0] #=> String
    #   resp.status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE"
    #   resp.status_details.status_code #=> String
    #   resp.status_details.message #=> String
    #   resp.retention_in_days #=> Integer
    #   resp.number_of_records #=> Integer
    #   resp.number_of_files #=> Float
    #   resp.size_in_gb #=> Float
    #   resp.description #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetMLInputChannel AWS API Documentation
    #
    # @overload get_ml_input_channel(params = {})
    # @param [Hash] params ({})
    def get_ml_input_channel(params = {}, options = {})
      req = build_request(:get_ml_input_channel, params)
      req.send_request(options)
    end

    # Returns information about a trained model.
    #
    # @option params [required, String] :trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that you are
    #   interested in.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the member that created the trained model that
    #   you are interested in.
    #
    # @option params [String] :version_identifier
    #   The version identifier of the trained model to retrieve. If not
    #   specified, the operation returns information about the latest version
    #   of the trained model.
    #
    # @return [Types::GetTrainedModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrainedModelResponse#membership_identifier #membership_identifier} => String
    #   * {Types::GetTrainedModelResponse#collaboration_identifier #collaboration_identifier} => String
    #   * {Types::GetTrainedModelResponse#trained_model_arn #trained_model_arn} => String
    #   * {Types::GetTrainedModelResponse#version_identifier #version_identifier} => String
    #   * {Types::GetTrainedModelResponse#incremental_training_data_channels #incremental_training_data_channels} => Array&lt;Types::IncrementalTrainingDataChannelOutput&gt;
    #   * {Types::GetTrainedModelResponse#name #name} => String
    #   * {Types::GetTrainedModelResponse#description #description} => String
    #   * {Types::GetTrainedModelResponse#status #status} => String
    #   * {Types::GetTrainedModelResponse#status_details #status_details} => Types::StatusDetails
    #   * {Types::GetTrainedModelResponse#configured_model_algorithm_association_arn #configured_model_algorithm_association_arn} => String
    #   * {Types::GetTrainedModelResponse#resource_config #resource_config} => Types::ResourceConfig
    #   * {Types::GetTrainedModelResponse#training_input_mode #training_input_mode} => String
    #   * {Types::GetTrainedModelResponse#stopping_condition #stopping_condition} => Types::StoppingCondition
    #   * {Types::GetTrainedModelResponse#metrics_status #metrics_status} => String
    #   * {Types::GetTrainedModelResponse#metrics_status_details #metrics_status_details} => String
    #   * {Types::GetTrainedModelResponse#logs_status #logs_status} => String
    #   * {Types::GetTrainedModelResponse#logs_status_details #logs_status_details} => String
    #   * {Types::GetTrainedModelResponse#training_container_image_digest #training_container_image_digest} => String
    #   * {Types::GetTrainedModelResponse#create_time #create_time} => Time
    #   * {Types::GetTrainedModelResponse#update_time #update_time} => Time
    #   * {Types::GetTrainedModelResponse#hyperparameters #hyperparameters} => Hash&lt;String,String&gt;
    #   * {Types::GetTrainedModelResponse#environment #environment} => Hash&lt;String,String&gt;
    #   * {Types::GetTrainedModelResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::GetTrainedModelResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetTrainedModelResponse#data_channels #data_channels} => Array&lt;Types::ModelTrainingDataChannel&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trained_model({
    #     trained_model_arn: "TrainedModelArn", # required
    #     membership_identifier: "UUID", # required
    #     version_identifier: "UUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.membership_identifier #=> String
    #   resp.collaboration_identifier #=> String
    #   resp.trained_model_arn #=> String
    #   resp.version_identifier #=> String
    #   resp.incremental_training_data_channels #=> Array
    #   resp.incremental_training_data_channels[0].channel_name #=> String
    #   resp.incremental_training_data_channels[0].version_identifier #=> String
    #   resp.incremental_training_data_channels[0].model_name #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED"
    #   resp.status_details.status_code #=> String
    #   resp.status_details.message #=> String
    #   resp.configured_model_algorithm_association_arn #=> String
    #   resp.resource_config.instance_count #=> Integer
    #   resp.resource_config.instance_type #=> String, one of "ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.g4dn.xlarge", "ml.g4dn.2xlarge", "ml.g4dn.4xlarge", "ml.g4dn.8xlarge", "ml.g4dn.12xlarge", "ml.g4dn.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.p3dn.24xlarge", "ml.p4d.24xlarge", "ml.p4de.24xlarge", "ml.p5.48xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.c5n.xlarge", "ml.c5n.2xlarge", "ml.c5n.4xlarge", "ml.c5n.9xlarge", "ml.c5n.18xlarge", "ml.g5.xlarge", "ml.g5.2xlarge", "ml.g5.4xlarge", "ml.g5.8xlarge", "ml.g5.16xlarge", "ml.g5.12xlarge", "ml.g5.24xlarge", "ml.g5.48xlarge", "ml.trn1.2xlarge", "ml.trn1.32xlarge", "ml.trn1n.32xlarge", "ml.m6i.large", "ml.m6i.xlarge", "ml.m6i.2xlarge", "ml.m6i.4xlarge", "ml.m6i.8xlarge", "ml.m6i.12xlarge", "ml.m6i.16xlarge", "ml.m6i.24xlarge", "ml.m6i.32xlarge", "ml.c6i.xlarge", "ml.c6i.2xlarge", "ml.c6i.8xlarge", "ml.c6i.4xlarge", "ml.c6i.12xlarge", "ml.c6i.16xlarge", "ml.c6i.24xlarge", "ml.c6i.32xlarge", "ml.r5d.large", "ml.r5d.xlarge", "ml.r5d.2xlarge", "ml.r5d.4xlarge", "ml.r5d.8xlarge", "ml.r5d.12xlarge", "ml.r5d.16xlarge", "ml.r5d.24xlarge", "ml.t3.medium", "ml.t3.large", "ml.t3.xlarge", "ml.t3.2xlarge", "ml.r5.large", "ml.r5.xlarge", "ml.r5.2xlarge", "ml.r5.4xlarge", "ml.r5.8xlarge", "ml.r5.12xlarge", "ml.r5.16xlarge", "ml.r5.24xlarge"
    #   resp.resource_config.volume_size_in_gb #=> Integer
    #   resp.training_input_mode #=> String, one of "File", "FastFile", "Pipe"
    #   resp.stopping_condition.max_runtime_in_seconds #=> Integer
    #   resp.metrics_status #=> String, one of "PUBLISH_SUCCEEDED", "PUBLISH_FAILED"
    #   resp.metrics_status_details #=> String
    #   resp.logs_status #=> String, one of "PUBLISH_SUCCEEDED", "PUBLISH_FAILED"
    #   resp.logs_status_details #=> String
    #   resp.training_container_image_digest #=> String
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.hyperparameters #=> Hash
    #   resp.hyperparameters["HyperParametersKeyString"] #=> String
    #   resp.environment #=> Hash
    #   resp.environment["EnvironmentKeyString"] #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.data_channels #=> Array
    #   resp.data_channels[0].ml_input_channel_arn #=> String
    #   resp.data_channels[0].channel_name #=> String
    #   resp.data_channels[0].s3_data_distribution_type #=> String, one of "FullyReplicated", "ShardedByS3Key"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetTrainedModel AWS API Documentation
    #
    # @overload get_trained_model(params = {})
    # @param [Hash] params ({})
    def get_trained_model(params = {}, options = {})
      req = build_request(:get_trained_model, params)
      req.send_request(options)
    end

    # Returns information about a trained model inference job.
    #
    # @option params [required, String] :membership_identifier
    #   Provides the membership ID of the membership that contains the trained
    #   model inference job that you are interested in.
    #
    # @option params [required, String] :trained_model_inference_job_arn
    #   Provides the Amazon Resource Name (ARN) of the trained model inference
    #   job that you are interested in.
    #
    # @return [Types::GetTrainedModelInferenceJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrainedModelInferenceJobResponse#create_time #create_time} => Time
    #   * {Types::GetTrainedModelInferenceJobResponse#update_time #update_time} => Time
    #   * {Types::GetTrainedModelInferenceJobResponse#trained_model_inference_job_arn #trained_model_inference_job_arn} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#configured_model_algorithm_association_arn #configured_model_algorithm_association_arn} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#name #name} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#status #status} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#trained_model_arn #trained_model_arn} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#trained_model_version_identifier #trained_model_version_identifier} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#resource_config #resource_config} => Types::InferenceResourceConfig
    #   * {Types::GetTrainedModelInferenceJobResponse#output_configuration #output_configuration} => Types::InferenceOutputConfiguration
    #   * {Types::GetTrainedModelInferenceJobResponse#membership_identifier #membership_identifier} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#data_source #data_source} => Types::ModelInferenceDataSource
    #   * {Types::GetTrainedModelInferenceJobResponse#container_execution_parameters #container_execution_parameters} => Types::InferenceContainerExecutionParameters
    #   * {Types::GetTrainedModelInferenceJobResponse#status_details #status_details} => Types::StatusDetails
    #   * {Types::GetTrainedModelInferenceJobResponse#description #description} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#inference_container_image_digest #inference_container_image_digest} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#environment #environment} => Hash&lt;String,String&gt;
    #   * {Types::GetTrainedModelInferenceJobResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#metrics_status #metrics_status} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#metrics_status_details #metrics_status_details} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#logs_status #logs_status} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#logs_status_details #logs_status_details} => String
    #   * {Types::GetTrainedModelInferenceJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trained_model_inference_job({
    #     membership_identifier: "UUID", # required
    #     trained_model_inference_job_arn: "TrainedModelInferenceJobArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.trained_model_inference_job_arn #=> String
    #   resp.configured_model_algorithm_association_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED", "INACTIVE"
    #   resp.trained_model_arn #=> String
    #   resp.trained_model_version_identifier #=> String
    #   resp.resource_config.instance_type #=> String, one of "ml.r7i.48xlarge", "ml.r6i.16xlarge", "ml.m6i.xlarge", "ml.m5.4xlarge", "ml.p2.xlarge", "ml.m4.16xlarge", "ml.r7i.16xlarge", "ml.m7i.xlarge", "ml.m6i.12xlarge", "ml.r7i.8xlarge", "ml.r7i.large", "ml.m7i.12xlarge", "ml.m6i.24xlarge", "ml.m7i.24xlarge", "ml.r6i.8xlarge", "ml.r6i.large", "ml.g5.2xlarge", "ml.m5.large", "ml.p3.16xlarge", "ml.m7i.48xlarge", "ml.m6i.16xlarge", "ml.p2.16xlarge", "ml.g5.4xlarge", "ml.m7i.16xlarge", "ml.c4.2xlarge", "ml.c5.2xlarge", "ml.c6i.32xlarge", "ml.c4.4xlarge", "ml.g5.8xlarge", "ml.c6i.xlarge", "ml.c5.4xlarge", "ml.g4dn.xlarge", "ml.c7i.xlarge", "ml.c6i.12xlarge", "ml.g4dn.12xlarge", "ml.c7i.12xlarge", "ml.c6i.24xlarge", "ml.g4dn.2xlarge", "ml.c7i.24xlarge", "ml.c7i.2xlarge", "ml.c4.8xlarge", "ml.c6i.2xlarge", "ml.g4dn.4xlarge", "ml.c7i.48xlarge", "ml.c7i.4xlarge", "ml.c6i.16xlarge", "ml.c5.9xlarge", "ml.g4dn.16xlarge", "ml.c7i.16xlarge", "ml.c6i.4xlarge", "ml.c5.xlarge", "ml.c4.xlarge", "ml.g4dn.8xlarge", "ml.c7i.8xlarge", "ml.c7i.large", "ml.g5.xlarge", "ml.c6i.8xlarge", "ml.c6i.large", "ml.g5.12xlarge", "ml.g5.24xlarge", "ml.m7i.2xlarge", "ml.c5.18xlarge", "ml.g5.48xlarge", "ml.m6i.2xlarge", "ml.g5.16xlarge", "ml.m7i.4xlarge", "ml.p3.2xlarge", "ml.r6i.32xlarge", "ml.m6i.4xlarge", "ml.m5.xlarge", "ml.m4.10xlarge", "ml.r6i.xlarge", "ml.m5.12xlarge", "ml.m4.xlarge", "ml.r7i.2xlarge", "ml.r7i.xlarge", "ml.r6i.12xlarge", "ml.m5.24xlarge", "ml.r7i.12xlarge", "ml.m7i.8xlarge", "ml.m7i.large", "ml.r6i.24xlarge", "ml.r6i.2xlarge", "ml.m4.2xlarge", "ml.r7i.24xlarge", "ml.r7i.4xlarge", "ml.m6i.8xlarge", "ml.m6i.large", "ml.m5.2xlarge", "ml.p2.8xlarge", "ml.r6i.4xlarge", "ml.m6i.32xlarge", "ml.p3.8xlarge", "ml.m4.4xlarge"
    #   resp.resource_config.instance_count #=> Integer
    #   resp.output_configuration.accept #=> String
    #   resp.output_configuration.members #=> Array
    #   resp.output_configuration.members[0].account_id #=> String
    #   resp.membership_identifier #=> String
    #   resp.data_source.ml_input_channel_arn #=> String
    #   resp.container_execution_parameters.max_payload_in_mb #=> Integer
    #   resp.status_details.status_code #=> String
    #   resp.status_details.message #=> String
    #   resp.description #=> String
    #   resp.inference_container_image_digest #=> String
    #   resp.environment #=> Hash
    #   resp.environment["InferenceEnvironmentMapKeyString"] #=> String
    #   resp.kms_key_arn #=> String
    #   resp.metrics_status #=> String, one of "PUBLISH_SUCCEEDED", "PUBLISH_FAILED"
    #   resp.metrics_status_details #=> String
    #   resp.logs_status #=> String, one of "PUBLISH_SUCCEEDED", "PUBLISH_FAILED"
    #   resp.logs_status_details #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetTrainedModelInferenceJob AWS API Documentation
    #
    # @overload get_trained_model_inference_job(params = {})
    # @param [Hash] params ({})
    def get_trained_model_inference_job(params = {}, options = {})
      req = build_request(:get_trained_model_inference_job, params)
      req.send_request(options)
    end

    # Returns information about a training dataset.
    #
    # @option params [required, String] :training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset that you are
    #   interested in.
    #
    # @return [Types::GetTrainingDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrainingDatasetResponse#create_time #create_time} => Time
    #   * {Types::GetTrainingDatasetResponse#update_time #update_time} => Time
    #   * {Types::GetTrainingDatasetResponse#training_dataset_arn #training_dataset_arn} => String
    #   * {Types::GetTrainingDatasetResponse#name #name} => String
    #   * {Types::GetTrainingDatasetResponse#training_data #training_data} => Array&lt;Types::Dataset&gt;
    #   * {Types::GetTrainingDatasetResponse#status #status} => String
    #   * {Types::GetTrainingDatasetResponse#role_arn #role_arn} => String
    #   * {Types::GetTrainingDatasetResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetTrainingDatasetResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_training_dataset({
    #     training_dataset_arn: "TrainingDatasetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.update_time #=> Time
    #   resp.training_dataset_arn #=> String
    #   resp.name #=> String
    #   resp.training_data #=> Array
    #   resp.training_data[0].type #=> String, one of "INTERACTIONS"
    #   resp.training_data[0].input_config.schema #=> Array
    #   resp.training_data[0].input_config.schema[0].column_name #=> String
    #   resp.training_data[0].input_config.schema[0].column_types #=> Array
    #   resp.training_data[0].input_config.schema[0].column_types[0] #=> String, one of "USER_ID", "ITEM_ID", "TIMESTAMP", "CATEGORICAL_FEATURE", "NUMERICAL_FEATURE"
    #   resp.training_data[0].input_config.data_source.glue_data_source.table_name #=> String
    #   resp.training_data[0].input_config.data_source.glue_data_source.database_name #=> String
    #   resp.training_data[0].input_config.data_source.glue_data_source.catalog_id #=> String
    #   resp.status #=> String, one of "ACTIVE"
    #   resp.role_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetTrainingDataset AWS API Documentation
    #
    # @overload get_training_dataset(params = {})
    # @param [Hash] params ({})
    def get_training_dataset(params = {}, options = {})
      req = build_request(:get_training_dataset, params)
      req.send_request(options)
    end

    # Returns a list of the audience export jobs.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [String] :audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that you
    #   are interested in.
    #
    # @return [Types::ListAudienceExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAudienceExportJobsResponse#next_token #next_token} => String
    #   * {Types::ListAudienceExportJobsResponse#audience_export_jobs #audience_export_jobs} => Array&lt;Types::AudienceExportJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audience_export_jobs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     audience_generation_job_arn: "AudienceGenerationJobArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.audience_export_jobs #=> Array
    #   resp.audience_export_jobs[0].create_time #=> Time
    #   resp.audience_export_jobs[0].update_time #=> Time
    #   resp.audience_export_jobs[0].name #=> String
    #   resp.audience_export_jobs[0].audience_generation_job_arn #=> String
    #   resp.audience_export_jobs[0].audience_size.type #=> String, one of "ABSOLUTE", "PERCENTAGE"
    #   resp.audience_export_jobs[0].audience_size.value #=> Integer
    #   resp.audience_export_jobs[0].description #=> String
    #   resp.audience_export_jobs[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE"
    #   resp.audience_export_jobs[0].status_details.status_code #=> String
    #   resp.audience_export_jobs[0].status_details.message #=> String
    #   resp.audience_export_jobs[0].output_location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceExportJobs AWS API Documentation
    #
    # @overload list_audience_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_audience_export_jobs(params = {}, options = {})
      req = build_request(:list_audience_export_jobs, params)
      req.send_request(options)
    end

    # Returns a list of audience generation jobs.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   was used for the audience generation jobs that you are interested in.
    #
    # @option params [String] :collaboration_id
    #   The identifier of the collaboration that contains the audience
    #   generation jobs that you are interested in.
    #
    # @return [Types::ListAudienceGenerationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAudienceGenerationJobsResponse#next_token #next_token} => String
    #   * {Types::ListAudienceGenerationJobsResponse#audience_generation_jobs #audience_generation_jobs} => Array&lt;Types::AudienceGenerationJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audience_generation_jobs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn",
    #     collaboration_id: "UUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.audience_generation_jobs #=> Array
    #   resp.audience_generation_jobs[0].create_time #=> Time
    #   resp.audience_generation_jobs[0].update_time #=> Time
    #   resp.audience_generation_jobs[0].audience_generation_job_arn #=> String
    #   resp.audience_generation_jobs[0].name #=> String
    #   resp.audience_generation_jobs[0].description #=> String
    #   resp.audience_generation_jobs[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.audience_generation_jobs[0].configured_audience_model_arn #=> String
    #   resp.audience_generation_jobs[0].collaboration_id #=> String
    #   resp.audience_generation_jobs[0].started_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceGenerationJobs AWS API Documentation
    #
    # @overload list_audience_generation_jobs(params = {})
    # @param [Hash] params ({})
    def list_audience_generation_jobs(params = {}, options = {})
      req = build_request(:list_audience_generation_jobs, params)
      req.send_request(options)
    end

    # Returns a list of audience models.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @return [Types::ListAudienceModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAudienceModelsResponse#next_token #next_token} => String
    #   * {Types::ListAudienceModelsResponse#audience_models #audience_models} => Array&lt;Types::AudienceModelSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audience_models({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.audience_models #=> Array
    #   resp.audience_models[0].create_time #=> Time
    #   resp.audience_models[0].update_time #=> Time
    #   resp.audience_models[0].audience_model_arn #=> String
    #   resp.audience_models[0].name #=> String
    #   resp.audience_models[0].training_dataset_arn #=> String
    #   resp.audience_models[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.audience_models[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceModels AWS API Documentation
    #
    # @overload list_audience_models(params = {})
    # @param [Hash] params ({})
    def list_audience_models(params = {}, options = {})
      req = build_request(:list_audience_models, params)
      req.send_request(options)
    end

    # Returns a list of the configured model algorithm associations in a
    # collaboration.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [required, String] :collaboration_identifier
    #   The collaboration ID of the collaboration that contains the configured
    #   model algorithm associations that you are interested in.
    #
    # @return [Types::ListCollaborationConfiguredModelAlgorithmAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollaborationConfiguredModelAlgorithmAssociationsResponse#next_token #next_token} => String
    #   * {Types::ListCollaborationConfiguredModelAlgorithmAssociationsResponse#collaboration_configured_model_algorithm_associations #collaboration_configured_model_algorithm_associations} => Array&lt;Types::CollaborationConfiguredModelAlgorithmAssociationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collaboration_configured_model_algorithm_associations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     collaboration_identifier: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.collaboration_configured_model_algorithm_associations #=> Array
    #   resp.collaboration_configured_model_algorithm_associations[0].create_time #=> Time
    #   resp.collaboration_configured_model_algorithm_associations[0].update_time #=> Time
    #   resp.collaboration_configured_model_algorithm_associations[0].configured_model_algorithm_association_arn #=> String
    #   resp.collaboration_configured_model_algorithm_associations[0].name #=> String
    #   resp.collaboration_configured_model_algorithm_associations[0].description #=> String
    #   resp.collaboration_configured_model_algorithm_associations[0].membership_identifier #=> String
    #   resp.collaboration_configured_model_algorithm_associations[0].collaboration_identifier #=> String
    #   resp.collaboration_configured_model_algorithm_associations[0].configured_model_algorithm_arn #=> String
    #   resp.collaboration_configured_model_algorithm_associations[0].creator_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationConfiguredModelAlgorithmAssociations AWS API Documentation
    #
    # @overload list_collaboration_configured_model_algorithm_associations(params = {})
    # @param [Hash] params ({})
    def list_collaboration_configured_model_algorithm_associations(params = {}, options = {})
      req = build_request(:list_collaboration_configured_model_algorithm_associations, params)
      req.send_request(options)
    end

    # Returns a list of the ML input channels in a collaboration.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [required, String] :collaboration_identifier
    #   The collaboration ID of the collaboration that contains the ML input
    #   channels that you want to list.
    #
    # @return [Types::ListCollaborationMLInputChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollaborationMLInputChannelsResponse#next_token #next_token} => String
    #   * {Types::ListCollaborationMLInputChannelsResponse#collaboration_ml_input_channels_list #collaboration_ml_input_channels_list} => Array&lt;Types::CollaborationMLInputChannelSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collaboration_ml_input_channels({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     collaboration_identifier: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.collaboration_ml_input_channels_list #=> Array
    #   resp.collaboration_ml_input_channels_list[0].create_time #=> Time
    #   resp.collaboration_ml_input_channels_list[0].update_time #=> Time
    #   resp.collaboration_ml_input_channels_list[0].membership_identifier #=> String
    #   resp.collaboration_ml_input_channels_list[0].collaboration_identifier #=> String
    #   resp.collaboration_ml_input_channels_list[0].name #=> String
    #   resp.collaboration_ml_input_channels_list[0].configured_model_algorithm_associations #=> Array
    #   resp.collaboration_ml_input_channels_list[0].configured_model_algorithm_associations[0] #=> String
    #   resp.collaboration_ml_input_channels_list[0].ml_input_channel_arn #=> String
    #   resp.collaboration_ml_input_channels_list[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE"
    #   resp.collaboration_ml_input_channels_list[0].creator_account_id #=> String
    #   resp.collaboration_ml_input_channels_list[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationMLInputChannels AWS API Documentation
    #
    # @overload list_collaboration_ml_input_channels(params = {})
    # @param [Hash] params ({})
    def list_collaboration_ml_input_channels(params = {}, options = {})
      req = build_request(:list_collaboration_ml_input_channels, params)
      req.send_request(options)
    end

    # Returns a list of the export jobs for a trained model in a
    # collaboration.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [required, String] :collaboration_identifier
    #   The collaboration ID of the collaboration that contains the trained
    #   model export jobs that you are interested in.
    #
    # @option params [required, String] :trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that was used to
    #   create the export jobs that you are interested in.
    #
    # @option params [String] :trained_model_version_identifier
    #   The version identifier of the trained model to filter export jobs by.
    #   When specified, only export jobs for this specific version of the
    #   trained model are returned.
    #
    # @return [Types::ListCollaborationTrainedModelExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollaborationTrainedModelExportJobsResponse#next_token #next_token} => String
    #   * {Types::ListCollaborationTrainedModelExportJobsResponse#collaboration_trained_model_export_jobs #collaboration_trained_model_export_jobs} => Array&lt;Types::CollaborationTrainedModelExportJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collaboration_trained_model_export_jobs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     collaboration_identifier: "UUID", # required
    #     trained_model_arn: "TrainedModelArn", # required
    #     trained_model_version_identifier: "UUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.collaboration_trained_model_export_jobs #=> Array
    #   resp.collaboration_trained_model_export_jobs[0].create_time #=> Time
    #   resp.collaboration_trained_model_export_jobs[0].update_time #=> Time
    #   resp.collaboration_trained_model_export_jobs[0].name #=> String
    #   resp.collaboration_trained_model_export_jobs[0].output_configuration.members #=> Array
    #   resp.collaboration_trained_model_export_jobs[0].output_configuration.members[0].account_id #=> String
    #   resp.collaboration_trained_model_export_jobs[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE"
    #   resp.collaboration_trained_model_export_jobs[0].status_details.status_code #=> String
    #   resp.collaboration_trained_model_export_jobs[0].status_details.message #=> String
    #   resp.collaboration_trained_model_export_jobs[0].description #=> String
    #   resp.collaboration_trained_model_export_jobs[0].creator_account_id #=> String
    #   resp.collaboration_trained_model_export_jobs[0].trained_model_arn #=> String
    #   resp.collaboration_trained_model_export_jobs[0].trained_model_version_identifier #=> String
    #   resp.collaboration_trained_model_export_jobs[0].membership_identifier #=> String
    #   resp.collaboration_trained_model_export_jobs[0].collaboration_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationTrainedModelExportJobs AWS API Documentation
    #
    # @overload list_collaboration_trained_model_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_collaboration_trained_model_export_jobs(params = {}, options = {})
      req = build_request(:list_collaboration_trained_model_export_jobs, params)
      req.send_request(options)
    end

    # Returns a list of trained model inference jobs in a specified
    # collaboration.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [required, String] :collaboration_identifier
    #   The collaboration ID of the collaboration that contains the trained
    #   model inference jobs that you are interested in.
    #
    # @option params [String] :trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that was used to
    #   create the trained model inference jobs that you are interested in.
    #
    # @option params [String] :trained_model_version_identifier
    #   The version identifier of the trained model to filter inference jobs
    #   by. When specified, only inference jobs that used this specific
    #   version of the trained model are returned.
    #
    # @return [Types::ListCollaborationTrainedModelInferenceJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollaborationTrainedModelInferenceJobsResponse#next_token #next_token} => String
    #   * {Types::ListCollaborationTrainedModelInferenceJobsResponse#collaboration_trained_model_inference_jobs #collaboration_trained_model_inference_jobs} => Array&lt;Types::CollaborationTrainedModelInferenceJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collaboration_trained_model_inference_jobs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     collaboration_identifier: "UUID", # required
    #     trained_model_arn: "TrainedModelArn",
    #     trained_model_version_identifier: "UUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.collaboration_trained_model_inference_jobs #=> Array
    #   resp.collaboration_trained_model_inference_jobs[0].trained_model_inference_job_arn #=> String
    #   resp.collaboration_trained_model_inference_jobs[0].configured_model_algorithm_association_arn #=> String
    #   resp.collaboration_trained_model_inference_jobs[0].membership_identifier #=> String
    #   resp.collaboration_trained_model_inference_jobs[0].trained_model_arn #=> String
    #   resp.collaboration_trained_model_inference_jobs[0].trained_model_version_identifier #=> String
    #   resp.collaboration_trained_model_inference_jobs[0].collaboration_identifier #=> String
    #   resp.collaboration_trained_model_inference_jobs[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED", "INACTIVE"
    #   resp.collaboration_trained_model_inference_jobs[0].output_configuration.accept #=> String
    #   resp.collaboration_trained_model_inference_jobs[0].output_configuration.members #=> Array
    #   resp.collaboration_trained_model_inference_jobs[0].output_configuration.members[0].account_id #=> String
    #   resp.collaboration_trained_model_inference_jobs[0].name #=> String
    #   resp.collaboration_trained_model_inference_jobs[0].description #=> String
    #   resp.collaboration_trained_model_inference_jobs[0].metrics_status #=> String, one of "PUBLISH_SUCCEEDED", "PUBLISH_FAILED"
    #   resp.collaboration_trained_model_inference_jobs[0].metrics_status_details #=> String
    #   resp.collaboration_trained_model_inference_jobs[0].logs_status #=> String, one of "PUBLISH_SUCCEEDED", "PUBLISH_FAILED"
    #   resp.collaboration_trained_model_inference_jobs[0].logs_status_details #=> String
    #   resp.collaboration_trained_model_inference_jobs[0].create_time #=> Time
    #   resp.collaboration_trained_model_inference_jobs[0].update_time #=> Time
    #   resp.collaboration_trained_model_inference_jobs[0].creator_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationTrainedModelInferenceJobs AWS API Documentation
    #
    # @overload list_collaboration_trained_model_inference_jobs(params = {})
    # @param [Hash] params ({})
    def list_collaboration_trained_model_inference_jobs(params = {}, options = {})
      req = build_request(:list_collaboration_trained_model_inference_jobs, params)
      req.send_request(options)
    end

    # Returns a list of the trained models in a collaboration.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [required, String] :collaboration_identifier
    #   The collaboration ID of the collaboration that contains the trained
    #   models you are interested in.
    #
    # @return [Types::ListCollaborationTrainedModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollaborationTrainedModelsResponse#next_token #next_token} => String
    #   * {Types::ListCollaborationTrainedModelsResponse#collaboration_trained_models #collaboration_trained_models} => Array&lt;Types::CollaborationTrainedModelSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collaboration_trained_models({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     collaboration_identifier: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.collaboration_trained_models #=> Array
    #   resp.collaboration_trained_models[0].create_time #=> Time
    #   resp.collaboration_trained_models[0].update_time #=> Time
    #   resp.collaboration_trained_models[0].trained_model_arn #=> String
    #   resp.collaboration_trained_models[0].name #=> String
    #   resp.collaboration_trained_models[0].version_identifier #=> String
    #   resp.collaboration_trained_models[0].incremental_training_data_channels #=> Array
    #   resp.collaboration_trained_models[0].incremental_training_data_channels[0].channel_name #=> String
    #   resp.collaboration_trained_models[0].incremental_training_data_channels[0].version_identifier #=> String
    #   resp.collaboration_trained_models[0].incremental_training_data_channels[0].model_name #=> String
    #   resp.collaboration_trained_models[0].description #=> String
    #   resp.collaboration_trained_models[0].membership_identifier #=> String
    #   resp.collaboration_trained_models[0].collaboration_identifier #=> String
    #   resp.collaboration_trained_models[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED"
    #   resp.collaboration_trained_models[0].configured_model_algorithm_association_arn #=> String
    #   resp.collaboration_trained_models[0].creator_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListCollaborationTrainedModels AWS API Documentation
    #
    # @overload list_collaboration_trained_models(params = {})
    # @param [Hash] params ({})
    def list_collaboration_trained_models(params = {}, options = {})
      req = build_request(:list_collaboration_trained_models, params)
      req.send_request(options)
    end

    # Returns a list of the configured audience models.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @return [Types::ListConfiguredAudienceModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfiguredAudienceModelsResponse#next_token #next_token} => String
    #   * {Types::ListConfiguredAudienceModelsResponse#configured_audience_models #configured_audience_models} => Array&lt;Types::ConfiguredAudienceModelSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configured_audience_models({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.configured_audience_models #=> Array
    #   resp.configured_audience_models[0].create_time #=> Time
    #   resp.configured_audience_models[0].update_time #=> Time
    #   resp.configured_audience_models[0].name #=> String
    #   resp.configured_audience_models[0].audience_model_arn #=> String
    #   resp.configured_audience_models[0].output_config.destination.s3_destination.s3_uri #=> String
    #   resp.configured_audience_models[0].output_config.role_arn #=> String
    #   resp.configured_audience_models[0].description #=> String
    #   resp.configured_audience_models[0].configured_audience_model_arn #=> String
    #   resp.configured_audience_models[0].status #=> String, one of "ACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListConfiguredAudienceModels AWS API Documentation
    #
    # @overload list_configured_audience_models(params = {})
    # @param [Hash] params ({})
    def list_configured_audience_models(params = {}, options = {})
      req = build_request(:list_configured_audience_models, params)
      req.send_request(options)
    end

    # Returns a list of configured model algorithm associations.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the member that created the configured model
    #   algorithm associations you are interested in.
    #
    # @return [Types::ListConfiguredModelAlgorithmAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfiguredModelAlgorithmAssociationsResponse#next_token #next_token} => String
    #   * {Types::ListConfiguredModelAlgorithmAssociationsResponse#configured_model_algorithm_associations #configured_model_algorithm_associations} => Array&lt;Types::ConfiguredModelAlgorithmAssociationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configured_model_algorithm_associations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     membership_identifier: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.configured_model_algorithm_associations #=> Array
    #   resp.configured_model_algorithm_associations[0].create_time #=> Time
    #   resp.configured_model_algorithm_associations[0].update_time #=> Time
    #   resp.configured_model_algorithm_associations[0].configured_model_algorithm_association_arn #=> String
    #   resp.configured_model_algorithm_associations[0].configured_model_algorithm_arn #=> String
    #   resp.configured_model_algorithm_associations[0].name #=> String
    #   resp.configured_model_algorithm_associations[0].description #=> String
    #   resp.configured_model_algorithm_associations[0].membership_identifier #=> String
    #   resp.configured_model_algorithm_associations[0].collaboration_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListConfiguredModelAlgorithmAssociations AWS API Documentation
    #
    # @overload list_configured_model_algorithm_associations(params = {})
    # @param [Hash] params ({})
    def list_configured_model_algorithm_associations(params = {}, options = {})
      req = build_request(:list_configured_model_algorithm_associations, params)
      req.send_request(options)
    end

    # Returns a list of configured model algorithms.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @return [Types::ListConfiguredModelAlgorithmsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfiguredModelAlgorithmsResponse#next_token #next_token} => String
    #   * {Types::ListConfiguredModelAlgorithmsResponse#configured_model_algorithms #configured_model_algorithms} => Array&lt;Types::ConfiguredModelAlgorithmSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configured_model_algorithms({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.configured_model_algorithms #=> Array
    #   resp.configured_model_algorithms[0].create_time #=> Time
    #   resp.configured_model_algorithms[0].update_time #=> Time
    #   resp.configured_model_algorithms[0].configured_model_algorithm_arn #=> String
    #   resp.configured_model_algorithms[0].name #=> String
    #   resp.configured_model_algorithms[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListConfiguredModelAlgorithms AWS API Documentation
    #
    # @overload list_configured_model_algorithms(params = {})
    # @param [Hash] params ({})
    def list_configured_model_algorithms(params = {}, options = {})
      req = build_request(:list_configured_model_algorithms, params)
      req.send_request(options)
    end

    # Returns a list of ML input channels.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of ML input channels to return.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the membership that contains the ML input
    #   channels that you want to list.
    #
    # @return [Types::ListMLInputChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMLInputChannelsResponse#next_token #next_token} => String
    #   * {Types::ListMLInputChannelsResponse#ml_input_channels_list #ml_input_channels_list} => Array&lt;Types::MLInputChannelSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ml_input_channels({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     membership_identifier: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.ml_input_channels_list #=> Array
    #   resp.ml_input_channels_list[0].create_time #=> Time
    #   resp.ml_input_channels_list[0].update_time #=> Time
    #   resp.ml_input_channels_list[0].membership_identifier #=> String
    #   resp.ml_input_channels_list[0].collaboration_identifier #=> String
    #   resp.ml_input_channels_list[0].name #=> String
    #   resp.ml_input_channels_list[0].configured_model_algorithm_associations #=> Array
    #   resp.ml_input_channels_list[0].configured_model_algorithm_associations[0] #=> String
    #   resp.ml_input_channels_list[0].protected_query_identifier #=> String
    #   resp.ml_input_channels_list[0].ml_input_channel_arn #=> String
    #   resp.ml_input_channels_list[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE"
    #   resp.ml_input_channels_list[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListMLInputChannels AWS API Documentation
    #
    # @overload list_ml_input_channels(params = {})
    # @param [Hash] params ({})
    def list_ml_input_channels(params = {}, options = {})
      req = build_request(:list_ml_input_channels, params)
      req.send_request(options)
    end

    # Returns a list of tags for a provided resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you are interested
    #   in.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of trained model inference jobs that match the request
    # parameters.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [required, String] :membership_identifier
    #   The membership
    #
    # @option params [String] :trained_model_arn
    #   The Amazon Resource Name (ARN) of a trained model that was used to
    #   create the trained model inference jobs that you are interested in.
    #
    # @option params [String] :trained_model_version_identifier
    #   The version identifier of the trained model to filter inference jobs
    #   by. When specified, only inference jobs that used this specific
    #   version of the trained model are returned.
    #
    # @return [Types::ListTrainedModelInferenceJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrainedModelInferenceJobsResponse#next_token #next_token} => String
    #   * {Types::ListTrainedModelInferenceJobsResponse#trained_model_inference_jobs #trained_model_inference_jobs} => Array&lt;Types::TrainedModelInferenceJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trained_model_inference_jobs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     membership_identifier: "UUID", # required
    #     trained_model_arn: "TrainedModelArn",
    #     trained_model_version_identifier: "UUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.trained_model_inference_jobs #=> Array
    #   resp.trained_model_inference_jobs[0].trained_model_inference_job_arn #=> String
    #   resp.trained_model_inference_jobs[0].configured_model_algorithm_association_arn #=> String
    #   resp.trained_model_inference_jobs[0].membership_identifier #=> String
    #   resp.trained_model_inference_jobs[0].trained_model_arn #=> String
    #   resp.trained_model_inference_jobs[0].trained_model_version_identifier #=> String
    #   resp.trained_model_inference_jobs[0].collaboration_identifier #=> String
    #   resp.trained_model_inference_jobs[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED", "INACTIVE"
    #   resp.trained_model_inference_jobs[0].output_configuration.accept #=> String
    #   resp.trained_model_inference_jobs[0].output_configuration.members #=> Array
    #   resp.trained_model_inference_jobs[0].output_configuration.members[0].account_id #=> String
    #   resp.trained_model_inference_jobs[0].name #=> String
    #   resp.trained_model_inference_jobs[0].description #=> String
    #   resp.trained_model_inference_jobs[0].metrics_status #=> String, one of "PUBLISH_SUCCEEDED", "PUBLISH_FAILED"
    #   resp.trained_model_inference_jobs[0].metrics_status_details #=> String
    #   resp.trained_model_inference_jobs[0].logs_status #=> String, one of "PUBLISH_SUCCEEDED", "PUBLISH_FAILED"
    #   resp.trained_model_inference_jobs[0].logs_status_details #=> String
    #   resp.trained_model_inference_jobs[0].create_time #=> Time
    #   resp.trained_model_inference_jobs[0].update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainedModelInferenceJobs AWS API Documentation
    #
    # @overload list_trained_model_inference_jobs(params = {})
    # @param [Hash] params ({})
    def list_trained_model_inference_jobs(params = {}, options = {})
      req = build_request(:list_trained_model_inference_jobs, params)
      req.send_request(options)
    end

    # Returns a list of trained model versions for a specified trained
    # model. This operation allows you to view all versions of a trained
    # model, including information about their status and creation details.
    # You can use this to track the evolution of your trained models and
    # select specific versions for inference or further training.
    #
    # @option params [String] :next_token
    #   The pagination token from a previous `ListTrainedModelVersions`
    #   request. Use this token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of trained model versions to return in a single
    #   page. The default value is 10, and the maximum value is 100.
    #
    # @option params [required, String] :membership_identifier
    #   The membership identifier for the collaboration that contains the
    #   trained model.
    #
    # @option params [required, String] :trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model for which to list
    #   versions.
    #
    # @option params [String] :status
    #   Filter the results to only include trained model versions with the
    #   specified status. Valid values include `CREATE_PENDING`,
    #   `CREATE_IN_PROGRESS`, `ACTIVE`, `CREATE_FAILED`, and others.
    #
    # @return [Types::ListTrainedModelVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrainedModelVersionsResponse#next_token #next_token} => String
    #   * {Types::ListTrainedModelVersionsResponse#trained_models #trained_models} => Array&lt;Types::TrainedModelSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trained_model_versions({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     membership_identifier: "UUID", # required
    #     trained_model_arn: "TrainedModelArn", # required
    #     status: "CREATE_PENDING", # accepts CREATE_PENDING, CREATE_IN_PROGRESS, CREATE_FAILED, ACTIVE, DELETE_PENDING, DELETE_IN_PROGRESS, DELETE_FAILED, INACTIVE, CANCEL_PENDING, CANCEL_IN_PROGRESS, CANCEL_FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.trained_models #=> Array
    #   resp.trained_models[0].create_time #=> Time
    #   resp.trained_models[0].update_time #=> Time
    #   resp.trained_models[0].trained_model_arn #=> String
    #   resp.trained_models[0].version_identifier #=> String
    #   resp.trained_models[0].incremental_training_data_channels #=> Array
    #   resp.trained_models[0].incremental_training_data_channels[0].channel_name #=> String
    #   resp.trained_models[0].incremental_training_data_channels[0].version_identifier #=> String
    #   resp.trained_models[0].incremental_training_data_channels[0].model_name #=> String
    #   resp.trained_models[0].name #=> String
    #   resp.trained_models[0].description #=> String
    #   resp.trained_models[0].membership_identifier #=> String
    #   resp.trained_models[0].collaboration_identifier #=> String
    #   resp.trained_models[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED"
    #   resp.trained_models[0].configured_model_algorithm_association_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainedModelVersions AWS API Documentation
    #
    # @overload list_trained_model_versions(params = {})
    # @param [Hash] params ({})
    def list_trained_model_versions(params = {}, options = {})
      req = build_request(:list_trained_model_versions, params)
      req.send_request(options)
    end

    # Returns a list of trained models.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the member that created the trained models you
    #   are interested in.
    #
    # @return [Types::ListTrainedModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrainedModelsResponse#next_token #next_token} => String
    #   * {Types::ListTrainedModelsResponse#trained_models #trained_models} => Array&lt;Types::TrainedModelSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trained_models({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     membership_identifier: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.trained_models #=> Array
    #   resp.trained_models[0].create_time #=> Time
    #   resp.trained_models[0].update_time #=> Time
    #   resp.trained_models[0].trained_model_arn #=> String
    #   resp.trained_models[0].version_identifier #=> String
    #   resp.trained_models[0].incremental_training_data_channels #=> Array
    #   resp.trained_models[0].incremental_training_data_channels[0].channel_name #=> String
    #   resp.trained_models[0].incremental_training_data_channels[0].version_identifier #=> String
    #   resp.trained_models[0].incremental_training_data_channels[0].model_name #=> String
    #   resp.trained_models[0].name #=> String
    #   resp.trained_models[0].description #=> String
    #   resp.trained_models[0].membership_identifier #=> String
    #   resp.trained_models[0].collaboration_identifier #=> String
    #   resp.trained_models[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED"
    #   resp.trained_models[0].configured_model_algorithm_association_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainedModels AWS API Documentation
    #
    # @overload list_trained_models(params = {})
    # @param [Hash] params ({})
    def list_trained_models(params = {}, options = {})
      req = build_request(:list_trained_models, params)
      req.send_request(options)
    end

    # Returns a list of training datasets.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @return [Types::ListTrainingDatasetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrainingDatasetsResponse#next_token #next_token} => String
    #   * {Types::ListTrainingDatasetsResponse#training_datasets #training_datasets} => Array&lt;Types::TrainingDatasetSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_training_datasets({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.training_datasets #=> Array
    #   resp.training_datasets[0].create_time #=> Time
    #   resp.training_datasets[0].update_time #=> Time
    #   resp.training_datasets[0].training_dataset_arn #=> String
    #   resp.training_datasets[0].name #=> String
    #   resp.training_datasets[0].status #=> String, one of "ACTIVE"
    #   resp.training_datasets[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainingDatasets AWS API Documentation
    #
    # @overload list_training_datasets(params = {})
    # @param [Hash] params ({})
    def list_training_datasets(params = {}, options = {})
      req = build_request(:list_training_datasets, params)
      req.send_request(options)
    end

    # Create or update the resource policy for a configured audience model.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   the resource policy will govern.
    #
    # @option params [required, String] :configured_audience_model_policy
    #   The IAM resource policy.
    #
    # @option params [String] :previous_policy_hash
    #   A cryptographic hash of the contents of the policy used to prevent
    #   unexpected concurrent modification of the policy.
    #
    # @option params [String] :policy_existence_condition
    #   Use this to prevent unexpected concurrent modification of the policy.
    #
    # @return [Types::PutConfiguredAudienceModelPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutConfiguredAudienceModelPolicyResponse#configured_audience_model_policy #configured_audience_model_policy} => String
    #   * {Types::PutConfiguredAudienceModelPolicyResponse#policy_hash #policy_hash} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configured_audience_model_policy({
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     configured_audience_model_policy: "ResourcePolicy", # required
    #     previous_policy_hash: "Hash",
    #     policy_existence_condition: "POLICY_MUST_EXIST", # accepts POLICY_MUST_EXIST, POLICY_MUST_NOT_EXIST
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_audience_model_policy #=> String
    #   resp.policy_hash #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/PutConfiguredAudienceModelPolicy AWS API Documentation
    #
    # @overload put_configured_audience_model_policy(params = {})
    # @param [Hash] params ({})
    def put_configured_audience_model_policy(params = {}, options = {})
      req = build_request(:put_configured_audience_model_policy, params)
      req.send_request(options)
    end

    # Assigns information about an ML configuration.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the member that is being configured.
    #
    # @option params [required, Types::MLOutputConfiguration] :default_output_location
    #   The default Amazon S3 location where ML output is stored for the
    #   specified member.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_ml_configuration({
    #     membership_identifier: "UUID", # required
    #     default_output_location: { # required
    #       destination: {
    #         s3_destination: { # required
    #           s3_uri: "S3Path", # required
    #         },
    #       },
    #       role_arn: "IamRoleArn", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/PutMLConfiguration AWS API Documentation
    #
    # @overload put_ml_configuration(params = {})
    # @param [Hash] params ({})
    def put_ml_configuration(params = {}, options = {})
      req = build_request(:put_ml_configuration, params)
      req.send_request(options)
    end

    # Export an audience of a specified size after you have generated an
    # audience.
    #
    # @option params [required, String] :name
    #   The name of the audience export job.
    #
    # @option params [required, String] :audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that you
    #   want to export.
    #
    # @option params [required, Types::AudienceSize] :audience_size
    #   The size of the generated audience. Must match one of the sizes in the
    #   configured audience model.
    #
    # @option params [String] :description
    #   The description of the audience export job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_audience_export_job({
    #     name: "NameString", # required
    #     audience_generation_job_arn: "AudienceGenerationJobArn", # required
    #     audience_size: { # required
    #       type: "ABSOLUTE", # required, accepts ABSOLUTE, PERCENTAGE
    #       value: 1, # required
    #     },
    #     description: "ResourceDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartAudienceExportJob AWS API Documentation
    #
    # @overload start_audience_export_job(params = {})
    # @param [Hash] params ({})
    def start_audience_export_job(params = {}, options = {})
      req = build_request(:start_audience_export_job, params)
      req.send_request(options)
    end

    # Information necessary to start the audience generation job.
    #
    # @option params [required, String] :name
    #   The name of the audience generation job.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   is used for this audience generation job.
    #
    # @option params [required, Types::AudienceGenerationJobDataSource] :seed_audience
    #   The seed audience that is used to generate the audience.
    #
    # @option params [Boolean] :include_seed_in_output
    #   Whether the seed audience is included in the audience generation
    #   output.
    #
    # @option params [String] :collaboration_id
    #   The identifier of the collaboration that contains the audience
    #   generation job.
    #
    # @option params [String] :description
    #   The description of the audience generation job.
    #
    # @option params [Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then Clean
    #     Rooms ML considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @return [Types::StartAudienceGenerationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAudienceGenerationJobResponse#audience_generation_job_arn #audience_generation_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_audience_generation_job({
    #     name: "NameString", # required
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     seed_audience: { # required
    #       data_source: {
    #         s3_uri: "S3Path", # required
    #       },
    #       role_arn: "IamRoleArn", # required
    #       sql_parameters: {
    #         query_string: "ProtectedQuerySQLParametersQueryStringString",
    #         analysis_template_arn: "AnalysisTemplateArn",
    #         parameters: {
    #           "ParameterKey" => "ParameterValue",
    #         },
    #       },
    #       sql_compute_configuration: {
    #         worker: {
    #           type: "CR.1X", # accepts CR.1X, CR.4X
    #           number: 1,
    #         },
    #       },
    #     },
    #     include_seed_in_output: false,
    #     collaboration_id: "UUID",
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.audience_generation_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartAudienceGenerationJob AWS API Documentation
    #
    # @overload start_audience_generation_job(params = {})
    # @param [Hash] params ({})
    def start_audience_generation_job(params = {}, options = {})
      req = build_request(:start_audience_generation_job, params)
      req.send_request(options)
    end

    # Provides the information necessary to start a trained model export
    # job.
    #
    # @option params [required, String] :name
    #   The name of the trained model export job.
    #
    # @option params [required, String] :trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that you want to
    #   export.
    #
    # @option params [String] :trained_model_version_identifier
    #   The version identifier of the trained model to export. This specifies
    #   which version of the trained model should be exported to the specified
    #   destination.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the member that is receiving the exported trained
    #   model artifacts.
    #
    # @option params [required, Types::TrainedModelExportOutputConfiguration] :output_configuration
    #   The output configuration information for the trained model export job.
    #
    # @option params [String] :description
    #   The description of the trained model export job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_trained_model_export_job({
    #     name: "NameString", # required
    #     trained_model_arn: "TrainedModelArn", # required
    #     trained_model_version_identifier: "UUID",
    #     membership_identifier: "UUID", # required
    #     output_configuration: { # required
    #       members: [ # required
    #         {
    #           account_id: "AccountId", # required
    #         },
    #       ],
    #     },
    #     description: "ResourceDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartTrainedModelExportJob AWS API Documentation
    #
    # @overload start_trained_model_export_job(params = {})
    # @param [Hash] params ({})
    def start_trained_model_export_job(params = {}, options = {})
      req = build_request(:start_trained_model_export_job, params)
      req.send_request(options)
    end

    # Defines the information necessary to begin a trained model inference
    # job.
    #
    # @option params [required, String] :membership_identifier
    #   The membership ID of the membership that contains the trained model
    #   inference job.
    #
    # @option params [required, String] :name
    #   The name of the trained model inference job.
    #
    # @option params [required, String] :trained_model_arn
    #   The Amazon Resource Name (ARN) of the trained model that is used for
    #   this trained model inference job.
    #
    # @option params [String] :trained_model_version_identifier
    #   The version identifier of the trained model to use for inference. This
    #   specifies which version of the trained model should be used to
    #   generate predictions on the input data.
    #
    # @option params [String] :configured_model_algorithm_association_arn
    #   The Amazon Resource Name (ARN) of the configured model algorithm
    #   association that is used for this trained model inference job.
    #
    # @option params [required, Types::InferenceResourceConfig] :resource_config
    #   Defines the resource configuration for the trained model inference
    #   job.
    #
    # @option params [required, Types::InferenceOutputConfiguration] :output_configuration
    #   Defines the output configuration information for the trained model
    #   inference job.
    #
    # @option params [required, Types::ModelInferenceDataSource] :data_source
    #   Defines the data source that is used for the trained model inference
    #   job.
    #
    # @option params [String] :description
    #   The description of the trained model inference job.
    #
    # @option params [Types::InferenceContainerExecutionParameters] :container_execution_parameters
    #   The execution parameters for the container.
    #
    # @option params [Hash<String,String>] :environment
    #   The environment variables to set in the Docker container.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key. This key is used to
    #   encrypt and decrypt customer-owned data in the ML inference job and
    #   associated data.
    #
    # @option params [Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then Clean
    #     Rooms ML considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @return [Types::StartTrainedModelInferenceJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTrainedModelInferenceJobResponse#trained_model_inference_job_arn #trained_model_inference_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_trained_model_inference_job({
    #     membership_identifier: "UUID", # required
    #     name: "NameString", # required
    #     trained_model_arn: "TrainedModelArn", # required
    #     trained_model_version_identifier: "UUID",
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn",
    #     resource_config: { # required
    #       instance_type: "ml.r7i.48xlarge", # required, accepts ml.r7i.48xlarge, ml.r6i.16xlarge, ml.m6i.xlarge, ml.m5.4xlarge, ml.p2.xlarge, ml.m4.16xlarge, ml.r7i.16xlarge, ml.m7i.xlarge, ml.m6i.12xlarge, ml.r7i.8xlarge, ml.r7i.large, ml.m7i.12xlarge, ml.m6i.24xlarge, ml.m7i.24xlarge, ml.r6i.8xlarge, ml.r6i.large, ml.g5.2xlarge, ml.m5.large, ml.p3.16xlarge, ml.m7i.48xlarge, ml.m6i.16xlarge, ml.p2.16xlarge, ml.g5.4xlarge, ml.m7i.16xlarge, ml.c4.2xlarge, ml.c5.2xlarge, ml.c6i.32xlarge, ml.c4.4xlarge, ml.g5.8xlarge, ml.c6i.xlarge, ml.c5.4xlarge, ml.g4dn.xlarge, ml.c7i.xlarge, ml.c6i.12xlarge, ml.g4dn.12xlarge, ml.c7i.12xlarge, ml.c6i.24xlarge, ml.g4dn.2xlarge, ml.c7i.24xlarge, ml.c7i.2xlarge, ml.c4.8xlarge, ml.c6i.2xlarge, ml.g4dn.4xlarge, ml.c7i.48xlarge, ml.c7i.4xlarge, ml.c6i.16xlarge, ml.c5.9xlarge, ml.g4dn.16xlarge, ml.c7i.16xlarge, ml.c6i.4xlarge, ml.c5.xlarge, ml.c4.xlarge, ml.g4dn.8xlarge, ml.c7i.8xlarge, ml.c7i.large, ml.g5.xlarge, ml.c6i.8xlarge, ml.c6i.large, ml.g5.12xlarge, ml.g5.24xlarge, ml.m7i.2xlarge, ml.c5.18xlarge, ml.g5.48xlarge, ml.m6i.2xlarge, ml.g5.16xlarge, ml.m7i.4xlarge, ml.p3.2xlarge, ml.r6i.32xlarge, ml.m6i.4xlarge, ml.m5.xlarge, ml.m4.10xlarge, ml.r6i.xlarge, ml.m5.12xlarge, ml.m4.xlarge, ml.r7i.2xlarge, ml.r7i.xlarge, ml.r6i.12xlarge, ml.m5.24xlarge, ml.r7i.12xlarge, ml.m7i.8xlarge, ml.m7i.large, ml.r6i.24xlarge, ml.r6i.2xlarge, ml.m4.2xlarge, ml.r7i.24xlarge, ml.r7i.4xlarge, ml.m6i.8xlarge, ml.m6i.large, ml.m5.2xlarge, ml.p2.8xlarge, ml.r6i.4xlarge, ml.m6i.32xlarge, ml.p3.8xlarge, ml.m4.4xlarge
    #       instance_count: 1,
    #     },
    #     output_configuration: { # required
    #       accept: "InferenceOutputConfigurationAcceptString",
    #       members: [ # required
    #         {
    #           account_id: "AccountId", # required
    #         },
    #       ],
    #     },
    #     data_source: { # required
    #       ml_input_channel_arn: "MLInputChannelArn", # required
    #     },
    #     description: "ResourceDescription",
    #     container_execution_parameters: {
    #       max_payload_in_mb: 1,
    #     },
    #     environment: {
    #       "InferenceEnvironmentMapKeyString" => "InferenceEnvironmentMapValueString",
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.trained_model_inference_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartTrainedModelInferenceJob AWS API Documentation
    #
    # @overload start_trained_model_inference_job(params = {})
    # @param [Hash] params ({})
    def start_trained_model_inference_job(params = {}, options = {})
      req = build_request(:start_trained_model_inference_job, params)
      req.send_request(options)
    end

    # Adds metadata tags to a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to assign
    #   tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then Clean
    #     Rooms considers it to be a user tag and will count against the limit
    #     of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes metadata tags from a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to remove
    #   tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The key values of tags that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Provides the information necessary to update a configured audience
    # model. Updates that impact audience generation jobs take effect when a
    # new job starts, but do not impact currently running jobs.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you want to update.
    #
    # @option params [Types::ConfiguredAudienceModelOutputConfig] :output_config
    #   The new output configuration.
    #
    # @option params [String] :audience_model_arn
    #   The Amazon Resource Name (ARN) of the new audience model that you want
    #   to use.
    #
    # @option params [Array<String>] :shared_audience_metrics
    #   The new value for whether to share audience metrics.
    #
    # @option params [Integer] :min_matching_seed_size
    #   The minimum number of users from the seed audience that must match
    #   with users in the training data of the audience model.
    #
    # @option params [Types::AudienceSizeConfig] :audience_size_config
    #   The new audience size configuration.
    #
    # @option params [String] :description
    #   The new description of the configured audience model.
    #
    # @return [Types::UpdateConfiguredAudienceModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConfiguredAudienceModelResponse#configured_audience_model_arn #configured_audience_model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configured_audience_model({
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     output_config: {
    #       destination: { # required
    #         s3_destination: { # required
    #           s3_uri: "S3Path", # required
    #         },
    #       },
    #       role_arn: "IamRoleArn", # required
    #     },
    #     audience_model_arn: "AudienceModelArn",
    #     shared_audience_metrics: ["ALL"], # accepts ALL, NONE
    #     min_matching_seed_size: 1,
    #     audience_size_config: {
    #       audience_size_type: "ABSOLUTE", # required, accepts ABSOLUTE, PERCENTAGE
    #       audience_size_bins: [1], # required
    #     },
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_audience_model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/UpdateConfiguredAudienceModel AWS API Documentation
    #
    # @overload update_configured_audience_model(params = {})
    # @param [Hash] params ({})
    def update_configured_audience_model(params = {}, options = {})
      req = build_request(:update_configured_audience_model, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CleanRoomsML')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-cleanroomsml'
      context[:gem_version] = '1.33.0'
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
