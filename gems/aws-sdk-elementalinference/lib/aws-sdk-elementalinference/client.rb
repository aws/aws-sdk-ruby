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

module Aws::ElementalInference
  # An API client for ElementalInference.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ElementalInference::Client.new(
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

    @identifier = :elementalinference

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
    add_plugin(Aws::ElementalInference::Plugins::Endpoints)

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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether
    #     to apply a clock skew correction and retry requests with skewed client
    #     clocks. Takes effect only when `disable_clock_skew_correction` is not set.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_clock_skew_correction
    #     Used only in `standard` and `adaptive` retry modes. When `true`, the
    #     SDK does not apply a clock skew correction, does not update its stored
    #     skew from responses, and does not retry clock skew errors. Clock skew
    #     correction is enabled by default.
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
    #     4 times. Used in `standard` and `adaptive` retry modes. Defaults to 3,
    #     except for DynamoDB and DynamoDB Streams, which default to 4.
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
    #   @option options [String] :retry_mode ("standard")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make. This is the default value
    #       if no retry mode is provided.
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
    #   @option options [Aws::ElementalInference::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ElementalInference::EndpointParameters`.
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

    # Associates a resource with the feed. The resource provides the input
    # that Elemental Inference needs in order to perform an Elemental
    # Inference feature, such as cropping video. You always provide the
    # resource by associating it with a feed. You can associate only one
    # resource with each feed. With an association, a specific source media
    # is claiming ownership of the feed.
    #
    # AssociateFeed is a PATCH operation, which means that you can include
    # only parameters that you want to change. Parameters that you don't
    # include will not be affected by the operation.
    #
    # Specifically:
    #
    # * You can add more outputs to the existing outputs. New outputs will
    #   be appended.
    #
    # * You can't modify an existing output (for example to change its
    #   name). Instead, use UpdateFeed.
    #
    # * You can't delete an existing output. Instead, use UpdateFeed.
    #
    # Also note that you can't change the feed name with AssociateFeed.
    # Instead, use UpdateFeed.
    #
    # @option params [required, String] :id
    #   The ID of the feed.
    #
    # @option params [required, String] :associated_resource_name
    #   An identifier for the resource. This name must not resemble an ARN.
    #
    #   The resource is the source media that the feed will process. The name
    #   you assign should help you to later identify the source media that
    #   belongs to the feed. In this way, you will know which source media to
    #   push to the feed (using PutMedia).
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Array<Types::CreateOutput>] :outputs
    #   An array of one or more outputs that you want to add to this feed now,
    #   to supplement any outputs that you specified when you created or
    #   updated the feed.
    #
    # @option params [Boolean] :dry_run
    #   Set to true if you want to do a dry run of the associate action.
    #
    #   Elemental Inference will validate that the real request would succeed
    #   without actually making any changes. A dry run catches errors such as
    #   missing IAM permissions, quota limits exceeded, conflicting outputs,
    #   and so on. If the dry run fails, the action returns a 4xx error code.
    #   After you've fixed the errors, resubmit the request.
    #
    # @return [Types::AssociateFeedResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateFeedResponse#arn #arn} => String
    #   * {Types::AssociateFeedResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_feed({
    #     id: "FeedId", # required
    #     associated_resource_name: "AssociatedResourceName", # required
    #     outputs: [ # required
    #       {
    #         name: "ResourceName", # required
    #         output_config: { # required
    #           cropping: {
    #             template_groups: [
    #               {
    #                 name: "ResourceName", # required
    #                 template_uris: ["S3Uri"], # required
    #               },
    #             ],
    #           },
    #           clipping: {
    #             callback_metadata: "ResourceDescription",
    #             data_source_configuration: {
    #               fixture_id: "FixtureId", # required
    #             },
    #           },
    #           subtitling: {
    #             language: "eng", # required, accepts eng, eng-au, eng-gb, eng-us, fra, ita, deu, spa, por, ara
    #             aspect_ratio: {
    #               width: 1, # required
    #               height: 1, # required
    #             },
    #             dictionary: "DictionaryId",
    #             profanity_filter: "DISABLED", # accepts DISABLED, CENSOR, DROP
    #           },
    #           contextual_metadata: {
    #             summary_generation: "ENABLED", # accepts ENABLED, DISABLED
    #             extended_analysis: "ENABLED", # accepts ENABLED, DISABLED
    #             custom_questions: {
    #               shot: {
    #                 question_set_id: "QuestionSetId", # required
    #                 version: "QuestionSetVersion", # required
    #               },
    #               scene: {
    #                 question_set_id: "QuestionSetId", # required
    #                 version: "QuestionSetVersion", # required
    #               },
    #             },
    #           },
    #           function: {
    #             function_arn: "FunctionArn", # required
    #             trigger: { # required
    #               fixed_interval: {
    #                 interval_seconds: 1, # required
    #               },
    #               per_shot: {
    #               },
    #               per_scene: {
    #               },
    #               per_clip: {
    #               },
    #             },
    #             frame_settings: {
    #               frame_sampling: { # required
    #                 mode: "FIRST", # required, accepts FIRST, UNIFORM, LAST
    #                 count: 1,
    #               },
    #               frame_size: {
    #                 width_pixels: 1, # required
    #                 height_pixels: 1, # required
    #               },
    #             },
    #             subtitling_settings: {
    #               output_name: "ResourceName", # required
    #             },
    #             contextual_metadata_settings: {
    #               output_name: "ResourceName", # required
    #             },
    #             clipping_settings: {
    #               output_name: "ResourceName", # required
    #             },
    #           },
    #         },
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         description: "ResourceDescription",
    #       },
    #     ],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/AssociateFeed AWS API Documentation
    #
    # @overload associate_feed(params = {})
    # @param [Hash] params ({})
    def associate_feed(params = {}, options = {})
      req = build_request(:associate_feed, params)
      req.send_request(options)
    end

    # Creates a custom dictionary for improving transcription accuracy. A
    # dictionary contains custom words and phrases that the ASR engine might
    # not recognize, such as brand names, technical terms, or proper nouns.
    # You can reference a dictionary when configuring a smart subtitles
    # output.
    #
    # @option params [required, String] :name
    #   A user-friendly name for this dictionary.
    #
    # @option params [required, String] :language
    #   The language of the dictionary entries. Specify the language using an
    #   ISO 639-2/T three-letter code. Supported values:
    #
    #   * eng – English
    #
    #   * fra – French
    #
    #   * ita – Italian
    #
    #   * deu – German
    #
    #   * spa – Spanish
    #
    #   * por – Portuguese
    #
    #   * ara – Arabic
    #
    # @option params [String] :entries
    #   The dictionary entries payload. Contains the custom words and phrases
    #   for the dictionary. Maximum size is 40,960 characters.
    #
    # @option params [Hash<String,String>] :tags
    #   Optional tags to associate with the dictionary.
    #
    # @return [Types::CreateDictionaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDictionaryResponse#name #name} => String
    #   * {Types::CreateDictionaryResponse#arn #arn} => String
    #   * {Types::CreateDictionaryResponse#id #id} => String
    #   * {Types::CreateDictionaryResponse#language #language} => String
    #   * {Types::CreateDictionaryResponse#status #status} => String
    #   * {Types::CreateDictionaryResponse#references #references} => Array&lt;String&gt;
    #   * {Types::CreateDictionaryResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dictionary({
    #     name: "ResourceName", # required
    #     language: "eng", # required, accepts eng, fra, ita, deu, spa, por, ara
    #     entries: "DictionaryEntriesPayload",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.language #=> String, one of "eng", "fra", "ita", "deu", "spa", "por", "ara"
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"
    #   resp.references #=> Array
    #   resp.references[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateDictionary AWS API Documentation
    #
    # @overload create_dictionary(params = {})
    # @param [Hash] params ({})
    def create_dictionary(params = {}, options = {})
      req = build_request(:create_dictionary, params)
      req.send_request(options)
    end

    # Creates a feed. The feed is the target for the live media stream that
    # is being sent by the calling application. An example of a calling
    # application is AWS Elemental MediaLive.
    #
    # The key contents of the feed is an array of outputs. Each output
    # represents an Elemental Inference feature. After you create the feed,
    # you must associate a resource with the feed. At that point, you will
    # have a useable feed: resource - feed - output or outputs.
    #
    # @option params [required, String] :name
    #   A user-friendly name for this feed.
    #
    # @option params [String] :access_role_arn
    #   The ARN of an IAM role that Elemental Inference assumes to access
    #   resources in your account on your behalf. For example, the smart crop
    #   feature uses this role to read graphics-compositing templates from
    #   your Amazon S3 bucket. You specify one access role for each feed.
    #
    # @option params [required, Array<Types::CreateOutput>] :outputs
    #   An array of outputs for this feed. Each output represents a specific
    #   Elemental Inference feature. For example, there is one output type for
    #   the smart crop feature. You must specify at least one output, but you
    #   can later add outputs using AssociateFeed, or add, modify, and delete
    #   outputs using UpdateFeed.
    #
    # @option params [Hash<String,String>] :tags
    #   Optional tags. You can also add tags later, using TagResource.
    #
    # @return [Types::CreateFeedResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFeedResponse#arn #arn} => String
    #   * {Types::CreateFeedResponse#name #name} => String
    #   * {Types::CreateFeedResponse#id #id} => String
    #   * {Types::CreateFeedResponse#data_endpoints #data_endpoints} => Array&lt;String&gt;
    #   * {Types::CreateFeedResponse#outputs #outputs} => Array&lt;Types::GetOutput&gt;
    #   * {Types::CreateFeedResponse#access_role_arn #access_role_arn} => String
    #   * {Types::CreateFeedResponse#status #status} => String
    #   * {Types::CreateFeedResponse#association #association} => Types::FeedAssociation
    #   * {Types::CreateFeedResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_feed({
    #     name: "ResourceName", # required
    #     access_role_arn: "IamRoleArn",
    #     outputs: [ # required
    #       {
    #         name: "ResourceName", # required
    #         output_config: { # required
    #           cropping: {
    #             template_groups: [
    #               {
    #                 name: "ResourceName", # required
    #                 template_uris: ["S3Uri"], # required
    #               },
    #             ],
    #           },
    #           clipping: {
    #             callback_metadata: "ResourceDescription",
    #             data_source_configuration: {
    #               fixture_id: "FixtureId", # required
    #             },
    #           },
    #           subtitling: {
    #             language: "eng", # required, accepts eng, eng-au, eng-gb, eng-us, fra, ita, deu, spa, por, ara
    #             aspect_ratio: {
    #               width: 1, # required
    #               height: 1, # required
    #             },
    #             dictionary: "DictionaryId",
    #             profanity_filter: "DISABLED", # accepts DISABLED, CENSOR, DROP
    #           },
    #           contextual_metadata: {
    #             summary_generation: "ENABLED", # accepts ENABLED, DISABLED
    #             extended_analysis: "ENABLED", # accepts ENABLED, DISABLED
    #             custom_questions: {
    #               shot: {
    #                 question_set_id: "QuestionSetId", # required
    #                 version: "QuestionSetVersion", # required
    #               },
    #               scene: {
    #                 question_set_id: "QuestionSetId", # required
    #                 version: "QuestionSetVersion", # required
    #               },
    #             },
    #           },
    #           function: {
    #             function_arn: "FunctionArn", # required
    #             trigger: { # required
    #               fixed_interval: {
    #                 interval_seconds: 1, # required
    #               },
    #               per_shot: {
    #               },
    #               per_scene: {
    #               },
    #               per_clip: {
    #               },
    #             },
    #             frame_settings: {
    #               frame_sampling: { # required
    #                 mode: "FIRST", # required, accepts FIRST, UNIFORM, LAST
    #                 count: 1,
    #               },
    #               frame_size: {
    #                 width_pixels: 1, # required
    #                 height_pixels: 1, # required
    #               },
    #             },
    #             subtitling_settings: {
    #               output_name: "ResourceName", # required
    #             },
    #             contextual_metadata_settings: {
    #               output_name: "ResourceName", # required
    #             },
    #             clipping_settings: {
    #               output_name: "ResourceName", # required
    #             },
    #           },
    #         },
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         description: "ResourceDescription",
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.data_endpoints #=> Array
    #   resp.data_endpoints[0] #=> String
    #   resp.outputs #=> Array
    #   resp.outputs[0].name #=> String
    #   resp.outputs[0].output_config.cropping.template_groups #=> Array
    #   resp.outputs[0].output_config.cropping.template_groups[0].name #=> String
    #   resp.outputs[0].output_config.cropping.template_groups[0].template_uris #=> Array
    #   resp.outputs[0].output_config.cropping.template_groups[0].template_uris[0] #=> String
    #   resp.outputs[0].output_config.clipping.callback_metadata #=> String
    #   resp.outputs[0].output_config.clipping.data_source_configuration.fixture_id #=> String
    #   resp.outputs[0].output_config.subtitling.language #=> String, one of "eng", "eng-au", "eng-gb", "eng-us", "fra", "ita", "deu", "spa", "por", "ara"
    #   resp.outputs[0].output_config.subtitling.aspect_ratio.width #=> Integer
    #   resp.outputs[0].output_config.subtitling.aspect_ratio.height #=> Integer
    #   resp.outputs[0].output_config.subtitling.dictionary #=> String
    #   resp.outputs[0].output_config.subtitling.profanity_filter #=> String, one of "DISABLED", "CENSOR", "DROP"
    #   resp.outputs[0].output_config.contextual_metadata.summary_generation #=> String, one of "ENABLED", "DISABLED"
    #   resp.outputs[0].output_config.contextual_metadata.extended_analysis #=> String, one of "ENABLED", "DISABLED"
    #   resp.outputs[0].output_config.contextual_metadata.custom_questions.shot.question_set_id #=> String
    #   resp.outputs[0].output_config.contextual_metadata.custom_questions.shot.version #=> String
    #   resp.outputs[0].output_config.contextual_metadata.custom_questions.scene.question_set_id #=> String
    #   resp.outputs[0].output_config.contextual_metadata.custom_questions.scene.version #=> String
    #   resp.outputs[0].output_config.function.function_arn #=> String
    #   resp.outputs[0].output_config.function.trigger.fixed_interval.interval_seconds #=> Integer
    #   resp.outputs[0].output_config.function.frame_settings.frame_sampling.mode #=> String, one of "FIRST", "UNIFORM", "LAST"
    #   resp.outputs[0].output_config.function.frame_settings.frame_sampling.count #=> Integer
    #   resp.outputs[0].output_config.function.frame_settings.frame_size.width_pixels #=> Integer
    #   resp.outputs[0].output_config.function.frame_settings.frame_size.height_pixels #=> Integer
    #   resp.outputs[0].output_config.function.subtitling_settings.output_name #=> String
    #   resp.outputs[0].output_config.function.contextual_metadata_settings.output_name #=> String
    #   resp.outputs[0].output_config.function.clipping_settings.output_name #=> String
    #   resp.outputs[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.outputs[0].description #=> String
    #   resp.outputs[0].from_association #=> Boolean
    #   resp.access_role_arn #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "ACTIVE", "UPDATING", "DELETING", "DELETED", "ARCHIVED"
    #   resp.association.associated_resource_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateFeed AWS API Documentation
    #
    # @overload create_feed(params = {})
    # @param [Hash] params ({})
    def create_feed(params = {}, options = {})
      req = build_request(:create_feed, params)
      req.send_request(options)
    end

    # Creates a function. A function analyzes a feed by building a request
    # from the feed's media and metadata, optionally sending that request
    # to an Amazon Bedrock model in your account, and publishing the result
    # to the feed's metadata timeline.
    #
    # A function runs only after you attach it to a feed as a function
    # output. For more information, see [Using functions][1] in the *AWS
    # Elemental Inference User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elemental-inference/latest/userguide/functions.html
    #
    # @option params [required, String] :name
    #   A name for this function.
    #
    # @option params [required, Types::FunctionTarget] :target
    #   The destination for the request that the function builds.
    #
    # @option params [required, String] :request_expression
    #   The JSONata expression that builds the request. Elemental Inference
    #   evaluates it against the media object of the feed, which holds the
    #   media and metadata that the function asked for. Maximum length: 5,120
    #   characters.
    #
    #   When you save the function, Elemental Inference evaluates the
    #   expression against sample media and rejects it if the evaluation
    #   fails. For a Bedrock target, the result must be a JSON object;
    #   Elemental Inference doesn't check that the object is a valid request
    #   body for the model. The expression can reference at most one of
    #   media.transcript, media.contextual, and media.clip. For a passthrough
    #   target, it can't reference media.frames.
    #
    # @option params [String] :response_expression
    #   The JSONata expression that selects what to store. Elemental Inference
    #   evaluates it against the result as its root: the model response for a
    #   Bedrock target, or the output of the request expression for a
    #   passthrough target. If a function has no response expression,
    #   Elemental Inference stores the entire result. Maximum length: 5,120
    #   characters.
    #
    #   When you save the function, Elemental Inference checks that the
    #   expression is valid JSONata. For a passthrough target, it also
    #   evaluates the request and response expressions together against sample
    #   media, and rejects them if they produce no value.
    #
    # @option params [String] :description
    #   The description of the function. Maximum length: 1,024 characters.
    #
    # @option params [String] :event_bridge_delivery
    #   Specifies whether Elemental Inference also sends this function's
    #   results to Amazon EventBridge. Elemental Inference sends a result only
    #   when the result is a JSON object with a top-level `eventBridge` field
    #   set to `true`. It sends the result, unchanged, as a Function Metadata
    #   Generated event to the default event bus in your account, after the
    #   result is available from GetMetadata. If the result is larger than 64
    #   KB, the event has `resultOmitted` set to `true` in place of the
    #   result.
    #
    #   Valid values:
    #
    #   * ENABLED – Elemental Inference sends each marked result as an event.
    #
    #   * DISABLED (default) – Elemental Inference doesn't send events.
    #
    #   For a Bedrock target, ENABLED requires a response expression, because
    #   the model response itself never has a top-level `eventBridge` field. A
    #   feed output that runs a function with ENABLED can't use a
    #   fixedInterval trigger shorter than 4 seconds.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to associate with this function.
    #
    # @return [Types::CreateFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFunctionResponse#name #name} => String
    #   * {Types::CreateFunctionResponse#target #target} => Types::FunctionTarget
    #   * {Types::CreateFunctionResponse#request_expression #request_expression} => String
    #   * {Types::CreateFunctionResponse#response_expression #response_expression} => String
    #   * {Types::CreateFunctionResponse#description #description} => String
    #   * {Types::CreateFunctionResponse#event_bridge_delivery #event_bridge_delivery} => String
    #   * {Types::CreateFunctionResponse#arn #arn} => String
    #   * {Types::CreateFunctionResponse#id #id} => String
    #   * {Types::CreateFunctionResponse#status #status} => String
    #   * {Types::CreateFunctionResponse#references #references} => Array&lt;String&gt;
    #   * {Types::CreateFunctionResponse#context_types #context_types} => Array&lt;String&gt;
    #   * {Types::CreateFunctionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function({
    #     name: "ResourceName", # required
    #     target: { # required
    #       bedrock: {
    #         api: "INVOKE_MODEL", # required, accepts INVOKE_MODEL
    #         model: "BedrockFunctionTargetModelString", # required
    #       },
    #       passthrough: {
    #       },
    #     },
    #     request_expression: "CreateFunctionRequestRequestExpressionString", # required
    #     response_expression: "JsonataExpression",
    #     description: "FunctionDescription",
    #     event_bridge_delivery: "ENABLED", # accepts ENABLED, DISABLED
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.target.bedrock.api #=> String, one of "INVOKE_MODEL"
    #   resp.target.bedrock.model #=> String
    #   resp.request_expression #=> String
    #   resp.response_expression #=> String
    #   resp.description #=> String
    #   resp.event_bridge_delivery #=> String, one of "ENABLED", "DISABLED"
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"
    #   resp.references #=> Array
    #   resp.references[0] #=> String
    #   resp.context_types #=> Array
    #   resp.context_types[0] #=> String, one of "FRAMES", "SUBTITLES", "CONTEXTUAL_METADATA", "CLIP_METADATA"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateFunction AWS API Documentation
    #
    # @overload create_function(params = {})
    # @param [Hash] params ({})
    def create_function(params = {}, options = {})
      req = build_request(:create_function, params)
      req.send_request(options)
    end

    # Creates a question set. Use a question set to get answers about
    # content that's specific to your business, in addition to the built-in
    # contextual metadata classifications. A question set contains your own
    # questions. You ask Elemental Inference these questions about each shot
    # or scene of the media in a contextual metadata output, and Elemental
    # Inference answers each question with scores. To use a question set,
    # reference it in the customQuestions property of the contextual
    # metadata configuration of a feed output.
    #
    # CreateQuestionSet creates the question set with a DRAFT version that
    # contains the questions in the request. To change DRAFT, use
    # UpdateQuestionSet. To publish DRAFT as a numbered version, use
    # CreateQuestionSetVersion. You can't change a published version.
    #
    # A question set can contain the following types of questions. You must
    # specify at least one question.
    #
    # * yesNo – Elemental Inference answers yes or no.
    #
    # * yesNoPerOption – Elemental Inference answers yes or no for each
    #   option.
    #
    # * chooseOne – Elemental Inference chooses one of the options.
    #
    # A version can contain up to 100 scored items, where each yesNo
    # question, each option of a yesNoPerOption question, and each chooseOne
    # question counts as one item. The name of each question must be unique
    # across all three types.
    #
    # @option params [Array<Types::YesNoQuestion>] :yes_no
    #   An array of questions that Elemental Inference answers with yes or no.
    #   You can specify up to 50 yesNo questions. An empty array is the same
    #   as omitting this property.
    #
    # @option params [Array<Types::YesNoPerOptionQuestion>] :yes_no_per_option
    #   An array of questions that you ask about each of their options.
    #   Elemental Inference answers yes or no for each option. You can specify
    #   up to 10 yesNoPerOption questions. An empty array is the same as
    #   omitting this property.
    #
    # @option params [Array<Types::ChooseOneQuestion>] :choose_one
    #   An array of questions that Elemental Inference answers by choosing one
    #   of their options. You can specify up to 10 chooseOne questions. An
    #   empty array is the same as omitting this property.
    #
    # @option params [required, String] :name
    #   A user-friendly name for this question set.
    #
    # @option params [Hash<String,String>] :tags
    #   Optional tags to associate with the question set. You can also add
    #   tags later, using TagResource.
    #
    # @return [Types::CreateQuestionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQuestionSetResponse#yes_no #yes_no} => Array&lt;Types::YesNoQuestion&gt;
    #   * {Types::CreateQuestionSetResponse#yes_no_per_option #yes_no_per_option} => Array&lt;Types::YesNoPerOptionQuestion&gt;
    #   * {Types::CreateQuestionSetResponse#choose_one #choose_one} => Array&lt;Types::ChooseOneQuestion&gt;
    #   * {Types::CreateQuestionSetResponse#arn #arn} => String
    #   * {Types::CreateQuestionSetResponse#id #id} => String
    #   * {Types::CreateQuestionSetResponse#name #name} => String
    #   * {Types::CreateQuestionSetResponse#version #version} => String
    #   * {Types::CreateQuestionSetResponse#description #description} => String
    #   * {Types::CreateQuestionSetResponse#latest_version #latest_version} => String
    #   * {Types::CreateQuestionSetResponse#sha256 #sha256} => String
    #   * {Types::CreateQuestionSetResponse#references #references} => Array&lt;String&gt;
    #   * {Types::CreateQuestionSetResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_question_set({
    #     yes_no: [
    #       {
    #         name: "QuestionName", # required
    #         question: "QuestionText", # required
    #       },
    #     ],
    #     yes_no_per_option: [
    #       {
    #         name: "QuestionName", # required
    #         question: "QuestionText", # required
    #         options: [ # required
    #           {
    #             name: "OptionName", # required
    #             text: "OptionText", # required
    #           },
    #         ],
    #       },
    #     ],
    #     choose_one: [
    #       {
    #         name: "QuestionName", # required
    #         question: "QuestionText", # required
    #         options: [ # required
    #           {
    #             name: "OptionName", # required
    #             text: "OptionText", # required
    #           },
    #         ],
    #       },
    #     ],
    #     name: "ResourceName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.yes_no #=> Array
    #   resp.yes_no[0].name #=> String
    #   resp.yes_no[0].question #=> String
    #   resp.yes_no_per_option #=> Array
    #   resp.yes_no_per_option[0].name #=> String
    #   resp.yes_no_per_option[0].question #=> String
    #   resp.yes_no_per_option[0].options #=> Array
    #   resp.yes_no_per_option[0].options[0].name #=> String
    #   resp.yes_no_per_option[0].options[0].text #=> String
    #   resp.choose_one #=> Array
    #   resp.choose_one[0].name #=> String
    #   resp.choose_one[0].question #=> String
    #   resp.choose_one[0].options #=> Array
    #   resp.choose_one[0].options[0].name #=> String
    #   resp.choose_one[0].options[0].text #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.version #=> String
    #   resp.description #=> String
    #   resp.latest_version #=> String
    #   resp.sha256 #=> String
    #   resp.references #=> Array
    #   resp.references[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateQuestionSet AWS API Documentation
    #
    # @overload create_question_set(params = {})
    # @param [Hash] params ({})
    def create_question_set(params = {}, options = {})
      req = build_request(:create_question_set, params)
      req.send_request(options)
    end

    # Publishes the DRAFT version of the specified question set as a new
    # version. The new version has the same name and questions as DRAFT, and
    # you can't change it. DRAFT doesn't change, so you can continue to
    # update it.
    #
    # Version numbers start at 1, and each new version has the next number.
    # Elemental Inference never reuses a version number, even after you
    # delete that version.
    #
    # If DRAFT hasn't changed since the latest published version, Elemental
    # Inference doesn't create a version. Instead, it returns the latest
    # version. A change to the name of the question set counts as a change
    # to DRAFT.
    #
    # A question set can have a limited number of versions. If the question
    # set already has the maximum number of versions, Elemental Inference
    # returns ServiceQuotaExceededException. To free space for a new
    # version, delete a version that you no longer need, or create a new
    # question set.
    #
    # @option params [required, String] :id
    #   The ID of the question set whose DRAFT version you want to publish.
    #
    # @option params [String] :sha256
    #   The SHA-256 hash of the DRAFT version that you want to publish, as
    #   returned by GetQuestionSet or UpdateQuestionSet. If you specify this
    #   value, Elemental Inference publishes DRAFT only if its current hash
    #   matches. If it doesn't match, because DRAFT changed after you
    #   retrieved it, the request fails with ConflictException.
    #
    #   If you don't specify this value, Elemental Inference publishes DRAFT
    #   as it is when it receives the request.
    #
    # @option params [String] :description
    #   A description of the new version. You can't change the description
    #   after Elemental Inference publishes the version. If DRAFT hasn't
    #   changed since the latest version, Elemental Inference ignores this
    #   value and returns the latest version with its existing description.
    #
    #   The description can be up to 256 characters. It can contain the
    #   letters A-Z and a-z, the digits 0-9, underscores, spaces, and the
    #   following characters: `- . ' , @ : ;`.
    #
    # @return [Types::CreateQuestionSetVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQuestionSetVersionResponse#yes_no #yes_no} => Array&lt;Types::YesNoQuestion&gt;
    #   * {Types::CreateQuestionSetVersionResponse#yes_no_per_option #yes_no_per_option} => Array&lt;Types::YesNoPerOptionQuestion&gt;
    #   * {Types::CreateQuestionSetVersionResponse#choose_one #choose_one} => Array&lt;Types::ChooseOneQuestion&gt;
    #   * {Types::CreateQuestionSetVersionResponse#arn #arn} => String
    #   * {Types::CreateQuestionSetVersionResponse#id #id} => String
    #   * {Types::CreateQuestionSetVersionResponse#name #name} => String
    #   * {Types::CreateQuestionSetVersionResponse#version #version} => String
    #   * {Types::CreateQuestionSetVersionResponse#description #description} => String
    #   * {Types::CreateQuestionSetVersionResponse#latest_version #latest_version} => String
    #   * {Types::CreateQuestionSetVersionResponse#sha256 #sha256} => String
    #   * {Types::CreateQuestionSetVersionResponse#references #references} => Array&lt;String&gt;
    #   * {Types::CreateQuestionSetVersionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_question_set_version({
    #     id: "QuestionSetId", # required
    #     sha256: "QuestionSetSha256",
    #     description: "QuestionSetVersionDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.yes_no #=> Array
    #   resp.yes_no[0].name #=> String
    #   resp.yes_no[0].question #=> String
    #   resp.yes_no_per_option #=> Array
    #   resp.yes_no_per_option[0].name #=> String
    #   resp.yes_no_per_option[0].question #=> String
    #   resp.yes_no_per_option[0].options #=> Array
    #   resp.yes_no_per_option[0].options[0].name #=> String
    #   resp.yes_no_per_option[0].options[0].text #=> String
    #   resp.choose_one #=> Array
    #   resp.choose_one[0].name #=> String
    #   resp.choose_one[0].question #=> String
    #   resp.choose_one[0].options #=> Array
    #   resp.choose_one[0].options[0].name #=> String
    #   resp.choose_one[0].options[0].text #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.version #=> String
    #   resp.description #=> String
    #   resp.latest_version #=> String
    #   resp.sha256 #=> String
    #   resp.references #=> Array
    #   resp.references[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateQuestionSetVersion AWS API Documentation
    #
    # @overload create_question_set_version(params = {})
    # @param [Hash] params ({})
    def create_question_set_version(params = {}, options = {})
      req = build_request(:create_question_set_version, params)
      req.send_request(options)
    end

    # Creates a schedule action on a feed. A schedule action applies
    # configuration changes to the feed at a time that you specify, in the
    # same way as an UpdateFeed request.
    #
    # Elemental Inference validates the targets of the action when you
    # create it.
    #
    # @option params [required, String] :id
    #   Specifies the ID of the feed that you want to add the schedule action
    #   to.
    #
    # @option params [required, String] :action_name
    #   A name for the schedule action. The name must be unique within the
    #   feed. You can reuse the name of an action that you deleted.
    #
    # @option params [required, Types::ScheduleActionStartConfiguration] :start_configuration
    #   Specifies when the action runs.
    #
    # @option params [required, Array<Types::ScheduleActionOperation>] :operations
    #   Specifies the list of configuration changes that you want to make to
    #   the feed. Elemental Inference applies all the operations in an action
    #   together, in the order that you specify them. If any operation fails,
    #   Elemental Inference doesn't apply any of them.
    #
    # @return [Types::CreateScheduleActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScheduleActionResponse#action_name #action_name} => String
    #   * {Types::CreateScheduleActionResponse#start_configuration #start_configuration} => Types::ScheduleActionStartConfiguration
    #   * {Types::CreateScheduleActionResponse#operations #operations} => Array&lt;Types::ScheduleActionOperation&gt;
    #   * {Types::CreateScheduleActionResponse#status #status} => String
    #   * {Types::CreateScheduleActionResponse#error #error} => Types::ScheduleActionError
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schedule_action({
    #     id: "FeedId", # required
    #     action_name: "ResourceName", # required
    #     start_configuration: { # required
    #       fixed_mode_schedule_action_start_settings: {
    #         scheduled_at: Time.now, # required
    #       },
    #     },
    #     operations: [ # required
    #       {
    #         update_output_status: {
    #           output_name: "ResourceName", # required
    #           status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         },
    #         update_clipping_data_source_configuration: {
    #           output_name: "ResourceName", # required
    #           data_source_configuration: { # required
    #             fixture_id: "FixtureId", # required
    #           },
    #         },
    #         remove_clipping_data_source_configuration: {
    #           output_name: "ResourceName", # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.action_name #=> String
    #   resp.start_configuration.fixed_mode_schedule_action_start_settings.scheduled_at #=> Time
    #   resp.operations #=> Array
    #   resp.operations[0].update_output_status.output_name #=> String
    #   resp.operations[0].update_output_status.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.operations[0].update_clipping_data_source_configuration.output_name #=> String
    #   resp.operations[0].update_clipping_data_source_configuration.data_source_configuration.fixture_id #=> String
    #   resp.operations[0].remove_clipping_data_source_configuration.output_name #=> String
    #   resp.status #=> String, one of "PENDING", "COMPLETED", "FAILED"
    #   resp.error.error_code #=> String, one of "INVALID_ACTION_TARGET", "INTERNAL_ERROR"
    #   resp.error.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateScheduleAction AWS API Documentation
    #
    # @overload create_schedule_action(params = {})
    # @param [Hash] params ({})
    def create_schedule_action(params = {}, options = {})
      req = build_request(:create_schedule_action, params)
      req.send_request(options)
    end

    # Deletes the specified dictionary. You cannot delete a dictionary that
    # is referenced by a feed. You must first remove the dictionary
    # reference from the feed's subtitling configuration.
    #
    # @option params [required, String] :id
    #   The ID of the dictionary to delete.
    #
    # @return [Types::DeleteDictionaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDictionaryResponse#arn #arn} => String
    #   * {Types::DeleteDictionaryResponse#id #id} => String
    #   * {Types::DeleteDictionaryResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dictionary({
    #     id: "DictionaryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteDictionary AWS API Documentation
    #
    # @overload delete_dictionary(params = {})
    # @param [Hash] params ({})
    def delete_dictionary(params = {}, options = {})
      req = build_request(:delete_dictionary, params)
      req.send_request(options)
    end

    # Deletes the specified feed. You can delete the feed at any time.
    # Elemental Inference doesn't block you from deleting a feed when the
    # calling application is calling PutMedia or GetMetadata on that feed,
    # although both these calls will start to fail. For more information
    # about managing inactive feeds, see the Elemental Inference User Guide.
    #
    # @option params [required, String] :id
    #   The ID of the feed.
    #
    # @return [Types::DeleteFeedResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFeedResponse#arn #arn} => String
    #   * {Types::DeleteFeedResponse#id #id} => String
    #   * {Types::DeleteFeedResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_feed({
    #     id: "FeedId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "ACTIVE", "UPDATING", "DELETING", "DELETED", "ARCHIVED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteFeed AWS API Documentation
    #
    # @overload delete_feed(params = {})
    # @param [Hash] params ({})
    def delete_feed(params = {}, options = {})
      req = build_request(:delete_feed, params)
      req.send_request(options)
    end

    # Deletes the resource-based policy attached to the specified feed.
    # After you delete the policy, the operation revokes the cross-account
    # access that the policy granted.
    #
    # @option params [required, String] :id
    #   The ID of the feed whose policy you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_feed_policy({
    #     id: "FeedId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteFeedPolicy AWS API Documentation
    #
    # @overload delete_feed_policy(params = {})
    # @param [Hash] params ({})
    def delete_feed_policy(params = {}, options = {})
      req = build_request(:delete_feed_policy, params)
      req.send_request(options)
    end

    # Deletes a function. If any feed still references the function, the
    # operation returns a ConflictException. A disabled function output
    # still references the function. Use GetFunction to find those feeds,
    # then remove the function output from each one with UpdateFeed, or
    # delete the feed, before retrying.
    #
    # Deleting a function doesn't delete the metadata that it has already
    # produced.
    #
    # @option params [required, String] :id
    #   The ID of the function.
    #
    # @return [Types::DeleteFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFunctionResponse#arn #arn} => String
    #   * {Types::DeleteFunctionResponse#id #id} => String
    #   * {Types::DeleteFunctionResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function({
    #     id: "FunctionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteFunction AWS API Documentation
    #
    # @overload delete_function(params = {})
    # @param [Hash] params ({})
    def delete_function(params = {}, options = {})
      req = build_request(:delete_function, params)
      req.send_request(options)
    end

    # Deletes the specified question set, including its DRAFT version and
    # all its published versions. You can't delete a question set while any
    # feed references any of its versions, including an archived feed. You
    # must first remove the question set from the customQuestions
    # configuration of each feed output that references it, or delete those
    # feeds.
    #
    # @option params [required, String] :id
    #   The ID of the question set to delete.
    #
    # @return [Types::DeleteQuestionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteQuestionSetResponse#arn #arn} => String
    #   * {Types::DeleteQuestionSetResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_question_set({
    #     id: "QuestionSetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteQuestionSet AWS API Documentation
    #
    # @overload delete_question_set(params = {})
    # @param [Hash] params ({})
    def delete_question_set(params = {}, options = {})
      req = build_request(:delete_question_set, params)
      req.send_request(options)
    end

    # Deletes a published version of the specified question set. You can't
    # delete a version while a feed references it, including an archived
    # feed. You can't restore a deleted version, and Elemental Inference
    # doesn't reuse its number.
    #
    # You can't delete the DRAFT version on its own. To delete DRAFT,
    # delete the question set by using DeleteQuestionSet.
    #
    # Deleting a version doesn't change the latestVersion of the question
    # set, even if you delete the highest version.
    #
    # @option params [required, String] :id
    #   The ID of the question set that contains the version.
    #
    # @option params [required, String] :question_set_version
    #   The number of the published version to delete. You can't specify
    #   DRAFT.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_question_set_version({
    #     id: "QuestionSetId", # required
    #     question_set_version: "PublishedQuestionSetVersion", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteQuestionSetVersion AWS API Documentation
    #
    # @overload delete_question_set_version(params = {})
    # @param [Hash] params ({})
    def delete_question_set_version(params = {}, options = {})
      req = build_request(:delete_question_set_version, params)
      req.send_request(options)
    end

    # Deletes a schedule action from a feed. A deleted action never runs.
    #
    # You can delete only an action whose status is PENDING. Deleting an
    # action doesn't reverse changes that the action already made to the
    # feed. When you delete or archive a feed, Elemental Inference deletes
    # all the schedule actions on that feed.
    #
    # @option params [required, String] :id
    #   The ID of the feed that holds the schedule action.
    #
    # @option params [required, String] :action_name
    #   The name of the schedule action that you want to delete.
    #
    # @return [Types::DeleteScheduleActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteScheduleActionResponse#action_name #action_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schedule_action({
    #     id: "FeedId", # required
    #     action_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteScheduleAction AWS API Documentation
    #
    # @overload delete_schedule_action(params = {})
    # @param [Hash] params ({})
    def delete_schedule_action(params = {}, options = {})
      req = build_request(:delete_schedule_action, params)
      req.send_request(options)
    end

    # Releases the resource (the source media) that is associated with this
    # feed. The outputs in the feed become DISABLED.
    #
    # @option params [required, String] :id
    #   The ID of the feed where you want to release the resource.
    #
    # @option params [required, String] :associated_resource_name
    #   The name of the resource currently associated with the feed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :dry_run
    #   Set to true if you want to do a dry run of the disassociate action.
    #
    #   Elemental Inference will validate that the real request would succeed
    #   without actually making any changes. A dry run catches errors such as
    #   missing IAM permissions. If the dry run fails, the action returns a
    #   4xx error code.
    #
    # @return [Types::DisassociateFeedResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateFeedResponse#arn #arn} => String
    #   * {Types::DisassociateFeedResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_feed({
    #     id: "FeedId", # required
    #     associated_resource_name: "AssociatedResourceName", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DisassociateFeed AWS API Documentation
    #
    # @overload disassociate_feed(params = {})
    # @param [Hash] params ({})
    def disassociate_feed(params = {}, options = {})
      req = build_request(:disassociate_feed, params)
      req.send_request(options)
    end

    # Exports the entries from the specified dictionary.
    #
    # @option params [required, String] :id
    #   The ID of the dictionary whose entries you want to export.
    #
    # @return [Types::ExportDictionaryEntriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportDictionaryEntriesResponse#entries #data.entries} => String (This method conflicts with a method on Response, call it through the data member)
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_dictionary_entries({
    #     id: "DictionaryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data.entries #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ExportDictionaryEntries AWS API Documentation
    #
    # @overload export_dictionary_entries(params = {})
    # @param [Hash] params ({})
    def export_dictionary_entries(params = {}, options = {})
      req = build_request(:export_dictionary_entries, params)
      req.send_request(options)
    end

    # Retrieves information about the specified dictionary.
    #
    # @option params [required, String] :id
    #   The ID of the dictionary to retrieve.
    #
    # @return [Types::GetDictionaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDictionaryResponse#name #name} => String
    #   * {Types::GetDictionaryResponse#arn #arn} => String
    #   * {Types::GetDictionaryResponse#id #id} => String
    #   * {Types::GetDictionaryResponse#language #language} => String
    #   * {Types::GetDictionaryResponse#status #status} => String
    #   * {Types::GetDictionaryResponse#references #references} => Array&lt;String&gt;
    #   * {Types::GetDictionaryResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dictionary({
    #     id: "DictionaryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.language #=> String, one of "eng", "fra", "ita", "deu", "spa", "por", "ara"
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"
    #   resp.references #=> Array
    #   resp.references[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetDictionary AWS API Documentation
    #
    # @overload get_dictionary(params = {})
    # @param [Hash] params ({})
    def get_dictionary(params = {}, options = {})
      req = build_request(:get_dictionary, params)
      req.send_request(options)
    end

    # Retrieves information about the specified feed.
    #
    # @option params [required, String] :id
    #   The ID of the feed to query.
    #
    # @return [Types::GetFeedResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFeedResponse#arn #arn} => String
    #   * {Types::GetFeedResponse#name #name} => String
    #   * {Types::GetFeedResponse#id #id} => String
    #   * {Types::GetFeedResponse#data_endpoints #data_endpoints} => Array&lt;String&gt;
    #   * {Types::GetFeedResponse#outputs #outputs} => Array&lt;Types::GetOutput&gt;
    #   * {Types::GetFeedResponse#access_role_arn #access_role_arn} => String
    #   * {Types::GetFeedResponse#status #status} => String
    #   * {Types::GetFeedResponse#association #association} => Types::FeedAssociation
    #   * {Types::GetFeedResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_feed({
    #     id: "FeedId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.data_endpoints #=> Array
    #   resp.data_endpoints[0] #=> String
    #   resp.outputs #=> Array
    #   resp.outputs[0].name #=> String
    #   resp.outputs[0].output_config.cropping.template_groups #=> Array
    #   resp.outputs[0].output_config.cropping.template_groups[0].name #=> String
    #   resp.outputs[0].output_config.cropping.template_groups[0].template_uris #=> Array
    #   resp.outputs[0].output_config.cropping.template_groups[0].template_uris[0] #=> String
    #   resp.outputs[0].output_config.clipping.callback_metadata #=> String
    #   resp.outputs[0].output_config.clipping.data_source_configuration.fixture_id #=> String
    #   resp.outputs[0].output_config.subtitling.language #=> String, one of "eng", "eng-au", "eng-gb", "eng-us", "fra", "ita", "deu", "spa", "por", "ara"
    #   resp.outputs[0].output_config.subtitling.aspect_ratio.width #=> Integer
    #   resp.outputs[0].output_config.subtitling.aspect_ratio.height #=> Integer
    #   resp.outputs[0].output_config.subtitling.dictionary #=> String
    #   resp.outputs[0].output_config.subtitling.profanity_filter #=> String, one of "DISABLED", "CENSOR", "DROP"
    #   resp.outputs[0].output_config.contextual_metadata.summary_generation #=> String, one of "ENABLED", "DISABLED"
    #   resp.outputs[0].output_config.contextual_metadata.extended_analysis #=> String, one of "ENABLED", "DISABLED"
    #   resp.outputs[0].output_config.contextual_metadata.custom_questions.shot.question_set_id #=> String
    #   resp.outputs[0].output_config.contextual_metadata.custom_questions.shot.version #=> String
    #   resp.outputs[0].output_config.contextual_metadata.custom_questions.scene.question_set_id #=> String
    #   resp.outputs[0].output_config.contextual_metadata.custom_questions.scene.version #=> String
    #   resp.outputs[0].output_config.function.function_arn #=> String
    #   resp.outputs[0].output_config.function.trigger.fixed_interval.interval_seconds #=> Integer
    #   resp.outputs[0].output_config.function.frame_settings.frame_sampling.mode #=> String, one of "FIRST", "UNIFORM", "LAST"
    #   resp.outputs[0].output_config.function.frame_settings.frame_sampling.count #=> Integer
    #   resp.outputs[0].output_config.function.frame_settings.frame_size.width_pixels #=> Integer
    #   resp.outputs[0].output_config.function.frame_settings.frame_size.height_pixels #=> Integer
    #   resp.outputs[0].output_config.function.subtitling_settings.output_name #=> String
    #   resp.outputs[0].output_config.function.contextual_metadata_settings.output_name #=> String
    #   resp.outputs[0].output_config.function.clipping_settings.output_name #=> String
    #   resp.outputs[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.outputs[0].description #=> String
    #   resp.outputs[0].from_association #=> Boolean
    #   resp.access_role_arn #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "ACTIVE", "UPDATING", "DELETING", "DELETED", "ARCHIVED"
    #   resp.association.associated_resource_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * feed_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFeed AWS API Documentation
    #
    # @overload get_feed(params = {})
    # @param [Hash] params ({})
    def get_feed(params = {}, options = {})
      req = build_request(:get_feed, params)
      req.send_request(options)
    end

    # Retrieves the resource-based policy attached to the specified feed.
    #
    # @option params [required, String] :id
    #   The ID of the feed whose policy you want to retrieve.
    #
    # @return [Types::GetFeedPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFeedPolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_feed_policy({
    #     id: "FeedId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFeedPolicy AWS API Documentation
    #
    # @overload get_feed_policy(params = {})
    # @param [Hash] params ({})
    def get_feed_policy(params = {}, options = {})
      req = build_request(:get_feed_policy, params)
      req.send_request(options)
    end

    # Retrieves information about the specified fixture (a sports event,
    # such as a specific basketball game). You obtain a fixtureId from
    # SearchFixtures, or from the clipping output of a feed.
    #
    # @option params [required, String] :fixture_id
    #   The ID of the fixture to retrieve, as returned by SearchFixtures.
    #
    # @return [Types::GetFixtureResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFixtureResponse#fixture_id #fixture_id} => String
    #   * {Types::GetFixtureResponse#name #name} => String
    #   * {Types::GetFixtureResponse#fixture_group #fixture_group} => String
    #   * {Types::GetFixtureResponse#scheduled_start #scheduled_start} => Time
    #   * {Types::GetFixtureResponse#status #status} => String
    #   * {Types::GetFixtureResponse#competitors #competitors} => Array&lt;Types::Competitor&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_fixture({
    #     fixture_id: "FixtureId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fixture_id #=> String
    #   resp.name #=> String
    #   resp.fixture_group #=> String
    #   resp.scheduled_start #=> Time
    #   resp.status #=> String
    #   resp.competitors #=> Array
    #   resp.competitors[0].name #=> String
    #   resp.competitors[0].is_home #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFixture AWS API Documentation
    #
    # @overload get_fixture(params = {})
    # @param [Hash] params ({})
    def get_fixture(params = {}, options = {})
      req = build_request(:get_fixture, params)
      req.send_request(options)
    end

    # Retrieves the details of a function, including its expressions, the
    # media context that Elemental Inference derived from the request
    # expression, and the feeds that currently reference it.
    #
    # @option params [required, String] :id
    #   The ID of the function.
    #
    # @return [Types::GetFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFunctionResponse#name #name} => String
    #   * {Types::GetFunctionResponse#target #target} => Types::FunctionTarget
    #   * {Types::GetFunctionResponse#request_expression #request_expression} => String
    #   * {Types::GetFunctionResponse#response_expression #response_expression} => String
    #   * {Types::GetFunctionResponse#description #description} => String
    #   * {Types::GetFunctionResponse#event_bridge_delivery #event_bridge_delivery} => String
    #   * {Types::GetFunctionResponse#arn #arn} => String
    #   * {Types::GetFunctionResponse#id #id} => String
    #   * {Types::GetFunctionResponse#status #status} => String
    #   * {Types::GetFunctionResponse#references #references} => Array&lt;String&gt;
    #   * {Types::GetFunctionResponse#context_types #context_types} => Array&lt;String&gt;
    #   * {Types::GetFunctionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function({
    #     id: "FunctionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.target.bedrock.api #=> String, one of "INVOKE_MODEL"
    #   resp.target.bedrock.model #=> String
    #   resp.request_expression #=> String
    #   resp.response_expression #=> String
    #   resp.description #=> String
    #   resp.event_bridge_delivery #=> String, one of "ENABLED", "DISABLED"
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"
    #   resp.references #=> Array
    #   resp.references[0] #=> String
    #   resp.context_types #=> Array
    #   resp.context_types[0] #=> String, one of "FRAMES", "SUBTITLES", "CONTEXTUAL_METADATA", "CLIP_METADATA"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFunction AWS API Documentation
    #
    # @overload get_function(params = {})
    # @param [Hash] params ({})
    def get_function(params = {}, options = {})
      req = build_request(:get_function, params)
      req.send_request(options)
    end

    # Retrieves information about the specified question set at one version.
    # By default, GetQuestionSet returns the DRAFT version. To retrieve a
    # published version, specify questionSetVersion.
    #
    # @option params [required, String] :id
    #   The ID of the question set to retrieve.
    #
    # @option params [String] :question_set_version
    #   The version of the question set to retrieve: DRAFT or the number of a
    #   published version. If you don't specify a version, Elemental
    #   Inference returns DRAFT.
    #
    # @return [Types::GetQuestionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQuestionSetResponse#yes_no #yes_no} => Array&lt;Types::YesNoQuestion&gt;
    #   * {Types::GetQuestionSetResponse#yes_no_per_option #yes_no_per_option} => Array&lt;Types::YesNoPerOptionQuestion&gt;
    #   * {Types::GetQuestionSetResponse#choose_one #choose_one} => Array&lt;Types::ChooseOneQuestion&gt;
    #   * {Types::GetQuestionSetResponse#arn #arn} => String
    #   * {Types::GetQuestionSetResponse#id #id} => String
    #   * {Types::GetQuestionSetResponse#name #name} => String
    #   * {Types::GetQuestionSetResponse#version #version} => String
    #   * {Types::GetQuestionSetResponse#description #description} => String
    #   * {Types::GetQuestionSetResponse#latest_version #latest_version} => String
    #   * {Types::GetQuestionSetResponse#sha256 #sha256} => String
    #   * {Types::GetQuestionSetResponse#references #references} => Array&lt;String&gt;
    #   * {Types::GetQuestionSetResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_question_set({
    #     id: "QuestionSetId", # required
    #     question_set_version: "QuestionSetVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.yes_no #=> Array
    #   resp.yes_no[0].name #=> String
    #   resp.yes_no[0].question #=> String
    #   resp.yes_no_per_option #=> Array
    #   resp.yes_no_per_option[0].name #=> String
    #   resp.yes_no_per_option[0].question #=> String
    #   resp.yes_no_per_option[0].options #=> Array
    #   resp.yes_no_per_option[0].options[0].name #=> String
    #   resp.yes_no_per_option[0].options[0].text #=> String
    #   resp.choose_one #=> Array
    #   resp.choose_one[0].name #=> String
    #   resp.choose_one[0].question #=> String
    #   resp.choose_one[0].options #=> Array
    #   resp.choose_one[0].options[0].name #=> String
    #   resp.choose_one[0].options[0].text #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.version #=> String
    #   resp.description #=> String
    #   resp.latest_version #=> String
    #   resp.sha256 #=> String
    #   resp.references #=> Array
    #   resp.references[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetQuestionSet AWS API Documentation
    #
    # @overload get_question_set(params = {})
    # @param [Hash] params ({})
    def get_question_set(params = {}, options = {})
      req = build_request(:get_question_set, params)
      req.send_request(options)
    end

    # Lists the dictionaries in your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request. Valid range:
    #   1 to 100.
    #
    # @option params [String] :next_token
    #   The token that identifies the next batch of results to return.
    #
    # @return [Types::ListDictionariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDictionariesResponse#dictionaries #dictionaries} => Array&lt;Types::DictionarySummary&gt;
    #   * {Types::ListDictionariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dictionaries({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.dictionaries #=> Array
    #   resp.dictionaries[0].arn #=> String
    #   resp.dictionaries[0].id #=> String
    #   resp.dictionaries[0].name #=> String
    #   resp.dictionaries[0].language #=> String, one of "eng", "fra", "ita", "deu", "spa", "por", "ara"
    #   resp.dictionaries[0].status #=> String, one of "CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListDictionaries AWS API Documentation
    #
    # @overload list_dictionaries(params = {})
    # @param [Hash] params ({})
    def list_dictionaries(params = {}, options = {})
      req = build_request(:list_dictionaries, params)
      req.send_request(options)
    end

    # Displays a list of feeds that belong to this AWS account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a list request with MaxResults set at 5.
    #   Although 20 items match your request, the service returns no more than
    #   the first 5 items. (The service also returns a NextToken value that
    #   you can use to fetch the next batch of results.)
    #
    #   The service might return fewer results than the MaxResults value. If
    #   MaxResults is not included in the request, the service defaults to
    #   pagination with a maximum of 10 results per page.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 1000.
    #
    # @option params [String] :next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a ListFeeds request with MaxResults set at 5.
    #   The service returns the first batch of results (up to 5) and a
    #   NextToken value. To see the next batch of results, you can submit the
    #   ListFeeds request a second time and specify the NextToken value.
    #
    # @return [Types::ListFeedsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFeedsResponse#feeds #feeds} => Array&lt;Types::FeedSummary&gt;
    #   * {Types::ListFeedsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_feeds({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.feeds #=> Array
    #   resp.feeds[0].arn #=> String
    #   resp.feeds[0].id #=> String
    #   resp.feeds[0].name #=> String
    #   resp.feeds[0].association.associated_resource_name #=> String
    #   resp.feeds[0].status #=> String, one of "CREATING", "AVAILABLE", "ACTIVE", "UPDATING", "DELETING", "DELETED", "ARCHIVED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListFeeds AWS API Documentation
    #
    # @overload list_feeds(params = {})
    # @param [Hash] params ({})
    def list_feeds(params = {}, options = {})
      req = build_request(:list_feeds, params)
      req.send_request(options)
    end

    # Lists the functions in this account, in this Region. Each entry is a
    # summary. To get the expressions of a function, use GetFunction.
    #
    # @option params [Integer] :max_results
    #   The maximum number of functions to return in one response. Valid
    #   range: 1 to 100. The default is 100.
    #
    # @option params [String] :next_token
    #   The token that identifies the page of results to return. Use the
    #   nextToken value from a previous response.
    #
    # @return [Types::ListFunctionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFunctionsResponse#functions #functions} => Array&lt;Types::FunctionSummary&gt;
    #   * {Types::ListFunctionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_functions({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.functions #=> Array
    #   resp.functions[0].arn #=> String
    #   resp.functions[0].id #=> String
    #   resp.functions[0].name #=> String
    #   resp.functions[0].description #=> String
    #   resp.functions[0].status #=> String, one of "CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"
    #   resp.functions[0].target.bedrock.api #=> String, one of "INVOKE_MODEL"
    #   resp.functions[0].target.bedrock.model #=> String
    #   resp.functions[0].context_types #=> Array
    #   resp.functions[0].context_types[0] #=> String, one of "FRAMES", "SUBTITLES", "CONTEXTUAL_METADATA", "CLIP_METADATA"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListFunctions AWS API Documentation
    #
    # @overload list_functions(params = {})
    # @param [Hash] params ({})
    def list_functions(params = {}, options = {})
      req = build_request(:list_functions, params)
      req.send_request(options)
    end

    # Lists the versions of the specified question set. The list starts with
    # the DRAFT version, followed by the published versions from the highest
    # version number to the lowest. The list doesn't include deleted
    # versions.
    #
    # The response doesn't include the questions in each version. To
    # retrieve them, use GetQuestionSet and specify questionSetVersion.
    #
    # @option params [required, String] :id
    #   The ID of the question set whose versions you want to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request. Valid range:
    #   1 to 100.
    #
    # @option params [String] :next_token
    #   The token that identifies the next batch of results to return.
    #
    # @return [Types::ListQuestionSetVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQuestionSetVersionsResponse#versions #versions} => Array&lt;Types::QuestionSetVersionSummary&gt;
    #   * {Types::ListQuestionSetVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_question_set_versions({
    #     id: "QuestionSetId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.versions #=> Array
    #   resp.versions[0].version #=> String
    #   resp.versions[0].description #=> String
    #   resp.versions[0].sha256 #=> String
    #   resp.versions[0].last_modified_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListQuestionSetVersions AWS API Documentation
    #
    # @overload list_question_set_versions(params = {})
    # @param [Hash] params ({})
    def list_question_set_versions(params = {}, options = {})
      req = build_request(:list_question_set_versions, params)
      req.send_request(options)
    end

    # Lists the question sets in your account. The response doesn't include
    # the questions in each question set. To retrieve them, use
    # GetQuestionSet.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request. Valid range:
    #   1 to 100.
    #
    # @option params [String] :next_token
    #   The token that identifies the next batch of results to return.
    #
    # @return [Types::ListQuestionSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQuestionSetsResponse#question_sets #question_sets} => Array&lt;Types::QuestionSetSummary&gt;
    #   * {Types::ListQuestionSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_question_sets({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.question_sets #=> Array
    #   resp.question_sets[0].arn #=> String
    #   resp.question_sets[0].id #=> String
    #   resp.question_sets[0].name #=> String
    #   resp.question_sets[0].latest_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListQuestionSets AWS API Documentation
    #
    # @overload list_question_sets(params = {})
    # @param [Hash] params ({})
    def list_question_sets(params = {}, options = {})
      req = build_request(:list_question_sets, params)
      req.send_request(options)
    end

    # Displays a list of the schedule actions on a feed, including the
    # status of each action and, for a failed action, information about why
    # it failed.
    #
    # Elemental Inference keeps an action whose status is COMPLETED or
    # FAILED for about 48 hours after its scheduled time, and then deletes
    # it automatically.
    #
    # @option params [required, String] :id
    #   The ID of the feed that you want to query.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each API request. If you
    #   don't specify MaxResults, Elemental Inference returns a maximum of 10
    #   results for each page.
    #
    # @option params [String] :next_token
    #   The token that identifies the batch of results that you want to see.
    #   To see the next batch, submit the request a second time and specify
    #   the NextToken value that Elemental Inference returned.
    #
    # @return [Types::ListScheduleActionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScheduleActionsResponse#schedule_actions #schedule_actions} => Array&lt;Types::ScheduleAction&gt;
    #   * {Types::ListScheduleActionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schedule_actions({
    #     id: "FeedId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.schedule_actions #=> Array
    #   resp.schedule_actions[0].action_name #=> String
    #   resp.schedule_actions[0].start_configuration.fixed_mode_schedule_action_start_settings.scheduled_at #=> Time
    #   resp.schedule_actions[0].operations #=> Array
    #   resp.schedule_actions[0].operations[0].update_output_status.output_name #=> String
    #   resp.schedule_actions[0].operations[0].update_output_status.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.schedule_actions[0].operations[0].update_clipping_data_source_configuration.output_name #=> String
    #   resp.schedule_actions[0].operations[0].update_clipping_data_source_configuration.data_source_configuration.fixture_id #=> String
    #   resp.schedule_actions[0].operations[0].remove_clipping_data_source_configuration.output_name #=> String
    #   resp.schedule_actions[0].status #=> String, one of "PENDING", "COMPLETED", "FAILED"
    #   resp.schedule_actions[0].error.error_code #=> String, one of "INVALID_ACTION_TARGET", "INTERNAL_ERROR"
    #   resp.schedule_actions[0].error.error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListScheduleActions AWS API Documentation
    #
    # @overload list_schedule_actions(params = {})
    # @param [Hash] params ({})
    def list_schedule_actions(params = {}, options = {})
      req = build_request(:list_schedule_actions, params)
      req.send_request(options)
    end

    # List all tags that are on an Elemental Inference resource in the
    # current region.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource whose tags you want to query.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Attaches or replaces a resource-based policy on the specified feed. A
    # resource-based policy grants cross-account access to the feed.
    #
    # @option params [required, String] :id
    #   The ID of the feed to attach the policy to.
    #
    # @option params [required, String] :policy
    #   The resource-based policy document to attach to the feed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_feed_policy({
    #     id: "FeedId", # required
    #     policy: "PolicyDocument", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/PutFeedPolicy AWS API Documentation
    #
    # @overload put_feed_policy(params = {})
    # @param [Hash] params ({})
    def put_feed_policy(params = {}, options = {})
      req = build_request(:put_feed_policy, params)
      req.send_request(options)
    end

    # Searches for the fixtures (sports events, such as a specific
    # basketball game) that are available for a sport in a date window. Each
    # fixture in the response includes a fixtureId that you specify in the
    # clipping output of a feed, so that Elemental Inference maps the event
    # data for that fixture onto the clipping metadata. This operation is
    # paginated: if there are more fixtures than fit in one page, the
    # response includes a nextToken that you pass in a subsequent request.
    #
    # @option params [required, String] :sport
    #   The sport to search for fixtures. Valid values: basketball (search for
    #   basketball fixtures), american-football (search for american-football
    #   fixtures).
    #
    # @option params [required, String] :start_date
    #   The first day of the search window, in UTC. The search includes
    #   fixtures that are scheduled on this day.
    #
    #   Specify the date in ISO 8601 format, as `YYYY-MM-DD`. For example,
    #   2026-03-14.
    #
    # @option params [String] :end_date
    #   The last day of the search window, in UTC. The search includes
    #   fixtures that are scheduled on this day. Specify the date in ISO 8601
    #   format, as `YYYY-MM-DD`.
    #
    #   If you omit this parameter, Elemental Inference searches only the day
    #   that you specified in startDate. The window from startDate through
    #   endDate must not exceed seven days.
    #
    # @option params [Array<Types::SearchFilter>] :filters
    #   An array of filters that narrow the results. Each filter applies to
    #   one dimension of a fixture, such as the competitor. You can specify up
    #   to 10 filters.
    #
    #   A fixture must satisfy every filter in the array in order to appear in
    #   the results. Within one filter, a fixture must match at least one of
    #   the values.
    #
    # @option params [Integer] :max_results
    #   The maximum number of fixtures to return for each API request.
    #
    #   The service might return fewer fixtures than the maxResults value.
    #   When more fixtures match the search, the response also includes a
    #   nextToken value that you can use to fetch the next batch of results.
    #
    # @option params [String] :next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a SearchFixtures request with maxResults set
    #   at 5. The service returns the first batch of results (up to 5) and a
    #   nextToken value. To see the next batch of results, you submit the
    #   SearchFixtures request a second time, with the same search criteria,
    #   and specify the nextToken value.
    #
    # @return [Types::SearchFixturesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchFixturesResponse#fixtures #fixtures} => Array&lt;Types::FixtureSummary&gt;
    #   * {Types::SearchFixturesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_fixtures({
    #     sport: "basketball", # required, accepts basketball, american-football
    #     start_date: "FixtureDate", # required
    #     end_date: "FixtureDate",
    #     filters: [
    #       {
    #         name: "COMPETITOR", # required, accepts COMPETITOR
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.fixtures #=> Array
    #   resp.fixtures[0].fixture_id #=> String
    #   resp.fixtures[0].name #=> String
    #   resp.fixtures[0].fixture_group #=> String
    #   resp.fixtures[0].scheduled_start #=> Time
    #   resp.fixtures[0].status #=> String
    #   resp.fixtures[0].competitors #=> Array
    #   resp.fixtures[0].competitors[0].name #=> String
    #   resp.fixtures[0].competitors[0].is_home #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/SearchFixtures AWS API Documentation
    #
    # @overload search_fixtures(params = {})
    # @param [Hash] params ({})
    def search_fixtures(params = {}, options = {})
      req = build_request(:search_fixtures, params)
      req.send_request(options)
    end

    # Associates the specified tags to the resource identified by the
    # specified resourceArn in the current region. If existing tags on a
    # resource are not specified in the request parameters, they are not
    # changed. When a resource is deleted, the tags associated with that
    # resource are also deleted.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource where you want to add tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of tags to add to the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes specified tags from the specified resource in the current
    # region.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource where you want to delete one or more tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to delete.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified dictionary.
    #
    # @option params [required, String] :id
    #   The ID of the dictionary to update.
    #
    # @option params [String] :name
    #   A new name for the dictionary. If not specified, the name is not
    #   changed.
    #
    # @option params [String] :language
    #   A new language for the dictionary. If not specified, the language is
    #   not changed.
    #
    # @option params [String] :entries
    #   New dictionary entries. If not specified, the entries are not changed.
    #
    # @return [Types::UpdateDictionaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDictionaryResponse#name #name} => String
    #   * {Types::UpdateDictionaryResponse#arn #arn} => String
    #   * {Types::UpdateDictionaryResponse#id #id} => String
    #   * {Types::UpdateDictionaryResponse#language #language} => String
    #   * {Types::UpdateDictionaryResponse#status #status} => String
    #   * {Types::UpdateDictionaryResponse#references #references} => Array&lt;String&gt;
    #   * {Types::UpdateDictionaryResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dictionary({
    #     id: "DictionaryId", # required
    #     name: "ResourceName",
    #     language: "eng", # accepts eng, fra, ita, deu, spa, por, ara
    #     entries: "DictionaryEntriesPayload",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.language #=> String, one of "eng", "fra", "ita", "deu", "spa", "por", "ara"
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"
    #   resp.references #=> Array
    #   resp.references[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateDictionary AWS API Documentation
    #
    # @overload update_dictionary(params = {})
    # @param [Hash] params ({})
    def update_dictionary(params = {}, options = {})
      req = build_request(:update_dictionary, params)
      req.send_request(options)
    end

    # Updates the name and/or outputs in a feed.
    #
    # UpdateFeed is a PUT operation, which means that the payload that you
    # specify completely overwrites the existing payload.
    #
    # This means that if you want to touch the array of outputs, you must
    # pass in the full new list. So you must omit outputs you want to
    # delete, and include outputs you want to add or modify.
    #
    # If you want to patch the array of outputs to make selective additions,
    # use AssociateFeed.
    #
    # @option params [required, String] :name
    #   Required. You can specify the existing name (to leave it unchanged) or
    #   a new name.
    #
    # @option params [String] :access_role_arn
    #   The ARN of an IAM role that Elemental Inference assumes to access
    #   resources in your account on your behalf. You can specify the existing
    #   role (to leave it unchanged) or a new role. You specify one access
    #   role for each feed.
    #
    # @option params [required, String] :id
    #   The ID of the feed to update.
    #
    # @option params [required, Array<Types::UpdateOutput>] :outputs
    #   Required. You can specify the existing array of outputs (to leave
    #   outputs unchanged) or you can specify a new array.
    #
    # @return [Types::UpdateFeedResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFeedResponse#arn #arn} => String
    #   * {Types::UpdateFeedResponse#name #name} => String
    #   * {Types::UpdateFeedResponse#id #id} => String
    #   * {Types::UpdateFeedResponse#data_endpoints #data_endpoints} => Array&lt;String&gt;
    #   * {Types::UpdateFeedResponse#outputs #outputs} => Array&lt;Types::GetOutput&gt;
    #   * {Types::UpdateFeedResponse#access_role_arn #access_role_arn} => String
    #   * {Types::UpdateFeedResponse#status #status} => String
    #   * {Types::UpdateFeedResponse#association #association} => Types::FeedAssociation
    #   * {Types::UpdateFeedResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_feed({
    #     name: "ResourceName", # required
    #     access_role_arn: "IamRoleArn",
    #     id: "FeedId", # required
    #     outputs: [ # required
    #       {
    #         name: "ResourceName", # required
    #         output_config: { # required
    #           cropping: {
    #             template_groups: [
    #               {
    #                 name: "ResourceName", # required
    #                 template_uris: ["S3Uri"], # required
    #               },
    #             ],
    #           },
    #           clipping: {
    #             callback_metadata: "ResourceDescription",
    #             data_source_configuration: {
    #               fixture_id: "FixtureId", # required
    #             },
    #           },
    #           subtitling: {
    #             language: "eng", # required, accepts eng, eng-au, eng-gb, eng-us, fra, ita, deu, spa, por, ara
    #             aspect_ratio: {
    #               width: 1, # required
    #               height: 1, # required
    #             },
    #             dictionary: "DictionaryId",
    #             profanity_filter: "DISABLED", # accepts DISABLED, CENSOR, DROP
    #           },
    #           contextual_metadata: {
    #             summary_generation: "ENABLED", # accepts ENABLED, DISABLED
    #             extended_analysis: "ENABLED", # accepts ENABLED, DISABLED
    #             custom_questions: {
    #               shot: {
    #                 question_set_id: "QuestionSetId", # required
    #                 version: "QuestionSetVersion", # required
    #               },
    #               scene: {
    #                 question_set_id: "QuestionSetId", # required
    #                 version: "QuestionSetVersion", # required
    #               },
    #             },
    #           },
    #           function: {
    #             function_arn: "FunctionArn", # required
    #             trigger: { # required
    #               fixed_interval: {
    #                 interval_seconds: 1, # required
    #               },
    #               per_shot: {
    #               },
    #               per_scene: {
    #               },
    #               per_clip: {
    #               },
    #             },
    #             frame_settings: {
    #               frame_sampling: { # required
    #                 mode: "FIRST", # required, accepts FIRST, UNIFORM, LAST
    #                 count: 1,
    #               },
    #               frame_size: {
    #                 width_pixels: 1, # required
    #                 height_pixels: 1, # required
    #               },
    #             },
    #             subtitling_settings: {
    #               output_name: "ResourceName", # required
    #             },
    #             contextual_metadata_settings: {
    #               output_name: "ResourceName", # required
    #             },
    #             clipping_settings: {
    #               output_name: "ResourceName", # required
    #             },
    #           },
    #         },
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         description: "ResourceDescription",
    #         from_association: false,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.data_endpoints #=> Array
    #   resp.data_endpoints[0] #=> String
    #   resp.outputs #=> Array
    #   resp.outputs[0].name #=> String
    #   resp.outputs[0].output_config.cropping.template_groups #=> Array
    #   resp.outputs[0].output_config.cropping.template_groups[0].name #=> String
    #   resp.outputs[0].output_config.cropping.template_groups[0].template_uris #=> Array
    #   resp.outputs[0].output_config.cropping.template_groups[0].template_uris[0] #=> String
    #   resp.outputs[0].output_config.clipping.callback_metadata #=> String
    #   resp.outputs[0].output_config.clipping.data_source_configuration.fixture_id #=> String
    #   resp.outputs[0].output_config.subtitling.language #=> String, one of "eng", "eng-au", "eng-gb", "eng-us", "fra", "ita", "deu", "spa", "por", "ara"
    #   resp.outputs[0].output_config.subtitling.aspect_ratio.width #=> Integer
    #   resp.outputs[0].output_config.subtitling.aspect_ratio.height #=> Integer
    #   resp.outputs[0].output_config.subtitling.dictionary #=> String
    #   resp.outputs[0].output_config.subtitling.profanity_filter #=> String, one of "DISABLED", "CENSOR", "DROP"
    #   resp.outputs[0].output_config.contextual_metadata.summary_generation #=> String, one of "ENABLED", "DISABLED"
    #   resp.outputs[0].output_config.contextual_metadata.extended_analysis #=> String, one of "ENABLED", "DISABLED"
    #   resp.outputs[0].output_config.contextual_metadata.custom_questions.shot.question_set_id #=> String
    #   resp.outputs[0].output_config.contextual_metadata.custom_questions.shot.version #=> String
    #   resp.outputs[0].output_config.contextual_metadata.custom_questions.scene.question_set_id #=> String
    #   resp.outputs[0].output_config.contextual_metadata.custom_questions.scene.version #=> String
    #   resp.outputs[0].output_config.function.function_arn #=> String
    #   resp.outputs[0].output_config.function.trigger.fixed_interval.interval_seconds #=> Integer
    #   resp.outputs[0].output_config.function.frame_settings.frame_sampling.mode #=> String, one of "FIRST", "UNIFORM", "LAST"
    #   resp.outputs[0].output_config.function.frame_settings.frame_sampling.count #=> Integer
    #   resp.outputs[0].output_config.function.frame_settings.frame_size.width_pixels #=> Integer
    #   resp.outputs[0].output_config.function.frame_settings.frame_size.height_pixels #=> Integer
    #   resp.outputs[0].output_config.function.subtitling_settings.output_name #=> String
    #   resp.outputs[0].output_config.function.contextual_metadata_settings.output_name #=> String
    #   resp.outputs[0].output_config.function.clipping_settings.output_name #=> String
    #   resp.outputs[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.outputs[0].description #=> String
    #   resp.outputs[0].from_association #=> Boolean
    #   resp.access_role_arn #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "ACTIVE", "UPDATING", "DELETING", "DELETED", "ARCHIVED"
    #   resp.association.associated_resource_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateFeed AWS API Documentation
    #
    # @overload update_feed(params = {})
    # @param [Hash] params ({})
    def update_feed(params = {}, options = {})
      req = build_request(:update_feed, params)
      req.send_request(options)
    end

    # Updates a function. Include only the parameters that you want to
    # change; parameters that you don't include aren't affected. Elemental
    # Inference validates the updated expressions in the same way as
    # CreateFunction.
    #
    # While a feed references the function, you can change only its
    # expressions and its description, and you can set eventBridgeDelivery
    # to DISABLED but not to ENABLED. The request expression must keep
    # referencing the same media context, as reported in contextTypes.
    # Changing an expression changes the behavior of every feed that
    # references the function.
    #
    # @option params [required, String] :id
    #   The ID of the function.
    #
    # @option params [String] :name
    #   A new name for the function. You can't change the name while the
    #   function is referenced by a feed.
    #
    # @option params [Types::FunctionTarget] :target
    #   A new target for the function. You can't change the target while the
    #   function is referenced by a feed.
    #
    # @option params [String] :request_expression
    #   A new request expression for the function. Elemental Inference derives
    #   contextTypes again from the new expression. While a feed references
    #   the function, the new expression must reference the same media context
    #   as the current one.
    #
    # @option params [String] :response_expression
    #   A new response expression for the function. To remove the response
    #   expression, specify an empty string. A function with a Bedrock target
    #   and eventBridgeDelivery set to ENABLED must keep a response
    #   expression.
    #
    # @option params [String] :description
    #   A new description for the function.
    #
    # @option params [String] :event_bridge_delivery
    #   Specifies whether Elemental Inference also sends this function's
    #   marked results to Amazon EventBridge, as described for CreateFunction.
    #   If you omit this parameter, the current value is kept. While a feed
    #   references the function, you can change this value to DISABLED, but
    #   not to ENABLED.
    #
    # @return [Types::UpdateFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFunctionResponse#name #name} => String
    #   * {Types::UpdateFunctionResponse#target #target} => Types::FunctionTarget
    #   * {Types::UpdateFunctionResponse#request_expression #request_expression} => String
    #   * {Types::UpdateFunctionResponse#response_expression #response_expression} => String
    #   * {Types::UpdateFunctionResponse#description #description} => String
    #   * {Types::UpdateFunctionResponse#event_bridge_delivery #event_bridge_delivery} => String
    #   * {Types::UpdateFunctionResponse#arn #arn} => String
    #   * {Types::UpdateFunctionResponse#id #id} => String
    #   * {Types::UpdateFunctionResponse#status #status} => String
    #   * {Types::UpdateFunctionResponse#references #references} => Array&lt;String&gt;
    #   * {Types::UpdateFunctionResponse#context_types #context_types} => Array&lt;String&gt;
    #   * {Types::UpdateFunctionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function({
    #     id: "FunctionId", # required
    #     name: "ResourceName",
    #     target: {
    #       bedrock: {
    #         api: "INVOKE_MODEL", # required, accepts INVOKE_MODEL
    #         model: "BedrockFunctionTargetModelString", # required
    #       },
    #       passthrough: {
    #       },
    #     },
    #     request_expression: "UpdateFunctionRequestRequestExpressionString",
    #     response_expression: "JsonataExpression",
    #     description: "FunctionDescription",
    #     event_bridge_delivery: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.target.bedrock.api #=> String, one of "INVOKE_MODEL"
    #   resp.target.bedrock.model #=> String
    #   resp.request_expression #=> String
    #   resp.response_expression #=> String
    #   resp.description #=> String
    #   resp.event_bridge_delivery #=> String, one of "ENABLED", "DISABLED"
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "REFERENCED", "DELETING", "DELETED"
    #   resp.references #=> Array
    #   resp.references[0] #=> String
    #   resp.context_types #=> Array
    #   resp.context_types[0] #=> String, one of "FRAMES", "SUBTITLES", "CONTEXTUAL_METADATA", "CLIP_METADATA"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateFunction AWS API Documentation
    #
    # @overload update_function(params = {})
    # @param [Hash] params ({})
    def update_function(params = {}, options = {})
      req = build_request(:update_function, params)
      req.send_request(options)
    end

    # Updates the DRAFT version of the specified question set.
    # UpdateQuestionSet doesn't create a version and doesn't change
    # published versions. To publish the updated DRAFT as a new version, use
    # CreateQuestionSetVersion.
    #
    # UpdateQuestionSet replaces questions one type at a time. For each of
    # yesNo, yesNoPerOption, and chooseOne: if you omit the array, DRAFT
    # keeps its questions of that type. If you include the array, it
    # replaces all the questions of that type in DRAFT. If you include an
    # empty array, DRAFT no longer has questions of that type. The updated
    # DRAFT must follow the same rules as in CreateQuestionSet, and
    # Elemental Inference applies those rules to the questions that DRAFT
    # keeps as well as to the questions in the request.
    #
    # Feeds that reference the DRAFT version use the updated questions. To
    # make sure that the questions for a feed don't change, reference a
    # published version instead.
    #
    # @option params [required, String] :id
    #   The ID of the question set to update.
    #
    # @option params [Array<Types::YesNoQuestion>] :yes_no
    #   An array of questions that Elemental Inference answers with yes or no,
    #   to replace all the yesNo questions in DRAFT. You can specify up to 50
    #   yesNo questions. If not specified, the yesNo questions are not
    #   changed. To remove all the yesNo questions, specify an empty array.
    #
    # @option params [Array<Types::YesNoPerOptionQuestion>] :yes_no_per_option
    #   An array of questions that you ask about each of their options, to
    #   replace all the yesNoPerOption questions in DRAFT. You can specify up
    #   to 10 yesNoPerOption questions. If not specified, the yesNoPerOption
    #   questions are not changed. To remove all the yesNoPerOption questions,
    #   specify an empty array.
    #
    # @option params [Array<Types::ChooseOneQuestion>] :choose_one
    #   An array of questions that Elemental Inference answers by choosing one
    #   of their options, to replace all the chooseOne questions in DRAFT. You
    #   can specify up to 10 chooseOne questions. If not specified, the
    #   chooseOne questions are not changed. To remove all the chooseOne
    #   questions, specify an empty array.
    #
    # @option params [String] :name
    #   A new name for the question set. If not specified, the name is not
    #   changed.
    #
    # @return [Types::UpdateQuestionSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateQuestionSetResponse#yes_no #yes_no} => Array&lt;Types::YesNoQuestion&gt;
    #   * {Types::UpdateQuestionSetResponse#yes_no_per_option #yes_no_per_option} => Array&lt;Types::YesNoPerOptionQuestion&gt;
    #   * {Types::UpdateQuestionSetResponse#choose_one #choose_one} => Array&lt;Types::ChooseOneQuestion&gt;
    #   * {Types::UpdateQuestionSetResponse#arn #arn} => String
    #   * {Types::UpdateQuestionSetResponse#id #id} => String
    #   * {Types::UpdateQuestionSetResponse#name #name} => String
    #   * {Types::UpdateQuestionSetResponse#version #version} => String
    #   * {Types::UpdateQuestionSetResponse#description #description} => String
    #   * {Types::UpdateQuestionSetResponse#latest_version #latest_version} => String
    #   * {Types::UpdateQuestionSetResponse#sha256 #sha256} => String
    #   * {Types::UpdateQuestionSetResponse#references #references} => Array&lt;String&gt;
    #   * {Types::UpdateQuestionSetResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_question_set({
    #     id: "QuestionSetId", # required
    #     yes_no: [
    #       {
    #         name: "QuestionName", # required
    #         question: "QuestionText", # required
    #       },
    #     ],
    #     yes_no_per_option: [
    #       {
    #         name: "QuestionName", # required
    #         question: "QuestionText", # required
    #         options: [ # required
    #           {
    #             name: "OptionName", # required
    #             text: "OptionText", # required
    #           },
    #         ],
    #       },
    #     ],
    #     choose_one: [
    #       {
    #         name: "QuestionName", # required
    #         question: "QuestionText", # required
    #         options: [ # required
    #           {
    #             name: "OptionName", # required
    #             text: "OptionText", # required
    #           },
    #         ],
    #       },
    #     ],
    #     name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.yes_no #=> Array
    #   resp.yes_no[0].name #=> String
    #   resp.yes_no[0].question #=> String
    #   resp.yes_no_per_option #=> Array
    #   resp.yes_no_per_option[0].name #=> String
    #   resp.yes_no_per_option[0].question #=> String
    #   resp.yes_no_per_option[0].options #=> Array
    #   resp.yes_no_per_option[0].options[0].name #=> String
    #   resp.yes_no_per_option[0].options[0].text #=> String
    #   resp.choose_one #=> Array
    #   resp.choose_one[0].name #=> String
    #   resp.choose_one[0].question #=> String
    #   resp.choose_one[0].options #=> Array
    #   resp.choose_one[0].options[0].name #=> String
    #   resp.choose_one[0].options[0].text #=> String
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.version #=> String
    #   resp.description #=> String
    #   resp.latest_version #=> String
    #   resp.sha256 #=> String
    #   resp.references #=> Array
    #   resp.references[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateQuestionSet AWS API Documentation
    #
    # @overload update_question_set(params = {})
    # @param [Hash] params ({})
    def update_question_set(params = {}, options = {})
      req = build_request(:update_question_set, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ElementalInference')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-elementalinference'
      context[:gem_version] = '1.28.0'
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
    # | waiter_name  | params            | :delay   | :max_attempts |
    # | ------------ | ----------------- | -------- | ------------- |
    # | feed_deleted | {Client#get_feed} | 3        | 40            |
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
        feed_deleted: Waiters::FeedDeleted
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
