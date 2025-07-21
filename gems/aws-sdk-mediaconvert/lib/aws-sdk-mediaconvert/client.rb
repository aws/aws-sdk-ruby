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

module Aws::MediaConvert
  # An API client for MediaConvert.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MediaConvert::Client.new(
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

    @identifier = :mediaconvert

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
    add_plugin(Aws::MediaConvert::Plugins::Endpoints)

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
    #   @option options [Aws::MediaConvert::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MediaConvert::EndpointParameters`.
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

    # Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN)
    # with AWS Elemental MediaConvert.
    #
    # @option params [required, String] :arn
    #   The ARN of the ACM certificate that you want to associate with your
    #   MediaConvert resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_certificate({
    #     arn: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/AssociateCertificate AWS API Documentation
    #
    # @overload associate_certificate(params = {})
    # @param [Hash] params ({})
    def associate_certificate(params = {}, options = {})
      req = build_request(:associate_certificate, params)
      req.send_request(options)
    end

    # Permanently cancel a job. Once you have canceled a job, you can't
    # start it again.
    #
    # @option params [required, String] :id
    #   The Job ID of the job to be cancelled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CancelJob AWS API Documentation
    #
    # @overload cancel_job(params = {})
    # @param [Hash] params ({})
    def cancel_job(params = {}, options = {})
      req = build_request(:cancel_job, params)
      req.send_request(options)
    end

    # Create a new transcoding job. For information about jobs and job
    # settings, see the User Guide at
    # http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    # @option params [Types::AccelerationSettings] :acceleration_settings
    #   Optional. Accelerated transcoding can significantly speed up jobs with
    #   long, visually complex content. Outputs that use this feature incur
    #   pro-tier pricing. For information about feature limitations, see the
    #   AWS Elemental MediaConvert User Guide.
    #
    # @option params [String] :billing_tags_source
    #   Optionally choose a Billing tags source that AWS Billing and Cost
    #   Management will use to display tags for individual output costs on any
    #   billing report that you set up. Leave blank to use the default value,
    #   Job.
    #
    # @option params [String] :client_request_token
    #   Prevent duplicate jobs from being created and ensure idempotency for your requests. A client request token can be any string that includes up to 64 ASCII characters. If you reuse a client request token within one minute of a successful request, the API returns the job details of the original request instead. For more information see https://docs.aws.amazon.com/mediaconvert/latest/apireference/idempotency.html.**A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::HopDestination>] :hop_destinations
    #   Optional. Use queue hopping to avoid overly long waits in the backlog
    #   of the queue that you submit your job to. Specify an alternate queue
    #   and the maximum time that your job will wait in the initial queue
    #   before hopping. For more information about this feature, see the AWS
    #   Elemental MediaConvert User Guide.
    #
    # @option params [String] :job_engine_version
    #   Use Job engine versions to run jobs for your production workflow on
    #   one version, while you test and validate the latest version. To
    #   specify a Job engine version: Enter a date in a YYYY-MM-DD format. For
    #   a list of valid Job engine versions, submit a ListVersions request. To
    #   not specify a Job engine version: Leave blank.
    #
    # @option params [String] :job_template
    #   Optional. When you create a job, you can either specify a job template
    #   or specify the transcoding settings individually.
    #
    # @option params [Integer] :priority
    #   Optional. Specify the relative priority for this job. In any given
    #   queue, the service begins processing the job with the highest value
    #   first. When more than one job has the same priority, the service
    #   begins processing the job that you submitted first. If you don't
    #   specify a priority, the service uses the default value 0.
    #
    # @option params [String] :queue
    #   Optional. When you create a job, you can specify a queue to send it
    #   to. If you don't specify, the job will go to the default queue. For
    #   more about queues, see the User Guide topic at
    #   https://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html.
    #
    # @option params [required, String] :role
    #   Required. The IAM role you use for creating this job. For details
    #   about permissions, see the User Guide topic at the User Guide at
    #   https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.
    #
    # @option params [required, Types::JobSettings] :settings
    #   JobSettings contains all the transcode settings for a job.
    #
    # @option params [String] :simulate_reserved_queue
    #   Optional. Enable this setting when you run a test job to estimate how
    #   many reserved transcoding slots (RTS) you need. When this is enabled,
    #   MediaConvert runs your job from an on-demand queue with similar
    #   performance to what you will see with one RTS in a reserved queue.
    #   This setting is disabled by default.
    #
    # @option params [String] :status_update_interval
    #   Optional. Specify how often MediaConvert sends STATUS\_UPDATE events
    #   to Amazon CloudWatch Events. Set the interval, in seconds, between
    #   status updates. MediaConvert sends an update at this interval from the
    #   time the service begins processing your job to the time it completes
    #   the transcode or encounters an error.
    #
    # @option params [Hash<String,String>] :tags
    #   Optional. The tags that you want to add to the resource. You can tag
    #   resources with a key-value pair or with only a key. Use standard AWS
    #   tags on your job for automatic integration with AWS services and for
    #   custom integrations and workflows.
    #
    # @option params [Hash<String,String>] :user_metadata
    #   Optional. User-defined metadata that you want to associate with an
    #   MediaConvert job. You specify metadata in key/value pairs. Use only
    #   for existing integrations or workflows that rely on job metadata tags.
    #   Otherwise, we recommend that you use standard AWS tags.
    #
    # @return [Types::CreateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResponse#job #job} => Types::Job
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateJob AWS API Documentation
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # Create a new job template. For information about job templates see the
    # User Guide at
    # http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    # @option params [Types::AccelerationSettings] :acceleration_settings
    #   Accelerated transcoding can significantly speed up jobs with long,
    #   visually complex content. Outputs that use this feature incur pro-tier
    #   pricing. For information about feature limitations, see the AWS
    #   Elemental MediaConvert User Guide.
    #
    # @option params [String] :category
    #   Optional. A category for the job template you are creating
    #
    # @option params [String] :description
    #   Optional. A description of the job template you are creating.
    #
    # @option params [Array<Types::HopDestination>] :hop_destinations
    #   Optional. Use queue hopping to avoid overly long waits in the backlog
    #   of the queue that you submit your job to. Specify an alternate queue
    #   and the maximum time that your job will wait in the initial queue
    #   before hopping. For more information about this feature, see the AWS
    #   Elemental MediaConvert User Guide.
    #
    # @option params [required, String] :name
    #   The name of the job template you are creating.
    #
    # @option params [Integer] :priority
    #   Specify the relative priority for this job. In any given queue, the
    #   service begins processing the job with the highest value first. When
    #   more than one job has the same priority, the service begins processing
    #   the job that you submitted first. If you don't specify a priority,
    #   the service uses the default value 0.
    #
    # @option params [String] :queue
    #   Optional. The queue that jobs created from this template are assigned
    #   to. If you don't specify this, jobs will go to the default queue.
    #
    # @option params [required, Types::JobTemplateSettings] :settings
    #   JobTemplateSettings contains all the transcode settings saved in the
    #   template that will be applied to jobs created from it.
    #
    # @option params [String] :status_update_interval
    #   Specify how often MediaConvert sends STATUS\_UPDATE events to Amazon
    #   CloudWatch Events. Set the interval, in seconds, between status
    #   updates. MediaConvert sends an update at this interval from the time
    #   the service begins processing your job to the time it completes the
    #   transcode or encounters an error.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that you want to add to the resource. You can tag resources
    #   with a key-value pair or with only a key.
    #
    # @return [Types::CreateJobTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobTemplateResponse#job_template #job_template} => Types::JobTemplate
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateJobTemplate AWS API Documentation
    #
    # @overload create_job_template(params = {})
    # @param [Hash] params ({})
    def create_job_template(params = {}, options = {})
      req = build_request(:create_job_template, params)
      req.send_request(options)
    end

    # Create a new preset. For information about job templates see the User
    # Guide at
    # http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    # @option params [String] :category
    #   Optional. A category for the preset you are creating.
    #
    # @option params [String] :description
    #   Optional. A description of the preset you are creating.
    #
    # @option params [required, String] :name
    #   The name of the preset you are creating.
    #
    # @option params [required, Types::PresetSettings] :settings
    #   Settings for preset
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that you want to add to the resource. You can tag resources
    #   with a key-value pair or with only a key.
    #
    # @return [Types::CreatePresetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePresetResponse#preset #preset} => Types::Preset
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_preset({
    #     category: "__string",
    #     description: "__string",
    #     name: "__string", # required
    #     settings: { # required
    #       audio_descriptions: [
    #         {
    #           audio_channel_tagging_settings: {
    #             channel_tag: "L", # accepts L, R, C, LFE, LS, RS, LC, RC, CS, LSD, RSD, TCS, VHL, VHC, VHR, TBL, TBC, TBR, RSL, RSR, LW, RW, LFE2, LT, RT, HI, NAR, M
    #             channel_tags: ["L"], # accepts L, R, C, LFE, LS, RS, LC, RC, CS, LSD, RSD, TCS, VHL, VHC, VHR, TBL, TBC, TBR, RSL, RSR, LW, RW, LFE2, LT, RT, HI, NAR, M
    #           },
    #           audio_normalization_settings: {
    #             algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2, ITU_BS_1770_3, ITU_BS_1770_4
    #             algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #             correction_gate_level: 1,
    #             loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #             peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #             target_lkfs: 1.0,
    #             true_peak_limiter_threshold: 1.0,
    #           },
    #           audio_source_name: "__stringMax2048",
    #           audio_type: 1,
    #           audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           codec_settings: {
    #             aac_settings: {
    #               audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #               bitrate: 1,
    #               codec_profile: "LC", # accepts LC, HEV1, HEV2, XHE
    #               coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #               loudness_measurement_mode: "PROGRAM", # accepts PROGRAM, ANCHOR
    #               rap_interval: 1,
    #               rate_control_mode: "CBR", # accepts CBR, VBR
    #               raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #               sample_rate: 1,
    #               specification: "MPEG2", # accepts MPEG2, MPEG4
    #               target_loudness_range: 1,
    #               vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #             },
    #             ac_3_settings: {
    #               bitrate: 1,
    #               bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #               dialnorm: 1,
    #               dynamic_range_compression_line: "FILM_STANDARD", # accepts FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH, NONE
    #               dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #               dynamic_range_compression_rf: "FILM_STANDARD", # accepts FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH, NONE
    #               lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               sample_rate: 1,
    #             },
    #             aiff_settings: {
    #               bit_depth: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #             codec: "AAC", # accepts AAC, MP2, MP3, WAV, AIFF, AC3, EAC3, EAC3_ATMOS, VORBIS, OPUS, PASSTHROUGH, FLAC
    #             eac_3_atmos_settings: {
    #               bitrate: 1,
    #               bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN
    #               coding_mode: "CODING_MODE_AUTO", # accepts CODING_MODE_AUTO, CODING_MODE_5_1_4, CODING_MODE_7_1_4, CODING_MODE_9_1_6
    #               dialogue_intelligence: "ENABLED", # accepts ENABLED, DISABLED
    #               downmix_control: "SPECIFIED", # accepts SPECIFIED, INITIALIZE_FROM_SOURCE
    #               dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #               dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #               dynamic_range_control: "SPECIFIED", # accepts SPECIFIED, INITIALIZE_FROM_SOURCE
    #               lo_ro_center_mix_level: 1.0,
    #               lo_ro_surround_mix_level: 1.0,
    #               lt_rt_center_mix_level: 1.0,
    #               lt_rt_surround_mix_level: 1.0,
    #               metering_mode: "LEQ_A", # accepts LEQ_A, ITU_BS_1770_1, ITU_BS_1770_2, ITU_BS_1770_3, ITU_BS_1770_4
    #               sample_rate: 1,
    #               speech_threshold: 1,
    #               stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, STEREO, SURROUND, DPL2
    #               surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #             },
    #             eac_3_settings: {
    #               attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #               bitrate: 1,
    #               bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #               dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               dialnorm: 1,
    #               dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #               dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #               lfe_control: "LFE", # accepts LFE, NO_LFE
    #               lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               lo_ro_center_mix_level: 1.0,
    #               lo_ro_surround_mix_level: 1.0,
    #               lt_rt_center_mix_level: 1.0,
    #               lt_rt_surround_mix_level: 1.0,
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #               phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #               sample_rate: 1,
    #               stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #               surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #               surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #             },
    #             flac_settings: {
    #               bit_depth: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #             mp_2_settings: {
    #               bitrate: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #             mp_3_settings: {
    #               bitrate: 1,
    #               channels: 1,
    #               rate_control_mode: "CBR", # accepts CBR, VBR
    #               sample_rate: 1,
    #               vbr_quality: 1,
    #             },
    #             opus_settings: {
    #               bitrate: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #             vorbis_settings: {
    #               channels: 1,
    #               sample_rate: 1,
    #               vbr_quality: 1,
    #             },
    #             wav_settings: {
    #               bit_depth: 1,
    #               channels: 1,
    #               format: "RIFF", # accepts RIFF, RF64, EXTENSIBLE
    #               sample_rate: 1,
    #             },
    #           },
    #           custom_language_code: "__stringPatternAZaZ23AZaZ09",
    #           language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG, SRP
    #           language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           remix_settings: {
    #             audio_description_audio_channel: 1,
    #             audio_description_data_channel: 1,
    #             channel_mapping: {
    #               output_channels: [
    #                 {
    #                   input_channels: [1],
    #                   input_channels_fine_tune: [1.0],
    #                 },
    #               ],
    #             },
    #             channels_in: 1,
    #             channels_out: 1,
    #           },
    #           stream_name: "__stringPatternWS",
    #         },
    #       ],
    #       caption_descriptions: [
    #         {
    #           custom_language_code: "__stringPatternAZaZ23AZaZ",
    #           destination_settings: {
    #             burnin_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT, AUTO
    #               apply_font_color: "WHITE_TEXT_ONLY", # accepts WHITE_TEXT_ONLY, ALL_TEXT
    #               background_color: "NONE", # accepts NONE, BLACK, WHITE, AUTO
    #               background_opacity: 1,
    #               fallback_font: "BEST_MATCH", # accepts BEST_MATCH, MONOSPACED_SANSSERIF, MONOSPACED_SERIF, PROPORTIONAL_SANSSERIF, PROPORTIONAL_SERIF
    #               font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE, HEX, AUTO
    #               font_file_bold: "__stringPatternS3TtfHttpsTtf",
    #               font_file_bold_italic: "__string",
    #               font_file_italic: "__stringPatternS3TtfHttpsTtf",
    #               font_file_regular: "__stringPatternS3TtfHttpsTtf",
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_script: "AUTOMATIC", # accepts AUTOMATIC, HANS, HANT
    #               font_size: 1,
    #               hex_font_color: "__stringMin6Max8Pattern09aFAF609aFAF2",
    #               outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE, AUTO
    #               outline_size: 1,
    #               remove_ruby_reserve_attributes: "DISABLED", # accepts DISABLED, ENABLED
    #               shadow_color: "NONE", # accepts NONE, BLACK, WHITE, AUTO
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #               teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL, AUTO
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, EMBEDDED_PLUS_SCTE20, IMSC, SCTE20_PLUS_EMBEDDED, SCC, SRT, SMI, TELETEXT, TTML, WEBVTT
    #             dvb_sub_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT, AUTO
    #               apply_font_color: "WHITE_TEXT_ONLY", # accepts WHITE_TEXT_ONLY, ALL_TEXT
    #               background_color: "NONE", # accepts NONE, BLACK, WHITE, AUTO
    #               background_opacity: 1,
    #               dds_handling: "NONE", # accepts NONE, SPECIFIED, NO_DISPLAY_WINDOW, SPECIFIED_OPTIMAL
    #               dds_x_coordinate: 1,
    #               dds_y_coordinate: 1,
    #               fallback_font: "BEST_MATCH", # accepts BEST_MATCH, MONOSPACED_SANSSERIF, MONOSPACED_SERIF, PROPORTIONAL_SANSSERIF, PROPORTIONAL_SERIF
    #               font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE, HEX, AUTO
    #               font_file_bold: "__stringPatternS3TtfHttpsTtf",
    #               font_file_bold_italic: "__stringPatternS3TtfHttpsTtf",
    #               font_file_italic: "__stringPatternS3TtfHttpsTtf",
    #               font_file_regular: "__stringPatternS3TtfHttpsTtf",
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_script: "AUTOMATIC", # accepts AUTOMATIC, HANS, HANT
    #               font_size: 1,
    #               height: 1,
    #               hex_font_color: "__stringMin6Max8Pattern09aFAF609aFAF2",
    #               outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE, AUTO
    #               outline_size: 1,
    #               shadow_color: "NONE", # accepts NONE, BLACK, WHITE, AUTO
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #               subtitling_type: "HEARING_IMPAIRED", # accepts HEARING_IMPAIRED, STANDARD
    #               teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL, AUTO
    #               width: 1,
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             embedded_destination_settings: {
    #               destination_608_channel_number: 1,
    #               destination_708_service_number: 1,
    #             },
    #             imsc_destination_settings: {
    #               accessibility: "DISABLED", # accepts DISABLED, ENABLED
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #             scc_destination_settings: {
    #               framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_25, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #             },
    #             srt_destination_settings: {
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #             teletext_destination_settings: {
    #               page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #               page_types: ["PAGE_TYPE_INITIAL"], # accepts PAGE_TYPE_INITIAL, PAGE_TYPE_SUBTITLE, PAGE_TYPE_ADDL_INFO, PAGE_TYPE_PROGRAM_SCHEDULE, PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE
    #             },
    #             ttml_destination_settings: {
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #             webvtt_destination_settings: {
    #               accessibility: "DISABLED", # accepts DISABLED, ENABLED
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED, STRICT, MERGE
    #             },
    #           },
    #           language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG, SRP
    #           language_description: "__string",
    #         },
    #       ],
    #       container_settings: {
    #         cmfc_settings: {
    #           audio_duration: "DEFAULT_CODEC_DURATION", # accepts DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION
    #           audio_group_id: "__string",
    #           audio_rendition_sets: "__string",
    #           audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #           descriptive_video_service_flag: "DONT_FLAG", # accepts DONT_FLAG, FLAG
    #           i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           klv_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           manifest_metadata_signaling: "ENABLED", # accepts ENABLED, DISABLED
    #           scte_35_esam: "INSERT", # accepts INSERT, NONE
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata_box_version: "VERSION_0", # accepts VERSION_0, VERSION_1
    #           timed_metadata_scheme_id_uri: "__stringMax1000",
    #           timed_metadata_value: "__stringMax1000",
    #         },
    #         container: "F4V", # accepts F4V, GIF, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, OGG, WEBM, RAW, Y4M
    #         f4v_settings: {
    #           moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #         },
    #         m2ts_settings: {
    #           audio_buffer_model: "DVB", # accepts DVB, ATSC
    #           audio_duration: "DEFAULT_CODEC_DURATION", # accepts DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION
    #           audio_frames_per_pes: 1,
    #           audio_pids: [1],
    #           audio_pts_offset_delta: 1,
    #           bitrate: 1,
    #           buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #           data_pts_control: "AUTO", # accepts AUTO, ALIGN_TO_VIDEO
    #           dvb_nit_settings: {
    #             network_id: 1,
    #             network_name: "__stringMin1Max256",
    #             nit_interval: 1,
    #           },
    #           dvb_sdt_settings: {
    #             output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #             sdt_interval: 1,
    #             service_name: "__stringMin1Max256",
    #             service_provider_name: "__stringMin1Max256",
    #           },
    #           dvb_sub_pids: [1],
    #           dvb_tdt_settings: {
    #             tdt_interval: 1,
    #           },
    #           dvb_teletext_pid: 1,
    #           ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #           ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #           es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           force_ts_video_ebp_order: "FORCE", # accepts FORCE, DEFAULT
    #           fragment_time: 1.0,
    #           klv_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           max_pcr_interval: 1,
    #           min_ebp_interval: 1,
    #           nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #           null_packet_bitrate: 1.0,
    #           pat_interval: 1,
    #           pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #           pcr_pid: 1,
    #           pmt_interval: 1,
    #           pmt_pid: 1,
    #           prevent_buffer_underflow: "DISABLED", # accepts DISABLED, ENABLED
    #           private_metadata_pid: 1,
    #           program_number: 1,
    #           pts_offset: 1,
    #           pts_offset_mode: "AUTO", # accepts AUTO, SECONDS, MILLISECONDS
    #           rate_mode: "VBR", # accepts VBR, CBR
    #           scte_35_esam: {
    #             scte_35_esam_pid: 1,
    #           },
    #           scte_35_pid: 1,
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #           segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #           segmentation_time: 1.0,
    #           timed_metadata_pid: 1,
    #           transport_stream_id: 1,
    #           video_pid: 1,
    #         },
    #         m3u_8_settings: {
    #           audio_duration: "DEFAULT_CODEC_DURATION", # accepts DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION
    #           audio_frames_per_pes: 1,
    #           audio_pids: [1],
    #           audio_pts_offset_delta: 1,
    #           data_pts_control: "AUTO", # accepts AUTO, ALIGN_TO_VIDEO
    #           max_pcr_interval: 1,
    #           nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #           pat_interval: 1,
    #           pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #           pcr_pid: 1,
    #           pmt_interval: 1,
    #           pmt_pid: 1,
    #           private_metadata_pid: 1,
    #           program_number: 1,
    #           pts_offset: 1,
    #           pts_offset_mode: "AUTO", # accepts AUTO, SECONDS, MILLISECONDS
    #           scte_35_pid: 1,
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata_pid: 1,
    #           transport_stream_id: 1,
    #           video_pid: 1,
    #         },
    #         mov_settings: {
    #           clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #           padding_control: "OMNEON", # accepts OMNEON, NONE
    #           reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #         },
    #         mp_4_settings: {
    #           audio_duration: "DEFAULT_CODEC_DURATION", # accepts DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION
    #           c2pa_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           certificate_secret: "__stringMin1Max2048PatternArnAZSecretsmanagerWD12SecretAZAZ09",
    #           cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           ctts_version: 1,
    #           free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #           mp_4_major_brand: "__string",
    #           signing_kms_key: "__stringMin1PatternArnAwsUsGovCnKmsAZ26EastWestCentralNorthSouthEastWest1912D12KeyAFAF098AFAF094AFAF094AFAF094AFAF0912MrkAFAF0932",
    #         },
    #         mpd_settings: {
    #           accessibility_caption_hints: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           audio_duration: "DEFAULT_CODEC_DURATION", # accepts DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION
    #           caption_container_type: "RAW", # accepts RAW, FRAGMENTED_MP4
    #           klv_metadata: "NONE", # accepts NONE, PASSTHROUGH
    #           manifest_metadata_signaling: "ENABLED", # accepts ENABLED, DISABLED
    #           scte_35_esam: "INSERT", # accepts INSERT, NONE
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata_box_version: "VERSION_0", # accepts VERSION_0, VERSION_1
    #           timed_metadata_scheme_id_uri: "__stringMax1000",
    #           timed_metadata_value: "__stringMax1000",
    #         },
    #         mxf_settings: {
    #           afd_signaling: "NO_COPY", # accepts NO_COPY, COPY_FROM_VIDEO
    #           profile: "D_10", # accepts D_10, XDCAM, OP1A, XAVC, XDCAM_RDD9
    #           xavc_profile_settings: {
    #             duration_mode: "ALLOW_ANY_DURATION", # accepts ALLOW_ANY_DURATION, DROP_FRAMES_FOR_COMPLIANCE
    #             max_anc_data_size: 1,
    #           },
    #         },
    #       },
    #       video_description: {
    #         afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #         anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #         chroma_position_mode: "AUTO", # accepts AUTO, FORCE_CENTER, FORCE_TOP_LEFT
    #         codec_settings: {
    #           av_1_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #             bit_depth: "BIT_8", # accepts BIT_8, BIT_10
    #             film_grain_synthesis: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_size: 1.0,
    #             max_bitrate: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             qvbr_settings: {
    #               qvbr_quality_level: 1,
    #               qvbr_quality_level_fine_tune: 1.0,
    #             },
    #             rate_control_mode: "QVBR", # accepts QVBR
    #             slices: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           avc_intra_settings: {
    #             avc_intra_class: "CLASS_50", # accepts CLASS_50, CLASS_100, CLASS_200, CLASS_4K_2K
    #             avc_intra_uhd_settings: {
    #               quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #             },
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, HARD
    #           },
    #           codec: "AV1", # accepts AV1, AVC_INTRA, FRAME_CAPTURE, GIF, H_264, H_265, MPEG2, PASSTHROUGH, PRORES, UNCOMPRESSED, VC3, VP8, VP9, XAVC
    #           frame_capture_settings: {
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             max_captures: 1,
    #             quality: 1,
    #           },
    #           gif_settings: {
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #           },
    #           h264_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, AUTO, LOW, MEDIUM, HIGH, HIGHER, MAX
    #             bandwidth_reduction_filter: {
    #               sharpening: "LOW", # accepts LOW, MEDIUM, HIGH, OFF
    #               strength: "LOW", # accepts LOW, MEDIUM, HIGH, AUTO, OFF
    #             },
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #             codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #             dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #             end_of_stream_markers: "INCLUDE", # accepts INCLUDE, SUPPRESS
    #             entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #             field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD, MBAFF
    #             flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS, AUTO
    #             hrd_buffer_final_fill_percentage: 1,
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             number_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #             qvbr_settings: {
    #               max_average_bitrate: 1,
    #               qvbr_quality_level: 1,
    #               qvbr_quality_level_fine_tune: 1.0,
    #             },
    #             rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #             repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #             saliency_aware_encoding: "DISABLED", # accepts DISABLED, PREFERRED
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED, TRANSITION_DETECTION
    #             slices: 1,
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             softness: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #             write_mp_4_packaging_type: "AVC1", # accepts AVC1, AVC3
    #           },
    #           h265_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX, AUTO
    #             alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #             bandwidth_reduction_filter: {
    #               sharpening: "LOW", # accepts LOW, MEDIUM, HIGH, OFF
    #               strength: "LOW", # accepts LOW, MEDIUM, HIGH, AUTO, OFF
    #             },
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #             codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #             deblocking: "ENABLED", # accepts ENABLED, DISABLED
    #             dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #             end_of_stream_markers: "INCLUDE", # accepts INCLUDE, SUPPRESS
    #             flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS, AUTO
    #             hrd_buffer_final_fill_percentage: 1,
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             number_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #             qvbr_settings: {
    #               max_average_bitrate: 1,
    #               qvbr_quality_level: 1,
    #               qvbr_quality_level_fine_tune: 1.0,
    #             },
    #             rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #             sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED, TRANSITION_DETECTION
    #             slices: 1,
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #             tiles: "DISABLED", # accepts DISABLED, ENABLED
    #             unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #             write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #           },
    #           mpeg_2_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #             codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #             dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             hrd_buffer_final_fill_percentage: 1,
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #             rate_control_mode: "VBR", # accepts VBR, CBR
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             softness: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             syntax: "DEFAULT", # accepts DEFAULT, D_10
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           prores_settings: {
    #             chroma_sampling: "PRESERVE_444_SAMPLING", # accepts PRESERVE_444_SAMPLING, SUBSAMPLE_TO_422
    #             codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY, APPLE_PRORES_4444, APPLE_PRORES_4444_XQ
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, HARD
    #           },
    #           uncompressed_settings: {
    #             fourcc: "I420", # accepts I420, I422, I444
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             interlace_mode: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, HARD
    #           },
    #           vc_3_settings: {
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             interlace_mode: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, HARD
    #             vc_3_class: "CLASS_145_8BIT", # accepts CLASS_145_8BIT, CLASS_220_8BIT, CLASS_220_10BIT
    #           },
    #           vp_8_settings: {
    #             bitrate: 1,
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_size: 1.0,
    #             hrd_buffer_size: 1,
    #             max_bitrate: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             quality_tuning_level: "MULTI_PASS", # accepts MULTI_PASS, MULTI_PASS_HQ
    #             rate_control_mode: "VBR", # accepts VBR
    #           },
    #           vp_9_settings: {
    #             bitrate: 1,
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_size: 1.0,
    #             hrd_buffer_size: 1,
    #             max_bitrate: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             quality_tuning_level: "MULTI_PASS", # accepts MULTI_PASS, MULTI_PASS_HQ
    #             rate_control_mode: "VBR", # accepts VBR
    #           },
    #           xavc_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, AUTO, LOW, MEDIUM, HIGH, HIGHER, MAX
    #             entropy_encoding: "AUTO", # accepts AUTO, CABAC, CAVLC
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             profile: "XAVC_HD_INTRA_CBG", # accepts XAVC_HD_INTRA_CBG, XAVC_4K_INTRA_CBG, XAVC_4K_INTRA_VBR, XAVC_HD, XAVC_4K
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             softness: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             xavc_4k_intra_cbg_profile_settings: {
    #               xavc_class: "CLASS_100", # accepts CLASS_100, CLASS_300, CLASS_480
    #             },
    #             xavc_4k_intra_vbr_profile_settings: {
    #               xavc_class: "CLASS_100", # accepts CLASS_100, CLASS_300, CLASS_480
    #             },
    #             xavc_4k_profile_settings: {
    #               bitrate_class: "BITRATE_CLASS_100", # accepts BITRATE_CLASS_100, BITRATE_CLASS_140, BITRATE_CLASS_200
    #               codec_profile: "HIGH", # accepts HIGH, HIGH_422
    #               flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_closed_cadence: 1,
    #               hrd_buffer_size: 1,
    #               quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #               slices: 1,
    #             },
    #             xavc_hd_intra_cbg_profile_settings: {
    #               xavc_class: "CLASS_50", # accepts CLASS_50, CLASS_100, CLASS_200
    #             },
    #             xavc_hd_profile_settings: {
    #               bitrate_class: "BITRATE_CLASS_25", # accepts BITRATE_CLASS_25, BITRATE_CLASS_35, BITRATE_CLASS_50
    #               flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_closed_cadence: 1,
    #               hrd_buffer_size: 1,
    #               interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #               quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #               slices: 1,
    #               telecine: "NONE", # accepts NONE, HARD
    #             },
    #           },
    #         },
    #         color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #         crop: {
    #           height: 1,
    #           width: 1,
    #           x: 1,
    #           y: 1,
    #         },
    #         drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #         fixed_afd: 1,
    #         height: 1,
    #         position: {
    #           height: 1,
    #           width: 1,
    #           x: 1,
    #           y: 1,
    #         },
    #         respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #         scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT, FIT, FIT_NO_UPSCALE, FILL
    #         sharpness: 1,
    #         timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #         timecode_track: "DISABLED", # accepts DISABLED, ENABLED
    #         video_preprocessors: {
    #           color_corrector: {
    #             brightness: 1,
    #             clip_limits: {
    #               maximum_rgb_tolerance: 1,
    #               maximum_yuv: 1,
    #               minimum_rgb_tolerance: 1,
    #               minimum_yuv: 1,
    #             },
    #             color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020, FORCE_P3DCI, FORCE_P3D65_SDR, FORCE_P3D65_HDR
    #             contrast: 1,
    #             hdr_10_metadata: {
    #               blue_primary_x: 1,
    #               blue_primary_y: 1,
    #               green_primary_x: 1,
    #               green_primary_y: 1,
    #               max_content_light_level: 1,
    #               max_frame_average_light_level: 1,
    #               max_luminance: 1,
    #               min_luminance: 1,
    #               red_primary_x: 1,
    #               red_primary_y: 1,
    #               white_point_x: 1,
    #               white_point_y: 1,
    #             },
    #             hdr_to_sdr_tone_mapper: "PRESERVE_DETAILS", # accepts PRESERVE_DETAILS, VIBRANT
    #             hue: 1,
    #             max_luminance: 1,
    #             sample_range_conversion: "LIMITED_RANGE_SQUEEZE", # accepts LIMITED_RANGE_SQUEEZE, NONE, LIMITED_RANGE_CLIP
    #             saturation: 1,
    #             sdr_reference_white_level: 1,
    #           },
    #           deinterlacer: {
    #             algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER, LINEAR_INTERPOLATION
    #             control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #             mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #           },
    #           dolby_vision: {
    #             l6_metadata: {
    #               max_cll: 1,
    #               max_fall: 1,
    #             },
    #             l6_mode: "PASSTHROUGH", # accepts PASSTHROUGH, RECALCULATE, SPECIFY
    #             mapping: "HDR10_NOMAP", # accepts HDR10_NOMAP, HDR10_1000
    #             profile: "PROFILE_5", # accepts PROFILE_5, PROFILE_8_1
    #           },
    #           hdr_10_plus: {
    #             mastering_monitor_nits: 1,
    #             target_monitor_nits: 1,
    #           },
    #           image_inserter: {
    #             insertable_images: [
    #               {
    #                 duration: 1,
    #                 fade_in: 1,
    #                 fade_out: 1,
    #                 height: 1,
    #                 image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGAHttpsBmpBMPPngPNGTgaTGA",
    #                 image_x: 1,
    #                 image_y: 1,
    #                 layer: 1,
    #                 opacity: 1,
    #                 start_time: "__stringPattern01D20305D205D",
    #                 width: 1,
    #               },
    #             ],
    #             sdr_reference_white_level: 1,
    #           },
    #           noise_reducer: {
    #             filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL, TEMPORAL
    #             filter_settings: {
    #               strength: 1,
    #             },
    #             spatial_filter_settings: {
    #               post_filter_sharpen_strength: 1,
    #               speed: 1,
    #               strength: 1,
    #             },
    #             temporal_filter_settings: {
    #               aggressive_mode: 1,
    #               post_temporal_sharpening: "DISABLED", # accepts DISABLED, ENABLED, AUTO
    #               post_temporal_sharpening_strength: "LOW", # accepts LOW, MEDIUM, HIGH
    #               speed: 1,
    #               strength: 1,
    #             },
    #           },
    #           partner_watermarking: {
    #             nexguard_file_marker_settings: {
    #               license: "__stringMin1Max100000",
    #               payload: 1,
    #               preset: "__stringMin1Max256",
    #               strength: "LIGHTEST", # accepts LIGHTEST, LIGHTER, DEFAULT, STRONGER, STRONGEST
    #             },
    #           },
    #           timecode_burnin: {
    #             font_size: 1,
    #             position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #             prefix: "__stringPattern",
    #           },
    #         },
    #         width: 1,
    #       },
    #     },
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.preset.arn #=> String
    #   resp.preset.category #=> String
    #   resp.preset.created_at #=> Time
    #   resp.preset.description #=> String
    #   resp.preset.last_updated #=> Time
    #   resp.preset.name #=> String
    #   resp.preset.settings.audio_descriptions #=> Array
    #   resp.preset.settings.audio_descriptions[0].audio_channel_tagging_settings.channel_tag #=> String, one of "L", "R", "C", "LFE", "LS", "RS", "LC", "RC", "CS", "LSD", "RSD", "TCS", "VHL", "VHC", "VHR", "TBL", "TBC", "TBR", "RSL", "RSR", "LW", "RW", "LFE2", "LT", "RT", "HI", "NAR", "M"
    #   resp.preset.settings.audio_descriptions[0].audio_channel_tagging_settings.channel_tags #=> Array
    #   resp.preset.settings.audio_descriptions[0].audio_channel_tagging_settings.channel_tags[0] #=> String, one of "L", "R", "C", "LFE", "LS", "RS", "LC", "RC", "CS", "LSD", "RSD", "TCS", "VHL", "VHC", "VHR", "TBL", "TBC", "TBR", "RSL", "RSR", "LW", "RW", "LFE2", "LT", "RT", "HI", "NAR", "M"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2", "ITU_BS_1770_3", "ITU_BS_1770_4"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.true_peak_limiter_threshold #=> Float
    #   resp.preset.settings.audio_descriptions[0].audio_source_name #=> String
    #   resp.preset.settings.audio_descriptions[0].audio_type #=> Integer
    #   resp.preset.settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2", "XHE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.loudness_measurement_mode #=> String, one of "PROGRAM", "ANCHOR"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.rap_interval #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.target_loudness_range #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_line #=> String, one of "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_rf #=> String, one of "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "MP3", "WAV", "AIFF", "AC3", "EAC3", "EAC3_ATMOS", "VORBIS", "OPUS", "PASSTHROUGH", "FLAC"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.coding_mode #=> String, one of "CODING_MODE_AUTO", "CODING_MODE_5_1_4", "CODING_MODE_7_1_4", "CODING_MODE_9_1_6"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dialogue_intelligence #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.downmix_control #=> String, one of "SPECIFIED", "INITIALIZE_FROM_SOURCE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dynamic_range_control #=> String, one of "SPECIFIED", "INITIALIZE_FROM_SOURCE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lo_ro_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lo_ro_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lt_rt_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lt_rt_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.metering_mode #=> String, one of "LEQ_A", "ITU_BS_1770_1", "ITU_BS_1770_2", "ITU_BS_1770_3", "ITU_BS_1770_4"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.speech_threshold #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "STEREO", "SURROUND", "DPL2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.flac_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.flac_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.flac_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.vbr_quality #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.opus_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.opus_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.opus_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.vorbis_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.vorbis_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.vorbis_settings.vbr_quality #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.format #=> String, one of "RIFF", "RF64", "EXTENSIBLE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].custom_language_code #=> String
    #   resp.preset.settings.audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"
    #   resp.preset.settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].remix_settings.audio_description_audio_channel #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.audio_description_data_channel #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels_fine_tune #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels_fine_tune[0] #=> Float
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.preset.settings.audio_descriptions[0].stream_name #=> String
    #   resp.preset.settings.caption_descriptions #=> Array
    #   resp.preset.settings.caption_descriptions[0].custom_language_code #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.apply_font_color #=> String, one of "WHITE_TEXT_ONLY", "ALL_TEXT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.fallback_font #=> String, one of "BEST_MATCH", "MONOSPACED_SANSSERIF", "MONOSPACED_SERIF", "PROPORTIONAL_SANSSERIF", "PROPORTIONAL_SERIF"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE", "HEX", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_bold #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_bold_italic #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_italic #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_regular #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_script #=> String, one of "AUTOMATIC", "HANS", "HANT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.hex_font_color #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.remove_ruby_reserve_attributes #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "EMBEDDED_PLUS_SCTE20", "IMSC", "SCTE20_PLUS_EMBEDDED", "SCC", "SRT", "SMI", "TELETEXT", "TTML", "WEBVTT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.apply_font_color #=> String, one of "WHITE_TEXT_ONLY", "ALL_TEXT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.dds_handling #=> String, one of "NONE", "SPECIFIED", "NO_DISPLAY_WINDOW", "SPECIFIED_OPTIMAL"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.dds_x_coordinate #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.dds_y_coordinate #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.fallback_font #=> String, one of "BEST_MATCH", "MONOSPACED_SANSSERIF", "MONOSPACED_SERIF", "PROPORTIONAL_SANSSERIF", "PROPORTIONAL_SERIF"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE", "HEX", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_bold #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_bold_italic #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_italic #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_regular #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_script #=> String, one of "AUTOMATIC", "HANS", "HANT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.height #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.hex_font_color #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.subtitling_type #=> String, one of "HEARING_IMPAIRED", "STANDARD"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.width #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.embedded_destination_settings.destination_608_channel_number #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.embedded_destination_settings.destination_708_service_number #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.imsc_destination_settings.accessibility #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.imsc_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_25", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.srt_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_types #=> Array
    #   resp.preset.settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_types[0] #=> String, one of "PAGE_TYPE_INITIAL", "PAGE_TYPE_SUBTITLE", "PAGE_TYPE_ADDL_INFO", "PAGE_TYPE_PROGRAM_SCHEDULE", "PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.webvtt_destination_settings.accessibility #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.webvtt_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED", "STRICT", "MERGE"
    #   resp.preset.settings.caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"
    #   resp.preset.settings.caption_descriptions[0].language_description #=> String
    #   resp.preset.settings.container_settings.cmfc_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.cmfc_settings.audio_group_id #=> String
    #   resp.preset.settings.container_settings.cmfc_settings.audio_rendition_sets #=> String
    #   resp.preset.settings.container_settings.cmfc_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.preset.settings.container_settings.cmfc_settings.descriptive_video_service_flag #=> String, one of "DONT_FLAG", "FLAG"
    #   resp.preset.settings.container_settings.cmfc_settings.i_frame_only_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.cmfc_settings.klv_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.cmfc_settings.manifest_metadata_signaling #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.container_settings.cmfc_settings.scte_35_esam #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.cmfc_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.cmfc_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.cmfc_settings.timed_metadata_box_version #=> String, one of "VERSION_0", "VERSION_1"
    #   resp.preset.settings.container_settings.cmfc_settings.timed_metadata_scheme_id_uri #=> String
    #   resp.preset.settings.container_settings.cmfc_settings.timed_metadata_value #=> String
    #   resp.preset.settings.container_settings.container #=> String, one of "F4V", "GIF", "ISMV", "M2TS", "M3U8", "CMFC", "MOV", "MP4", "MPD", "MXF", "OGG", "WEBM", "RAW", "Y4M"
    #   resp.preset.settings.container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pts_offset_delta #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.data_pts_control #=> String, one of "AUTO", "ALIGN_TO_VIDEO"
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.preset.settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.preset.settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.m2ts_settings.force_ts_video_ebp_order #=> String, one of "FORCE", "DEFAULT"
    #   resp.preset.settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.klv_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.preset.settings.container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.prevent_buffer_underflow #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.program_number #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pts_offset #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pts_offset_mode #=> String, one of "AUTO", "SECONDS", "MILLISECONDS"
    #   resp.preset.settings.container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_esam.scte_35_esam_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pts_offset_delta #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.data_pts_control #=> String, one of "AUTO", "ALIGN_TO_VIDEO"
    #   resp.preset.settings.container_settings.m3u_8_settings.max_pcr_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.preset.settings.container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pts_offset #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pts_offset_mode #=> String, one of "AUTO", "SECONDS", "MILLISECONDS"
    #   resp.preset.settings.container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.preset.settings.container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.preset.settings.container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.preset.settings.container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.preset.settings.container_settings.mp_4_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.mp_4_settings.c2pa_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.certificate_secret #=> String
    #   resp.preset.settings.container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.ctts_version #=> Integer
    #   resp.preset.settings.container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.preset.settings.container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.preset.settings.container_settings.mp_4_settings.signing_kms_key #=> String
    #   resp.preset.settings.container_settings.mpd_settings.accessibility_caption_hints #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mpd_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.mpd_settings.caption_container_type #=> String, one of "RAW", "FRAGMENTED_MP4"
    #   resp.preset.settings.container_settings.mpd_settings.klv_metadata #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.preset.settings.container_settings.mpd_settings.manifest_metadata_signaling #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.container_settings.mpd_settings.scte_35_esam #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.mpd_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.mpd_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.mpd_settings.timed_metadata_box_version #=> String, one of "VERSION_0", "VERSION_1"
    #   resp.preset.settings.container_settings.mpd_settings.timed_metadata_scheme_id_uri #=> String
    #   resp.preset.settings.container_settings.mpd_settings.timed_metadata_value #=> String
    #   resp.preset.settings.container_settings.mxf_settings.afd_signaling #=> String, one of "NO_COPY", "COPY_FROM_VIDEO"
    #   resp.preset.settings.container_settings.mxf_settings.profile #=> String, one of "D_10", "XDCAM", "OP1A", "XAVC", "XDCAM_RDD9"
    #   resp.preset.settings.container_settings.mxf_settings.xavc_profile_settings.duration_mode #=> String, one of "ALLOW_ANY_DURATION", "DROP_FRAMES_FOR_COMPLIANCE"
    #   resp.preset.settings.container_settings.mxf_settings.xavc_profile_settings.max_anc_data_size #=> Integer
    #   resp.preset.settings.video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.preset.settings.video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.chroma_position_mode #=> String, one of "AUTO", "FORCE_CENTER", "FORCE_TOP_LEFT"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.bit_depth #=> String, one of "BIT_8", "BIT_10"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.film_grain_synthesis #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.qvbr_settings.qvbr_quality_level #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.qvbr_settings.qvbr_quality_level_fine_tune #=> Float
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.rate_control_mode #=> String, one of "QVBR"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.avc_intra_class #=> String, one of "CLASS_50", "CLASS_100", "CLASS_200", "CLASS_4K_2K"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.avc_intra_uhd_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.codec_settings.codec #=> String, one of "AV1", "AVC_INTRA", "FRAME_CAPTURE", "GIF", "H_264", "H_265", "MPEG2", "PASSTHROUGH", "PRORES", "UNCOMPRESSED", "VC3", "VP8", "VP9", "XAVC"
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.preset.settings.video_description.codec_settings.gif_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.gif_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.gif_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.gif_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "AUTO", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.bandwidth_reduction_filter.sharpening #=> String, one of "LOW", "MEDIUM", "HIGH", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.bandwidth_reduction_filter.strength #=> String, one of "LOW", "MEDIUM", "HIGH", "AUTO", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.dynamic_sub_gop #=> String, one of "ADAPTIVE", "STATIC"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.end_of_stream_markers #=> String, one of "INCLUDE", "SUPPRESS"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD", "MBAFF"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS", "AUTO"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_final_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.h264_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.qvbr_settings.max_average_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.qvbr_settings.qvbr_quality_level #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.qvbr_settings.qvbr_quality_level_fine_tune #=> Float
    #   resp.preset.settings.video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.saliency_aware_encoding #=> String, one of "DISABLED", "PREFERRED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED", "TRANSITION_DETECTION"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.write_mp_4_packaging_type #=> String, one of "AVC1", "AVC3"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX", "AUTO"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.bandwidth_reduction_filter.sharpening #=> String, one of "LOW", "MEDIUM", "HIGH", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.bandwidth_reduction_filter.strength #=> String, one of "LOW", "MEDIUM", "HIGH", "AUTO", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.deblocking #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.dynamic_sub_gop #=> String, one of "ADAPTIVE", "STATIC"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.end_of_stream_markers #=> String, one of "INCLUDE", "SUPPRESS"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS", "AUTO"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_final_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.h265_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.qvbr_settings.max_average_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.qvbr_settings.qvbr_quality_level #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.qvbr_settings.qvbr_quality_level_fine_tune #=> Float
    #   resp.preset.settings.video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED", "TRANSITION_DETECTION"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.write_mp_4_packaging_type #=> String, one of "HVC1", "HEV1"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.dynamic_sub_gop #=> String, one of "ADAPTIVE", "STATIC"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_final_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.chroma_sampling #=> String, one of "PRESERVE_444_SAMPLING", "SUBSAMPLE_TO_422"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY", "APPLE_PRORES_4444", "APPLE_PRORES_4444_XQ"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.prores_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.fourcc #=> String, one of "I420", "I422", "I444"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.interlace_mode #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.interlace_mode #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.vc_3_class #=> String, one of "CLASS_145_8BIT", "CLASS_220_8BIT", "CLASS_220_10BIT"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.quality_tuning_level #=> String, one of "MULTI_PASS", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.rate_control_mode #=> String, one of "VBR"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.quality_tuning_level #=> String, one of "MULTI_PASS", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.rate_control_mode #=> String, one of "VBR"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.adaptive_quantization #=> String, one of "OFF", "AUTO", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.entropy_encoding #=> String, one of "AUTO", "CABAC", "CAVLC"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.profile #=> String, one of "XAVC_HD_INTRA_CBG", "XAVC_4K_INTRA_CBG", "XAVC_4K_INTRA_VBR", "XAVC_HD", "XAVC_4K"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_intra_cbg_profile_settings.xavc_class #=> String, one of "CLASS_100", "CLASS_300", "CLASS_480"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_intra_vbr_profile_settings.xavc_class #=> String, one of "CLASS_100", "CLASS_300", "CLASS_480"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.bitrate_class #=> String, one of "BITRATE_CLASS_100", "BITRATE_CLASS_140", "BITRATE_CLASS_200"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.codec_profile #=> String, one of "HIGH", "HIGH_422"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_intra_cbg_profile_settings.xavc_class #=> String, one of "CLASS_50", "CLASS_100", "CLASS_200"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.bitrate_class #=> String, one of "BITRATE_CLASS_25", "BITRATE_CLASS_35", "BITRATE_CLASS_50"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.preset.settings.video_description.crop.height #=> Integer
    #   resp.preset.settings.video_description.crop.width #=> Integer
    #   resp.preset.settings.video_description.crop.x #=> Integer
    #   resp.preset.settings.video_description.crop.y #=> Integer
    #   resp.preset.settings.video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.fixed_afd #=> Integer
    #   resp.preset.settings.video_description.height #=> Integer
    #   resp.preset.settings.video_description.position.height #=> Integer
    #   resp.preset.settings.video_description.position.width #=> Integer
    #   resp.preset.settings.video_description.position.x #=> Integer
    #   resp.preset.settings.video_description.position.y #=> Integer
    #   resp.preset.settings.video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.preset.settings.video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT", "FIT", "FIT_NO_UPSCALE", "FILL"
    #   resp.preset.settings.video_description.sharpness #=> Integer
    #   resp.preset.settings.video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.preset.settings.video_description.timecode_track #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.clip_limits.maximum_rgb_tolerance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.clip_limits.maximum_yuv #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.clip_limits.minimum_rgb_tolerance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.clip_limits.minimum_yuv #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020", "FORCE_P3DCI", "FORCE_P3D65_SDR", "FORCE_P3D65_HDR"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_to_sdr_tone_mapper #=> String, one of "PRESERVE_DETAILS", "VIBRANT"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.max_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.sample_range_conversion #=> String, one of "LIMITED_RANGE_SQUEEZE", "NONE", "LIMITED_RANGE_CLIP"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.sdr_reference_white_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER", "LINEAR_INTERPOLATION"
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.l6_metadata.max_cll #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.l6_metadata.max_fall #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.l6_mode #=> String, one of "PASSTHROUGH", "RECALCULATE", "SPECIFY"
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.mapping #=> String, one of "HDR10_NOMAP", "HDR10_1000"
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.profile #=> String, one of "PROFILE_5", "PROFILE_8_1"
    #   resp.preset.settings.video_description.video_preprocessors.hdr_10_plus.mastering_monitor_nits #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.hdr_10_plus.target_monitor_nits #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.sdr_reference_white_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL", "TEMPORAL"
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.aggressive_mode #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.post_temporal_sharpening #=> String, one of "DISABLED", "ENABLED", "AUTO"
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.post_temporal_sharpening_strength #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.speed #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.license #=> String
    #   resp.preset.settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.payload #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.preset #=> String
    #   resp.preset.settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.strength #=> String, one of "LIGHTEST", "LIGHTER", "DEFAULT", "STRONGER", "STRONGEST"
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.preset.settings.video_description.width #=> Integer
    #   resp.preset.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreatePreset AWS API Documentation
    #
    # @overload create_preset(params = {})
    # @param [Hash] params ({})
    def create_preset(params = {}, options = {})
      req = build_request(:create_preset, params)
      req.send_request(options)
    end

    # Create a new transcoding queue. For information about queues, see
    # Working With Queues in the User Guide at
    # https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html
    #
    # @option params [Integer] :concurrent_jobs
    #   Specify the maximum number of jobs your queue can process
    #   concurrently. For on-demand queues, the value you enter is constrained
    #   by your service quotas for Maximum concurrent jobs, per on-demand
    #   queue and Maximum concurrent jobs, per account. For reserved queues,
    #   specify the number of jobs you can process concurrently in your
    #   reservation plan instead.
    #
    # @option params [String] :description
    #   Optional. A description of the queue that you are creating.
    #
    # @option params [required, String] :name
    #   The name of the queue that you are creating.
    #
    # @option params [String] :pricing_plan
    #   Specifies whether the pricing plan for the queue is on-demand or
    #   reserved. For on-demand, you pay per minute, billed in increments of
    #   .01 minute. For reserved, you pay for the transcoding capacity of the
    #   entire queue, regardless of how much or how little you use it.
    #   Reserved pricing requires a 12-month commitment. When you use the API
    #   to create a queue, the default is on-demand.
    #
    # @option params [Types::ReservationPlanSettings] :reservation_plan_settings
    #   Details about the pricing plan for your reserved queue. Required for
    #   reserved queues and not applicable to on-demand queues.
    #
    # @option params [String] :status
    #   Initial state of the queue. If you create a paused queue, then jobs in
    #   that queue won't begin.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that you want to add to the resource. You can tag resources
    #   with a key-value pair or with only a key.
    #
    # @return [Types::CreateQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQueueResponse#queue #queue} => Types::Queue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_queue({
    #     concurrent_jobs: 1,
    #     description: "__string",
    #     name: "__string", # required
    #     pricing_plan: "ON_DEMAND", # accepts ON_DEMAND, RESERVED
    #     reservation_plan_settings: {
    #       commitment: "ONE_YEAR", # required, accepts ONE_YEAR
    #       renewal_type: "AUTO_RENEW", # required, accepts AUTO_RENEW, EXPIRE
    #       reserved_slots: 1, # required
    #     },
    #     status: "ACTIVE", # accepts ACTIVE, PAUSED
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.queue.arn #=> String
    #   resp.queue.concurrent_jobs #=> Integer
    #   resp.queue.created_at #=> Time
    #   resp.queue.description #=> String
    #   resp.queue.last_updated #=> Time
    #   resp.queue.name #=> String
    #   resp.queue.pricing_plan #=> String, one of "ON_DEMAND", "RESERVED"
    #   resp.queue.progressing_jobs_count #=> Integer
    #   resp.queue.reservation_plan.commitment #=> String, one of "ONE_YEAR"
    #   resp.queue.reservation_plan.expires_at #=> Time
    #   resp.queue.reservation_plan.purchased_at #=> Time
    #   resp.queue.reservation_plan.renewal_type #=> String, one of "AUTO_RENEW", "EXPIRE"
    #   resp.queue.reservation_plan.reserved_slots #=> Integer
    #   resp.queue.reservation_plan.status #=> String, one of "ACTIVE", "EXPIRED"
    #   resp.queue.service_overrides #=> Array
    #   resp.queue.service_overrides[0].message #=> String
    #   resp.queue.service_overrides[0].name #=> String
    #   resp.queue.service_overrides[0].override_value #=> String
    #   resp.queue.service_overrides[0].value #=> String
    #   resp.queue.status #=> String, one of "ACTIVE", "PAUSED"
    #   resp.queue.submitted_jobs_count #=> Integer
    #   resp.queue.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateQueue AWS API Documentation
    #
    # @overload create_queue(params = {})
    # @param [Hash] params ({})
    def create_queue(params = {}, options = {})
      req = build_request(:create_queue, params)
      req.send_request(options)
    end

    # Permanently delete a job template you have created.
    #
    # @option params [required, String] :name
    #   The name of the job template to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job_template({
    #     name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeleteJobTemplate AWS API Documentation
    #
    # @overload delete_job_template(params = {})
    # @param [Hash] params ({})
    def delete_job_template(params = {}, options = {})
      req = build_request(:delete_job_template, params)
      req.send_request(options)
    end

    # Permanently delete a policy that you created.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeletePolicy AWS API Documentation
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Permanently delete a preset you have created.
    #
    # @option params [required, String] :name
    #   The name of the preset to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_preset({
    #     name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeletePreset AWS API Documentation
    #
    # @overload delete_preset(params = {})
    # @param [Hash] params ({})
    def delete_preset(params = {}, options = {})
      req = build_request(:delete_preset, params)
      req.send_request(options)
    end

    # Permanently delete a queue you have created.
    #
    # @option params [required, String] :name
    #   The name of the queue that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queue({
    #     name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeleteQueue AWS API Documentation
    #
    # @overload delete_queue(params = {})
    # @param [Hash] params ({})
    def delete_queue(params = {}, options = {})
      req = build_request(:delete_queue, params)
      req.send_request(options)
    end

    # Send a request with an empty body to the regional API endpoint to get
    # your account API endpoint. Note that DescribeEndpoints is no longer
    # required. We recommend that you send your requests directly to the
    # regional endpoint instead.
    #
    # @option params [Integer] :max_results
    #   Optional. Max number of endpoints, up to twenty, that will be returned
    #   at one time.
    #
    # @option params [String] :mode
    #   Optional field, defaults to DEFAULT. Specify DEFAULT for this
    #   operation to return your endpoints if any exist, or to create an
    #   endpoint for you and return it if one doesn't already exist. Specify
    #   GET\_ONLY to return your endpoints if any exist, or an empty list if
    #   none exist.
    #
    # @option params [String] :next_token
    #   Use this string, provided with the response to a previous request, to
    #   request the next batch of endpoints.
    #
    # @return [Types::DescribeEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointsResponse#endpoints #endpoints} => Array&lt;Types::Endpoint&gt;
    #   * {Types::DescribeEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoints({
    #     max_results: 1,
    #     mode: "DEFAULT", # accepts DEFAULT, GET_ONLY
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DescribeEndpoints AWS API Documentation
    #
    # @overload describe_endpoints(params = {})
    # @param [Hash] params ({})
    def describe_endpoints(params = {}, options = {})
      req = build_request(:describe_endpoints, params)
      req.send_request(options)
    end

    # Removes an association between the Amazon Resource Name (ARN) of an
    # AWS Certificate Manager (ACM) certificate and an AWS Elemental
    # MediaConvert resource.
    #
    # @option params [required, String] :arn
    #   The ARN of the ACM certificate that you want to disassociate from your
    #   MediaConvert resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_certificate({
    #     arn: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DisassociateCertificate AWS API Documentation
    #
    # @overload disassociate_certificate(params = {})
    # @param [Hash] params ({})
    def disassociate_certificate(params = {}, options = {})
      req = build_request(:disassociate_certificate, params)
      req.send_request(options)
    end

    # Retrieve the JSON for a specific transcoding job.
    #
    # @option params [required, String] :id
    #   the job ID of the job.
    #
    # @return [Types::GetJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetJob AWS API Documentation
    #
    # @overload get_job(params = {})
    # @param [Hash] params ({})
    def get_job(params = {}, options = {})
      req = build_request(:get_job, params)
      req.send_request(options)
    end

    # Retrieve the JSON for a specific job template.
    #
    # @option params [required, String] :name
    #   The name of the job template.
    #
    # @return [Types::GetJobTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobTemplateResponse#job_template #job_template} => Types::JobTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_template({
    #     name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetJobTemplate AWS API Documentation
    #
    # @overload get_job_template(params = {})
    # @param [Hash] params ({})
    def get_job_template(params = {}, options = {})
      req = build_request(:get_job_template, params)
      req.send_request(options)
    end

    # Retrieve the JSON for your policy.
    #
    # @return [Types::GetPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyResponse#policy #policy} => Types::Policy
    #
    # @example Response structure
    #
    #   resp.policy.http_inputs #=> String, one of "ALLOWED", "DISALLOWED"
    #   resp.policy.https_inputs #=> String, one of "ALLOWED", "DISALLOWED"
    #   resp.policy.s3_inputs #=> String, one of "ALLOWED", "DISALLOWED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Retrieve the JSON for a specific preset.
    #
    # @option params [required, String] :name
    #   The name of the preset.
    #
    # @return [Types::GetPresetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPresetResponse#preset #preset} => Types::Preset
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_preset({
    #     name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.preset.arn #=> String
    #   resp.preset.category #=> String
    #   resp.preset.created_at #=> Time
    #   resp.preset.description #=> String
    #   resp.preset.last_updated #=> Time
    #   resp.preset.name #=> String
    #   resp.preset.settings.audio_descriptions #=> Array
    #   resp.preset.settings.audio_descriptions[0].audio_channel_tagging_settings.channel_tag #=> String, one of "L", "R", "C", "LFE", "LS", "RS", "LC", "RC", "CS", "LSD", "RSD", "TCS", "VHL", "VHC", "VHR", "TBL", "TBC", "TBR", "RSL", "RSR", "LW", "RW", "LFE2", "LT", "RT", "HI", "NAR", "M"
    #   resp.preset.settings.audio_descriptions[0].audio_channel_tagging_settings.channel_tags #=> Array
    #   resp.preset.settings.audio_descriptions[0].audio_channel_tagging_settings.channel_tags[0] #=> String, one of "L", "R", "C", "LFE", "LS", "RS", "LC", "RC", "CS", "LSD", "RSD", "TCS", "VHL", "VHC", "VHR", "TBL", "TBC", "TBR", "RSL", "RSR", "LW", "RW", "LFE2", "LT", "RT", "HI", "NAR", "M"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2", "ITU_BS_1770_3", "ITU_BS_1770_4"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.true_peak_limiter_threshold #=> Float
    #   resp.preset.settings.audio_descriptions[0].audio_source_name #=> String
    #   resp.preset.settings.audio_descriptions[0].audio_type #=> Integer
    #   resp.preset.settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2", "XHE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.loudness_measurement_mode #=> String, one of "PROGRAM", "ANCHOR"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.rap_interval #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.target_loudness_range #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_line #=> String, one of "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_rf #=> String, one of "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "MP3", "WAV", "AIFF", "AC3", "EAC3", "EAC3_ATMOS", "VORBIS", "OPUS", "PASSTHROUGH", "FLAC"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.coding_mode #=> String, one of "CODING_MODE_AUTO", "CODING_MODE_5_1_4", "CODING_MODE_7_1_4", "CODING_MODE_9_1_6"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dialogue_intelligence #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.downmix_control #=> String, one of "SPECIFIED", "INITIALIZE_FROM_SOURCE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dynamic_range_control #=> String, one of "SPECIFIED", "INITIALIZE_FROM_SOURCE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lo_ro_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lo_ro_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lt_rt_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lt_rt_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.metering_mode #=> String, one of "LEQ_A", "ITU_BS_1770_1", "ITU_BS_1770_2", "ITU_BS_1770_3", "ITU_BS_1770_4"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.speech_threshold #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "STEREO", "SURROUND", "DPL2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.flac_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.flac_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.flac_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.vbr_quality #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.opus_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.opus_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.opus_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.vorbis_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.vorbis_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.vorbis_settings.vbr_quality #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.format #=> String, one of "RIFF", "RF64", "EXTENSIBLE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].custom_language_code #=> String
    #   resp.preset.settings.audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"
    #   resp.preset.settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].remix_settings.audio_description_audio_channel #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.audio_description_data_channel #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels_fine_tune #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels_fine_tune[0] #=> Float
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.preset.settings.audio_descriptions[0].stream_name #=> String
    #   resp.preset.settings.caption_descriptions #=> Array
    #   resp.preset.settings.caption_descriptions[0].custom_language_code #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.apply_font_color #=> String, one of "WHITE_TEXT_ONLY", "ALL_TEXT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.fallback_font #=> String, one of "BEST_MATCH", "MONOSPACED_SANSSERIF", "MONOSPACED_SERIF", "PROPORTIONAL_SANSSERIF", "PROPORTIONAL_SERIF"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE", "HEX", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_bold #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_bold_italic #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_italic #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_regular #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_script #=> String, one of "AUTOMATIC", "HANS", "HANT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.hex_font_color #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.remove_ruby_reserve_attributes #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "EMBEDDED_PLUS_SCTE20", "IMSC", "SCTE20_PLUS_EMBEDDED", "SCC", "SRT", "SMI", "TELETEXT", "TTML", "WEBVTT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.apply_font_color #=> String, one of "WHITE_TEXT_ONLY", "ALL_TEXT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.dds_handling #=> String, one of "NONE", "SPECIFIED", "NO_DISPLAY_WINDOW", "SPECIFIED_OPTIMAL"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.dds_x_coordinate #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.dds_y_coordinate #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.fallback_font #=> String, one of "BEST_MATCH", "MONOSPACED_SANSSERIF", "MONOSPACED_SERIF", "PROPORTIONAL_SANSSERIF", "PROPORTIONAL_SERIF"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE", "HEX", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_bold #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_bold_italic #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_italic #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_regular #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_script #=> String, one of "AUTOMATIC", "HANS", "HANT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.height #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.hex_font_color #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.subtitling_type #=> String, one of "HEARING_IMPAIRED", "STANDARD"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.width #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.embedded_destination_settings.destination_608_channel_number #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.embedded_destination_settings.destination_708_service_number #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.imsc_destination_settings.accessibility #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.imsc_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_25", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.srt_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_types #=> Array
    #   resp.preset.settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_types[0] #=> String, one of "PAGE_TYPE_INITIAL", "PAGE_TYPE_SUBTITLE", "PAGE_TYPE_ADDL_INFO", "PAGE_TYPE_PROGRAM_SCHEDULE", "PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.webvtt_destination_settings.accessibility #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.webvtt_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED", "STRICT", "MERGE"
    #   resp.preset.settings.caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"
    #   resp.preset.settings.caption_descriptions[0].language_description #=> String
    #   resp.preset.settings.container_settings.cmfc_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.cmfc_settings.audio_group_id #=> String
    #   resp.preset.settings.container_settings.cmfc_settings.audio_rendition_sets #=> String
    #   resp.preset.settings.container_settings.cmfc_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.preset.settings.container_settings.cmfc_settings.descriptive_video_service_flag #=> String, one of "DONT_FLAG", "FLAG"
    #   resp.preset.settings.container_settings.cmfc_settings.i_frame_only_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.cmfc_settings.klv_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.cmfc_settings.manifest_metadata_signaling #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.container_settings.cmfc_settings.scte_35_esam #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.cmfc_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.cmfc_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.cmfc_settings.timed_metadata_box_version #=> String, one of "VERSION_0", "VERSION_1"
    #   resp.preset.settings.container_settings.cmfc_settings.timed_metadata_scheme_id_uri #=> String
    #   resp.preset.settings.container_settings.cmfc_settings.timed_metadata_value #=> String
    #   resp.preset.settings.container_settings.container #=> String, one of "F4V", "GIF", "ISMV", "M2TS", "M3U8", "CMFC", "MOV", "MP4", "MPD", "MXF", "OGG", "WEBM", "RAW", "Y4M"
    #   resp.preset.settings.container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pts_offset_delta #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.data_pts_control #=> String, one of "AUTO", "ALIGN_TO_VIDEO"
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.preset.settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.preset.settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.m2ts_settings.force_ts_video_ebp_order #=> String, one of "FORCE", "DEFAULT"
    #   resp.preset.settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.klv_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.preset.settings.container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.prevent_buffer_underflow #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.program_number #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pts_offset #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pts_offset_mode #=> String, one of "AUTO", "SECONDS", "MILLISECONDS"
    #   resp.preset.settings.container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_esam.scte_35_esam_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pts_offset_delta #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.data_pts_control #=> String, one of "AUTO", "ALIGN_TO_VIDEO"
    #   resp.preset.settings.container_settings.m3u_8_settings.max_pcr_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.preset.settings.container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pts_offset #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pts_offset_mode #=> String, one of "AUTO", "SECONDS", "MILLISECONDS"
    #   resp.preset.settings.container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.preset.settings.container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.preset.settings.container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.preset.settings.container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.preset.settings.container_settings.mp_4_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.mp_4_settings.c2pa_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.certificate_secret #=> String
    #   resp.preset.settings.container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.ctts_version #=> Integer
    #   resp.preset.settings.container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.preset.settings.container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.preset.settings.container_settings.mp_4_settings.signing_kms_key #=> String
    #   resp.preset.settings.container_settings.mpd_settings.accessibility_caption_hints #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mpd_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.mpd_settings.caption_container_type #=> String, one of "RAW", "FRAGMENTED_MP4"
    #   resp.preset.settings.container_settings.mpd_settings.klv_metadata #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.preset.settings.container_settings.mpd_settings.manifest_metadata_signaling #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.container_settings.mpd_settings.scte_35_esam #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.mpd_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.mpd_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.mpd_settings.timed_metadata_box_version #=> String, one of "VERSION_0", "VERSION_1"
    #   resp.preset.settings.container_settings.mpd_settings.timed_metadata_scheme_id_uri #=> String
    #   resp.preset.settings.container_settings.mpd_settings.timed_metadata_value #=> String
    #   resp.preset.settings.container_settings.mxf_settings.afd_signaling #=> String, one of "NO_COPY", "COPY_FROM_VIDEO"
    #   resp.preset.settings.container_settings.mxf_settings.profile #=> String, one of "D_10", "XDCAM", "OP1A", "XAVC", "XDCAM_RDD9"
    #   resp.preset.settings.container_settings.mxf_settings.xavc_profile_settings.duration_mode #=> String, one of "ALLOW_ANY_DURATION", "DROP_FRAMES_FOR_COMPLIANCE"
    #   resp.preset.settings.container_settings.mxf_settings.xavc_profile_settings.max_anc_data_size #=> Integer
    #   resp.preset.settings.video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.preset.settings.video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.chroma_position_mode #=> String, one of "AUTO", "FORCE_CENTER", "FORCE_TOP_LEFT"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.bit_depth #=> String, one of "BIT_8", "BIT_10"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.film_grain_synthesis #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.qvbr_settings.qvbr_quality_level #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.qvbr_settings.qvbr_quality_level_fine_tune #=> Float
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.rate_control_mode #=> String, one of "QVBR"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.avc_intra_class #=> String, one of "CLASS_50", "CLASS_100", "CLASS_200", "CLASS_4K_2K"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.avc_intra_uhd_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.codec_settings.codec #=> String, one of "AV1", "AVC_INTRA", "FRAME_CAPTURE", "GIF", "H_264", "H_265", "MPEG2", "PASSTHROUGH", "PRORES", "UNCOMPRESSED", "VC3", "VP8", "VP9", "XAVC"
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.preset.settings.video_description.codec_settings.gif_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.gif_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.gif_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.gif_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "AUTO", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.bandwidth_reduction_filter.sharpening #=> String, one of "LOW", "MEDIUM", "HIGH", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.bandwidth_reduction_filter.strength #=> String, one of "LOW", "MEDIUM", "HIGH", "AUTO", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.dynamic_sub_gop #=> String, one of "ADAPTIVE", "STATIC"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.end_of_stream_markers #=> String, one of "INCLUDE", "SUPPRESS"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD", "MBAFF"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS", "AUTO"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_final_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.h264_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.qvbr_settings.max_average_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.qvbr_settings.qvbr_quality_level #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.qvbr_settings.qvbr_quality_level_fine_tune #=> Float
    #   resp.preset.settings.video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.saliency_aware_encoding #=> String, one of "DISABLED", "PREFERRED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED", "TRANSITION_DETECTION"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.write_mp_4_packaging_type #=> String, one of "AVC1", "AVC3"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX", "AUTO"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.bandwidth_reduction_filter.sharpening #=> String, one of "LOW", "MEDIUM", "HIGH", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.bandwidth_reduction_filter.strength #=> String, one of "LOW", "MEDIUM", "HIGH", "AUTO", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.deblocking #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.dynamic_sub_gop #=> String, one of "ADAPTIVE", "STATIC"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.end_of_stream_markers #=> String, one of "INCLUDE", "SUPPRESS"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS", "AUTO"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_final_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.h265_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.qvbr_settings.max_average_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.qvbr_settings.qvbr_quality_level #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.qvbr_settings.qvbr_quality_level_fine_tune #=> Float
    #   resp.preset.settings.video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED", "TRANSITION_DETECTION"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.write_mp_4_packaging_type #=> String, one of "HVC1", "HEV1"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.dynamic_sub_gop #=> String, one of "ADAPTIVE", "STATIC"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_final_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.chroma_sampling #=> String, one of "PRESERVE_444_SAMPLING", "SUBSAMPLE_TO_422"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY", "APPLE_PRORES_4444", "APPLE_PRORES_4444_XQ"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.prores_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.fourcc #=> String, one of "I420", "I422", "I444"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.interlace_mode #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.interlace_mode #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.vc_3_class #=> String, one of "CLASS_145_8BIT", "CLASS_220_8BIT", "CLASS_220_10BIT"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.quality_tuning_level #=> String, one of "MULTI_PASS", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.rate_control_mode #=> String, one of "VBR"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.quality_tuning_level #=> String, one of "MULTI_PASS", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.rate_control_mode #=> String, one of "VBR"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.adaptive_quantization #=> String, one of "OFF", "AUTO", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.entropy_encoding #=> String, one of "AUTO", "CABAC", "CAVLC"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.profile #=> String, one of "XAVC_HD_INTRA_CBG", "XAVC_4K_INTRA_CBG", "XAVC_4K_INTRA_VBR", "XAVC_HD", "XAVC_4K"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_intra_cbg_profile_settings.xavc_class #=> String, one of "CLASS_100", "CLASS_300", "CLASS_480"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_intra_vbr_profile_settings.xavc_class #=> String, one of "CLASS_100", "CLASS_300", "CLASS_480"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.bitrate_class #=> String, one of "BITRATE_CLASS_100", "BITRATE_CLASS_140", "BITRATE_CLASS_200"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.codec_profile #=> String, one of "HIGH", "HIGH_422"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_intra_cbg_profile_settings.xavc_class #=> String, one of "CLASS_50", "CLASS_100", "CLASS_200"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.bitrate_class #=> String, one of "BITRATE_CLASS_25", "BITRATE_CLASS_35", "BITRATE_CLASS_50"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.preset.settings.video_description.crop.height #=> Integer
    #   resp.preset.settings.video_description.crop.width #=> Integer
    #   resp.preset.settings.video_description.crop.x #=> Integer
    #   resp.preset.settings.video_description.crop.y #=> Integer
    #   resp.preset.settings.video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.fixed_afd #=> Integer
    #   resp.preset.settings.video_description.height #=> Integer
    #   resp.preset.settings.video_description.position.height #=> Integer
    #   resp.preset.settings.video_description.position.width #=> Integer
    #   resp.preset.settings.video_description.position.x #=> Integer
    #   resp.preset.settings.video_description.position.y #=> Integer
    #   resp.preset.settings.video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.preset.settings.video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT", "FIT", "FIT_NO_UPSCALE", "FILL"
    #   resp.preset.settings.video_description.sharpness #=> Integer
    #   resp.preset.settings.video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.preset.settings.video_description.timecode_track #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.clip_limits.maximum_rgb_tolerance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.clip_limits.maximum_yuv #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.clip_limits.minimum_rgb_tolerance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.clip_limits.minimum_yuv #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020", "FORCE_P3DCI", "FORCE_P3D65_SDR", "FORCE_P3D65_HDR"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_to_sdr_tone_mapper #=> String, one of "PRESERVE_DETAILS", "VIBRANT"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.max_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.sample_range_conversion #=> String, one of "LIMITED_RANGE_SQUEEZE", "NONE", "LIMITED_RANGE_CLIP"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.sdr_reference_white_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER", "LINEAR_INTERPOLATION"
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.l6_metadata.max_cll #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.l6_metadata.max_fall #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.l6_mode #=> String, one of "PASSTHROUGH", "RECALCULATE", "SPECIFY"
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.mapping #=> String, one of "HDR10_NOMAP", "HDR10_1000"
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.profile #=> String, one of "PROFILE_5", "PROFILE_8_1"
    #   resp.preset.settings.video_description.video_preprocessors.hdr_10_plus.mastering_monitor_nits #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.hdr_10_plus.target_monitor_nits #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.sdr_reference_white_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL", "TEMPORAL"
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.aggressive_mode #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.post_temporal_sharpening #=> String, one of "DISABLED", "ENABLED", "AUTO"
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.post_temporal_sharpening_strength #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.speed #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.license #=> String
    #   resp.preset.settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.payload #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.preset #=> String
    #   resp.preset.settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.strength #=> String, one of "LIGHTEST", "LIGHTER", "DEFAULT", "STRONGER", "STRONGEST"
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.preset.settings.video_description.width #=> Integer
    #   resp.preset.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetPreset AWS API Documentation
    #
    # @overload get_preset(params = {})
    # @param [Hash] params ({})
    def get_preset(params = {}, options = {})
      req = build_request(:get_preset, params)
      req.send_request(options)
    end

    # Retrieve the JSON for a specific queue.
    #
    # @option params [required, String] :name
    #   The name of the queue that you want information about.
    #
    # @return [Types::GetQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueueResponse#queue #queue} => Types::Queue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_queue({
    #     name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.queue.arn #=> String
    #   resp.queue.concurrent_jobs #=> Integer
    #   resp.queue.created_at #=> Time
    #   resp.queue.description #=> String
    #   resp.queue.last_updated #=> Time
    #   resp.queue.name #=> String
    #   resp.queue.pricing_plan #=> String, one of "ON_DEMAND", "RESERVED"
    #   resp.queue.progressing_jobs_count #=> Integer
    #   resp.queue.reservation_plan.commitment #=> String, one of "ONE_YEAR"
    #   resp.queue.reservation_plan.expires_at #=> Time
    #   resp.queue.reservation_plan.purchased_at #=> Time
    #   resp.queue.reservation_plan.renewal_type #=> String, one of "AUTO_RENEW", "EXPIRE"
    #   resp.queue.reservation_plan.reserved_slots #=> Integer
    #   resp.queue.reservation_plan.status #=> String, one of "ACTIVE", "EXPIRED"
    #   resp.queue.service_overrides #=> Array
    #   resp.queue.service_overrides[0].message #=> String
    #   resp.queue.service_overrides[0].name #=> String
    #   resp.queue.service_overrides[0].override_value #=> String
    #   resp.queue.service_overrides[0].value #=> String
    #   resp.queue.status #=> String, one of "ACTIVE", "PAUSED"
    #   resp.queue.submitted_jobs_count #=> Integer
    #   resp.queue.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetQueue AWS API Documentation
    #
    # @overload get_queue(params = {})
    # @param [Hash] params ({})
    def get_queue(params = {}, options = {})
      req = build_request(:get_queue, params)
      req.send_request(options)
    end

    # Retrieve a JSON array of up to twenty of your job templates. This will
    # return the templates themselves, not just a list of them. To retrieve
    # the next twenty templates, use the nextToken string returned with the
    # array
    #
    # @option params [String] :category
    #   Optionally, specify a job template category to limit responses to only
    #   job templates from that category.
    #
    # @option params [String] :list_by
    #   Optional. When you request a list of job templates, you can choose to
    #   list them alphabetically by NAME or chronologically by CREATION\_DATE.
    #   If you don't specify, the service will list them by name.
    #
    # @option params [Integer] :max_results
    #   Optional. Number of job templates, up to twenty, that will be returned
    #   at one time.
    #
    # @option params [String] :next_token
    #   Use this string, provided with the response to a previous request, to
    #   request the next batch of job templates.
    #
    # @option params [String] :order
    #   Optional. When you request lists of resources, you can specify whether
    #   they are sorted in ASCENDING or DESCENDING order. Default varies by
    #   resource.
    #
    # @return [Types::ListJobTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobTemplatesResponse#job_templates #job_templates} => Array&lt;Types::JobTemplate&gt;
    #   * {Types::ListJobTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_templates({
    #     category: "__string",
    #     list_by: "NAME", # accepts NAME, CREATION_DATE, SYSTEM
    #     max_results: 1,
    #     next_token: "__string",
    #     order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListJobTemplates AWS API Documentation
    #
    # @overload list_job_templates(params = {})
    # @param [Hash] params ({})
    def list_job_templates(params = {}, options = {})
      req = build_request(:list_job_templates, params)
      req.send_request(options)
    end

    # Retrieve a JSON array of up to twenty of your most recently created
    # jobs. This array includes in-process, completed, and errored jobs.
    # This will return the jobs themselves, not just a list of the jobs. To
    # retrieve the twenty next most recent jobs, use the nextToken string
    # returned with the array.
    #
    # @option params [Integer] :max_results
    #   Optional. Number of jobs, up to twenty, that will be returned at one
    #   time.
    #
    # @option params [String] :next_token
    #   Optional. Use this string, provided with the response to a previous
    #   request, to request the next batch of jobs.
    #
    # @option params [String] :order
    #   Optional. When you request lists of resources, you can specify whether
    #   they are sorted in ASCENDING or DESCENDING order. Default varies by
    #   resource.
    #
    # @option params [String] :queue
    #   Optional. Provide a queue name to get back only jobs from that queue.
    #
    # @option params [String] :status
    #   Optional. A job's status can be SUBMITTED, PROGRESSING, COMPLETE,
    #   CANCELED, or ERROR.
    #
    # @return [Types::ListJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResponse#jobs #jobs} => Array&lt;Types::Job&gt;
    #   * {Types::ListJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     max_results: 1,
    #     next_token: "__string",
    #     order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     queue: "__string",
    #     status: "SUBMITTED", # accepts SUBMITTED, PROGRESSING, COMPLETE, CANCELED, ERROR
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Retrieve a JSON array of up to twenty of your presets. This will
    # return the presets themselves, not just a list of them. To retrieve
    # the next twenty presets, use the nextToken string returned with the
    # array.
    #
    # @option params [String] :category
    #   Optionally, specify a preset category to limit responses to only
    #   presets from that category.
    #
    # @option params [String] :list_by
    #   Optional. When you request a list of presets, you can choose to list
    #   them alphabetically by NAME or chronologically by CREATION\_DATE. If
    #   you don't specify, the service will list them by name.
    #
    # @option params [Integer] :max_results
    #   Optional. Number of presets, up to twenty, that will be returned at
    #   one time
    #
    # @option params [String] :next_token
    #   Use this string, provided with the response to a previous request, to
    #   request the next batch of presets.
    #
    # @option params [String] :order
    #   Optional. When you request lists of resources, you can specify whether
    #   they are sorted in ASCENDING or DESCENDING order. Default varies by
    #   resource.
    #
    # @return [Types::ListPresetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPresetsResponse#next_token #next_token} => String
    #   * {Types::ListPresetsResponse#presets #presets} => Array&lt;Types::Preset&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_presets({
    #     category: "__string",
    #     list_by: "NAME", # accepts NAME, CREATION_DATE, SYSTEM
    #     max_results: 1,
    #     next_token: "__string",
    #     order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.presets #=> Array
    #   resp.presets[0].arn #=> String
    #   resp.presets[0].category #=> String
    #   resp.presets[0].created_at #=> Time
    #   resp.presets[0].description #=> String
    #   resp.presets[0].last_updated #=> Time
    #   resp.presets[0].name #=> String
    #   resp.presets[0].settings.audio_descriptions #=> Array
    #   resp.presets[0].settings.audio_descriptions[0].audio_channel_tagging_settings.channel_tag #=> String, one of "L", "R", "C", "LFE", "LS", "RS", "LC", "RC", "CS", "LSD", "RSD", "TCS", "VHL", "VHC", "VHR", "TBL", "TBC", "TBR", "RSL", "RSR", "LW", "RW", "LFE2", "LT", "RT", "HI", "NAR", "M"
    #   resp.presets[0].settings.audio_descriptions[0].audio_channel_tagging_settings.channel_tags #=> Array
    #   resp.presets[0].settings.audio_descriptions[0].audio_channel_tagging_settings.channel_tags[0] #=> String, one of "L", "R", "C", "LFE", "LS", "RS", "LC", "RC", "CS", "LSD", "RSD", "TCS", "VHL", "VHC", "VHR", "TBL", "TBC", "TBR", "RSL", "RSR", "LW", "RW", "LFE2", "LT", "RT", "HI", "NAR", "M"
    #   resp.presets[0].settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2", "ITU_BS_1770_3", "ITU_BS_1770_4"
    #   resp.presets[0].settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.presets[0].settings.audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.presets[0].settings.audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.presets[0].settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].audio_normalization_settings.true_peak_limiter_threshold #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].audio_source_name #=> String
    #   resp.presets[0].settings.audio_descriptions[0].audio_type #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2", "XHE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.loudness_measurement_mode #=> String, one of "PROGRAM", "ANCHOR"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.rap_interval #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.target_loudness_range #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_line #=> String, one of "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH", "NONE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_rf #=> String, one of "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH", "NONE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "MP3", "WAV", "AIFF", "AC3", "EAC3", "EAC3_ATMOS", "VORBIS", "OPUS", "PASSTHROUGH", "FLAC"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.bitrate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.coding_mode #=> String, one of "CODING_MODE_AUTO", "CODING_MODE_5_1_4", "CODING_MODE_7_1_4", "CODING_MODE_9_1_6"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dialogue_intelligence #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.downmix_control #=> String, one of "SPECIFIED", "INITIALIZE_FROM_SOURCE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dynamic_range_control #=> String, one of "SPECIFIED", "INITIALIZE_FROM_SOURCE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lo_ro_center_mix_level #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lo_ro_surround_mix_level #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lt_rt_center_mix_level #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lt_rt_surround_mix_level #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.metering_mode #=> String, one of "LEQ_A", "ITU_BS_1770_1", "ITU_BS_1770_2", "ITU_BS_1770_3", "ITU_BS_1770_4"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.speech_threshold #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "STEREO", "SURROUND", "DPL2"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.flac_settings.bit_depth #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.flac_settings.channels #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.flac_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.mp_3_settings.bitrate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.mp_3_settings.channels #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.mp_3_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.mp_3_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.mp_3_settings.vbr_quality #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.opus_settings.bitrate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.opus_settings.channels #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.opus_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.vorbis_settings.channels #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.vorbis_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.vorbis_settings.vbr_quality #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.wav_settings.format #=> String, one of "RIFF", "RF64", "EXTENSIBLE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].custom_language_code #=> String
    #   resp.presets[0].settings.audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"
    #   resp.presets[0].settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.audio_description_audio_channel #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.audio_description_data_channel #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels_fine_tune #=> Array
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels_fine_tune[0] #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].stream_name #=> String
    #   resp.presets[0].settings.caption_descriptions #=> Array
    #   resp.presets[0].settings.caption_descriptions[0].custom_language_code #=> String
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "AUTO"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.apply_font_color #=> String, one of "WHITE_TEXT_ONLY", "ALL_TEXT"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.fallback_font #=> String, one of "BEST_MATCH", "MONOSPACED_SANSSERIF", "MONOSPACED_SERIF", "PROPORTIONAL_SANSSERIF", "PROPORTIONAL_SERIF"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE", "HEX", "AUTO"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_bold #=> String
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_bold_italic #=> String
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_italic #=> String
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_regular #=> String
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_script #=> String, one of "AUTOMATIC", "HANS", "HANT"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.hex_font_color #=> String
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE", "AUTO"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.remove_ruby_reserve_attributes #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL", "AUTO"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "EMBEDDED_PLUS_SCTE20", "IMSC", "SCTE20_PLUS_EMBEDDED", "SCC", "SRT", "SMI", "TELETEXT", "TTML", "WEBVTT"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "AUTO"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.apply_font_color #=> String, one of "WHITE_TEXT_ONLY", "ALL_TEXT"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.dds_handling #=> String, one of "NONE", "SPECIFIED", "NO_DISPLAY_WINDOW", "SPECIFIED_OPTIMAL"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.dds_x_coordinate #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.dds_y_coordinate #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.fallback_font #=> String, one of "BEST_MATCH", "MONOSPACED_SANSSERIF", "MONOSPACED_SERIF", "PROPORTIONAL_SANSSERIF", "PROPORTIONAL_SERIF"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE", "HEX", "AUTO"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_bold #=> String
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_bold_italic #=> String
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_italic #=> String
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_regular #=> String
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_script #=> String, one of "AUTOMATIC", "HANS", "HANT"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.height #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.hex_font_color #=> String
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE", "AUTO"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.subtitling_type #=> String, one of "HEARING_IMPAIRED", "STANDARD"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL", "AUTO"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.width #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.embedded_destination_settings.destination_608_channel_number #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.embedded_destination_settings.destination_708_service_number #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.imsc_destination_settings.accessibility #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.imsc_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_25", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.srt_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_types #=> Array
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_types[0] #=> String, one of "PAGE_TYPE_INITIAL", "PAGE_TYPE_SUBTITLE", "PAGE_TYPE_ADDL_INFO", "PAGE_TYPE_PROGRAM_SCHEDULE", "PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.webvtt_destination_settings.accessibility #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.webvtt_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED", "STRICT", "MERGE"
    #   resp.presets[0].settings.caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"
    #   resp.presets[0].settings.caption_descriptions[0].language_description #=> String
    #   resp.presets[0].settings.container_settings.cmfc_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.presets[0].settings.container_settings.cmfc_settings.audio_group_id #=> String
    #   resp.presets[0].settings.container_settings.cmfc_settings.audio_rendition_sets #=> String
    #   resp.presets[0].settings.container_settings.cmfc_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.presets[0].settings.container_settings.cmfc_settings.descriptive_video_service_flag #=> String, one of "DONT_FLAG", "FLAG"
    #   resp.presets[0].settings.container_settings.cmfc_settings.i_frame_only_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.presets[0].settings.container_settings.cmfc_settings.klv_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.presets[0].settings.container_settings.cmfc_settings.manifest_metadata_signaling #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.container_settings.cmfc_settings.scte_35_esam #=> String, one of "INSERT", "NONE"
    #   resp.presets[0].settings.container_settings.cmfc_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.presets[0].settings.container_settings.cmfc_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.presets[0].settings.container_settings.cmfc_settings.timed_metadata_box_version #=> String, one of "VERSION_0", "VERSION_1"
    #   resp.presets[0].settings.container_settings.cmfc_settings.timed_metadata_scheme_id_uri #=> String
    #   resp.presets[0].settings.container_settings.cmfc_settings.timed_metadata_value #=> String
    #   resp.presets[0].settings.container_settings.container #=> String, one of "F4V", "GIF", "ISMV", "M2TS", "M3U8", "CMFC", "MOV", "MP4", "MPD", "MXF", "OGG", "WEBM", "RAW", "Y4M"
    #   resp.presets[0].settings.container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.presets[0].settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.presets[0].settings.container_settings.m2ts_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.presets[0].settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.presets[0].settings.container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.audio_pts_offset_delta #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.presets[0].settings.container_settings.m2ts_settings.data_pts_control #=> String, one of "AUTO", "ALIGN_TO_VIDEO"
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.presets[0].settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.presets[0].settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.presets[0].settings.container_settings.m2ts_settings.force_ts_video_ebp_order #=> String, one of "FORCE", "DEFAULT"
    #   resp.presets[0].settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.presets[0].settings.container_settings.m2ts_settings.klv_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.presets[0].settings.container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.presets[0].settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.presets[0].settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.presets[0].settings.container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.prevent_buffer_underflow #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.program_number #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.pts_offset #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.pts_offset_mode #=> String, one of "AUTO", "SECONDS", "MILLISECONDS"
    #   resp.presets[0].settings.container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.presets[0].settings.container_settings.m2ts_settings.scte_35_esam.scte_35_esam_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.presets[0].settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.presets[0].settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.presets[0].settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.presets[0].settings.container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.presets[0].settings.container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.presets[0].settings.container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.audio_pts_offset_delta #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.data_pts_control #=> String, one of "AUTO", "ALIGN_TO_VIDEO"
    #   resp.presets[0].settings.container_settings.m3u_8_settings.max_pcr_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.presets[0].settings.container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.presets[0].settings.container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.pts_offset #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.pts_offset_mode #=> String, one of "AUTO", "SECONDS", "MILLISECONDS"
    #   resp.presets[0].settings.container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.presets[0].settings.container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.presets[0].settings.container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.presets[0].settings.container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.presets[0].settings.container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.presets[0].settings.container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.presets[0].settings.container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.presets[0].settings.container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.presets[0].settings.container_settings.mp_4_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.presets[0].settings.container_settings.mp_4_settings.c2pa_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.presets[0].settings.container_settings.mp_4_settings.certificate_secret #=> String
    #   resp.presets[0].settings.container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.presets[0].settings.container_settings.mp_4_settings.ctts_version #=> Integer
    #   resp.presets[0].settings.container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.presets[0].settings.container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.presets[0].settings.container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.presets[0].settings.container_settings.mp_4_settings.signing_kms_key #=> String
    #   resp.presets[0].settings.container_settings.mpd_settings.accessibility_caption_hints #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.presets[0].settings.container_settings.mpd_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.presets[0].settings.container_settings.mpd_settings.caption_container_type #=> String, one of "RAW", "FRAGMENTED_MP4"
    #   resp.presets[0].settings.container_settings.mpd_settings.klv_metadata #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.presets[0].settings.container_settings.mpd_settings.manifest_metadata_signaling #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.container_settings.mpd_settings.scte_35_esam #=> String, one of "INSERT", "NONE"
    #   resp.presets[0].settings.container_settings.mpd_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.presets[0].settings.container_settings.mpd_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.presets[0].settings.container_settings.mpd_settings.timed_metadata_box_version #=> String, one of "VERSION_0", "VERSION_1"
    #   resp.presets[0].settings.container_settings.mpd_settings.timed_metadata_scheme_id_uri #=> String
    #   resp.presets[0].settings.container_settings.mpd_settings.timed_metadata_value #=> String
    #   resp.presets[0].settings.container_settings.mxf_settings.afd_signaling #=> String, one of "NO_COPY", "COPY_FROM_VIDEO"
    #   resp.presets[0].settings.container_settings.mxf_settings.profile #=> String, one of "D_10", "XDCAM", "OP1A", "XAVC", "XDCAM_RDD9"
    #   resp.presets[0].settings.container_settings.mxf_settings.xavc_profile_settings.duration_mode #=> String, one of "ALLOW_ANY_DURATION", "DROP_FRAMES_FOR_COMPLIANCE"
    #   resp.presets[0].settings.container_settings.mxf_settings.xavc_profile_settings.max_anc_data_size #=> Integer
    #   resp.presets[0].settings.video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.presets[0].settings.video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.chroma_position_mode #=> String, one of "AUTO", "FORCE_CENTER", "FORCE_TOP_LEFT"
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.bit_depth #=> String, one of "BIT_8", "BIT_10"
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.film_grain_synthesis #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.gop_size #=> Float
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.max_bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.per_frame_metrics #=> Array
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.qvbr_settings.qvbr_quality_level #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.qvbr_settings.qvbr_quality_level_fine_tune #=> Float
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.rate_control_mode #=> String, one of "QVBR"
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.slices #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.av_1_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.avc_intra_settings.avc_intra_class #=> String, one of "CLASS_50", "CLASS_100", "CLASS_200", "CLASS_4K_2K"
    #   resp.presets[0].settings.video_description.codec_settings.avc_intra_settings.avc_intra_uhd_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.presets[0].settings.video_description.codec_settings.avc_intra_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.avc_intra_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.presets[0].settings.video_description.codec_settings.avc_intra_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.avc_intra_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.avc_intra_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.presets[0].settings.video_description.codec_settings.avc_intra_settings.per_frame_metrics #=> Array
    #   resp.presets[0].settings.video_description.codec_settings.avc_intra_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.presets[0].settings.video_description.codec_settings.avc_intra_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.presets[0].settings.video_description.codec_settings.avc_intra_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.avc_intra_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.presets[0].settings.video_description.codec_settings.codec #=> String, one of "AV1", "AVC_INTRA", "FRAME_CAPTURE", "GIF", "H_264", "H_265", "MPEG2", "PASSTHROUGH", "PRORES", "UNCOMPRESSED", "VC3", "VP8", "VP9", "XAVC"
    #   resp.presets[0].settings.video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.gif_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.gif_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.presets[0].settings.video_description.codec_settings.gif_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.gif_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "AUTO", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.bandwidth_reduction_filter.sharpening #=> String, one of "LOW", "MEDIUM", "HIGH", "OFF"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.bandwidth_reduction_filter.strength #=> String, one of "LOW", "MEDIUM", "HIGH", "AUTO", "OFF"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.dynamic_sub_gop #=> String, one of "ADAPTIVE", "STATIC"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.end_of_stream_markers #=> String, one of "INCLUDE", "SUPPRESS"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD", "MBAFF"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS", "AUTO"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.hrd_buffer_final_fill_percentage #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.per_frame_metrics #=> Array
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.qvbr_settings.max_average_bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.qvbr_settings.qvbr_quality_level #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.qvbr_settings.qvbr_quality_level_fine_tune #=> Float
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR", "QVBR"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.saliency_aware_encoding #=> String, one of "DISABLED", "PREFERRED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED", "TRANSITION_DETECTION"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.write_mp_4_packaging_type #=> String, one of "AVC1", "AVC3"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX", "AUTO"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.bandwidth_reduction_filter.sharpening #=> String, one of "LOW", "MEDIUM", "HIGH", "OFF"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.bandwidth_reduction_filter.strength #=> String, one of "LOW", "MEDIUM", "HIGH", "AUTO", "OFF"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.deblocking #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.dynamic_sub_gop #=> String, one of "ADAPTIVE", "STATIC"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.end_of_stream_markers #=> String, one of "INCLUDE", "SUPPRESS"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS", "AUTO"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.hrd_buffer_final_fill_percentage #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.per_frame_metrics #=> Array
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.qvbr_settings.max_average_bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.qvbr_settings.qvbr_quality_level #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.qvbr_settings.qvbr_quality_level_fine_tune #=> Float
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR", "QVBR"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED", "TRANSITION_DETECTION"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.write_mp_4_packaging_type #=> String, one of "HVC1", "HEV1"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.dynamic_sub_gop #=> String, one of "ADAPTIVE", "STATIC"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_final_fill_percentage #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.per_frame_metrics #=> Array
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.chroma_sampling #=> String, one of "PRESERVE_444_SAMPLING", "SUBSAMPLE_TO_422"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY", "APPLE_PRORES_4444", "APPLE_PRORES_4444_XQ"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.per_frame_metrics #=> Array
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.presets[0].settings.video_description.codec_settings.uncompressed_settings.fourcc #=> String, one of "I420", "I422", "I444"
    #   resp.presets[0].settings.video_description.codec_settings.uncompressed_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.uncompressed_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.presets[0].settings.video_description.codec_settings.uncompressed_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.uncompressed_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.uncompressed_settings.interlace_mode #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.presets[0].settings.video_description.codec_settings.uncompressed_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.presets[0].settings.video_description.codec_settings.uncompressed_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.uncompressed_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.presets[0].settings.video_description.codec_settings.vc_3_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.vc_3_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.presets[0].settings.video_description.codec_settings.vc_3_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vc_3_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vc_3_settings.interlace_mode #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.presets[0].settings.video_description.codec_settings.vc_3_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.presets[0].settings.video_description.codec_settings.vc_3_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.vc_3_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.presets[0].settings.video_description.codec_settings.vc_3_settings.vc_3_class #=> String, one of "CLASS_145_8BIT", "CLASS_220_8BIT", "CLASS_220_10BIT"
    #   resp.presets[0].settings.video_description.codec_settings.vp_8_settings.bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_8_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.vp_8_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.presets[0].settings.video_description.codec_settings.vp_8_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_8_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_8_settings.gop_size #=> Float
    #   resp.presets[0].settings.video_description.codec_settings.vp_8_settings.hrd_buffer_size #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_8_settings.max_bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_8_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.vp_8_settings.par_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_8_settings.par_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_8_settings.quality_tuning_level #=> String, one of "MULTI_PASS", "MULTI_PASS_HQ"
    #   resp.presets[0].settings.video_description.codec_settings.vp_8_settings.rate_control_mode #=> String, one of "VBR"
    #   resp.presets[0].settings.video_description.codec_settings.vp_9_settings.bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_9_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.vp_9_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.presets[0].settings.video_description.codec_settings.vp_9_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_9_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_9_settings.gop_size #=> Float
    #   resp.presets[0].settings.video_description.codec_settings.vp_9_settings.hrd_buffer_size #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_9_settings.max_bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_9_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.vp_9_settings.par_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_9_settings.par_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.vp_9_settings.quality_tuning_level #=> String, one of "MULTI_PASS", "MULTI_PASS_HQ"
    #   resp.presets[0].settings.video_description.codec_settings.vp_9_settings.rate_control_mode #=> String, one of "VBR"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.adaptive_quantization #=> String, one of "OFF", "AUTO", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.entropy_encoding #=> String, one of "AUTO", "CABAC", "CAVLC"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.per_frame_metrics #=> Array
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.profile #=> String, one of "XAVC_HD_INTRA_CBG", "XAVC_4K_INTRA_CBG", "XAVC_4K_INTRA_VBR", "XAVC_HD", "XAVC_4K"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.softness #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_4k_intra_cbg_profile_settings.xavc_class #=> String, one of "CLASS_100", "CLASS_300", "CLASS_480"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_4k_intra_vbr_profile_settings.xavc_class #=> String, one of "CLASS_100", "CLASS_300", "CLASS_480"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.bitrate_class #=> String, one of "BITRATE_CLASS_100", "BITRATE_CLASS_140", "BITRATE_CLASS_200"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.codec_profile #=> String, one of "HIGH", "HIGH_422"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.gop_closed_cadence #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.hrd_buffer_size #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.slices #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_hd_intra_cbg_profile_settings.xavc_class #=> String, one of "CLASS_50", "CLASS_100", "CLASS_200"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.bitrate_class #=> String, one of "BITRATE_CLASS_25", "BITRATE_CLASS_35", "BITRATE_CLASS_50"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.gop_closed_cadence #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.hrd_buffer_size #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.slices #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.presets[0].settings.video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.presets[0].settings.video_description.crop.height #=> Integer
    #   resp.presets[0].settings.video_description.crop.width #=> Integer
    #   resp.presets[0].settings.video_description.crop.x #=> Integer
    #   resp.presets[0].settings.video_description.crop.y #=> Integer
    #   resp.presets[0].settings.video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.fixed_afd #=> Integer
    #   resp.presets[0].settings.video_description.height #=> Integer
    #   resp.presets[0].settings.video_description.position.height #=> Integer
    #   resp.presets[0].settings.video_description.position.width #=> Integer
    #   resp.presets[0].settings.video_description.position.x #=> Integer
    #   resp.presets[0].settings.video_description.position.y #=> Integer
    #   resp.presets[0].settings.video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.presets[0].settings.video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT", "FIT", "FIT_NO_UPSCALE", "FILL"
    #   resp.presets[0].settings.video_description.sharpness #=> Integer
    #   resp.presets[0].settings.video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.presets[0].settings.video_description.timecode_track #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.clip_limits.maximum_rgb_tolerance #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.clip_limits.maximum_yuv #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.clip_limits.minimum_rgb_tolerance #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.clip_limits.minimum_yuv #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020", "FORCE_P3DCI", "FORCE_P3D65_SDR", "FORCE_P3D65_HDR"
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_to_sdr_tone_mapper #=> String, one of "PRESERVE_DETAILS", "VIBRANT"
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.max_luminance #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.sample_range_conversion #=> String, one of "LIMITED_RANGE_SQUEEZE", "NONE", "LIMITED_RANGE_CLIP"
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.sdr_reference_white_level #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER", "LINEAR_INTERPOLATION"
    #   resp.presets[0].settings.video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.presets[0].settings.video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.presets[0].settings.video_description.video_preprocessors.dolby_vision.l6_metadata.max_cll #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.dolby_vision.l6_metadata.max_fall #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.dolby_vision.l6_mode #=> String, one of "PASSTHROUGH", "RECALCULATE", "SPECIFY"
    #   resp.presets[0].settings.video_description.video_preprocessors.dolby_vision.mapping #=> String, one of "HDR10_NOMAP", "HDR10_1000"
    #   resp.presets[0].settings.video_description.video_preprocessors.dolby_vision.profile #=> String, one of "PROFILE_5", "PROFILE_8_1"
    #   resp.presets[0].settings.video_description.video_preprocessors.hdr_10_plus.mastering_monitor_nits #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.hdr_10_plus.target_monitor_nits #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.sdr_reference_white_level #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL", "TEMPORAL"
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.aggressive_mode #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.post_temporal_sharpening #=> String, one of "DISABLED", "ENABLED", "AUTO"
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.post_temporal_sharpening_strength #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.speed #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.strength #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.license #=> String
    #   resp.presets[0].settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.payload #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.preset #=> String
    #   resp.presets[0].settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.strength #=> String, one of "LIGHTEST", "LIGHTER", "DEFAULT", "STRONGER", "STRONGEST"
    #   resp.presets[0].settings.video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.presets[0].settings.video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.presets[0].settings.video_description.width #=> Integer
    #   resp.presets[0].type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListPresets AWS API Documentation
    #
    # @overload list_presets(params = {})
    # @param [Hash] params ({})
    def list_presets(params = {}, options = {})
      req = build_request(:list_presets, params)
      req.send_request(options)
    end

    # Retrieve a JSON array of up to twenty of your queues. This will return
    # the queues themselves, not just a list of them. To retrieve the next
    # twenty queues, use the nextToken string returned with the array.
    #
    # @option params [String] :list_by
    #   Optional. When you request a list of queues, you can choose to list
    #   them alphabetically by NAME or chronologically by CREATION\_DATE. If
    #   you don't specify, the service will list them by creation date.
    #
    # @option params [Integer] :max_results
    #   Optional. Number of queues, up to twenty, that will be returned at one
    #   time.
    #
    # @option params [String] :next_token
    #   Use this string, provided with the response to a previous request, to
    #   request the next batch of queues.
    #
    # @option params [String] :order
    #   Optional. When you request lists of resources, you can specify whether
    #   they are sorted in ASCENDING or DESCENDING order. Default varies by
    #   resource.
    #
    # @return [Types::ListQueuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueuesResponse#next_token #next_token} => String
    #   * {Types::ListQueuesResponse#queues #queues} => Array&lt;Types::Queue&gt;
    #   * {Types::ListQueuesResponse#total_concurrent_jobs #total_concurrent_jobs} => Integer
    #   * {Types::ListQueuesResponse#unallocated_concurrent_jobs #unallocated_concurrent_jobs} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queues({
    #     list_by: "NAME", # accepts NAME, CREATION_DATE
    #     max_results: 1,
    #     next_token: "__string",
    #     order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.queues #=> Array
    #   resp.queues[0].arn #=> String
    #   resp.queues[0].concurrent_jobs #=> Integer
    #   resp.queues[0].created_at #=> Time
    #   resp.queues[0].description #=> String
    #   resp.queues[0].last_updated #=> Time
    #   resp.queues[0].name #=> String
    #   resp.queues[0].pricing_plan #=> String, one of "ON_DEMAND", "RESERVED"
    #   resp.queues[0].progressing_jobs_count #=> Integer
    #   resp.queues[0].reservation_plan.commitment #=> String, one of "ONE_YEAR"
    #   resp.queues[0].reservation_plan.expires_at #=> Time
    #   resp.queues[0].reservation_plan.purchased_at #=> Time
    #   resp.queues[0].reservation_plan.renewal_type #=> String, one of "AUTO_RENEW", "EXPIRE"
    #   resp.queues[0].reservation_plan.reserved_slots #=> Integer
    #   resp.queues[0].reservation_plan.status #=> String, one of "ACTIVE", "EXPIRED"
    #   resp.queues[0].service_overrides #=> Array
    #   resp.queues[0].service_overrides[0].message #=> String
    #   resp.queues[0].service_overrides[0].name #=> String
    #   resp.queues[0].service_overrides[0].override_value #=> String
    #   resp.queues[0].service_overrides[0].value #=> String
    #   resp.queues[0].status #=> String, one of "ACTIVE", "PAUSED"
    #   resp.queues[0].submitted_jobs_count #=> Integer
    #   resp.queues[0].type #=> String, one of "SYSTEM", "CUSTOM"
    #   resp.total_concurrent_jobs #=> Integer
    #   resp.unallocated_concurrent_jobs #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListQueues AWS API Documentation
    #
    # @overload list_queues(params = {})
    # @param [Hash] params ({})
    def list_queues(params = {}, options = {})
      req = build_request(:list_queues, params)
      req.send_request(options)
    end

    # Retrieve the tags for a MediaConvert resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the resource that you want to list
    #   tags for. To get the ARN, send a GET request with the resource name.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_tags #resource_tags} => Types::ResourceTags
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_tags.arn #=> String
    #   resp.resource_tags.tags #=> Hash
    #   resp.resource_tags.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Retrieve a JSON array of all available Job engine versions and the
    # date they expire.
    #
    # @option params [Integer] :max_results
    #   Optional. Number of valid Job engine versions, up to twenty, that will
    #   be returned at one time.
    #
    # @option params [String] :next_token
    #   Optional. Use this string, provided with the response to a previous
    #   request, to request the next batch of Job engine versions.
    #
    # @return [Types::ListVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVersionsResponse#next_token #next_token} => String
    #   * {Types::ListVersionsResponse#versions #versions} => Array&lt;Types::JobEngineVersion&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_versions({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].expiration_date #=> Time
    #   resp.versions[0].version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListVersions AWS API Documentation
    #
    # @overload list_versions(params = {})
    # @param [Hash] params ({})
    def list_versions(params = {}, options = {})
      req = build_request(:list_versions, params)
      req.send_request(options)
    end

    # Use Probe to obtain detailed information about your input media files.
    # Probe returns a JSON that includes container, codec, frame rate,
    # resolution, track count, audio layout, captions, and more. You can use
    # this information to learn more about your media files, or to help make
    # decisions while automating your transcoding workflow.
    #
    # @option params [Array<Types::ProbeInputFile>] :input_files
    #   Specify a media file to probe.
    #
    # @return [Types::ProbeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProbeResponse#probe_results #probe_results} => Array&lt;Types::ProbeResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.probe({
    #     input_files: [
    #       {
    #         file_url: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.probe_results #=> Array
    #   resp.probe_results[0].container.duration #=> Float
    #   resp.probe_results[0].container.format #=> String, one of "mp4", "quicktime", "matroska", "webm", "mxf"
    #   resp.probe_results[0].container.tracks #=> Array
    #   resp.probe_results[0].container.tracks[0].audio_properties.bit_depth #=> Integer
    #   resp.probe_results[0].container.tracks[0].audio_properties.bit_rate #=> Integer
    #   resp.probe_results[0].container.tracks[0].audio_properties.channels #=> Integer
    #   resp.probe_results[0].container.tracks[0].audio_properties.frame_rate.denominator #=> Integer
    #   resp.probe_results[0].container.tracks[0].audio_properties.frame_rate.numerator #=> Integer
    #   resp.probe_results[0].container.tracks[0].audio_properties.language_code #=> String
    #   resp.probe_results[0].container.tracks[0].audio_properties.sample_rate #=> Integer
    #   resp.probe_results[0].container.tracks[0].codec #=> String, one of "UNKNOWN", "AAC", "AC3", "EAC3", "FLAC", "MP3", "OPUS", "PCM", "VORBIS", "AV1", "AVC", "HEVC", "JPEG2000", "MJPEG", "MP4V", "MPEG2", "PRORES", "THEORA", "VP8", "VP9", "C608", "C708", "WEBVTT"
    #   resp.probe_results[0].container.tracks[0].data_properties.language_code #=> String
    #   resp.probe_results[0].container.tracks[0].duration #=> Float
    #   resp.probe_results[0].container.tracks[0].index #=> Integer
    #   resp.probe_results[0].container.tracks[0].track_type #=> String, one of "video", "audio", "data"
    #   resp.probe_results[0].container.tracks[0].video_properties.bit_depth #=> Integer
    #   resp.probe_results[0].container.tracks[0].video_properties.bit_rate #=> Integer
    #   resp.probe_results[0].container.tracks[0].video_properties.color_primaries #=> String, one of "ITU_709", "UNSPECIFIED", "RESERVED", "ITU_470M", "ITU_470BG", "SMPTE_170M", "SMPTE_240M", "GENERIC_FILM", "ITU_2020", "SMPTE_428_1", "SMPTE_431_2", "SMPTE_EG_432_1", "IPT", "SMPTE_2067XYZ", "EBU_3213_E", "LAST"
    #   resp.probe_results[0].container.tracks[0].video_properties.frame_rate.denominator #=> Integer
    #   resp.probe_results[0].container.tracks[0].video_properties.frame_rate.numerator #=> Integer
    #   resp.probe_results[0].container.tracks[0].video_properties.height #=> Integer
    #   resp.probe_results[0].container.tracks[0].video_properties.matrix_coefficients #=> String, one of "RGB", "ITU_709", "UNSPECIFIED", "RESERVED", "FCC", "ITU_470BG", "SMPTE_170M", "SMPTE_240M", "YCgCo", "ITU_2020_NCL", "ITU_2020_CL", "SMPTE_2085", "CD_NCL", "CD_CL", "ITU_2100ICtCp", "IPT", "EBU3213", "LAST"
    #   resp.probe_results[0].container.tracks[0].video_properties.transfer_characteristics #=> String, one of "ITU_709", "UNSPECIFIED", "RESERVED", "ITU_470M", "ITU_470BG", "SMPTE_170M", "SMPTE_240M", "LINEAR", "LOG10_2", "LOC10_2_5", "IEC_61966_2_4", "ITU_1361", "IEC_61966_2_1", "ITU_2020_10bit", "ITU_2020_12bit", "SMPTE_2084", "SMPTE_428_1", "ARIB_B67", "LAST"
    #   resp.probe_results[0].container.tracks[0].video_properties.width #=> Integer
    #   resp.probe_results[0].metadata.etag #=> String
    #   resp.probe_results[0].metadata.file_size #=> Integer
    #   resp.probe_results[0].metadata.last_modified #=> Time
    #   resp.probe_results[0].metadata.mime_type #=> String
    #   resp.probe_results[0].track_mappings #=> Array
    #   resp.probe_results[0].track_mappings[0].audio_track_indexes #=> Array
    #   resp.probe_results[0].track_mappings[0].audio_track_indexes[0] #=> Integer
    #   resp.probe_results[0].track_mappings[0].data_track_indexes #=> Array
    #   resp.probe_results[0].track_mappings[0].data_track_indexes[0] #=> Integer
    #   resp.probe_results[0].track_mappings[0].video_track_indexes #=> Array
    #   resp.probe_results[0].track_mappings[0].video_track_indexes[0] #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/Probe AWS API Documentation
    #
    # @overload probe(params = {})
    # @param [Hash] params ({})
    def probe(params = {}, options = {})
      req = build_request(:probe, params)
      req.send_request(options)
    end

    # Create or change your policy. For more information about policies, see
    # the user guide at
    # http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    # @option params [required, Types::Policy] :policy
    #   A policy configures behavior that you allow or disallow for your
    #   account. For information about MediaConvert policies, see the user
    #   guide at
    #   http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    # @return [Types::PutPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutPolicyResponse#policy #policy} => Types::Policy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_policy({
    #     policy: { # required
    #       http_inputs: "ALLOWED", # accepts ALLOWED, DISALLOWED
    #       https_inputs: "ALLOWED", # accepts ALLOWED, DISALLOWED
    #       s3_inputs: "ALLOWED", # accepts ALLOWED, DISALLOWED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.http_inputs #=> String, one of "ALLOWED", "DISALLOWED"
    #   resp.policy.https_inputs #=> String, one of "ALLOWED", "DISALLOWED"
    #   resp.policy.s3_inputs #=> String, one of "ALLOWED", "DISALLOWED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/PutPolicy AWS API Documentation
    #
    # @overload put_policy(params = {})
    # @param [Hash] params ({})
    def put_policy(params = {}, options = {})
      req = build_request(:put_policy, params)
      req.send_request(options)
    end

    # Retrieve a JSON array that includes job details for up to twenty of
    # your most recent jobs. Optionally filter results further according to
    # input file, queue, or status. To retrieve the twenty next most recent
    # jobs, use the nextToken string returned with the array.
    #
    # @option params [String] :input_file
    #   Optional. Provide your input file URL or your partial input file name.
    #   The maximum length for an input file is 300 characters.
    #
    # @option params [Integer] :max_results
    #   Optional. Number of jobs, up to twenty, that will be returned at one
    #   time.
    #
    # @option params [String] :next_token
    #   Optional. Use this string, provided with the response to a previous
    #   request, to request the next batch of jobs.
    #
    # @option params [String] :order
    #   Optional. When you request lists of resources, you can specify whether
    #   they are sorted in ASCENDING or DESCENDING order. Default varies by
    #   resource.
    #
    # @option params [String] :queue
    #   Optional. Provide a queue name, or a queue ARN, to return only jobs
    #   from that queue.
    #
    # @option params [String] :status
    #   Optional. A job's status can be SUBMITTED, PROGRESSING, COMPLETE,
    #   CANCELED, or ERROR.
    #
    # @return [Types::SearchJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchJobsResponse#jobs #jobs} => Array&lt;Types::Job&gt;
    #   * {Types::SearchJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_jobs({
    #     input_file: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #     order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     queue: "__string",
    #     status: "SUBMITTED", # accepts SUBMITTED, PROGRESSING, COMPLETE, CANCELED, ERROR
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/SearchJobs AWS API Documentation
    #
    # @overload search_jobs(params = {})
    # @param [Hash] params ({})
    def search_jobs(params = {}, options = {})
      req = build_request(:search_jobs, params)
      req.send_request(options)
    end

    # Add tags to a MediaConvert queue, preset, or job template. For
    # information about tagging, see the User Guide at
    # https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   To get the ARN, send a GET request with the resource name.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags that you want to add to the resource. You can tag resources
    #   with a key-value pair or with only a key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove tags from a MediaConvert queue, preset, or job template. For
    # information about tagging, see the User Guide at
    # https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the resource that you want to remove
    #   tags from. To get the ARN, send a GET request with the resource name.
    #
    # @option params [Array<String>] :tag_keys
    #   The keys of the tags that you want to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "__string", # required
    #     tag_keys: ["__string"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modify one of your existing job templates.
    #
    # @option params [Types::AccelerationSettings] :acceleration_settings
    #   Accelerated transcoding can significantly speed up jobs with long,
    #   visually complex content. Outputs that use this feature incur pro-tier
    #   pricing. For information about feature limitations, see the AWS
    #   Elemental MediaConvert User Guide.
    #
    # @option params [String] :category
    #   The new category for the job template, if you are changing it.
    #
    # @option params [String] :description
    #   The new description for the job template, if you are changing it.
    #
    # @option params [Array<Types::HopDestination>] :hop_destinations
    #   Optional list of hop destinations.
    #
    # @option params [required, String] :name
    #   The name of the job template you are modifying
    #
    # @option params [Integer] :priority
    #   Specify the relative priority for this job. In any given queue, the
    #   service begins processing the job with the highest value first. When
    #   more than one job has the same priority, the service begins processing
    #   the job that you submitted first. If you don't specify a priority,
    #   the service uses the default value 0.
    #
    # @option params [String] :queue
    #   The new queue for the job template, if you are changing it.
    #
    # @option params [Types::JobTemplateSettings] :settings
    #   JobTemplateSettings contains all the transcode settings saved in the
    #   template that will be applied to jobs created from it.
    #
    # @option params [String] :status_update_interval
    #   Specify how often MediaConvert sends STATUS\_UPDATE events to Amazon
    #   CloudWatch Events. Set the interval, in seconds, between status
    #   updates. MediaConvert sends an update at this interval from the time
    #   the service begins processing your job to the time it completes the
    #   transcode or encounters an error.
    #
    # @return [Types::UpdateJobTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJobTemplateResponse#job_template #job_template} => Types::JobTemplate
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdateJobTemplate AWS API Documentation
    #
    # @overload update_job_template(params = {})
    # @param [Hash] params ({})
    def update_job_template(params = {}, options = {})
      req = build_request(:update_job_template, params)
      req.send_request(options)
    end

    # Modify one of your existing presets.
    #
    # @option params [String] :category
    #   The new category for the preset, if you are changing it.
    #
    # @option params [String] :description
    #   The new description for the preset, if you are changing it.
    #
    # @option params [required, String] :name
    #   The name of the preset you are modifying.
    #
    # @option params [Types::PresetSettings] :settings
    #   Settings for preset
    #
    # @return [Types::UpdatePresetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePresetResponse#preset #preset} => Types::Preset
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_preset({
    #     category: "__string",
    #     description: "__string",
    #     name: "__string", # required
    #     settings: {
    #       audio_descriptions: [
    #         {
    #           audio_channel_tagging_settings: {
    #             channel_tag: "L", # accepts L, R, C, LFE, LS, RS, LC, RC, CS, LSD, RSD, TCS, VHL, VHC, VHR, TBL, TBC, TBR, RSL, RSR, LW, RW, LFE2, LT, RT, HI, NAR, M
    #             channel_tags: ["L"], # accepts L, R, C, LFE, LS, RS, LC, RC, CS, LSD, RSD, TCS, VHL, VHC, VHR, TBL, TBC, TBR, RSL, RSR, LW, RW, LFE2, LT, RT, HI, NAR, M
    #           },
    #           audio_normalization_settings: {
    #             algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2, ITU_BS_1770_3, ITU_BS_1770_4
    #             algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #             correction_gate_level: 1,
    #             loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #             peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #             target_lkfs: 1.0,
    #             true_peak_limiter_threshold: 1.0,
    #           },
    #           audio_source_name: "__stringMax2048",
    #           audio_type: 1,
    #           audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           codec_settings: {
    #             aac_settings: {
    #               audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #               bitrate: 1,
    #               codec_profile: "LC", # accepts LC, HEV1, HEV2, XHE
    #               coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #               loudness_measurement_mode: "PROGRAM", # accepts PROGRAM, ANCHOR
    #               rap_interval: 1,
    #               rate_control_mode: "CBR", # accepts CBR, VBR
    #               raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #               sample_rate: 1,
    #               specification: "MPEG2", # accepts MPEG2, MPEG4
    #               target_loudness_range: 1,
    #               vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #             },
    #             ac_3_settings: {
    #               bitrate: 1,
    #               bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #               dialnorm: 1,
    #               dynamic_range_compression_line: "FILM_STANDARD", # accepts FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH, NONE
    #               dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #               dynamic_range_compression_rf: "FILM_STANDARD", # accepts FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH, NONE
    #               lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               sample_rate: 1,
    #             },
    #             aiff_settings: {
    #               bit_depth: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #             codec: "AAC", # accepts AAC, MP2, MP3, WAV, AIFF, AC3, EAC3, EAC3_ATMOS, VORBIS, OPUS, PASSTHROUGH, FLAC
    #             eac_3_atmos_settings: {
    #               bitrate: 1,
    #               bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN
    #               coding_mode: "CODING_MODE_AUTO", # accepts CODING_MODE_AUTO, CODING_MODE_5_1_4, CODING_MODE_7_1_4, CODING_MODE_9_1_6
    #               dialogue_intelligence: "ENABLED", # accepts ENABLED, DISABLED
    #               downmix_control: "SPECIFIED", # accepts SPECIFIED, INITIALIZE_FROM_SOURCE
    #               dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #               dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #               dynamic_range_control: "SPECIFIED", # accepts SPECIFIED, INITIALIZE_FROM_SOURCE
    #               lo_ro_center_mix_level: 1.0,
    #               lo_ro_surround_mix_level: 1.0,
    #               lt_rt_center_mix_level: 1.0,
    #               lt_rt_surround_mix_level: 1.0,
    #               metering_mode: "LEQ_A", # accepts LEQ_A, ITU_BS_1770_1, ITU_BS_1770_2, ITU_BS_1770_3, ITU_BS_1770_4
    #               sample_rate: 1,
    #               speech_threshold: 1,
    #               stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, STEREO, SURROUND, DPL2
    #               surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #             },
    #             eac_3_settings: {
    #               attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #               bitrate: 1,
    #               bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #               dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               dialnorm: 1,
    #               dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #               dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #               lfe_control: "LFE", # accepts LFE, NO_LFE
    #               lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               lo_ro_center_mix_level: 1.0,
    #               lo_ro_surround_mix_level: 1.0,
    #               lt_rt_center_mix_level: 1.0,
    #               lt_rt_surround_mix_level: 1.0,
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #               phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #               sample_rate: 1,
    #               stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #               surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #               surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #             },
    #             flac_settings: {
    #               bit_depth: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #             mp_2_settings: {
    #               bitrate: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #             mp_3_settings: {
    #               bitrate: 1,
    #               channels: 1,
    #               rate_control_mode: "CBR", # accepts CBR, VBR
    #               sample_rate: 1,
    #               vbr_quality: 1,
    #             },
    #             opus_settings: {
    #               bitrate: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #             vorbis_settings: {
    #               channels: 1,
    #               sample_rate: 1,
    #               vbr_quality: 1,
    #             },
    #             wav_settings: {
    #               bit_depth: 1,
    #               channels: 1,
    #               format: "RIFF", # accepts RIFF, RF64, EXTENSIBLE
    #               sample_rate: 1,
    #             },
    #           },
    #           custom_language_code: "__stringPatternAZaZ23AZaZ09",
    #           language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG, SRP
    #           language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           remix_settings: {
    #             audio_description_audio_channel: 1,
    #             audio_description_data_channel: 1,
    #             channel_mapping: {
    #               output_channels: [
    #                 {
    #                   input_channels: [1],
    #                   input_channels_fine_tune: [1.0],
    #                 },
    #               ],
    #             },
    #             channels_in: 1,
    #             channels_out: 1,
    #           },
    #           stream_name: "__stringPatternWS",
    #         },
    #       ],
    #       caption_descriptions: [
    #         {
    #           custom_language_code: "__stringPatternAZaZ23AZaZ",
    #           destination_settings: {
    #             burnin_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT, AUTO
    #               apply_font_color: "WHITE_TEXT_ONLY", # accepts WHITE_TEXT_ONLY, ALL_TEXT
    #               background_color: "NONE", # accepts NONE, BLACK, WHITE, AUTO
    #               background_opacity: 1,
    #               fallback_font: "BEST_MATCH", # accepts BEST_MATCH, MONOSPACED_SANSSERIF, MONOSPACED_SERIF, PROPORTIONAL_SANSSERIF, PROPORTIONAL_SERIF
    #               font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE, HEX, AUTO
    #               font_file_bold: "__stringPatternS3TtfHttpsTtf",
    #               font_file_bold_italic: "__string",
    #               font_file_italic: "__stringPatternS3TtfHttpsTtf",
    #               font_file_regular: "__stringPatternS3TtfHttpsTtf",
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_script: "AUTOMATIC", # accepts AUTOMATIC, HANS, HANT
    #               font_size: 1,
    #               hex_font_color: "__stringMin6Max8Pattern09aFAF609aFAF2",
    #               outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE, AUTO
    #               outline_size: 1,
    #               remove_ruby_reserve_attributes: "DISABLED", # accepts DISABLED, ENABLED
    #               shadow_color: "NONE", # accepts NONE, BLACK, WHITE, AUTO
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #               teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL, AUTO
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, EMBEDDED_PLUS_SCTE20, IMSC, SCTE20_PLUS_EMBEDDED, SCC, SRT, SMI, TELETEXT, TTML, WEBVTT
    #             dvb_sub_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT, AUTO
    #               apply_font_color: "WHITE_TEXT_ONLY", # accepts WHITE_TEXT_ONLY, ALL_TEXT
    #               background_color: "NONE", # accepts NONE, BLACK, WHITE, AUTO
    #               background_opacity: 1,
    #               dds_handling: "NONE", # accepts NONE, SPECIFIED, NO_DISPLAY_WINDOW, SPECIFIED_OPTIMAL
    #               dds_x_coordinate: 1,
    #               dds_y_coordinate: 1,
    #               fallback_font: "BEST_MATCH", # accepts BEST_MATCH, MONOSPACED_SANSSERIF, MONOSPACED_SERIF, PROPORTIONAL_SANSSERIF, PROPORTIONAL_SERIF
    #               font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE, HEX, AUTO
    #               font_file_bold: "__stringPatternS3TtfHttpsTtf",
    #               font_file_bold_italic: "__stringPatternS3TtfHttpsTtf",
    #               font_file_italic: "__stringPatternS3TtfHttpsTtf",
    #               font_file_regular: "__stringPatternS3TtfHttpsTtf",
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_script: "AUTOMATIC", # accepts AUTOMATIC, HANS, HANT
    #               font_size: 1,
    #               height: 1,
    #               hex_font_color: "__stringMin6Max8Pattern09aFAF609aFAF2",
    #               outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE, AUTO
    #               outline_size: 1,
    #               shadow_color: "NONE", # accepts NONE, BLACK, WHITE, AUTO
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #               subtitling_type: "HEARING_IMPAIRED", # accepts HEARING_IMPAIRED, STANDARD
    #               teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL, AUTO
    #               width: 1,
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             embedded_destination_settings: {
    #               destination_608_channel_number: 1,
    #               destination_708_service_number: 1,
    #             },
    #             imsc_destination_settings: {
    #               accessibility: "DISABLED", # accepts DISABLED, ENABLED
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #             scc_destination_settings: {
    #               framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_25, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #             },
    #             srt_destination_settings: {
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #             teletext_destination_settings: {
    #               page_number: "__stringMin3Max3Pattern1809aFAF09aEAE",
    #               page_types: ["PAGE_TYPE_INITIAL"], # accepts PAGE_TYPE_INITIAL, PAGE_TYPE_SUBTITLE, PAGE_TYPE_ADDL_INFO, PAGE_TYPE_PROGRAM_SCHEDULE, PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE
    #             },
    #             ttml_destination_settings: {
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #             webvtt_destination_settings: {
    #               accessibility: "DISABLED", # accepts DISABLED, ENABLED
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED, STRICT, MERGE
    #             },
    #           },
    #           language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG, SRP
    #           language_description: "__string",
    #         },
    #       ],
    #       container_settings: {
    #         cmfc_settings: {
    #           audio_duration: "DEFAULT_CODEC_DURATION", # accepts DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION
    #           audio_group_id: "__string",
    #           audio_rendition_sets: "__string",
    #           audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #           descriptive_video_service_flag: "DONT_FLAG", # accepts DONT_FLAG, FLAG
    #           i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           klv_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           manifest_metadata_signaling: "ENABLED", # accepts ENABLED, DISABLED
    #           scte_35_esam: "INSERT", # accepts INSERT, NONE
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata_box_version: "VERSION_0", # accepts VERSION_0, VERSION_1
    #           timed_metadata_scheme_id_uri: "__stringMax1000",
    #           timed_metadata_value: "__stringMax1000",
    #         },
    #         container: "F4V", # accepts F4V, GIF, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, OGG, WEBM, RAW, Y4M
    #         f4v_settings: {
    #           moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #         },
    #         m2ts_settings: {
    #           audio_buffer_model: "DVB", # accepts DVB, ATSC
    #           audio_duration: "DEFAULT_CODEC_DURATION", # accepts DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION
    #           audio_frames_per_pes: 1,
    #           audio_pids: [1],
    #           audio_pts_offset_delta: 1,
    #           bitrate: 1,
    #           buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #           data_pts_control: "AUTO", # accepts AUTO, ALIGN_TO_VIDEO
    #           dvb_nit_settings: {
    #             network_id: 1,
    #             network_name: "__stringMin1Max256",
    #             nit_interval: 1,
    #           },
    #           dvb_sdt_settings: {
    #             output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #             sdt_interval: 1,
    #             service_name: "__stringMin1Max256",
    #             service_provider_name: "__stringMin1Max256",
    #           },
    #           dvb_sub_pids: [1],
    #           dvb_tdt_settings: {
    #             tdt_interval: 1,
    #           },
    #           dvb_teletext_pid: 1,
    #           ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #           ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #           es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           force_ts_video_ebp_order: "FORCE", # accepts FORCE, DEFAULT
    #           fragment_time: 1.0,
    #           klv_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           max_pcr_interval: 1,
    #           min_ebp_interval: 1,
    #           nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #           null_packet_bitrate: 1.0,
    #           pat_interval: 1,
    #           pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #           pcr_pid: 1,
    #           pmt_interval: 1,
    #           pmt_pid: 1,
    #           prevent_buffer_underflow: "DISABLED", # accepts DISABLED, ENABLED
    #           private_metadata_pid: 1,
    #           program_number: 1,
    #           pts_offset: 1,
    #           pts_offset_mode: "AUTO", # accepts AUTO, SECONDS, MILLISECONDS
    #           rate_mode: "VBR", # accepts VBR, CBR
    #           scte_35_esam: {
    #             scte_35_esam_pid: 1,
    #           },
    #           scte_35_pid: 1,
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #           segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #           segmentation_time: 1.0,
    #           timed_metadata_pid: 1,
    #           transport_stream_id: 1,
    #           video_pid: 1,
    #         },
    #         m3u_8_settings: {
    #           audio_duration: "DEFAULT_CODEC_DURATION", # accepts DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION
    #           audio_frames_per_pes: 1,
    #           audio_pids: [1],
    #           audio_pts_offset_delta: 1,
    #           data_pts_control: "AUTO", # accepts AUTO, ALIGN_TO_VIDEO
    #           max_pcr_interval: 1,
    #           nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #           pat_interval: 1,
    #           pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #           pcr_pid: 1,
    #           pmt_interval: 1,
    #           pmt_pid: 1,
    #           private_metadata_pid: 1,
    #           program_number: 1,
    #           pts_offset: 1,
    #           pts_offset_mode: "AUTO", # accepts AUTO, SECONDS, MILLISECONDS
    #           scte_35_pid: 1,
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata_pid: 1,
    #           transport_stream_id: 1,
    #           video_pid: 1,
    #         },
    #         mov_settings: {
    #           clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #           padding_control: "OMNEON", # accepts OMNEON, NONE
    #           reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #         },
    #         mp_4_settings: {
    #           audio_duration: "DEFAULT_CODEC_DURATION", # accepts DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION
    #           c2pa_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           certificate_secret: "__stringMin1Max2048PatternArnAZSecretsmanagerWD12SecretAZAZ09",
    #           cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           ctts_version: 1,
    #           free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #           mp_4_major_brand: "__string",
    #           signing_kms_key: "__stringMin1PatternArnAwsUsGovCnKmsAZ26EastWestCentralNorthSouthEastWest1912D12KeyAFAF098AFAF094AFAF094AFAF094AFAF0912MrkAFAF0932",
    #         },
    #         mpd_settings: {
    #           accessibility_caption_hints: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           audio_duration: "DEFAULT_CODEC_DURATION", # accepts DEFAULT_CODEC_DURATION, MATCH_VIDEO_DURATION
    #           caption_container_type: "RAW", # accepts RAW, FRAGMENTED_MP4
    #           klv_metadata: "NONE", # accepts NONE, PASSTHROUGH
    #           manifest_metadata_signaling: "ENABLED", # accepts ENABLED, DISABLED
    #           scte_35_esam: "INSERT", # accepts INSERT, NONE
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata_box_version: "VERSION_0", # accepts VERSION_0, VERSION_1
    #           timed_metadata_scheme_id_uri: "__stringMax1000",
    #           timed_metadata_value: "__stringMax1000",
    #         },
    #         mxf_settings: {
    #           afd_signaling: "NO_COPY", # accepts NO_COPY, COPY_FROM_VIDEO
    #           profile: "D_10", # accepts D_10, XDCAM, OP1A, XAVC, XDCAM_RDD9
    #           xavc_profile_settings: {
    #             duration_mode: "ALLOW_ANY_DURATION", # accepts ALLOW_ANY_DURATION, DROP_FRAMES_FOR_COMPLIANCE
    #             max_anc_data_size: 1,
    #           },
    #         },
    #       },
    #       video_description: {
    #         afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #         anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #         chroma_position_mode: "AUTO", # accepts AUTO, FORCE_CENTER, FORCE_TOP_LEFT
    #         codec_settings: {
    #           av_1_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #             bit_depth: "BIT_8", # accepts BIT_8, BIT_10
    #             film_grain_synthesis: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_size: 1.0,
    #             max_bitrate: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             qvbr_settings: {
    #               qvbr_quality_level: 1,
    #               qvbr_quality_level_fine_tune: 1.0,
    #             },
    #             rate_control_mode: "QVBR", # accepts QVBR
    #             slices: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           avc_intra_settings: {
    #             avc_intra_class: "CLASS_50", # accepts CLASS_50, CLASS_100, CLASS_200, CLASS_4K_2K
    #             avc_intra_uhd_settings: {
    #               quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #             },
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, HARD
    #           },
    #           codec: "AV1", # accepts AV1, AVC_INTRA, FRAME_CAPTURE, GIF, H_264, H_265, MPEG2, PASSTHROUGH, PRORES, UNCOMPRESSED, VC3, VP8, VP9, XAVC
    #           frame_capture_settings: {
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             max_captures: 1,
    #             quality: 1,
    #           },
    #           gif_settings: {
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #           },
    #           h264_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, AUTO, LOW, MEDIUM, HIGH, HIGHER, MAX
    #             bandwidth_reduction_filter: {
    #               sharpening: "LOW", # accepts LOW, MEDIUM, HIGH, OFF
    #               strength: "LOW", # accepts LOW, MEDIUM, HIGH, AUTO, OFF
    #             },
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #             codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #             dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #             end_of_stream_markers: "INCLUDE", # accepts INCLUDE, SUPPRESS
    #             entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #             field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD, MBAFF
    #             flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS, AUTO
    #             hrd_buffer_final_fill_percentage: 1,
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             number_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #             qvbr_settings: {
    #               max_average_bitrate: 1,
    #               qvbr_quality_level: 1,
    #               qvbr_quality_level_fine_tune: 1.0,
    #             },
    #             rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #             repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #             saliency_aware_encoding: "DISABLED", # accepts DISABLED, PREFERRED
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED, TRANSITION_DETECTION
    #             slices: 1,
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             softness: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #             write_mp_4_packaging_type: "AVC1", # accepts AVC1, AVC3
    #           },
    #           h265_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX, AUTO
    #             alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #             bandwidth_reduction_filter: {
    #               sharpening: "LOW", # accepts LOW, MEDIUM, HIGH, OFF
    #               strength: "LOW", # accepts LOW, MEDIUM, HIGH, AUTO, OFF
    #             },
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #             codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #             deblocking: "ENABLED", # accepts ENABLED, DISABLED
    #             dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #             end_of_stream_markers: "INCLUDE", # accepts INCLUDE, SUPPRESS
    #             flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS, AUTO
    #             hrd_buffer_final_fill_percentage: 1,
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             number_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #             qvbr_settings: {
    #               max_average_bitrate: 1,
    #               qvbr_quality_level: 1,
    #               qvbr_quality_level_fine_tune: 1.0,
    #             },
    #             rate_control_mode: "VBR", # accepts VBR, CBR, QVBR
    #             sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED, TRANSITION_DETECTION
    #             slices: 1,
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #             tiles: "DISABLED", # accepts DISABLED, ENABLED
    #             unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #             write_mp_4_packaging_type: "HVC1", # accepts HVC1, HEV1
    #           },
    #           mpeg_2_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #             codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #             dynamic_sub_gop: "ADAPTIVE", # accepts ADAPTIVE, STATIC
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             hrd_buffer_final_fill_percentage: 1,
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #             rate_control_mode: "VBR", # accepts VBR, CBR
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             softness: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             syntax: "DEFAULT", # accepts DEFAULT, D_10
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           prores_settings: {
    #             chroma_sampling: "PRESERVE_444_SAMPLING", # accepts PRESERVE_444_SAMPLING, SUBSAMPLE_TO_422
    #             codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY, APPLE_PRORES_4444, APPLE_PRORES_4444_XQ
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, HARD
    #           },
    #           uncompressed_settings: {
    #             fourcc: "I420", # accepts I420, I422, I444
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             interlace_mode: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, HARD
    #           },
    #           vc_3_settings: {
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             interlace_mode: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #             scan_type_conversion_mode: "INTERLACED", # accepts INTERLACED, INTERLACED_OPTIMIZE
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, HARD
    #             vc_3_class: "CLASS_145_8BIT", # accepts CLASS_145_8BIT, CLASS_220_8BIT, CLASS_220_10BIT
    #           },
    #           vp_8_settings: {
    #             bitrate: 1,
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_size: 1.0,
    #             hrd_buffer_size: 1,
    #             max_bitrate: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             quality_tuning_level: "MULTI_PASS", # accepts MULTI_PASS, MULTI_PASS_HQ
    #             rate_control_mode: "VBR", # accepts VBR
    #           },
    #           vp_9_settings: {
    #             bitrate: 1,
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_size: 1.0,
    #             hrd_buffer_size: 1,
    #             max_bitrate: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             quality_tuning_level: "MULTI_PASS", # accepts MULTI_PASS, MULTI_PASS_HQ
    #             rate_control_mode: "VBR", # accepts VBR
    #           },
    #           xavc_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, AUTO, LOW, MEDIUM, HIGH, HIGHER, MAX
    #             entropy_encoding: "AUTO", # accepts AUTO, CABAC, CAVLC
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE, FRAMEFORMER, MAINTAIN_FRAME_COUNT
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             per_frame_metrics: ["PSNR"], # accepts PSNR, SSIM, MS_SSIM, PSNR_HVS, VMAF, QVBR
    #             profile: "XAVC_HD_INTRA_CBG", # accepts XAVC_HD_INTRA_CBG, XAVC_4K_INTRA_CBG, XAVC_4K_INTRA_VBR, XAVC_HD, XAVC_4K
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             softness: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             xavc_4k_intra_cbg_profile_settings: {
    #               xavc_class: "CLASS_100", # accepts CLASS_100, CLASS_300, CLASS_480
    #             },
    #             xavc_4k_intra_vbr_profile_settings: {
    #               xavc_class: "CLASS_100", # accepts CLASS_100, CLASS_300, CLASS_480
    #             },
    #             xavc_4k_profile_settings: {
    #               bitrate_class: "BITRATE_CLASS_100", # accepts BITRATE_CLASS_100, BITRATE_CLASS_140, BITRATE_CLASS_200
    #               codec_profile: "HIGH", # accepts HIGH, HIGH_422
    #               flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_closed_cadence: 1,
    #               hrd_buffer_size: 1,
    #               quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #               slices: 1,
    #             },
    #             xavc_hd_intra_cbg_profile_settings: {
    #               xavc_class: "CLASS_50", # accepts CLASS_50, CLASS_100, CLASS_200
    #             },
    #             xavc_hd_profile_settings: {
    #               bitrate_class: "BITRATE_CLASS_25", # accepts BITRATE_CLASS_25, BITRATE_CLASS_35, BITRATE_CLASS_50
    #               flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_closed_cadence: 1,
    #               hrd_buffer_size: 1,
    #               interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #               quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #               slices: 1,
    #               telecine: "NONE", # accepts NONE, HARD
    #             },
    #           },
    #         },
    #         color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #         crop: {
    #           height: 1,
    #           width: 1,
    #           x: 1,
    #           y: 1,
    #         },
    #         drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #         fixed_afd: 1,
    #         height: 1,
    #         position: {
    #           height: 1,
    #           width: 1,
    #           x: 1,
    #           y: 1,
    #         },
    #         respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #         scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT, FIT, FIT_NO_UPSCALE, FILL
    #         sharpness: 1,
    #         timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #         timecode_track: "DISABLED", # accepts DISABLED, ENABLED
    #         video_preprocessors: {
    #           color_corrector: {
    #             brightness: 1,
    #             clip_limits: {
    #               maximum_rgb_tolerance: 1,
    #               maximum_yuv: 1,
    #               minimum_rgb_tolerance: 1,
    #               minimum_yuv: 1,
    #             },
    #             color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020, FORCE_P3DCI, FORCE_P3D65_SDR, FORCE_P3D65_HDR
    #             contrast: 1,
    #             hdr_10_metadata: {
    #               blue_primary_x: 1,
    #               blue_primary_y: 1,
    #               green_primary_x: 1,
    #               green_primary_y: 1,
    #               max_content_light_level: 1,
    #               max_frame_average_light_level: 1,
    #               max_luminance: 1,
    #               min_luminance: 1,
    #               red_primary_x: 1,
    #               red_primary_y: 1,
    #               white_point_x: 1,
    #               white_point_y: 1,
    #             },
    #             hdr_to_sdr_tone_mapper: "PRESERVE_DETAILS", # accepts PRESERVE_DETAILS, VIBRANT
    #             hue: 1,
    #             max_luminance: 1,
    #             sample_range_conversion: "LIMITED_RANGE_SQUEEZE", # accepts LIMITED_RANGE_SQUEEZE, NONE, LIMITED_RANGE_CLIP
    #             saturation: 1,
    #             sdr_reference_white_level: 1,
    #           },
    #           deinterlacer: {
    #             algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER, LINEAR_INTERPOLATION
    #             control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #             mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #           },
    #           dolby_vision: {
    #             l6_metadata: {
    #               max_cll: 1,
    #               max_fall: 1,
    #             },
    #             l6_mode: "PASSTHROUGH", # accepts PASSTHROUGH, RECALCULATE, SPECIFY
    #             mapping: "HDR10_NOMAP", # accepts HDR10_NOMAP, HDR10_1000
    #             profile: "PROFILE_5", # accepts PROFILE_5, PROFILE_8_1
    #           },
    #           hdr_10_plus: {
    #             mastering_monitor_nits: 1,
    #             target_monitor_nits: 1,
    #           },
    #           image_inserter: {
    #             insertable_images: [
    #               {
    #                 duration: 1,
    #                 fade_in: 1,
    #                 fade_out: 1,
    #                 height: 1,
    #                 image_inserter_input: "__stringMin14PatternS3BmpBMPPngPNGTgaTGAHttpsBmpBMPPngPNGTgaTGA",
    #                 image_x: 1,
    #                 image_y: 1,
    #                 layer: 1,
    #                 opacity: 1,
    #                 start_time: "__stringPattern01D20305D205D",
    #                 width: 1,
    #               },
    #             ],
    #             sdr_reference_white_level: 1,
    #           },
    #           noise_reducer: {
    #             filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL, TEMPORAL
    #             filter_settings: {
    #               strength: 1,
    #             },
    #             spatial_filter_settings: {
    #               post_filter_sharpen_strength: 1,
    #               speed: 1,
    #               strength: 1,
    #             },
    #             temporal_filter_settings: {
    #               aggressive_mode: 1,
    #               post_temporal_sharpening: "DISABLED", # accepts DISABLED, ENABLED, AUTO
    #               post_temporal_sharpening_strength: "LOW", # accepts LOW, MEDIUM, HIGH
    #               speed: 1,
    #               strength: 1,
    #             },
    #           },
    #           partner_watermarking: {
    #             nexguard_file_marker_settings: {
    #               license: "__stringMin1Max100000",
    #               payload: 1,
    #               preset: "__stringMin1Max256",
    #               strength: "LIGHTEST", # accepts LIGHTEST, LIGHTER, DEFAULT, STRONGER, STRONGEST
    #             },
    #           },
    #           timecode_burnin: {
    #             font_size: 1,
    #             position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #             prefix: "__stringPattern",
    #           },
    #         },
    #         width: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.preset.arn #=> String
    #   resp.preset.category #=> String
    #   resp.preset.created_at #=> Time
    #   resp.preset.description #=> String
    #   resp.preset.last_updated #=> Time
    #   resp.preset.name #=> String
    #   resp.preset.settings.audio_descriptions #=> Array
    #   resp.preset.settings.audio_descriptions[0].audio_channel_tagging_settings.channel_tag #=> String, one of "L", "R", "C", "LFE", "LS", "RS", "LC", "RC", "CS", "LSD", "RSD", "TCS", "VHL", "VHC", "VHR", "TBL", "TBC", "TBR", "RSL", "RSR", "LW", "RW", "LFE2", "LT", "RT", "HI", "NAR", "M"
    #   resp.preset.settings.audio_descriptions[0].audio_channel_tagging_settings.channel_tags #=> Array
    #   resp.preset.settings.audio_descriptions[0].audio_channel_tagging_settings.channel_tags[0] #=> String, one of "L", "R", "C", "LFE", "LS", "RS", "LC", "RC", "CS", "LSD", "RSD", "TCS", "VHL", "VHC", "VHR", "TBL", "TBC", "TBR", "RSL", "RSR", "LW", "RW", "LFE2", "LT", "RT", "HI", "NAR", "M"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2", "ITU_BS_1770_3", "ITU_BS_1770_4"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.true_peak_limiter_threshold #=> Float
    #   resp.preset.settings.audio_descriptions[0].audio_source_name #=> String
    #   resp.preset.settings.audio_descriptions[0].audio_type #=> Integer
    #   resp.preset.settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2", "XHE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.loudness_measurement_mode #=> String, one of "PROGRAM", "ANCHOR"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.rap_interval #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.target_loudness_range #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_line #=> String, one of "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_rf #=> String, one of "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "MP3", "WAV", "AIFF", "AC3", "EAC3", "EAC3_ATMOS", "VORBIS", "OPUS", "PASSTHROUGH", "FLAC"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.coding_mode #=> String, one of "CODING_MODE_AUTO", "CODING_MODE_5_1_4", "CODING_MODE_7_1_4", "CODING_MODE_9_1_6"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dialogue_intelligence #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.downmix_control #=> String, one of "SPECIFIED", "INITIALIZE_FROM_SOURCE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.dynamic_range_control #=> String, one of "SPECIFIED", "INITIALIZE_FROM_SOURCE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lo_ro_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lo_ro_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lt_rt_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.lt_rt_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.metering_mode #=> String, one of "LEQ_A", "ITU_BS_1770_1", "ITU_BS_1770_2", "ITU_BS_1770_3", "ITU_BS_1770_4"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.speech_threshold #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "STEREO", "SURROUND", "DPL2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_atmos_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.flac_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.flac_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.flac_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_3_settings.vbr_quality #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.opus_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.opus_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.opus_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.vorbis_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.vorbis_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.vorbis_settings.vbr_quality #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.format #=> String, one of "RIFF", "RF64", "EXTENSIBLE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].custom_language_code #=> String
    #   resp.preset.settings.audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"
    #   resp.preset.settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].remix_settings.audio_description_audio_channel #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.audio_description_data_channel #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels_fine_tune #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels_fine_tune[0] #=> Float
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.preset.settings.audio_descriptions[0].stream_name #=> String
    #   resp.preset.settings.caption_descriptions #=> Array
    #   resp.preset.settings.caption_descriptions[0].custom_language_code #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.apply_font_color #=> String, one of "WHITE_TEXT_ONLY", "ALL_TEXT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.fallback_font #=> String, one of "BEST_MATCH", "MONOSPACED_SANSSERIF", "MONOSPACED_SERIF", "PROPORTIONAL_SANSSERIF", "PROPORTIONAL_SERIF"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE", "HEX", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_bold #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_bold_italic #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_italic #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_file_regular #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_script #=> String, one of "AUTOMATIC", "HANS", "HANT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.hex_font_color #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.remove_ruby_reserve_attributes #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "EMBEDDED_PLUS_SCTE20", "IMSC", "SCTE20_PLUS_EMBEDDED", "SCC", "SRT", "SMI", "TELETEXT", "TTML", "WEBVTT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.apply_font_color #=> String, one of "WHITE_TEXT_ONLY", "ALL_TEXT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.dds_handling #=> String, one of "NONE", "SPECIFIED", "NO_DISPLAY_WINDOW", "SPECIFIED_OPTIMAL"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.dds_x_coordinate #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.dds_y_coordinate #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.fallback_font #=> String, one of "BEST_MATCH", "MONOSPACED_SANSSERIF", "MONOSPACED_SERIF", "PROPORTIONAL_SANSSERIF", "PROPORTIONAL_SERIF"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE", "HEX", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_bold #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_bold_italic #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_italic #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_file_regular #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_script #=> String, one of "AUTOMATIC", "HANS", "HANT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.height #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.hex_font_color #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.subtitling_type #=> String, one of "HEARING_IMPAIRED", "STANDARD"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL", "AUTO"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.width #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.embedded_destination_settings.destination_608_channel_number #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.embedded_destination_settings.destination_708_service_number #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.imsc_destination_settings.accessibility #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.imsc_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_25", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.srt_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_types #=> Array
    #   resp.preset.settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_types[0] #=> String, one of "PAGE_TYPE_INITIAL", "PAGE_TYPE_SUBTITLE", "PAGE_TYPE_ADDL_INFO", "PAGE_TYPE_PROGRAM_SCHEDULE", "PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.webvtt_destination_settings.accessibility #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.webvtt_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED", "STRICT", "MERGE"
    #   resp.preset.settings.caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG", "SRP"
    #   resp.preset.settings.caption_descriptions[0].language_description #=> String
    #   resp.preset.settings.container_settings.cmfc_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.cmfc_settings.audio_group_id #=> String
    #   resp.preset.settings.container_settings.cmfc_settings.audio_rendition_sets #=> String
    #   resp.preset.settings.container_settings.cmfc_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.preset.settings.container_settings.cmfc_settings.descriptive_video_service_flag #=> String, one of "DONT_FLAG", "FLAG"
    #   resp.preset.settings.container_settings.cmfc_settings.i_frame_only_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.cmfc_settings.klv_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.cmfc_settings.manifest_metadata_signaling #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.container_settings.cmfc_settings.scte_35_esam #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.cmfc_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.cmfc_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.cmfc_settings.timed_metadata_box_version #=> String, one of "VERSION_0", "VERSION_1"
    #   resp.preset.settings.container_settings.cmfc_settings.timed_metadata_scheme_id_uri #=> String
    #   resp.preset.settings.container_settings.cmfc_settings.timed_metadata_value #=> String
    #   resp.preset.settings.container_settings.container #=> String, one of "F4V", "GIF", "ISMV", "M2TS", "M3U8", "CMFC", "MOV", "MP4", "MPD", "MXF", "OGG", "WEBM", "RAW", "Y4M"
    #   resp.preset.settings.container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pts_offset_delta #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.data_pts_control #=> String, one of "AUTO", "ALIGN_TO_VIDEO"
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.preset.settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.preset.settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.m2ts_settings.force_ts_video_ebp_order #=> String, one of "FORCE", "DEFAULT"
    #   resp.preset.settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.klv_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.preset.settings.container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.prevent_buffer_underflow #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.program_number #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pts_offset #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pts_offset_mode #=> String, one of "AUTO", "SECONDS", "MILLISECONDS"
    #   resp.preset.settings.container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_esam.scte_35_esam_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pts_offset_delta #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.data_pts_control #=> String, one of "AUTO", "ALIGN_TO_VIDEO"
    #   resp.preset.settings.container_settings.m3u_8_settings.max_pcr_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.preset.settings.container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pts_offset #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pts_offset_mode #=> String, one of "AUTO", "SECONDS", "MILLISECONDS"
    #   resp.preset.settings.container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.preset.settings.container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.preset.settings.container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.preset.settings.container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.preset.settings.container_settings.mp_4_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.mp_4_settings.c2pa_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.certificate_secret #=> String
    #   resp.preset.settings.container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.ctts_version #=> Integer
    #   resp.preset.settings.container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.preset.settings.container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.preset.settings.container_settings.mp_4_settings.signing_kms_key #=> String
    #   resp.preset.settings.container_settings.mpd_settings.accessibility_caption_hints #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mpd_settings.audio_duration #=> String, one of "DEFAULT_CODEC_DURATION", "MATCH_VIDEO_DURATION"
    #   resp.preset.settings.container_settings.mpd_settings.caption_container_type #=> String, one of "RAW", "FRAGMENTED_MP4"
    #   resp.preset.settings.container_settings.mpd_settings.klv_metadata #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.preset.settings.container_settings.mpd_settings.manifest_metadata_signaling #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.container_settings.mpd_settings.scte_35_esam #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.mpd_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.mpd_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.mpd_settings.timed_metadata_box_version #=> String, one of "VERSION_0", "VERSION_1"
    #   resp.preset.settings.container_settings.mpd_settings.timed_metadata_scheme_id_uri #=> String
    #   resp.preset.settings.container_settings.mpd_settings.timed_metadata_value #=> String
    #   resp.preset.settings.container_settings.mxf_settings.afd_signaling #=> String, one of "NO_COPY", "COPY_FROM_VIDEO"
    #   resp.preset.settings.container_settings.mxf_settings.profile #=> String, one of "D_10", "XDCAM", "OP1A", "XAVC", "XDCAM_RDD9"
    #   resp.preset.settings.container_settings.mxf_settings.xavc_profile_settings.duration_mode #=> String, one of "ALLOW_ANY_DURATION", "DROP_FRAMES_FOR_COMPLIANCE"
    #   resp.preset.settings.container_settings.mxf_settings.xavc_profile_settings.max_anc_data_size #=> Integer
    #   resp.preset.settings.video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.preset.settings.video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.chroma_position_mode #=> String, one of "AUTO", "FORCE_CENTER", "FORCE_TOP_LEFT"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.bit_depth #=> String, one of "BIT_8", "BIT_10"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.film_grain_synthesis #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.qvbr_settings.qvbr_quality_level #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.qvbr_settings.qvbr_quality_level_fine_tune #=> Float
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.rate_control_mode #=> String, one of "QVBR"
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.av_1_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.avc_intra_class #=> String, one of "CLASS_50", "CLASS_100", "CLASS_200", "CLASS_4K_2K"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.avc_intra_uhd_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.avc_intra_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.codec_settings.codec #=> String, one of "AV1", "AVC_INTRA", "FRAME_CAPTURE", "GIF", "H_264", "H_265", "MPEG2", "PASSTHROUGH", "PRORES", "UNCOMPRESSED", "VC3", "VP8", "VP9", "XAVC"
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.preset.settings.video_description.codec_settings.gif_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.gif_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.gif_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.gif_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "AUTO", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.bandwidth_reduction_filter.sharpening #=> String, one of "LOW", "MEDIUM", "HIGH", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.bandwidth_reduction_filter.strength #=> String, one of "LOW", "MEDIUM", "HIGH", "AUTO", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.dynamic_sub_gop #=> String, one of "ADAPTIVE", "STATIC"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.end_of_stream_markers #=> String, one of "INCLUDE", "SUPPRESS"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD", "MBAFF"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS", "AUTO"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_final_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.h264_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.qvbr_settings.max_average_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.qvbr_settings.qvbr_quality_level #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.qvbr_settings.qvbr_quality_level_fine_tune #=> Float
    #   resp.preset.settings.video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.saliency_aware_encoding #=> String, one of "DISABLED", "PREFERRED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED", "TRANSITION_DETECTION"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.write_mp_4_packaging_type #=> String, one of "AVC1", "AVC3"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX", "AUTO"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.bandwidth_reduction_filter.sharpening #=> String, one of "LOW", "MEDIUM", "HIGH", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.bandwidth_reduction_filter.strength #=> String, one of "LOW", "MEDIUM", "HIGH", "AUTO", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.deblocking #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.dynamic_sub_gop #=> String, one of "ADAPTIVE", "STATIC"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.end_of_stream_markers #=> String, one of "INCLUDE", "SUPPRESS"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS", "AUTO"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_final_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.h265_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.qvbr_settings.max_average_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.qvbr_settings.qvbr_quality_level #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.qvbr_settings.qvbr_quality_level_fine_tune #=> Float
    #   resp.preset.settings.video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED", "TRANSITION_DETECTION"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.write_mp_4_packaging_type #=> String, one of "HVC1", "HEV1"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.dynamic_sub_gop #=> String, one of "ADAPTIVE", "STATIC"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_final_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.chroma_sampling #=> String, one of "PRESERVE_444_SAMPLING", "SUBSAMPLE_TO_422"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY", "APPLE_PRORES_4444", "APPLE_PRORES_4444_XQ"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.prores_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.fourcc #=> String, one of "I420", "I422", "I444"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.interlace_mode #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.uncompressed_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.interlace_mode #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.scan_type_conversion_mode #=> String, one of "INTERLACED", "INTERLACED_OPTIMIZE"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.codec_settings.vc_3_settings.vc_3_class #=> String, one of "CLASS_145_8BIT", "CLASS_220_8BIT", "CLASS_220_10BIT"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.quality_tuning_level #=> String, one of "MULTI_PASS", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.vp_8_settings.rate_control_mode #=> String, one of "VBR"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.quality_tuning_level #=> String, one of "MULTI_PASS", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.vp_9_settings.rate_control_mode #=> String, one of "VBR"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.adaptive_quantization #=> String, one of "OFF", "AUTO", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.entropy_encoding #=> String, one of "AUTO", "CABAC", "CAVLC"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE", "FRAMEFORMER", "MAINTAIN_FRAME_COUNT"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.per_frame_metrics #=> Array
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.per_frame_metrics[0] #=> String, one of "PSNR", "SSIM", "MS_SSIM", "PSNR_HVS", "VMAF", "QVBR"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.profile #=> String, one of "XAVC_HD_INTRA_CBG", "XAVC_4K_INTRA_CBG", "XAVC_4K_INTRA_VBR", "XAVC_HD", "XAVC_4K"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_intra_cbg_profile_settings.xavc_class #=> String, one of "CLASS_100", "CLASS_300", "CLASS_480"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_intra_vbr_profile_settings.xavc_class #=> String, one of "CLASS_100", "CLASS_300", "CLASS_480"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.bitrate_class #=> String, one of "BITRATE_CLASS_100", "BITRATE_CLASS_140", "BITRATE_CLASS_200"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.codec_profile #=> String, one of "HIGH", "HIGH_422"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_4k_profile_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_intra_cbg_profile_settings.xavc_class #=> String, one of "CLASS_50", "CLASS_100", "CLASS_200"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.bitrate_class #=> String, one of "BITRATE_CLASS_25", "BITRATE_CLASS_35", "BITRATE_CLASS_50"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.xavc_settings.xavc_hd_profile_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.preset.settings.video_description.crop.height #=> Integer
    #   resp.preset.settings.video_description.crop.width #=> Integer
    #   resp.preset.settings.video_description.crop.x #=> Integer
    #   resp.preset.settings.video_description.crop.y #=> Integer
    #   resp.preset.settings.video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.fixed_afd #=> Integer
    #   resp.preset.settings.video_description.height #=> Integer
    #   resp.preset.settings.video_description.position.height #=> Integer
    #   resp.preset.settings.video_description.position.width #=> Integer
    #   resp.preset.settings.video_description.position.x #=> Integer
    #   resp.preset.settings.video_description.position.y #=> Integer
    #   resp.preset.settings.video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.preset.settings.video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT", "FIT", "FIT_NO_UPSCALE", "FILL"
    #   resp.preset.settings.video_description.sharpness #=> Integer
    #   resp.preset.settings.video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.preset.settings.video_description.timecode_track #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.clip_limits.maximum_rgb_tolerance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.clip_limits.maximum_yuv #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.clip_limits.minimum_rgb_tolerance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.clip_limits.minimum_yuv #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020", "FORCE_P3DCI", "FORCE_P3D65_SDR", "FORCE_P3D65_HDR"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_to_sdr_tone_mapper #=> String, one of "PRESERVE_DETAILS", "VIBRANT"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.max_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.sample_range_conversion #=> String, one of "LIMITED_RANGE_SQUEEZE", "NONE", "LIMITED_RANGE_CLIP"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.sdr_reference_white_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER", "LINEAR_INTERPOLATION"
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.l6_metadata.max_cll #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.l6_metadata.max_fall #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.l6_mode #=> String, one of "PASSTHROUGH", "RECALCULATE", "SPECIFY"
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.mapping #=> String, one of "HDR10_NOMAP", "HDR10_1000"
    #   resp.preset.settings.video_description.video_preprocessors.dolby_vision.profile #=> String, one of "PROFILE_5", "PROFILE_8_1"
    #   resp.preset.settings.video_description.video_preprocessors.hdr_10_plus.mastering_monitor_nits #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.hdr_10_plus.target_monitor_nits #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.sdr_reference_white_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL", "TEMPORAL"
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.aggressive_mode #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.post_temporal_sharpening #=> String, one of "DISABLED", "ENABLED", "AUTO"
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.post_temporal_sharpening_strength #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.speed #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.temporal_filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.license #=> String
    #   resp.preset.settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.payload #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.preset #=> String
    #   resp.preset.settings.video_description.video_preprocessors.partner_watermarking.nexguard_file_marker_settings.strength #=> String, one of "LIGHTEST", "LIGHTER", "DEFAULT", "STRONGER", "STRONGEST"
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.preset.settings.video_description.width #=> Integer
    #   resp.preset.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdatePreset AWS API Documentation
    #
    # @overload update_preset(params = {})
    # @param [Hash] params ({})
    def update_preset(params = {}, options = {})
      req = build_request(:update_preset, params)
      req.send_request(options)
    end

    # Modify one of your existing queues.
    #
    # @option params [Integer] :concurrent_jobs
    #   Specify the maximum number of jobs your queue can process
    #   concurrently. For on-demand queues, the value you enter is constrained
    #   by your service quotas for Maximum concurrent jobs, per on-demand
    #   queue and Maximum concurrent jobs, per account. For reserved queues,
    #   update your reservation plan instead in order to increase your yearly
    #   commitment.
    #
    # @option params [String] :description
    #   The new description for the queue, if you are changing it.
    #
    # @option params [required, String] :name
    #   The name of the queue that you are modifying.
    #
    # @option params [Types::ReservationPlanSettings] :reservation_plan_settings
    #   The new details of your pricing plan for your reserved queue. When you
    #   set up a new pricing plan to replace an expired one, you enter into
    #   another 12-month commitment. When you add capacity to your queue by
    #   increasing the number of RTS, you extend the term of your commitment
    #   to 12 months from when you add capacity. After you make these
    #   commitments, you can't cancel them.
    #
    # @option params [String] :status
    #   Pause or activate a queue by changing its status between ACTIVE and
    #   PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs
    #   that are running when you pause the queue continue to run until they
    #   finish or result in an error.
    #
    # @return [Types::UpdateQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateQueueResponse#queue #queue} => Types::Queue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue({
    #     concurrent_jobs: 1,
    #     description: "__string",
    #     name: "__string", # required
    #     reservation_plan_settings: {
    #       commitment: "ONE_YEAR", # required, accepts ONE_YEAR
    #       renewal_type: "AUTO_RENEW", # required, accepts AUTO_RENEW, EXPIRE
    #       reserved_slots: 1, # required
    #     },
    #     status: "ACTIVE", # accepts ACTIVE, PAUSED
    #   })
    #
    # @example Response structure
    #
    #   resp.queue.arn #=> String
    #   resp.queue.concurrent_jobs #=> Integer
    #   resp.queue.created_at #=> Time
    #   resp.queue.description #=> String
    #   resp.queue.last_updated #=> Time
    #   resp.queue.name #=> String
    #   resp.queue.pricing_plan #=> String, one of "ON_DEMAND", "RESERVED"
    #   resp.queue.progressing_jobs_count #=> Integer
    #   resp.queue.reservation_plan.commitment #=> String, one of "ONE_YEAR"
    #   resp.queue.reservation_plan.expires_at #=> Time
    #   resp.queue.reservation_plan.purchased_at #=> Time
    #   resp.queue.reservation_plan.renewal_type #=> String, one of "AUTO_RENEW", "EXPIRE"
    #   resp.queue.reservation_plan.reserved_slots #=> Integer
    #   resp.queue.reservation_plan.status #=> String, one of "ACTIVE", "EXPIRED"
    #   resp.queue.service_overrides #=> Array
    #   resp.queue.service_overrides[0].message #=> String
    #   resp.queue.service_overrides[0].name #=> String
    #   resp.queue.service_overrides[0].override_value #=> String
    #   resp.queue.service_overrides[0].value #=> String
    #   resp.queue.status #=> String, one of "ACTIVE", "PAUSED"
    #   resp.queue.submitted_jobs_count #=> Integer
    #   resp.queue.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdateQueue AWS API Documentation
    #
    # @overload update_queue(params = {})
    # @param [Hash] params ({})
    def update_queue(params = {}, options = {})
      req = build_request(:update_queue, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MediaConvert')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-mediaconvert'
      context[:gem_version] = '1.165.0'
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
