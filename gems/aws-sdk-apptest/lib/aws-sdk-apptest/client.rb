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

module Aws::AppTest
  # An API client for AppTest.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AppTest::Client.new(
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

    @identifier = :apptest

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
    add_plugin(Aws::AppTest::Plugins::Endpoints)

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
    #   @option options [Aws::AppTest::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::AppTest::EndpointParameters`.
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

    # Creates a test case.
    #
    # @option params [required, String] :name
    #   The name of the test case.
    #
    # @option params [String] :description
    #   The description of the test case.
    #
    # @option params [required, Array<Types::Step>] :steps
    #   The steps in the test case.
    #
    # @option params [String] :client_token
    #   The client token of the test case.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The specified tags of the test case.
    #
    # @return [Types::CreateTestCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTestCaseResponse#test_case_id #test_case_id} => String
    #   * {Types::CreateTestCaseResponse#test_case_version #test_case_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_test_case({
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     steps: [ # required
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           resource_action: {
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure", # required, accepts Configure, Deconfigure
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable",
    #               },
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure", # required, accepts Configure, Deconfigure
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create", # accepts Create, Delete
    #             },
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String",
    #                 },
    #                 export_data_set_names: ["String100"],
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium", # required, accepts Selenium
    #                 },
    #                 export_data_set_names: ["String100"],
    #               },
    #             },
    #             properties: {
    #               dms_task_arn: "Variable",
    #             },
    #           },
    #           compare_action: {
    #             input: { # required
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   data_sets: [
    #                     {
    #                       type: "PS", # required, accepts PS
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED", # required, accepts FIXED, VARIABLE, LINE_SEQUENTIAL
    #                       length: 1, # required
    #                     },
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2", # required, accepts z/OS-DB2
    #                       capture_tool: "Precisely", # required, accepts Precisely, AWS DMS
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL", # required, accepts PostgreSQL
    #                       capture_tool: "Precisely", # required, accepts Precisely, AWS DMS
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #             output: {
    #               file: {
    #                 file_location: "S3Uri",
    #               },
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     client_token: "IdempotencyTokenString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.test_case_id #=> String
    #   resp.test_case_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CreateTestCase AWS API Documentation
    #
    # @overload create_test_case(params = {})
    # @param [Hash] params ({})
    def create_test_case(params = {}, options = {})
      req = build_request(:create_test_case, params)
      req.send_request(options)
    end

    # Creates a test configuration.
    #
    # @option params [required, String] :name
    #   The name of the test configuration.
    #
    # @option params [String] :description
    #   The description of the test configuration.
    #
    # @option params [required, Array<Types::Resource>] :resources
    #   The defined resources of the test configuration.
    #
    # @option params [Hash<String,String>] :properties
    #   The properties of the test configuration.
    #
    # @option params [String] :client_token
    #   The client token of the test configuration.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the test configuration.
    #
    # @option params [Types::ServiceSettings] :service_settings
    #   The service settings of the test configuration.
    #
    # @return [Types::CreateTestConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTestConfigurationResponse#test_configuration_id #test_configuration_id} => String
    #   * {Types::CreateTestConfigurationResponse#test_configuration_version #test_configuration_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_test_configuration({
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     resources: [ # required
    #       {
    #         name: "ResourceName", # required
    #         type: { # required
    #           cloud_formation: {
    #             template_location: "S3Uri", # required
    #             parameters: {
    #               "String" => "String",
    #             },
    #           },
    #           m2_managed_application: {
    #             application_id: "Variable", # required
    #             runtime: "MicroFocus", # required, accepts MicroFocus
    #             vpc_endpoint_service_name: "Variable",
    #             listener_port: "Variable",
    #           },
    #           m2_non_managed_application: {
    #             vpc_endpoint_service_name: "Variable", # required
    #             listener_port: "Variable", # required
    #             runtime: "BluAge", # required, accepts BluAge
    #             web_app_name: "Variable",
    #           },
    #         },
    #       },
    #     ],
    #     properties: {
    #       "String" => "String",
    #     },
    #     client_token: "IdempotencyTokenString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     service_settings: {
    #       kms_key_id: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.test_configuration_id #=> String
    #   resp.test_configuration_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CreateTestConfiguration AWS API Documentation
    #
    # @overload create_test_configuration(params = {})
    # @param [Hash] params ({})
    def create_test_configuration(params = {}, options = {})
      req = build_request(:create_test_configuration, params)
      req.send_request(options)
    end

    # Creates a test suite.
    #
    # @option params [required, String] :name
    #   The name of the test suite.
    #
    # @option params [String] :description
    #   The description of the test suite.
    #
    # @option params [Array<Types::Step>] :before_steps
    #   The before steps of the test suite.
    #
    # @option params [Array<Types::Step>] :after_steps
    #   The after steps of the test suite.
    #
    # @option params [required, Types::TestCases] :test_cases
    #   The test cases in the test suite.
    #
    # @option params [String] :client_token
    #   The client token of the test suite.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the test suite.
    #
    # @return [Types::CreateTestSuiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTestSuiteResponse#test_suite_id #test_suite_id} => String
    #   * {Types::CreateTestSuiteResponse#test_suite_version #test_suite_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_test_suite({
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     before_steps: [
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           resource_action: {
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure", # required, accepts Configure, Deconfigure
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable",
    #               },
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure", # required, accepts Configure, Deconfigure
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create", # accepts Create, Delete
    #             },
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String",
    #                 },
    #                 export_data_set_names: ["String100"],
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium", # required, accepts Selenium
    #                 },
    #                 export_data_set_names: ["String100"],
    #               },
    #             },
    #             properties: {
    #               dms_task_arn: "Variable",
    #             },
    #           },
    #           compare_action: {
    #             input: { # required
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   data_sets: [
    #                     {
    #                       type: "PS", # required, accepts PS
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED", # required, accepts FIXED, VARIABLE, LINE_SEQUENTIAL
    #                       length: 1, # required
    #                     },
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2", # required, accepts z/OS-DB2
    #                       capture_tool: "Precisely", # required, accepts Precisely, AWS DMS
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL", # required, accepts PostgreSQL
    #                       capture_tool: "Precisely", # required, accepts Precisely, AWS DMS
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #             output: {
    #               file: {
    #                 file_location: "S3Uri",
    #               },
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     after_steps: [
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           resource_action: {
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure", # required, accepts Configure, Deconfigure
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable",
    #               },
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure", # required, accepts Configure, Deconfigure
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create", # accepts Create, Delete
    #             },
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String",
    #                 },
    #                 export_data_set_names: ["String100"],
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium", # required, accepts Selenium
    #                 },
    #                 export_data_set_names: ["String100"],
    #               },
    #             },
    #             properties: {
    #               dms_task_arn: "Variable",
    #             },
    #           },
    #           compare_action: {
    #             input: { # required
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   data_sets: [
    #                     {
    #                       type: "PS", # required, accepts PS
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED", # required, accepts FIXED, VARIABLE, LINE_SEQUENTIAL
    #                       length: 1, # required
    #                     },
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2", # required, accepts z/OS-DB2
    #                       capture_tool: "Precisely", # required, accepts Precisely, AWS DMS
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL", # required, accepts PostgreSQL
    #                       capture_tool: "Precisely", # required, accepts Precisely, AWS DMS
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #             output: {
    #               file: {
    #                 file_location: "S3Uri",
    #               },
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     test_cases: { # required
    #       sequential: ["Identifier"],
    #     },
    #     client_token: "IdempotencyTokenString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.test_suite_id #=> String
    #   resp.test_suite_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CreateTestSuite AWS API Documentation
    #
    # @overload create_test_suite(params = {})
    # @param [Hash] params ({})
    def create_test_suite(params = {}, options = {})
      req = build_request(:create_test_suite, params)
      req.send_request(options)
    end

    # Deletes a test case.
    #
    # @option params [required, String] :test_case_id
    #   The test case ID of the test case.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_test_case({
    #     test_case_id: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteTestCase AWS API Documentation
    #
    # @overload delete_test_case(params = {})
    # @param [Hash] params ({})
    def delete_test_case(params = {}, options = {})
      req = build_request(:delete_test_case, params)
      req.send_request(options)
    end

    # Deletes a test configuration.
    #
    # @option params [required, String] :test_configuration_id
    #   The test ID of the test configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_test_configuration({
    #     test_configuration_id: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteTestConfiguration AWS API Documentation
    #
    # @overload delete_test_configuration(params = {})
    # @param [Hash] params ({})
    def delete_test_configuration(params = {}, options = {})
      req = build_request(:delete_test_configuration, params)
      req.send_request(options)
    end

    # Deletes a test run.
    #
    # @option params [required, String] :test_run_id
    #   The run ID of the test run.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_test_run({
    #     test_run_id: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteTestRun AWS API Documentation
    #
    # @overload delete_test_run(params = {})
    # @param [Hash] params ({})
    def delete_test_run(params = {}, options = {})
      req = build_request(:delete_test_run, params)
      req.send_request(options)
    end

    # Deletes a test suite.
    #
    # @option params [required, String] :test_suite_id
    #   The test ID of the test suite.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_test_suite({
    #     test_suite_id: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteTestSuite AWS API Documentation
    #
    # @overload delete_test_suite(params = {})
    # @param [Hash] params ({})
    def delete_test_suite(params = {}, options = {})
      req = build_request(:delete_test_suite, params)
      req.send_request(options)
    end

    # Gets a test case.
    #
    # @option params [required, String] :test_case_id
    #   The request test ID of the test case.
    #
    # @option params [Integer] :test_case_version
    #   The test case version of the test case.
    #
    # @return [Types::GetTestCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTestCaseResponse#test_case_id #test_case_id} => String
    #   * {Types::GetTestCaseResponse#test_case_arn #test_case_arn} => String
    #   * {Types::GetTestCaseResponse#name #name} => String
    #   * {Types::GetTestCaseResponse#description #description} => String
    #   * {Types::GetTestCaseResponse#latest_version #latest_version} => Types::TestCaseLatestVersion
    #   * {Types::GetTestCaseResponse#test_case_version #test_case_version} => Integer
    #   * {Types::GetTestCaseResponse#status #status} => String
    #   * {Types::GetTestCaseResponse#status_reason #status_reason} => String
    #   * {Types::GetTestCaseResponse#creation_time #creation_time} => Time
    #   * {Types::GetTestCaseResponse#last_update_time #last_update_time} => Time
    #   * {Types::GetTestCaseResponse#steps #steps} => Array&lt;Types::Step&gt;
    #   * {Types::GetTestCaseResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test_case({
    #     test_case_id: "Identifier", # required
    #     test_case_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.test_case_id #=> String
    #   resp.test_case_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.latest_version.version #=> Integer
    #   resp.latest_version.status #=> String, one of "Active", "Deleting"
    #   resp.latest_version.status_reason #=> String
    #   resp.test_case_version #=> Integer
    #   resp.status #=> String, one of "Active", "Deleting"
    #   resp.status_reason #=> String
    #   resp.creation_time #=> Time
    #   resp.last_update_time #=> Time
    #   resp.steps #=> Array
    #   resp.steps[0].name #=> String
    #   resp.steps[0].description #=> String
    #   resp.steps[0].action.resource_action.m2_managed_application_action.resource #=> String
    #   resp.steps[0].action.resource_action.m2_managed_application_action.action_type #=> String, one of "Configure", "Deconfigure"
    #   resp.steps[0].action.resource_action.m2_managed_application_action.properties.force_stop #=> Boolean
    #   resp.steps[0].action.resource_action.m2_managed_application_action.properties.import_data_set_location #=> String
    #   resp.steps[0].action.resource_action.m2_non_managed_application_action.resource #=> String
    #   resp.steps[0].action.resource_action.m2_non_managed_application_action.action_type #=> String, one of "Configure", "Deconfigure"
    #   resp.steps[0].action.resource_action.cloud_formation_action.resource #=> String
    #   resp.steps[0].action.resource_action.cloud_formation_action.action_type #=> String, one of "Create", "Delete"
    #   resp.steps[0].action.mainframe_action.resource #=> String
    #   resp.steps[0].action.mainframe_action.action_type.batch.batch_job_name #=> String
    #   resp.steps[0].action.mainframe_action.action_type.batch.batch_job_parameters #=> Hash
    #   resp.steps[0].action.mainframe_action.action_type.batch.batch_job_parameters["String"] #=> String
    #   resp.steps[0].action.mainframe_action.action_type.batch.export_data_set_names #=> Array
    #   resp.steps[0].action.mainframe_action.action_type.batch.export_data_set_names[0] #=> String
    #   resp.steps[0].action.mainframe_action.action_type.tn3270.script.script_location #=> String
    #   resp.steps[0].action.mainframe_action.action_type.tn3270.script.type #=> String, one of "Selenium"
    #   resp.steps[0].action.mainframe_action.action_type.tn3270.export_data_set_names #=> Array
    #   resp.steps[0].action.mainframe_action.action_type.tn3270.export_data_set_names[0] #=> String
    #   resp.steps[0].action.mainframe_action.properties.dms_task_arn #=> String
    #   resp.steps[0].action.compare_action.input.file.source_location #=> String
    #   resp.steps[0].action.compare_action.input.file.target_location #=> String
    #   resp.steps[0].action.compare_action.input.file.file_metadata.data_sets #=> Array
    #   resp.steps[0].action.compare_action.input.file.file_metadata.data_sets[0].type #=> String, one of "PS"
    #   resp.steps[0].action.compare_action.input.file.file_metadata.data_sets[0].name #=> String
    #   resp.steps[0].action.compare_action.input.file.file_metadata.data_sets[0].ccsid #=> String
    #   resp.steps[0].action.compare_action.input.file.file_metadata.data_sets[0].format #=> String, one of "FIXED", "VARIABLE", "LINE_SEQUENTIAL"
    #   resp.steps[0].action.compare_action.input.file.file_metadata.data_sets[0].length #=> Integer
    #   resp.steps[0].action.compare_action.input.file.file_metadata.database_cdc.source_metadata.type #=> String, one of "z/OS-DB2"
    #   resp.steps[0].action.compare_action.input.file.file_metadata.database_cdc.source_metadata.capture_tool #=> String, one of "Precisely", "AWS DMS"
    #   resp.steps[0].action.compare_action.input.file.file_metadata.database_cdc.target_metadata.type #=> String, one of "PostgreSQL"
    #   resp.steps[0].action.compare_action.input.file.file_metadata.database_cdc.target_metadata.capture_tool #=> String, one of "Precisely", "AWS DMS"
    #   resp.steps[0].action.compare_action.output.file.file_location #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/GetTestCase AWS API Documentation
    #
    # @overload get_test_case(params = {})
    # @param [Hash] params ({})
    def get_test_case(params = {}, options = {})
      req = build_request(:get_test_case, params)
      req.send_request(options)
    end

    # Gets a test configuration.
    #
    # @option params [required, String] :test_configuration_id
    #   The request test configuration ID.
    #
    # @option params [Integer] :test_configuration_version
    #   The test configuration version.
    #
    # @return [Types::GetTestConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTestConfigurationResponse#test_configuration_id #test_configuration_id} => String
    #   * {Types::GetTestConfigurationResponse#name #name} => String
    #   * {Types::GetTestConfigurationResponse#test_configuration_arn #test_configuration_arn} => String
    #   * {Types::GetTestConfigurationResponse#latest_version #latest_version} => Types::TestConfigurationLatestVersion
    #   * {Types::GetTestConfigurationResponse#test_configuration_version #test_configuration_version} => Integer
    #   * {Types::GetTestConfigurationResponse#status #status} => String
    #   * {Types::GetTestConfigurationResponse#status_reason #status_reason} => String
    #   * {Types::GetTestConfigurationResponse#creation_time #creation_time} => Time
    #   * {Types::GetTestConfigurationResponse#last_update_time #last_update_time} => Time
    #   * {Types::GetTestConfigurationResponse#description #description} => String
    #   * {Types::GetTestConfigurationResponse#resources #resources} => Array&lt;Types::Resource&gt;
    #   * {Types::GetTestConfigurationResponse#properties #properties} => Hash&lt;String,String&gt;
    #   * {Types::GetTestConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetTestConfigurationResponse#service_settings #service_settings} => Types::ServiceSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test_configuration({
    #     test_configuration_id: "Identifier", # required
    #     test_configuration_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.test_configuration_id #=> String
    #   resp.name #=> String
    #   resp.test_configuration_arn #=> String
    #   resp.latest_version.version #=> Integer
    #   resp.latest_version.status #=> String, one of "Active", "Deleting"
    #   resp.latest_version.status_reason #=> String
    #   resp.test_configuration_version #=> Integer
    #   resp.status #=> String, one of "Active", "Deleting"
    #   resp.status_reason #=> String
    #   resp.creation_time #=> Time
    #   resp.last_update_time #=> Time
    #   resp.description #=> String
    #   resp.resources #=> Array
    #   resp.resources[0].name #=> String
    #   resp.resources[0].type.cloud_formation.template_location #=> String
    #   resp.resources[0].type.cloud_formation.parameters #=> Hash
    #   resp.resources[0].type.cloud_formation.parameters["String"] #=> String
    #   resp.resources[0].type.m2_managed_application.application_id #=> String
    #   resp.resources[0].type.m2_managed_application.runtime #=> String, one of "MicroFocus"
    #   resp.resources[0].type.m2_managed_application.vpc_endpoint_service_name #=> String
    #   resp.resources[0].type.m2_managed_application.listener_port #=> String
    #   resp.resources[0].type.m2_non_managed_application.vpc_endpoint_service_name #=> String
    #   resp.resources[0].type.m2_non_managed_application.listener_port #=> String
    #   resp.resources[0].type.m2_non_managed_application.runtime #=> String, one of "BluAge"
    #   resp.resources[0].type.m2_non_managed_application.web_app_name #=> String
    #   resp.properties #=> Hash
    #   resp.properties["String"] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.service_settings.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/GetTestConfiguration AWS API Documentation
    #
    # @overload get_test_configuration(params = {})
    # @param [Hash] params ({})
    def get_test_configuration(params = {}, options = {})
      req = build_request(:get_test_configuration, params)
      req.send_request(options)
    end

    # Gets a test run step.
    #
    # @option params [required, String] :test_run_id
    #   The test run ID of the test run step.
    #
    # @option params [required, String] :step_name
    #   The step name of the test run step.
    #
    # @option params [String] :test_case_id
    #   The test case ID of a test run step.
    #
    # @option params [String] :test_suite_id
    #   The test suite ID of a test run step.
    #
    # @return [Types::GetTestRunStepResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTestRunStepResponse#step_name #step_name} => String
    #   * {Types::GetTestRunStepResponse#test_run_id #test_run_id} => String
    #   * {Types::GetTestRunStepResponse#test_case_id #test_case_id} => String
    #   * {Types::GetTestRunStepResponse#test_case_version #test_case_version} => Integer
    #   * {Types::GetTestRunStepResponse#test_suite_id #test_suite_id} => String
    #   * {Types::GetTestRunStepResponse#test_suite_version #test_suite_version} => Integer
    #   * {Types::GetTestRunStepResponse#before_step #before_step} => Boolean
    #   * {Types::GetTestRunStepResponse#after_step #after_step} => Boolean
    #   * {Types::GetTestRunStepResponse#status #status} => String
    #   * {Types::GetTestRunStepResponse#status_reason #status_reason} => String
    #   * {Types::GetTestRunStepResponse#run_start_time #run_start_time} => Time
    #   * {Types::GetTestRunStepResponse#run_end_time #run_end_time} => Time
    #   * {Types::GetTestRunStepResponse#step_run_summary #step_run_summary} => Types::StepRunSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test_run_step({
    #     test_run_id: "Identifier", # required
    #     step_name: "ResourceName", # required
    #     test_case_id: "Identifier",
    #     test_suite_id: "Identifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.step_name #=> String
    #   resp.test_run_id #=> String
    #   resp.test_case_id #=> String
    #   resp.test_case_version #=> Integer
    #   resp.test_suite_id #=> String
    #   resp.test_suite_version #=> Integer
    #   resp.before_step #=> Boolean
    #   resp.after_step #=> Boolean
    #   resp.status #=> String, one of "Success", "Failed", "Running"
    #   resp.status_reason #=> String
    #   resp.run_start_time #=> Time
    #   resp.run_end_time #=> Time
    #   resp.step_run_summary.mainframe_action.batch.step_input.resource.m2_managed_application.application_id #=> String
    #   resp.step_run_summary.mainframe_action.batch.step_input.resource.m2_managed_application.runtime #=> String, one of "MicroFocus"
    #   resp.step_run_summary.mainframe_action.batch.step_input.resource.m2_managed_application.listener_port #=> Integer
    #   resp.step_run_summary.mainframe_action.batch.step_input.resource.m2_non_managed_application.vpc_endpoint_service_name #=> String
    #   resp.step_run_summary.mainframe_action.batch.step_input.resource.m2_non_managed_application.listener_port #=> Integer
    #   resp.step_run_summary.mainframe_action.batch.step_input.resource.m2_non_managed_application.runtime #=> String, one of "BluAge"
    #   resp.step_run_summary.mainframe_action.batch.step_input.resource.m2_non_managed_application.web_app_name #=> String
    #   resp.step_run_summary.mainframe_action.batch.step_input.batch_job_name #=> String
    #   resp.step_run_summary.mainframe_action.batch.step_input.batch_job_parameters #=> Hash
    #   resp.step_run_summary.mainframe_action.batch.step_input.batch_job_parameters["String"] #=> String
    #   resp.step_run_summary.mainframe_action.batch.step_input.export_data_set_names #=> Array
    #   resp.step_run_summary.mainframe_action.batch.step_input.export_data_set_names[0] #=> String
    #   resp.step_run_summary.mainframe_action.batch.step_input.properties.dms_task_arn #=> String
    #   resp.step_run_summary.mainframe_action.batch.step_output.data_set_export_location #=> String
    #   resp.step_run_summary.mainframe_action.batch.step_output.dms_output_location #=> String
    #   resp.step_run_summary.mainframe_action.batch.step_output.data_set_details #=> Array
    #   resp.step_run_summary.mainframe_action.batch.step_output.data_set_details[0].type #=> String, one of "PS"
    #   resp.step_run_summary.mainframe_action.batch.step_output.data_set_details[0].name #=> String
    #   resp.step_run_summary.mainframe_action.batch.step_output.data_set_details[0].ccsid #=> String
    #   resp.step_run_summary.mainframe_action.batch.step_output.data_set_details[0].format #=> String, one of "FIXED", "VARIABLE", "LINE_SEQUENTIAL"
    #   resp.step_run_summary.mainframe_action.batch.step_output.data_set_details[0].length #=> Integer
    #   resp.step_run_summary.mainframe_action.tn3270.step_input.resource.m2_managed_application.application_id #=> String
    #   resp.step_run_summary.mainframe_action.tn3270.step_input.resource.m2_managed_application.runtime #=> String, one of "MicroFocus"
    #   resp.step_run_summary.mainframe_action.tn3270.step_input.resource.m2_managed_application.listener_port #=> Integer
    #   resp.step_run_summary.mainframe_action.tn3270.step_input.resource.m2_non_managed_application.vpc_endpoint_service_name #=> String
    #   resp.step_run_summary.mainframe_action.tn3270.step_input.resource.m2_non_managed_application.listener_port #=> Integer
    #   resp.step_run_summary.mainframe_action.tn3270.step_input.resource.m2_non_managed_application.runtime #=> String, one of "BluAge"
    #   resp.step_run_summary.mainframe_action.tn3270.step_input.resource.m2_non_managed_application.web_app_name #=> String
    #   resp.step_run_summary.mainframe_action.tn3270.step_input.script.script_location #=> String
    #   resp.step_run_summary.mainframe_action.tn3270.step_input.script.type #=> String, one of "Selenium"
    #   resp.step_run_summary.mainframe_action.tn3270.step_input.export_data_set_names #=> Array
    #   resp.step_run_summary.mainframe_action.tn3270.step_input.export_data_set_names[0] #=> String
    #   resp.step_run_summary.mainframe_action.tn3270.step_input.properties.dms_task_arn #=> String
    #   resp.step_run_summary.mainframe_action.tn3270.step_output.data_set_export_location #=> String
    #   resp.step_run_summary.mainframe_action.tn3270.step_output.dms_output_location #=> String
    #   resp.step_run_summary.mainframe_action.tn3270.step_output.data_set_details #=> Array
    #   resp.step_run_summary.mainframe_action.tn3270.step_output.data_set_details[0].type #=> String, one of "PS"
    #   resp.step_run_summary.mainframe_action.tn3270.step_output.data_set_details[0].name #=> String
    #   resp.step_run_summary.mainframe_action.tn3270.step_output.data_set_details[0].ccsid #=> String
    #   resp.step_run_summary.mainframe_action.tn3270.step_output.data_set_details[0].format #=> String, one of "FIXED", "VARIABLE", "LINE_SEQUENTIAL"
    #   resp.step_run_summary.mainframe_action.tn3270.step_output.data_set_details[0].length #=> Integer
    #   resp.step_run_summary.mainframe_action.tn3270.step_output.script_output_location #=> String
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.source_location #=> String
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.target_location #=> String
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.source_data_sets #=> Array
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.source_data_sets[0].type #=> String, one of "PS"
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.source_data_sets[0].name #=> String
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.source_data_sets[0].ccsid #=> String
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.source_data_sets[0].format #=> String, one of "FIXED", "VARIABLE", "LINE_SEQUENTIAL"
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.source_data_sets[0].length #=> Integer
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.target_data_sets #=> Array
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.target_data_sets[0].type #=> String, one of "PS"
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.target_data_sets[0].name #=> String
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.target_data_sets[0].ccsid #=> String
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.target_data_sets[0].format #=> String, one of "FIXED", "VARIABLE", "LINE_SEQUENTIAL"
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_input.target_data_sets[0].length #=> Integer
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_output.comparison_output_location #=> String
    #   resp.step_run_summary.compare_action.type.file_type.datasets.step_output.comparison_status #=> String, one of "Different", "Equivalent", "Equal"
    #   resp.step_run_summary.compare_action.type.file_type.database_cdc.step_input.source_location #=> String
    #   resp.step_run_summary.compare_action.type.file_type.database_cdc.step_input.target_location #=> String
    #   resp.step_run_summary.compare_action.type.file_type.database_cdc.step_input.output_location #=> String
    #   resp.step_run_summary.compare_action.type.file_type.database_cdc.step_input.source_metadata.type #=> String, one of "z/OS-DB2"
    #   resp.step_run_summary.compare_action.type.file_type.database_cdc.step_input.source_metadata.capture_tool #=> String, one of "Precisely", "AWS DMS"
    #   resp.step_run_summary.compare_action.type.file_type.database_cdc.step_input.target_metadata.type #=> String, one of "PostgreSQL"
    #   resp.step_run_summary.compare_action.type.file_type.database_cdc.step_input.target_metadata.capture_tool #=> String, one of "Precisely", "AWS DMS"
    #   resp.step_run_summary.compare_action.type.file_type.database_cdc.step_output.comparison_output_location #=> String
    #   resp.step_run_summary.compare_action.type.file_type.database_cdc.step_output.comparison_status #=> String, one of "Different", "Equivalent", "Equal"
    #   resp.step_run_summary.resource_action.cloud_formation.create_cloudformation.step_input.template_location #=> String
    #   resp.step_run_summary.resource_action.cloud_formation.create_cloudformation.step_input.parameters #=> Hash
    #   resp.step_run_summary.resource_action.cloud_formation.create_cloudformation.step_input.parameters["String"] #=> String
    #   resp.step_run_summary.resource_action.cloud_formation.create_cloudformation.step_output.stack_id #=> String
    #   resp.step_run_summary.resource_action.cloud_formation.create_cloudformation.step_output.exports #=> Hash
    #   resp.step_run_summary.resource_action.cloud_formation.create_cloudformation.step_output.exports["String"] #=> String
    #   resp.step_run_summary.resource_action.cloud_formation.delete_cloudformation.step_input.stack_id #=> String
    #   resp.step_run_summary.resource_action.m2_managed_application.step_input.application_id #=> String
    #   resp.step_run_summary.resource_action.m2_managed_application.step_input.runtime #=> String
    #   resp.step_run_summary.resource_action.m2_managed_application.step_input.vpc_endpoint_service_name #=> String
    #   resp.step_run_summary.resource_action.m2_managed_application.step_input.listener_port #=> Integer
    #   resp.step_run_summary.resource_action.m2_managed_application.step_input.action_type #=> String, one of "Configure", "Deconfigure"
    #   resp.step_run_summary.resource_action.m2_managed_application.step_input.properties.force_stop #=> Boolean
    #   resp.step_run_summary.resource_action.m2_managed_application.step_input.properties.import_data_set_location #=> String
    #   resp.step_run_summary.resource_action.m2_managed_application.step_output.import_data_set_summary #=> Hash
    #   resp.step_run_summary.resource_action.m2_managed_application.step_output.import_data_set_summary["String"] #=> String
    #   resp.step_run_summary.resource_action.m2_non_managed_application.step_input.vpc_endpoint_service_name #=> String
    #   resp.step_run_summary.resource_action.m2_non_managed_application.step_input.listener_port #=> Integer
    #   resp.step_run_summary.resource_action.m2_non_managed_application.step_input.runtime #=> String, one of "BluAge"
    #   resp.step_run_summary.resource_action.m2_non_managed_application.step_input.web_app_name #=> String
    #   resp.step_run_summary.resource_action.m2_non_managed_application.step_input.action_type #=> String, one of "Configure", "Deconfigure"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/GetTestRunStep AWS API Documentation
    #
    # @overload get_test_run_step(params = {})
    # @param [Hash] params ({})
    def get_test_run_step(params = {}, options = {})
      req = build_request(:get_test_run_step, params)
      req.send_request(options)
    end

    # Gets a test suite.
    #
    # @option params [required, String] :test_suite_id
    #   The ID of the test suite.
    #
    # @option params [Integer] :test_suite_version
    #   The version of the test suite.
    #
    # @return [Types::GetTestSuiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTestSuiteResponse#test_suite_id #test_suite_id} => String
    #   * {Types::GetTestSuiteResponse#name #name} => String
    #   * {Types::GetTestSuiteResponse#latest_version #latest_version} => Types::TestSuiteLatestVersion
    #   * {Types::GetTestSuiteResponse#test_suite_version #test_suite_version} => Integer
    #   * {Types::GetTestSuiteResponse#status #status} => String
    #   * {Types::GetTestSuiteResponse#status_reason #status_reason} => String
    #   * {Types::GetTestSuiteResponse#test_suite_arn #test_suite_arn} => String
    #   * {Types::GetTestSuiteResponse#creation_time #creation_time} => Time
    #   * {Types::GetTestSuiteResponse#last_update_time #last_update_time} => Time
    #   * {Types::GetTestSuiteResponse#description #description} => String
    #   * {Types::GetTestSuiteResponse#before_steps #before_steps} => Array&lt;Types::Step&gt;
    #   * {Types::GetTestSuiteResponse#after_steps #after_steps} => Array&lt;Types::Step&gt;
    #   * {Types::GetTestSuiteResponse#test_cases #test_cases} => Types::TestCases
    #   * {Types::GetTestSuiteResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test_suite({
    #     test_suite_id: "Identifier", # required
    #     test_suite_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.test_suite_id #=> String
    #   resp.name #=> String
    #   resp.latest_version.version #=> Integer
    #   resp.latest_version.status #=> String, one of "Creating", "Updating", "Active", "Failed", "Deleting"
    #   resp.latest_version.status_reason #=> String
    #   resp.test_suite_version #=> Integer
    #   resp.status #=> String, one of "Creating", "Updating", "Active", "Failed", "Deleting"
    #   resp.status_reason #=> String
    #   resp.test_suite_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.last_update_time #=> Time
    #   resp.description #=> String
    #   resp.before_steps #=> Array
    #   resp.before_steps[0].name #=> String
    #   resp.before_steps[0].description #=> String
    #   resp.before_steps[0].action.resource_action.m2_managed_application_action.resource #=> String
    #   resp.before_steps[0].action.resource_action.m2_managed_application_action.action_type #=> String, one of "Configure", "Deconfigure"
    #   resp.before_steps[0].action.resource_action.m2_managed_application_action.properties.force_stop #=> Boolean
    #   resp.before_steps[0].action.resource_action.m2_managed_application_action.properties.import_data_set_location #=> String
    #   resp.before_steps[0].action.resource_action.m2_non_managed_application_action.resource #=> String
    #   resp.before_steps[0].action.resource_action.m2_non_managed_application_action.action_type #=> String, one of "Configure", "Deconfigure"
    #   resp.before_steps[0].action.resource_action.cloud_formation_action.resource #=> String
    #   resp.before_steps[0].action.resource_action.cloud_formation_action.action_type #=> String, one of "Create", "Delete"
    #   resp.before_steps[0].action.mainframe_action.resource #=> String
    #   resp.before_steps[0].action.mainframe_action.action_type.batch.batch_job_name #=> String
    #   resp.before_steps[0].action.mainframe_action.action_type.batch.batch_job_parameters #=> Hash
    #   resp.before_steps[0].action.mainframe_action.action_type.batch.batch_job_parameters["String"] #=> String
    #   resp.before_steps[0].action.mainframe_action.action_type.batch.export_data_set_names #=> Array
    #   resp.before_steps[0].action.mainframe_action.action_type.batch.export_data_set_names[0] #=> String
    #   resp.before_steps[0].action.mainframe_action.action_type.tn3270.script.script_location #=> String
    #   resp.before_steps[0].action.mainframe_action.action_type.tn3270.script.type #=> String, one of "Selenium"
    #   resp.before_steps[0].action.mainframe_action.action_type.tn3270.export_data_set_names #=> Array
    #   resp.before_steps[0].action.mainframe_action.action_type.tn3270.export_data_set_names[0] #=> String
    #   resp.before_steps[0].action.mainframe_action.properties.dms_task_arn #=> String
    #   resp.before_steps[0].action.compare_action.input.file.source_location #=> String
    #   resp.before_steps[0].action.compare_action.input.file.target_location #=> String
    #   resp.before_steps[0].action.compare_action.input.file.file_metadata.data_sets #=> Array
    #   resp.before_steps[0].action.compare_action.input.file.file_metadata.data_sets[0].type #=> String, one of "PS"
    #   resp.before_steps[0].action.compare_action.input.file.file_metadata.data_sets[0].name #=> String
    #   resp.before_steps[0].action.compare_action.input.file.file_metadata.data_sets[0].ccsid #=> String
    #   resp.before_steps[0].action.compare_action.input.file.file_metadata.data_sets[0].format #=> String, one of "FIXED", "VARIABLE", "LINE_SEQUENTIAL"
    #   resp.before_steps[0].action.compare_action.input.file.file_metadata.data_sets[0].length #=> Integer
    #   resp.before_steps[0].action.compare_action.input.file.file_metadata.database_cdc.source_metadata.type #=> String, one of "z/OS-DB2"
    #   resp.before_steps[0].action.compare_action.input.file.file_metadata.database_cdc.source_metadata.capture_tool #=> String, one of "Precisely", "AWS DMS"
    #   resp.before_steps[0].action.compare_action.input.file.file_metadata.database_cdc.target_metadata.type #=> String, one of "PostgreSQL"
    #   resp.before_steps[0].action.compare_action.input.file.file_metadata.database_cdc.target_metadata.capture_tool #=> String, one of "Precisely", "AWS DMS"
    #   resp.before_steps[0].action.compare_action.output.file.file_location #=> String
    #   resp.after_steps #=> Array
    #   resp.after_steps[0].name #=> String
    #   resp.after_steps[0].description #=> String
    #   resp.after_steps[0].action.resource_action.m2_managed_application_action.resource #=> String
    #   resp.after_steps[0].action.resource_action.m2_managed_application_action.action_type #=> String, one of "Configure", "Deconfigure"
    #   resp.after_steps[0].action.resource_action.m2_managed_application_action.properties.force_stop #=> Boolean
    #   resp.after_steps[0].action.resource_action.m2_managed_application_action.properties.import_data_set_location #=> String
    #   resp.after_steps[0].action.resource_action.m2_non_managed_application_action.resource #=> String
    #   resp.after_steps[0].action.resource_action.m2_non_managed_application_action.action_type #=> String, one of "Configure", "Deconfigure"
    #   resp.after_steps[0].action.resource_action.cloud_formation_action.resource #=> String
    #   resp.after_steps[0].action.resource_action.cloud_formation_action.action_type #=> String, one of "Create", "Delete"
    #   resp.after_steps[0].action.mainframe_action.resource #=> String
    #   resp.after_steps[0].action.mainframe_action.action_type.batch.batch_job_name #=> String
    #   resp.after_steps[0].action.mainframe_action.action_type.batch.batch_job_parameters #=> Hash
    #   resp.after_steps[0].action.mainframe_action.action_type.batch.batch_job_parameters["String"] #=> String
    #   resp.after_steps[0].action.mainframe_action.action_type.batch.export_data_set_names #=> Array
    #   resp.after_steps[0].action.mainframe_action.action_type.batch.export_data_set_names[0] #=> String
    #   resp.after_steps[0].action.mainframe_action.action_type.tn3270.script.script_location #=> String
    #   resp.after_steps[0].action.mainframe_action.action_type.tn3270.script.type #=> String, one of "Selenium"
    #   resp.after_steps[0].action.mainframe_action.action_type.tn3270.export_data_set_names #=> Array
    #   resp.after_steps[0].action.mainframe_action.action_type.tn3270.export_data_set_names[0] #=> String
    #   resp.after_steps[0].action.mainframe_action.properties.dms_task_arn #=> String
    #   resp.after_steps[0].action.compare_action.input.file.source_location #=> String
    #   resp.after_steps[0].action.compare_action.input.file.target_location #=> String
    #   resp.after_steps[0].action.compare_action.input.file.file_metadata.data_sets #=> Array
    #   resp.after_steps[0].action.compare_action.input.file.file_metadata.data_sets[0].type #=> String, one of "PS"
    #   resp.after_steps[0].action.compare_action.input.file.file_metadata.data_sets[0].name #=> String
    #   resp.after_steps[0].action.compare_action.input.file.file_metadata.data_sets[0].ccsid #=> String
    #   resp.after_steps[0].action.compare_action.input.file.file_metadata.data_sets[0].format #=> String, one of "FIXED", "VARIABLE", "LINE_SEQUENTIAL"
    #   resp.after_steps[0].action.compare_action.input.file.file_metadata.data_sets[0].length #=> Integer
    #   resp.after_steps[0].action.compare_action.input.file.file_metadata.database_cdc.source_metadata.type #=> String, one of "z/OS-DB2"
    #   resp.after_steps[0].action.compare_action.input.file.file_metadata.database_cdc.source_metadata.capture_tool #=> String, one of "Precisely", "AWS DMS"
    #   resp.after_steps[0].action.compare_action.input.file.file_metadata.database_cdc.target_metadata.type #=> String, one of "PostgreSQL"
    #   resp.after_steps[0].action.compare_action.input.file.file_metadata.database_cdc.target_metadata.capture_tool #=> String, one of "Precisely", "AWS DMS"
    #   resp.after_steps[0].action.compare_action.output.file.file_location #=> String
    #   resp.test_cases.sequential #=> Array
    #   resp.test_cases.sequential[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/GetTestSuite AWS API Documentation
    #
    # @overload get_test_suite(params = {})
    # @param [Hash] params ({})
    def get_test_suite(params = {}, options = {})
      req = build_request(:get_test_suite, params)
      req.send_request(options)
    end

    # Lists tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists test cases.
    #
    # @option params [Array<String>] :test_case_ids
    #   The IDs of the test cases.
    #
    # @option params [String] :next_token
    #   The next token of the test cases.
    #
    # @option params [Integer] :max_results
    #   The maximum results of the test case.
    #
    # @return [Types::ListTestCasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestCasesResponse#test_cases #test_cases} => Array&lt;Types::TestCaseSummary&gt;
    #   * {Types::ListTestCasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_cases({
    #     test_case_ids: ["Identifier"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.test_cases #=> Array
    #   resp.test_cases[0].test_case_id #=> String
    #   resp.test_cases[0].test_case_arn #=> String
    #   resp.test_cases[0].name #=> String
    #   resp.test_cases[0].status_reason #=> String
    #   resp.test_cases[0].latest_version #=> Integer
    #   resp.test_cases[0].status #=> String, one of "Active", "Deleting"
    #   resp.test_cases[0].creation_time #=> Time
    #   resp.test_cases[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestCases AWS API Documentation
    #
    # @overload list_test_cases(params = {})
    # @param [Hash] params ({})
    def list_test_cases(params = {}, options = {})
      req = build_request(:list_test_cases, params)
      req.send_request(options)
    end

    # Lists test configurations.
    #
    # @option params [Array<String>] :test_configuration_ids
    #   The configuration IDs of the test configurations.
    #
    # @option params [String] :next_token
    #   The next token for the test configurations.
    #
    # @option params [Integer] :max_results
    #   The maximum results of the test configuration.
    #
    # @return [Types::ListTestConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestConfigurationsResponse#test_configurations #test_configurations} => Array&lt;Types::TestConfigurationSummary&gt;
    #   * {Types::ListTestConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_configurations({
    #     test_configuration_ids: ["Identifier"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.test_configurations #=> Array
    #   resp.test_configurations[0].test_configuration_id #=> String
    #   resp.test_configurations[0].name #=> String
    #   resp.test_configurations[0].status_reason #=> String
    #   resp.test_configurations[0].latest_version #=> Integer
    #   resp.test_configurations[0].test_configuration_arn #=> String
    #   resp.test_configurations[0].status #=> String, one of "Active", "Deleting"
    #   resp.test_configurations[0].creation_time #=> Time
    #   resp.test_configurations[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestConfigurations AWS API Documentation
    #
    # @overload list_test_configurations(params = {})
    # @param [Hash] params ({})
    def list_test_configurations(params = {}, options = {})
      req = build_request(:list_test_configurations, params)
      req.send_request(options)
    end

    # Lists test run steps.
    #
    # @option params [required, String] :test_run_id
    #   The test run ID of the test run steps.
    #
    # @option params [String] :test_case_id
    #   The test case ID of the test run steps.
    #
    # @option params [String] :test_suite_id
    #   The test suite ID of the test run steps.
    #
    # @option params [String] :next_token
    #   The token from a previous step to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of test run steps to return in one page of results.
    #
    # @return [Types::ListTestRunStepsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestRunStepsResponse#test_run_steps #test_run_steps} => Array&lt;Types::TestRunStepSummary&gt;
    #   * {Types::ListTestRunStepsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_run_steps({
    #     test_run_id: "Identifier", # required
    #     test_case_id: "Identifier",
    #     test_suite_id: "Identifier",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.test_run_steps #=> Array
    #   resp.test_run_steps[0].step_name #=> String
    #   resp.test_run_steps[0].test_run_id #=> String
    #   resp.test_run_steps[0].test_case_id #=> String
    #   resp.test_run_steps[0].test_case_version #=> Integer
    #   resp.test_run_steps[0].test_suite_id #=> String
    #   resp.test_run_steps[0].test_suite_version #=> Integer
    #   resp.test_run_steps[0].before_step #=> Boolean
    #   resp.test_run_steps[0].after_step #=> Boolean
    #   resp.test_run_steps[0].status #=> String, one of "Success", "Failed", "Running"
    #   resp.test_run_steps[0].status_reason #=> String
    #   resp.test_run_steps[0].run_start_time #=> Time
    #   resp.test_run_steps[0].run_end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestRunSteps AWS API Documentation
    #
    # @overload list_test_run_steps(params = {})
    # @param [Hash] params ({})
    def list_test_run_steps(params = {}, options = {})
      req = build_request(:list_test_run_steps, params)
      req.send_request(options)
    end

    # Lists test run test cases.
    #
    # @option params [required, String] :test_run_id
    #   The test run ID of the test cases.
    #
    # @option params [String] :next_token
    #   The token from a previous request to retrieve the next page of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of test run test cases to return in one page of
    #   results.
    #
    # @return [Types::ListTestRunTestCasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestRunTestCasesResponse#test_run_test_cases #test_run_test_cases} => Array&lt;Types::TestCaseRunSummary&gt;
    #   * {Types::ListTestRunTestCasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_run_test_cases({
    #     test_run_id: "Identifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.test_run_test_cases #=> Array
    #   resp.test_run_test_cases[0].test_case_id #=> String
    #   resp.test_run_test_cases[0].test_case_version #=> Integer
    #   resp.test_run_test_cases[0].test_run_id #=> String
    #   resp.test_run_test_cases[0].status #=> String, one of "Success", "Running", "Failed"
    #   resp.test_run_test_cases[0].status_reason #=> String
    #   resp.test_run_test_cases[0].run_start_time #=> Time
    #   resp.test_run_test_cases[0].run_end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestRunTestCases AWS API Documentation
    #
    # @overload list_test_run_test_cases(params = {})
    # @param [Hash] params ({})
    def list_test_run_test_cases(params = {}, options = {})
      req = build_request(:list_test_run_test_cases, params)
      req.send_request(options)
    end

    # Lists test runs.
    #
    # @option params [String] :test_suite_id
    #   The test suite ID of the test runs.
    #
    # @option params [Array<String>] :test_run_ids
    #   The test run IDs of the test runs.
    #
    # @option params [String] :next_token
    #   The token from the previous request to retrieve the next page of test
    #   run results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of test runs to return in one page of results.
    #
    # @return [Types::ListTestRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestRunsResponse#test_runs #test_runs} => Array&lt;Types::TestRunSummary&gt;
    #   * {Types::ListTestRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_runs({
    #     test_suite_id: "Identifier",
    #     test_run_ids: ["Identifier"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.test_runs #=> Array
    #   resp.test_runs[0].test_run_id #=> String
    #   resp.test_runs[0].test_run_arn #=> String
    #   resp.test_runs[0].test_suite_id #=> String
    #   resp.test_runs[0].test_suite_version #=> Integer
    #   resp.test_runs[0].test_configuration_id #=> String
    #   resp.test_runs[0].test_configuration_version #=> Integer
    #   resp.test_runs[0].status #=> String, one of "Success", "Running", "Failed", "Deleting"
    #   resp.test_runs[0].status_reason #=> String
    #   resp.test_runs[0].run_start_time #=> Time
    #   resp.test_runs[0].run_end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestRuns AWS API Documentation
    #
    # @overload list_test_runs(params = {})
    # @param [Hash] params ({})
    def list_test_runs(params = {}, options = {})
      req = build_request(:list_test_runs, params)
      req.send_request(options)
    end

    # Lists test suites.
    #
    # @option params [Array<String>] :test_suite_ids
    #   The suite ID of the test suites.
    #
    # @option params [String] :next_token
    #   The token from a previous request to retrieve the next page of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of test suites to return in one page of results.
    #
    # @return [Types::ListTestSuitesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestSuitesResponse#test_suites #test_suites} => Array&lt;Types::TestSuiteSummary&gt;
    #   * {Types::ListTestSuitesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_suites({
    #     test_suite_ids: ["Identifier"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.test_suites #=> Array
    #   resp.test_suites[0].test_suite_id #=> String
    #   resp.test_suites[0].name #=> String
    #   resp.test_suites[0].status_reason #=> String
    #   resp.test_suites[0].latest_version #=> Integer
    #   resp.test_suites[0].test_suite_arn #=> String
    #   resp.test_suites[0].status #=> String, one of "Creating", "Updating", "Active", "Failed", "Deleting"
    #   resp.test_suites[0].creation_time #=> Time
    #   resp.test_suites[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestSuites AWS API Documentation
    #
    # @overload list_test_suites(params = {})
    # @param [Hash] params ({})
    def list_test_suites(params = {}, options = {})
      req = build_request(:list_test_suites, params)
      req.send_request(options)
    end

    # Starts a test run.
    #
    # @option params [required, String] :test_suite_id
    #   The test suite ID of the test run.
    #
    # @option params [String] :test_configuration_id
    #   The configuration ID of the test run.
    #
    # @option params [String] :client_token
    #   The client token of the test run.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags of the test run.
    #
    # @return [Types::StartTestRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTestRunResponse#test_run_id #test_run_id} => String
    #   * {Types::StartTestRunResponse#test_run_status #test_run_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_test_run({
    #     test_suite_id: "Identifier", # required
    #     test_configuration_id: "Identifier",
    #     client_token: "IdempotencyTokenString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.test_run_id #=> String
    #   resp.test_run_status #=> String, one of "Success", "Running", "Failed", "Deleting"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/StartTestRun AWS API Documentation
    #
    # @overload start_test_run(params = {})
    # @param [Hash] params ({})
    def start_test_run(params = {}, options = {})
      req = build_request(:start_test_run, params)
      req.send_request(options)
    end

    # Specifies tags of a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the tag resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags of the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Untags a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys of the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a test case.
    #
    # @option params [required, String] :test_case_id
    #   The test case ID of the test case.
    #
    # @option params [String] :description
    #   The description of the test case.
    #
    # @option params [Array<Types::Step>] :steps
    #   The steps of the test case.
    #
    # @return [Types::UpdateTestCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTestCaseResponse#test_case_id #test_case_id} => String
    #   * {Types::UpdateTestCaseResponse#test_case_version #test_case_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_test_case({
    #     test_case_id: "Identifier", # required
    #     description: "ResourceDescription",
    #     steps: [
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           resource_action: {
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure", # required, accepts Configure, Deconfigure
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable",
    #               },
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure", # required, accepts Configure, Deconfigure
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create", # accepts Create, Delete
    #             },
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String",
    #                 },
    #                 export_data_set_names: ["String100"],
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium", # required, accepts Selenium
    #                 },
    #                 export_data_set_names: ["String100"],
    #               },
    #             },
    #             properties: {
    #               dms_task_arn: "Variable",
    #             },
    #           },
    #           compare_action: {
    #             input: { # required
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   data_sets: [
    #                     {
    #                       type: "PS", # required, accepts PS
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED", # required, accepts FIXED, VARIABLE, LINE_SEQUENTIAL
    #                       length: 1, # required
    #                     },
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2", # required, accepts z/OS-DB2
    #                       capture_tool: "Precisely", # required, accepts Precisely, AWS DMS
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL", # required, accepts PostgreSQL
    #                       capture_tool: "Precisely", # required, accepts Precisely, AWS DMS
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #             output: {
    #               file: {
    #                 file_location: "S3Uri",
    #               },
    #             },
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.test_case_id #=> String
    #   resp.test_case_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/UpdateTestCase AWS API Documentation
    #
    # @overload update_test_case(params = {})
    # @param [Hash] params ({})
    def update_test_case(params = {}, options = {})
      req = build_request(:update_test_case, params)
      req.send_request(options)
    end

    # Updates a test configuration.
    #
    # @option params [required, String] :test_configuration_id
    #   The test configuration ID of the test configuration.
    #
    # @option params [String] :description
    #   The description of the test configuration.
    #
    # @option params [Array<Types::Resource>] :resources
    #   The resources of the test configuration.
    #
    # @option params [Hash<String,String>] :properties
    #   The properties of the test configuration.
    #
    # @option params [Types::ServiceSettings] :service_settings
    #   The service settings of the test configuration.
    #
    # @return [Types::UpdateTestConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTestConfigurationResponse#test_configuration_id #test_configuration_id} => String
    #   * {Types::UpdateTestConfigurationResponse#test_configuration_version #test_configuration_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_test_configuration({
    #     test_configuration_id: "Identifier", # required
    #     description: "ResourceDescription",
    #     resources: [
    #       {
    #         name: "ResourceName", # required
    #         type: { # required
    #           cloud_formation: {
    #             template_location: "S3Uri", # required
    #             parameters: {
    #               "String" => "String",
    #             },
    #           },
    #           m2_managed_application: {
    #             application_id: "Variable", # required
    #             runtime: "MicroFocus", # required, accepts MicroFocus
    #             vpc_endpoint_service_name: "Variable",
    #             listener_port: "Variable",
    #           },
    #           m2_non_managed_application: {
    #             vpc_endpoint_service_name: "Variable", # required
    #             listener_port: "Variable", # required
    #             runtime: "BluAge", # required, accepts BluAge
    #             web_app_name: "Variable",
    #           },
    #         },
    #       },
    #     ],
    #     properties: {
    #       "String" => "String",
    #     },
    #     service_settings: {
    #       kms_key_id: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.test_configuration_id #=> String
    #   resp.test_configuration_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/UpdateTestConfiguration AWS API Documentation
    #
    # @overload update_test_configuration(params = {})
    # @param [Hash] params ({})
    def update_test_configuration(params = {}, options = {})
      req = build_request(:update_test_configuration, params)
      req.send_request(options)
    end

    # Updates a test suite.
    #
    # @option params [required, String] :test_suite_id
    #   The test suite ID of the test suite.
    #
    # @option params [String] :description
    #   The description of the test suite.
    #
    # @option params [Array<Types::Step>] :before_steps
    #   The before steps for the test suite.
    #
    # @option params [Array<Types::Step>] :after_steps
    #   The after steps of the test suite.
    #
    # @option params [Types::TestCases] :test_cases
    #   The test cases in the test suite.
    #
    # @return [Types::UpdateTestSuiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTestSuiteResponse#test_suite_id #test_suite_id} => String
    #   * {Types::UpdateTestSuiteResponse#test_suite_version #test_suite_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_test_suite({
    #     test_suite_id: "Identifier", # required
    #     description: "ResourceDescription",
    #     before_steps: [
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           resource_action: {
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure", # required, accepts Configure, Deconfigure
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable",
    #               },
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure", # required, accepts Configure, Deconfigure
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create", # accepts Create, Delete
    #             },
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String",
    #                 },
    #                 export_data_set_names: ["String100"],
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium", # required, accepts Selenium
    #                 },
    #                 export_data_set_names: ["String100"],
    #               },
    #             },
    #             properties: {
    #               dms_task_arn: "Variable",
    #             },
    #           },
    #           compare_action: {
    #             input: { # required
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   data_sets: [
    #                     {
    #                       type: "PS", # required, accepts PS
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED", # required, accepts FIXED, VARIABLE, LINE_SEQUENTIAL
    #                       length: 1, # required
    #                     },
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2", # required, accepts z/OS-DB2
    #                       capture_tool: "Precisely", # required, accepts Precisely, AWS DMS
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL", # required, accepts PostgreSQL
    #                       capture_tool: "Precisely", # required, accepts Precisely, AWS DMS
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #             output: {
    #               file: {
    #                 file_location: "S3Uri",
    #               },
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     after_steps: [
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           resource_action: {
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure", # required, accepts Configure, Deconfigure
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable",
    #               },
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure", # required, accepts Configure, Deconfigure
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create", # accepts Create, Delete
    #             },
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String",
    #                 },
    #                 export_data_set_names: ["String100"],
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium", # required, accepts Selenium
    #                 },
    #                 export_data_set_names: ["String100"],
    #               },
    #             },
    #             properties: {
    #               dms_task_arn: "Variable",
    #             },
    #           },
    #           compare_action: {
    #             input: { # required
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   data_sets: [
    #                     {
    #                       type: "PS", # required, accepts PS
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED", # required, accepts FIXED, VARIABLE, LINE_SEQUENTIAL
    #                       length: 1, # required
    #                     },
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2", # required, accepts z/OS-DB2
    #                       capture_tool: "Precisely", # required, accepts Precisely, AWS DMS
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL", # required, accepts PostgreSQL
    #                       capture_tool: "Precisely", # required, accepts Precisely, AWS DMS
    #                     },
    #                   },
    #                 },
    #               },
    #             },
    #             output: {
    #               file: {
    #                 file_location: "S3Uri",
    #               },
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     test_cases: {
    #       sequential: ["Identifier"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.test_suite_id #=> String
    #   resp.test_suite_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/UpdateTestSuite AWS API Documentation
    #
    # @overload update_test_suite(params = {})
    # @param [Hash] params ({})
    def update_test_suite(params = {}, options = {})
      req = build_request(:update_test_suite, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::AppTest')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-apptest'
      context[:gem_version] = '1.12.0'
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
