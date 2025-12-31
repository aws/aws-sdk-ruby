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

module Aws::AIOps
  # An API client for AIOps.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AIOps::Client.new(
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

    @identifier = :aiops

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
    add_plugin(Aws::AIOps::Plugins::Endpoints)

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
    #   @option options [Aws::AIOps::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::AIOps::EndpointParameters`.
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

    # Creates an *investigation group* in your account. Creating an
    # investigation group is a one-time setup task for each Region in your
    # account. It is a necessary task to be able to perform investigations.
    #
    # Settings in the investigation group help you centrally manage the
    # common properties of your investigations, such as the following:
    #
    # * Who can access the investigations
    #
    # * Whether investigation data is encrypted with a customer managed Key
    #   Management Service key.
    #
    # * How long investigations and their data are retained by default.
    #
    # Currently, you can have one investigation group in each Region in your
    # account. Each investigation in a Region is a part of the investigation
    # group in that Region
    #
    # To create an investigation group and set up CloudWatch investigations,
    # you must be signed in to an IAM principal that has either the
    # `AIOpsConsoleAdminPolicy` or the `AdministratorAccess` IAM policy
    # attached, or to an account that has similar permissions.
    #
    # You can configure CloudWatch alarms to start investigations and add
    # events to investigations. If you create your investigation group with
    # `CreateInvestigationGroup` and you want to enable alarms to do this,
    # you must use `PutInvestigationGroupPolicy` to create a resource policy
    # that grants this permission to CloudWatch alarms.
    #
    #  For more information about configuring CloudWatch alarms, see [Using
    # Amazon CloudWatch alarms][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html
    #
    # @option params [required, String] :name
    #   Provides a name for the investigation group.
    #
    # @option params [required, String] :role_arn
    #   Specify the ARN of the IAM role that CloudWatch investigations will
    #   use when it gathers investigation data. The permissions in this role
    #   determine which of your resources that CloudWatch investigations will
    #   have access to during investigations.
    #
    #   For more information, see [How to control what data CloudWatch
    #   investigations has access to during investigations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-Security-Data
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   Use this structure if you want to use a customer managed KMS key to
    #   encrypt your investigation data. If you omit this parameter,
    #   CloudWatch investigations will use an Amazon Web Services key to
    #   encrypt the data. For more information, see [Encryption of
    #   investigation data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-KMS
    #
    # @option params [Integer] :retention_in_days
    #   Specify how long that investigation data is kept. For more
    #   information, see [Operational investigation data retention][1].
    #
    #   If you omit this parameter, the default of 90 days is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Retention.html
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to associate with the investigation group.
    #   You can associate as many as 50 tags with an investigation group. To
    #   be able to associate tags when you create the investigation group, you
    #   must have the `cloudwatch:TagResource` permission.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions by granting a user permission to
    #   access or change only resources with certain tag values.
    #
    # @option params [Array<String>] :tag_key_boundaries
    #   Enter the existing custom tag keys for custom applications in your
    #   system. Resource tags help CloudWatch investigations narrow the search
    #   space when it is unable to discover definite relationships between
    #   resources. For example, to discover that an Amazon ECS service depends
    #   on an Amazon RDS database, CloudWatch investigations can discover this
    #   relationship using data sources such as X-Ray and CloudWatch
    #   Application Signals. However, if you haven't deployed these features,
    #   CloudWatch investigations will attempt to identify possible
    #   relationships. Tag boundaries can be used to narrow the resources that
    #   will be discovered by CloudWatch investigations in these cases.
    #
    #   You don't need to enter tags created by myApplications or
    #   CloudFormation, because CloudWatch investigations can automatically
    #   detect those tags.
    #
    # @option params [Hash<String,Array>] :chatbot_notification_channel
    #   Use this structure to integrate CloudWatch investigations with chat
    #   applications. This structure is a string array. For the first string,
    #   specify the ARN of an Amazon SNS topic. For the array of strings,
    #   specify the ARNs of one or more chat applications configurations that
    #   you want to associate with that topic. For more information about
    #   these configuration ARNs, see [Getting started with Amazon Q in chat
    #   applications][1] and [Resource type defined by Amazon Web Services
    #   Chatbot][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/getting-started.html
    #   [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awschatbot.html#awschatbot-resources-for-iam-policies
    #
    # @option params [Boolean] :is_cloud_trail_event_history_enabled
    #   Specify `true` to enable CloudWatch investigations to have access to
    #   change events that are recorded by CloudTrail. The default is `true`.
    #
    # @option params [Array<Types::CrossAccountConfiguration>] :cross_account_configurations
    #   List of `sourceRoleArn` values that have been configured for
    #   cross-account access.
    #
    # @return [Types::CreateInvestigationGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInvestigationGroupOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_investigation_group({
    #     name: "StringWithPatternAndLengthLimits", # required
    #     role_arn: "RoleArn", # required
    #     encryption_configuration: {
    #       type: "AWS_OWNED_KEY", # accepts AWS_OWNED_KEY, CUSTOMER_MANAGED_KMS_KEY
    #       kms_key_id: "KmsKeyId",
    #     },
    #     retention_in_days: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     tag_key_boundaries: ["TagKey"],
    #     chatbot_notification_channel: {
    #       "SNSTopicArn" => ["ChatConfigurationArn"],
    #     },
    #     is_cloud_trail_event_history_enabled: false,
    #     cross_account_configurations: [
    #       {
    #         source_role_arn: "RoleArn",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/CreateInvestigationGroup AWS API Documentation
    #
    # @overload create_investigation_group(params = {})
    # @param [Hash] params ({})
    def create_investigation_group(params = {}, options = {})
      req = build_request(:create_investigation_group, params)
      req.send_request(options)
    end

    # Deletes the specified investigation group from your account. You can
    # currently have one investigation group per Region in your account.
    # After you delete an investigation group, you can later create a new
    # investigation group in the same Region.
    #
    # @option params [required, String] :identifier
    #   Specify either the name or the ARN of the investigation group that you
    #   want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_investigation_group({
    #     identifier: "InvestigationGroupIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/DeleteInvestigationGroup AWS API Documentation
    #
    # @overload delete_investigation_group(params = {})
    # @param [Hash] params ({})
    def delete_investigation_group(params = {}, options = {})
      req = build_request(:delete_investigation_group, params)
      req.send_request(options)
    end

    # Removes the IAM resource policy from being associated with the
    # investigation group that you specify.
    #
    # @option params [required, String] :identifier
    #   Specify either the name or the ARN of the investigation group that you
    #   want to remove the policy from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_investigation_group_policy({
    #     identifier: "InvestigationGroupIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/DeleteInvestigationGroupPolicy AWS API Documentation
    #
    # @overload delete_investigation_group_policy(params = {})
    # @param [Hash] params ({})
    def delete_investigation_group_policy(params = {}, options = {})
      req = build_request(:delete_investigation_group_policy, params)
      req.send_request(options)
    end

    # Returns the configuration information for the specified investigation
    # group.
    #
    # @option params [required, String] :identifier
    #   Specify either the name or the ARN of the investigation group that you
    #   want to view. This is used to set the name of the investigation group.
    #
    # @return [Types::GetInvestigationGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInvestigationGroupResponse#created_by #created_by} => String
    #   * {Types::GetInvestigationGroupResponse#created_at #created_at} => Integer
    #   * {Types::GetInvestigationGroupResponse#last_modified_by #last_modified_by} => String
    #   * {Types::GetInvestigationGroupResponse#last_modified_at #last_modified_at} => Integer
    #   * {Types::GetInvestigationGroupResponse#name #name} => String
    #   * {Types::GetInvestigationGroupResponse#arn #arn} => String
    #   * {Types::GetInvestigationGroupResponse#role_arn #role_arn} => String
    #   * {Types::GetInvestigationGroupResponse#encryption_configuration #encryption_configuration} => Types::EncryptionConfiguration
    #   * {Types::GetInvestigationGroupResponse#retention_in_days #retention_in_days} => Integer
    #   * {Types::GetInvestigationGroupResponse#chatbot_notification_channel #chatbot_notification_channel} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::GetInvestigationGroupResponse#tag_key_boundaries #tag_key_boundaries} => Array&lt;String&gt;
    #   * {Types::GetInvestigationGroupResponse#is_cloud_trail_event_history_enabled #is_cloud_trail_event_history_enabled} => Boolean
    #   * {Types::GetInvestigationGroupResponse#cross_account_configurations #cross_account_configurations} => Array&lt;Types::CrossAccountConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_investigation_group({
    #     identifier: "InvestigationGroupIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_by #=> String
    #   resp.created_at #=> Integer
    #   resp.last_modified_by #=> String
    #   resp.last_modified_at #=> Integer
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.role_arn #=> String
    #   resp.encryption_configuration.type #=> String, one of "AWS_OWNED_KEY", "CUSTOMER_MANAGED_KMS_KEY"
    #   resp.encryption_configuration.kms_key_id #=> String
    #   resp.retention_in_days #=> Integer
    #   resp.chatbot_notification_channel #=> Hash
    #   resp.chatbot_notification_channel["SNSTopicArn"] #=> Array
    #   resp.chatbot_notification_channel["SNSTopicArn"][0] #=> String
    #   resp.tag_key_boundaries #=> Array
    #   resp.tag_key_boundaries[0] #=> String
    #   resp.is_cloud_trail_event_history_enabled #=> Boolean
    #   resp.cross_account_configurations #=> Array
    #   resp.cross_account_configurations[0].source_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/GetInvestigationGroup AWS API Documentation
    #
    # @overload get_investigation_group(params = {})
    # @param [Hash] params ({})
    def get_investigation_group(params = {}, options = {})
      req = build_request(:get_investigation_group, params)
      req.send_request(options)
    end

    # Returns the JSON of the IAM resource policy associated with the
    # specified investigation group in a string. For example,
    # `{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Principal":{"Service":"aiops.alarms.cloudwatch.amazonaws.com"},"Action":["aiops:CreateInvestigation","aiops:CreateInvestigationEvent"],"Resource":"*","Condition":{"StringEquals":{"aws:SourceAccount":"111122223333"},"ArnLike":{"aws:SourceArn":"arn:aws:cloudwatch:us-east-1:111122223333:alarm:*"}}}]}`.
    #
    # @option params [required, String] :identifier
    #   Specify either the name or the ARN of the investigation group that you
    #   want to view the policy of.
    #
    # @return [Types::GetInvestigationGroupPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInvestigationGroupPolicyResponse#investigation_group_arn #investigation_group_arn} => String
    #   * {Types::GetInvestigationGroupPolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_investigation_group_policy({
    #     identifier: "InvestigationGroupIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.investigation_group_arn #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/GetInvestigationGroupPolicy AWS API Documentation
    #
    # @overload get_investigation_group_policy(params = {})
    # @param [Hash] params ({})
    def get_investigation_group_policy(params = {}, options = {})
      req = build_request(:get_investigation_group_policy, params)
      req.send_request(options)
    end

    # Returns the ARN and name of each investigation group in the account.
    #
    # @option params [String] :next_token
    #   Include this value, if it was returned by the previous operation, to
    #   get the next set of service operations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation. If you omit
    #   this parameter, the default of 50 is used.
    #
    # @return [Types::ListInvestigationGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvestigationGroupsOutput#next_token #next_token} => String
    #   * {Types::ListInvestigationGroupsOutput#investigation_groups #investigation_groups} => Array&lt;Types::ListInvestigationGroupsModel&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_investigation_groups({
    #     next_token: "SensitiveStringWithLengthLimits",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.investigation_groups #=> Array
    #   resp.investigation_groups[0].arn #=> String
    #   resp.investigation_groups[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/ListInvestigationGroups AWS API Documentation
    #
    # @overload list_investigation_groups(params = {})
    # @param [Hash] params ({})
    def list_investigation_groups(params = {}, options = {})
      req = build_request(:list_investigation_groups, params)
      req.send_request(options)
    end

    # Displays the tags associated with a CloudWatch investigations
    # resource. Currently, investigation groups support tagging.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the CloudWatch investigations resource that you want to
    #   view tags for. You can use the `ListInvestigationGroups` operation to
    #   find the ARNs of investigation groups.
    #
    #   The ARN format for an investigation group is
    #   `arn:aws:aiops:Region:account-id:investigation-group:investigation-group-id
    #   `.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
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
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates an IAM resource policy and assigns it to the specified
    # investigation group.
    #
    # If you create your investigation group with `CreateInvestigationGroup`
    # and you want to enable CloudWatch alarms to create investigations and
    # add events to investigations, you must use this operation to create a
    # policy similar to this example.
    #
    # ` { "Version": "2008-10-17", "Statement": [ { "Effect": "Allow",
    # "Principal": { "Service": "aiops.alarms.cloudwatch.amazonaws.com" },
    # "Action": [ "aiops:CreateInvestigation",
    # "aiops:CreateInvestigationEvent" ], "Resource": "*", "Condition": {
    # "StringEquals": { "aws:SourceAccount": "account-id" }, "ArnLike": {
    # "aws:SourceArn": "arn:aws:cloudwatch:region:account-id:alarm:*" } } }
    # ] } `
    #
    # @option params [required, String] :identifier
    #   Specify either the name or the ARN of the investigation group that you
    #   want to assign the policy to.
    #
    # @option params [required, String] :policy
    #   The policy, in JSON format.
    #
    # @return [Types::PutInvestigationGroupPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutInvestigationGroupPolicyResponse#investigation_group_arn #investigation_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_investigation_group_policy({
    #     identifier: "InvestigationGroupIdentifier", # required
    #     policy: "InvestigationGroupPolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.investigation_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/PutInvestigationGroupPolicy AWS API Documentation
    #
    # @overload put_investigation_group_policy(params = {})
    # @param [Hash] params ({})
    def put_investigation_group_policy(params = {}, options = {})
      req = build_request(:put_investigation_group_policy, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified resource.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions by granting a user permission to
    # access or change only resources with certain tag values.
    #
    # Tags don't have any semantic meaning to Amazon Web Services and are
    # interpreted strictly as strings of characters.
    #
    # You can associate as many as 50 tags with a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to apply
    #   the tags to. You can use the `ListInvestigationGroups` operation to
    #   find the ARNs of investigation groups.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of key-value pairs to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to remove
    #   the tags from. You can use the`ListInvestigationGroups` operation to
    #   find the ARNs of investigation groups.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of the specified investigation group.
    #
    # @option params [required, String] :identifier
    #   Specify either the name or the ARN of the investigation group that you
    #   want to modify.
    #
    # @option params [String] :role_arn
    #   Specify this field if you want to change the IAM role that CloudWatch
    #   investigations will use when it gathers investigation data. To do so,
    #   specify the ARN of the new role.
    #
    #   The permissions in this role determine which of your resources that
    #   CloudWatch investigations will have access to during investigations.
    #
    #   For more information, see [How to control what data CloudWatch
    #   investigations has access to during investigations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-Security-Data
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   Use this structure if you want to use a customer managed KMS key to
    #   encrypt your investigation data. If you omit this parameter,
    #   CloudWatch investigations will use an Amazon Web Services key to
    #   encrypt the data. For more information, see [Encryption of
    #   investigation data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-KMS
    #
    # @option params [Array<String>] :tag_key_boundaries
    #   Enter the existing custom tag keys for custom applications in your
    #   system. Resource tags help CloudWatch investigations narrow the search
    #   space when it is unable to discover definite relationships between
    #   resources. For example, to discover that an Amazon ECS service depends
    #   on an Amazon RDS database, CloudWatch investigations can discover this
    #   relationship using data sources such as X-Ray and CloudWatch
    #   Application Signals. However, if you haven't deployed these features,
    #   CloudWatch investigations will attempt to identify possible
    #   relationships. Tag boundaries can be used to narrow the resources that
    #   will be discovered by CloudWatch investigations in these cases.
    #
    #   You don't need to enter tags created by myApplications or
    #   CloudFormation, because CloudWatch investigations can automatically
    #   detect those tags.
    #
    # @option params [Hash<String,Array>] :chatbot_notification_channel
    #   Use this structure to integrate CloudWatch investigations with chat
    #   applications. This structure is a string array. For the first string,
    #   specify the ARN of an Amazon SNS topic. For the array of strings,
    #   specify the ARNs of one or more chat applications configurations that
    #   you want to associate with that topic. For more information about
    #   these configuration ARNs, see [Getting started with Amazon Q in chat
    #   applications][1] and [Resource type defined by Amazon Web Services
    #   Chatbot][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/getting-started.html
    #   [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awschatbot.html#awschatbot-resources-for-iam-policies
    #
    # @option params [Boolean] :is_cloud_trail_event_history_enabled
    #   Specify `true` to enable CloudWatch investigations to have access to
    #   change events that are recorded by CloudTrail. The default is `true`.
    #
    # @option params [Array<Types::CrossAccountConfiguration>] :cross_account_configurations
    #   Used to configure cross-account access for an investigation group. It
    #   allows the investigation group to access resources in other accounts.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_investigation_group({
    #     identifier: "InvestigationGroupIdentifier", # required
    #     role_arn: "RoleArn",
    #     encryption_configuration: {
    #       type: "AWS_OWNED_KEY", # accepts AWS_OWNED_KEY, CUSTOMER_MANAGED_KMS_KEY
    #       kms_key_id: "KmsKeyId",
    #     },
    #     tag_key_boundaries: ["TagKey"],
    #     chatbot_notification_channel: {
    #       "SNSTopicArn" => ["ChatConfigurationArn"],
    #     },
    #     is_cloud_trail_event_history_enabled: false,
    #     cross_account_configurations: [
    #       {
    #         source_role_arn: "RoleArn",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/UpdateInvestigationGroup AWS API Documentation
    #
    # @overload update_investigation_group(params = {})
    # @param [Hash] params ({})
    def update_investigation_group(params = {}, options = {})
      req = build_request(:update_investigation_group, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::AIOps')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-aiops'
      context[:gem_version] = '1.10.0'
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
