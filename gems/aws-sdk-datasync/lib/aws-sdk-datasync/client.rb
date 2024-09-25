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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

module Aws::DataSync
  # An API client for DataSync.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DataSync::Client.new(
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

    @identifier = :datasync

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
    add_plugin(Aws::DataSync::Plugins::Endpoints)

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
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
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
    #   @option options [Aws::DataSync::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::DataSync::EndpointParameters`.
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

    # Creates an Amazon Web Services resource for an on-premises storage
    # system that you want DataSync Discovery to collect information about.
    #
    # @option params [required, Types::DiscoveryServerConfiguration] :server_configuration
    #   Specifies the server name and network port required to connect with
    #   the management interface of your on-premises storage system.
    #
    # @option params [required, String] :system_type
    #   Specifies the type of on-premises storage system that you want
    #   DataSync Discovery to collect information about.
    #
    #   <note markdown="1"> DataSync Discovery currently supports NetApp Fabric-Attached Storage
    #   (FAS) and All Flash FAS (AFF) systems running ONTAP 9.7 or later.
    #
    #    </note>
    #
    # @option params [required, Array<String>] :agent_arns
    #   Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #   connects to and reads from your on-premises storage system's
    #   management interface. You can only specify one ARN.
    #
    # @option params [String] :cloud_watch_log_group_arn
    #   Specifies the ARN of the Amazon CloudWatch log group for monitoring
    #   and logging discovery job events.
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   Specifies labels that help you categorize, filter, and search for your
    #   Amazon Web Services resources. We recommend creating at least a name
    #   tag for your on-premises storage system.
    #
    # @option params [String] :name
    #   Specifies a familiar name for your on-premises storage system.
    #
    # @option params [required, String] :client_token
    #   Specifies a client token to make sure requests with this API operation
    #   are idempotent. If you don't specify a client token, DataSync
    #   generates one for you automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::Credentials] :credentials
    #   Specifies the user name and password for accessing your on-premises
    #   storage system's management interface.
    #
    # @return [Types::AddStorageSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddStorageSystemResponse#storage_system_arn #storage_system_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_storage_system({
    #     server_configuration: { # required
    #       server_hostname: "DiscoveryServerHostname", # required
    #       server_port: 1,
    #     },
    #     system_type: "NetAppONTAP", # required, accepts NetAppONTAP
    #     agent_arns: ["AgentArn"], # required
    #     cloud_watch_log_group_arn: "LogGroupArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     name: "Name",
    #     client_token: "PtolemyUUID", # required
    #     credentials: { # required
    #       username: "PtolemyUsername", # required
    #       password: "PtolemyPassword", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_system_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/AddStorageSystem AWS API Documentation
    #
    # @overload add_storage_system(params = {})
    # @param [Hash] params ({})
    def add_storage_system(params = {}, options = {})
      req = build_request(:add_storage_system, params)
      req.send_request(options)
    end

    # Stops an DataSync task execution that's in progress. The transfer of
    # some files are abruptly interrupted. File contents that're
    # transferred to the destination might be incomplete or inconsistent
    # with the source files.
    #
    # However, if you start a new task execution using the same task and
    # allow it to finish, file content on the destination will be complete
    # and consistent. This applies to other unexpected failures that
    # interrupt a task execution. In all of these cases, DataSync
    # successfully completes the transfer when you start the next task
    # execution.
    #
    # @option params [required, String] :task_execution_arn
    #   The Amazon Resource Name (ARN) of the task execution to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_task_execution({
    #     task_execution_arn: "TaskExecutionArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CancelTaskExecution AWS API Documentation
    #
    # @overload cancel_task_execution(params = {})
    # @param [Hash] params ({})
    def cancel_task_execution(params = {}, options = {})
      req = build_request(:cancel_task_execution, params)
      req.send_request(options)
    end

    # Activates an DataSync agent that you've deployed in your storage
    # environment. The activation process associates the agent with your
    # Amazon Web Services account.
    #
    # If you haven't deployed an agent yet, see the following topics to
    # learn more:
    #
    # * [Agent requirements][1]
    #
    # * [Create an agent][2]
    #
    # <note markdown="1"> If you're transferring between Amazon Web Services storage services,
    # you don't need a DataSync agent.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/agent-requirements.html
    # [2]: https://docs.aws.amazon.com/datasync/latest/userguide/configure-agent.html
    #
    # @option params [required, String] :activation_key
    #   Specifies your DataSync agent's activation key. If you don't have an
    #   activation key, see [Activate your agent][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/activate-agent.html
    #
    # @option params [String] :agent_name
    #   Specifies a name for your agent. You can see this name in the DataSync
    #   console.
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   Specifies labels that help you categorize, filter, and search for your
    #   Amazon Web Services resources. We recommend creating at least one tag
    #   for your agent.
    #
    # @option params [String] :vpc_endpoint_id
    #   Specifies the ID of the VPC endpoint that you want your agent to
    #   connect to. For example, a VPC endpoint ID looks like
    #   `vpce-01234d5aff67890e1`.
    #
    #   The VPC endpoint you use must include the DataSync service name (for
    #   example, `com.amazonaws.us-east-2.datasync`).
    #
    # @option params [Array<String>] :subnet_arns
    #   Specifies the ARN of the subnet where you want to run your DataSync
    #   task when using a VPC endpoint. This is the subnet where DataSync
    #   creates and manages the [network interfaces][1] for your transfer. You
    #   can only specify one ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/datasync-network.html#required-network-interfaces
    #
    # @option params [Array<String>] :security_group_arns
    #   Specifies the Amazon Resource Name (ARN) of the security group that
    #   protects your task's [network interfaces][1] when [using a virtual
    #   private cloud (VPC) endpoint][2]. You can only specify one ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/datasync-network.html#required-network-interfaces
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/choose-service-endpoint.html#choose-service-endpoint-vpc
    #
    # @return [Types::CreateAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentResponse#agent_arn #agent_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent({
    #     activation_key: "ActivationKey", # required
    #     agent_name: "TagValue",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     vpc_endpoint_id: "VpcEndpointId",
    #     subnet_arns: ["Ec2SubnetArn"],
    #     security_group_arns: ["Ec2SecurityGroupArn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateAgent AWS API Documentation
    #
    # @overload create_agent(params = {})
    # @param [Hash] params ({})
    def create_agent(params = {}, options = {})
      req = build_request(:create_agent, params)
      req.send_request(options)
    end

    # Creates a transfer *location* for a Microsoft Azure Blob Storage
    # container. DataSync can use this location as a transfer source or
    # destination.
    #
    # Before you begin, make sure you know [how DataSync accesses Azure Blob
    # Storage][1] and works with [access tiers][2] and [blob types][3]. You
    # also need a [DataSync agent][4] that can connect to your container.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access
    # [2]: https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers
    # [3]: https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#blob-types
    # [4]: https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-creating-agent
    #
    # @option params [required, String] :container_url
    #   Specifies the URL of the Azure Blob Storage container involved in your
    #   transfer.
    #
    # @option params [required, String] :authentication_type
    #   Specifies the authentication method DataSync uses to access your Azure
    #   Blob Storage. DataSync can access blob storage using a shared access
    #   signature (SAS).
    #
    # @option params [Types::AzureBlobSasConfiguration] :sas_configuration
    #   Specifies the SAS configuration that allows DataSync to access your
    #   Azure Blob Storage.
    #
    # @option params [String] :blob_type
    #   Specifies the type of blob that you want your objects or files to be
    #   when transferring them into Azure Blob Storage. Currently, DataSync
    #   only supports moving data into Azure Blob Storage as block blobs. For
    #   more information on blob types, see the [Azure Blob Storage
    #   documentation][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/rest/api/storageservices/understanding-block-blobs--append-blobs--and-page-blobs
    #
    # @option params [String] :access_tier
    #   Specifies the access tier that you want your objects or files
    #   transferred into. This only applies when using the location as a
    #   transfer destination. For more information, see [Access tiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers
    #
    # @option params [String] :subdirectory
    #   Specifies path segments if you want to limit your transfer to a
    #   virtual directory in your container (for example, `/my/images`).
    #
    # @option params [required, Array<String>] :agent_arns
    #   Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #   can connect with your Azure Blob Storage container.
    #
    #   You can specify more than one agent. For more information, see [Using
    #   multiple agents for your transfer][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/multiple-agents.html
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   Specifies labels that help you categorize, filter, and search for your
    #   Amazon Web Services resources. We recommend creating at least a name
    #   tag for your transfer location.
    #
    # @return [Types::CreateLocationAzureBlobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationAzureBlobResponse#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_azure_blob({
    #     container_url: "AzureBlobContainerUrl", # required
    #     authentication_type: "SAS", # required, accepts SAS
    #     sas_configuration: {
    #       token: "AzureBlobSasToken", # required
    #     },
    #     blob_type: "BLOCK", # accepts BLOCK
    #     access_tier: "HOT", # accepts HOT, COOL, ARCHIVE
    #     subdirectory: "AzureBlobSubdirectory",
    #     agent_arns: ["AgentArn"], # required
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
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationAzureBlob AWS API Documentation
    #
    # @overload create_location_azure_blob(params = {})
    # @param [Hash] params ({})
    def create_location_azure_blob(params = {}, options = {})
      req = build_request(:create_location_azure_blob, params)
      req.send_request(options)
    end

    # Creates a transfer *location* for an Amazon EFS file system. DataSync
    # can use this location as a source or destination for transferring
    # data.
    #
    # Before you begin, make sure that you understand how DataSync [accesses
    # Amazon EFS file systems][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-access
    #
    # @option params [String] :subdirectory
    #   Specifies a mount path for your Amazon EFS file system. This is where
    #   DataSync reads or writes data (depending on if this is a source or
    #   destination location). By default, DataSync uses the root directory,
    #   but you can also include subdirectories.
    #
    #   <note markdown="1"> You must specify a value with forward slashes (for example,
    #   `/path/to/folder`).
    #
    #    </note>
    #
    # @option params [required, String] :efs_filesystem_arn
    #   Specifies the ARN for the Amazon EFS file system.
    #
    # @option params [required, Types::Ec2Config] :ec2_config
    #   Specifies the subnet and security groups DataSync uses to access your
    #   Amazon EFS file system.
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   Specifies the key-value pair that represents a tag that you want to
    #   add to the resource. The value can be an empty string. This value
    #   helps you manage, filter, and search for your resources. We recommend
    #   that you create a name tag for your location.
    #
    # @option params [String] :access_point_arn
    #   Specifies the Amazon Resource Name (ARN) of the access point that
    #   DataSync uses to access the Amazon EFS file system.
    #
    # @option params [String] :file_system_access_role_arn
    #   Specifies an Identity and Access Management (IAM) role that DataSync
    #   assumes when mounting the Amazon EFS file system.
    #
    # @option params [String] :in_transit_encryption
    #   Specifies whether you want DataSync to use Transport Layer Security
    #   (TLS) 1.2 encryption when it copies data to or from the Amazon EFS
    #   file system.
    #
    #   If you specify an access point using `AccessPointArn` or an IAM role
    #   using `FileSystemAccessRoleArn`, you must set this parameter to
    #   `TLS1_2`.
    #
    # @return [Types::CreateLocationEfsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationEfsResponse#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_efs({
    #     subdirectory: "EfsSubdirectory",
    #     efs_filesystem_arn: "EfsFilesystemArn", # required
    #     ec2_config: { # required
    #       subnet_arn: "Ec2SubnetArn", # required
    #       security_group_arns: ["Ec2SecurityGroupArn"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     access_point_arn: "EfsAccessPointArn",
    #     file_system_access_role_arn: "IamRoleArn",
    #     in_transit_encryption: "NONE", # accepts NONE, TLS1_2
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationEfs AWS API Documentation
    #
    # @overload create_location_efs(params = {})
    # @param [Hash] params ({})
    def create_location_efs(params = {}, options = {})
      req = build_request(:create_location_efs, params)
      req.send_request(options)
    end

    # Creates a transfer *location* for an Amazon FSx for Lustre file
    # system. DataSync can use this location as a source or destination for
    # transferring data.
    #
    # Before you begin, make sure that you understand how DataSync [accesses
    # FSx for Lustre file systems][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-lustre-location.html#create-lustre-location-access
    #
    # @option params [required, String] :fsx_filesystem_arn
    #   The Amazon Resource Name (ARN) for the FSx for Lustre file system.
    #
    # @option params [required, Array<String>] :security_group_arns
    #   The Amazon Resource Names (ARNs) of the security groups that are used
    #   to configure the FSx for Lustre file system.
    #
    # @option params [String] :subdirectory
    #   A subdirectory in the location's path. This subdirectory in the FSx
    #   for Lustre file system is used to read data from the FSx for Lustre
    #   source location or write data to the FSx for Lustre destination.
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   The key-value pair that represents a tag that you want to add to the
    #   resource. The value can be an empty string. This value helps you
    #   manage, filter, and search for your resources. We recommend that you
    #   create a name tag for your location.
    #
    # @return [Types::CreateLocationFsxLustreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationFsxLustreResponse#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_fsx_lustre({
    #     fsx_filesystem_arn: "FsxFilesystemArn", # required
    #     security_group_arns: ["Ec2SecurityGroupArn"], # required
    #     subdirectory: "FsxLustreSubdirectory",
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
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationFsxLustre AWS API Documentation
    #
    # @overload create_location_fsx_lustre(params = {})
    # @param [Hash] params ({})
    def create_location_fsx_lustre(params = {}, options = {})
      req = build_request(:create_location_fsx_lustre, params)
      req.send_request(options)
    end

    # Creates a transfer *location* for an Amazon FSx for NetApp ONTAP file
    # system. DataSync can use this location as a source or destination for
    # transferring data.
    #
    # Before you begin, make sure that you understand how DataSync [accesses
    # FSx for ONTAP file systems][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html#create-ontap-location-access
    #
    # @option params [required, Types::FsxProtocol] :protocol
    #   Specifies the data transfer protocol that DataSync uses to access your
    #   Amazon FSx file system.
    #
    # @option params [required, Array<String>] :security_group_arns
    #   Specifies the Amazon EC2 security groups that provide access to your
    #   file system's preferred subnet.
    #
    #   The security groups must allow outbound traffic on the following ports
    #   (depending on the protocol you use):
    #
    #   * **Network File System (NFS)**: TCP ports 111, 635, and 2049
    #
    #   * **Server Message Block (SMB)**: TCP port 445
    #
    #   Your file system's security groups must also allow inbound traffic on
    #   the same ports.
    #
    # @option params [required, String] :storage_virtual_machine_arn
    #   Specifies the ARN of the storage virtual machine (SVM) in your file
    #   system where you want to copy data to or from.
    #
    # @option params [String] :subdirectory
    #   Specifies a path to the file share in the SVM where you'll copy your
    #   data.
    #
    #   You can specify a junction path (also known as a mount point), qtree
    #   path (for NFS file shares), or share name (for SMB file shares). For
    #   example, your mount path might be `/vol1`, `/vol1/tree1`, or
    #   `/share1`.
    #
    #   <note markdown="1"> Don't specify a junction path in the SVM's root volume. For more
    #   information, see [Managing FSx for ONTAP storage virtual machines][1]
    #   in the *Amazon FSx for NetApp ONTAP User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   Specifies labels that help you categorize, filter, and search for your
    #   Amazon Web Services resources. We recommend creating at least a name
    #   tag for your location.
    #
    # @return [Types::CreateLocationFsxOntapResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationFsxOntapResponse#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_fsx_ontap({
    #     protocol: { # required
    #       nfs: {
    #         mount_options: {
    #           version: "AUTOMATIC", # accepts AUTOMATIC, NFS3, NFS4_0, NFS4_1
    #         },
    #       },
    #       smb: {
    #         domain: "SmbDomain",
    #         mount_options: {
    #           version: "AUTOMATIC", # accepts AUTOMATIC, SMB2, SMB3, SMB1, SMB2_0
    #         },
    #         password: "SmbPassword", # required
    #         user: "SmbUser", # required
    #       },
    #     },
    #     security_group_arns: ["Ec2SecurityGroupArn"], # required
    #     storage_virtual_machine_arn: "StorageVirtualMachineArn", # required
    #     subdirectory: "FsxOntapSubdirectory",
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
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationFsxOntap AWS API Documentation
    #
    # @overload create_location_fsx_ontap(params = {})
    # @param [Hash] params ({})
    def create_location_fsx_ontap(params = {}, options = {})
      req = build_request(:create_location_fsx_ontap, params)
      req.send_request(options)
    end

    # Creates a transfer *location* for an Amazon FSx for OpenZFS file
    # system. DataSync can use this location as a source or destination for
    # transferring data.
    #
    # Before you begin, make sure that you understand how DataSync [accesses
    # FSx for OpenZFS file systems][1].
    #
    # <note markdown="1"> Request parameters related to `SMB` aren't supported with the
    # `CreateLocationFsxOpenZfs` operation.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-openzfs-location.html#create-openzfs-access
    #
    # @option params [required, String] :fsx_filesystem_arn
    #   The Amazon Resource Name (ARN) of the FSx for OpenZFS file system.
    #
    # @option params [required, Types::FsxProtocol] :protocol
    #   The type of protocol that DataSync uses to access your file system.
    #
    # @option params [required, Array<String>] :security_group_arns
    #   The ARNs of the security groups that are used to configure the FSx for
    #   OpenZFS file system.
    #
    # @option params [String] :subdirectory
    #   A subdirectory in the location's path that must begin with `/fsx`.
    #   DataSync uses this subdirectory to read or write data (depending on
    #   whether the file system is a source or destination location).
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   The key-value pair that represents a tag that you want to add to the
    #   resource. The value can be an empty string. This value helps you
    #   manage, filter, and search for your resources. We recommend that you
    #   create a name tag for your location.
    #
    # @return [Types::CreateLocationFsxOpenZfsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationFsxOpenZfsResponse#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_fsx_open_zfs({
    #     fsx_filesystem_arn: "FsxFilesystemArn", # required
    #     protocol: { # required
    #       nfs: {
    #         mount_options: {
    #           version: "AUTOMATIC", # accepts AUTOMATIC, NFS3, NFS4_0, NFS4_1
    #         },
    #       },
    #       smb: {
    #         domain: "SmbDomain",
    #         mount_options: {
    #           version: "AUTOMATIC", # accepts AUTOMATIC, SMB2, SMB3, SMB1, SMB2_0
    #         },
    #         password: "SmbPassword", # required
    #         user: "SmbUser", # required
    #       },
    #     },
    #     security_group_arns: ["Ec2SecurityGroupArn"], # required
    #     subdirectory: "FsxOpenZfsSubdirectory",
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
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationFsxOpenZfs AWS API Documentation
    #
    # @overload create_location_fsx_open_zfs(params = {})
    # @param [Hash] params ({})
    def create_location_fsx_open_zfs(params = {}, options = {})
      req = build_request(:create_location_fsx_open_zfs, params)
      req.send_request(options)
    end

    # Creates a transfer *location* for an Amazon FSx for Windows File
    # Server file system. DataSync can use this location as a source or
    # destination for transferring data.
    #
    # Before you begin, make sure that you understand how DataSync [accesses
    # FSx for Windows File Server file systems][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-location-access
    #
    # @option params [String] :subdirectory
    #   Specifies a mount path for your file system using forward slashes.
    #   This is where DataSync reads or writes data (depending on if this is a
    #   source or destination location).
    #
    # @option params [required, String] :fsx_filesystem_arn
    #   Specifies the Amazon Resource Name (ARN) for the FSx for Windows File
    #   Server file system.
    #
    # @option params [required, Array<String>] :security_group_arns
    #   Specifies the ARNs of the security groups that provide access to your
    #   file system's preferred subnet.
    #
    #   <note markdown="1"> If you choose a security group that doesn't allow connections from
    #   within itself, do one of the following:
    #
    #    * Configure the security group to allow it to communicate within
    #     itself.
    #
    #   * Choose a different security group that can communicate with the
    #     mount target's security group.
    #
    #    </note>
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   Specifies labels that help you categorize, filter, and search for your
    #   Amazon Web Services resources. We recommend creating at least a name
    #   tag for your location.
    #
    # @option params [required, String] :user
    #   Specifies the user with the permissions to mount and access the files,
    #   folders, and file metadata in your FSx for Windows File Server file
    #   system.
    #
    #   For information about choosing a user with the right level of access
    #   for your transfer, see [required permissions][1] for FSx for Windows
    #   File Server locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-windows-location-permissions
    #
    # @option params [String] :domain
    #   Specifies the name of the Microsoft Active Directory domain that the
    #   FSx for Windows File Server file system belongs to.
    #
    #   If you have multiple Active Directory domains in your environment,
    #   configuring this parameter makes sure that DataSync connects to the
    #   right file system.
    #
    # @option params [required, String] :password
    #   Specifies the password of the user with the permissions to mount and
    #   access the files, folders, and file metadata in your FSx for Windows
    #   File Server file system.
    #
    # @return [Types::CreateLocationFsxWindowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationFsxWindowsResponse#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_fsx_windows({
    #     subdirectory: "FsxWindowsSubdirectory",
    #     fsx_filesystem_arn: "FsxFilesystemArn", # required
    #     security_group_arns: ["Ec2SecurityGroupArn"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     user: "SmbUser", # required
    #     domain: "SmbDomain",
    #     password: "SmbPassword", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationFsxWindows AWS API Documentation
    #
    # @overload create_location_fsx_windows(params = {})
    # @param [Hash] params ({})
    def create_location_fsx_windows(params = {}, options = {})
      req = build_request(:create_location_fsx_windows, params)
      req.send_request(options)
    end

    # Creates a transfer *location* for a Hadoop Distributed File System
    # (HDFS). DataSync can use this location as a source or destination for
    # transferring data.
    #
    # Before you begin, make sure that you understand how DataSync [accesses
    # HDFS clusters][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-hdfs-location.html#accessing-hdfs
    #
    # @option params [String] :subdirectory
    #   A subdirectory in the HDFS cluster. This subdirectory is used to read
    #   data from or write data to the HDFS cluster. If the subdirectory
    #   isn't specified, it will default to `/`.
    #
    # @option params [required, Array<Types::HdfsNameNode>] :name_nodes
    #   The NameNode that manages the HDFS namespace. The NameNode performs
    #   operations such as opening, closing, and renaming files and
    #   directories. The NameNode contains the information to map blocks of
    #   data to the DataNodes. You can use only one NameNode.
    #
    # @option params [Integer] :block_size
    #   The size of data blocks to write into the HDFS cluster. The block size
    #   must be a multiple of 512 bytes. The default block size is 128
    #   mebibytes (MiB).
    #
    # @option params [Integer] :replication_factor
    #   The number of DataNodes to replicate the data to when writing to the
    #   HDFS cluster. By default, data is replicated to three DataNodes.
    #
    # @option params [String] :kms_key_provider_uri
    #   The URI of the HDFS cluster's Key Management Server (KMS).
    #
    # @option params [Types::QopConfiguration] :qop_configuration
    #   The Quality of Protection (QOP) configuration specifies the Remote
    #   Procedure Call (RPC) and data transfer protection settings configured
    #   on the Hadoop Distributed File System (HDFS) cluster. If
    #   `QopConfiguration` isn't specified, `RpcProtection` and
    #   `DataTransferProtection` default to `PRIVACY`. If you set
    #   `RpcProtection` or `DataTransferProtection`, the other parameter
    #   assumes the same value.
    #
    # @option params [required, String] :authentication_type
    #   The type of authentication used to determine the identity of the user.
    #
    # @option params [String] :simple_user
    #   The user name used to identify the client on the host operating
    #   system.
    #
    #   <note markdown="1"> If `SIMPLE` is specified for `AuthenticationType`, this parameter is
    #   required.
    #
    #    </note>
    #
    # @option params [String] :kerberos_principal
    #   The Kerberos principal with access to the files and folders on the
    #   HDFS cluster.
    #
    #   <note markdown="1"> If `KERBEROS` is specified for `AuthenticationType`, this parameter is
    #   required.
    #
    #    </note>
    #
    # @option params [String, StringIO, File] :kerberos_keytab
    #   The Kerberos key table (keytab) that contains mappings between the
    #   defined Kerberos principal and the encrypted keys. You can load the
    #   keytab from a file by providing the file's address. If you're using
    #   the CLI, it performs base64 encoding for you. Otherwise, provide the
    #   base64-encoded text.
    #
    #   <note markdown="1"> If `KERBEROS` is specified for `AuthenticationType`, this parameter is
    #   required.
    #
    #    </note>
    #
    # @option params [String, StringIO, File] :kerberos_krb_5_conf
    #   The `krb5.conf` file that contains the Kerberos configuration
    #   information. You can load the `krb5.conf` file by providing the
    #   file's address. If you're using the CLI, it performs the base64
    #   encoding for you. Otherwise, provide the base64-encoded text.
    #
    #   <note markdown="1"> If `KERBEROS` is specified for `AuthenticationType`, this parameter is
    #   required.
    #
    #    </note>
    #
    # @option params [required, Array<String>] :agent_arns
    #   The Amazon Resource Names (ARNs) of the agents that are used to
    #   connect to the HDFS cluster.
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   The key-value pair that represents the tag that you want to add to the
    #   location. The value can be an empty string. We recommend using tags to
    #   name your resources.
    #
    # @return [Types::CreateLocationHdfsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationHdfsResponse#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_hdfs({
    #     subdirectory: "HdfsSubdirectory",
    #     name_nodes: [ # required
    #       {
    #         hostname: "HdfsServerHostname", # required
    #         port: 1, # required
    #       },
    #     ],
    #     block_size: 1,
    #     replication_factor: 1,
    #     kms_key_provider_uri: "KmsKeyProviderUri",
    #     qop_configuration: {
    #       rpc_protection: "DISABLED", # accepts DISABLED, AUTHENTICATION, INTEGRITY, PRIVACY
    #       data_transfer_protection: "DISABLED", # accepts DISABLED, AUTHENTICATION, INTEGRITY, PRIVACY
    #     },
    #     authentication_type: "SIMPLE", # required, accepts SIMPLE, KERBEROS
    #     simple_user: "HdfsUser",
    #     kerberos_principal: "KerberosPrincipal",
    #     kerberos_keytab: "data",
    #     kerberos_krb_5_conf: "data",
    #     agent_arns: ["AgentArn"], # required
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
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationHdfs AWS API Documentation
    #
    # @overload create_location_hdfs(params = {})
    # @param [Hash] params ({})
    def create_location_hdfs(params = {}, options = {})
      req = build_request(:create_location_hdfs, params)
      req.send_request(options)
    end

    # Creates a transfer *location* for a Network File System (NFS) file
    # server. DataSync can use this location as a source or destination for
    # transferring data.
    #
    # Before you begin, make sure that you understand how DataSync [accesses
    # NFS file servers][1].
    #
    # <note markdown="1"> If you're copying data to or from an Snowcone device, you can also
    # use `CreateLocationNfs` to create your transfer location. For more
    # information, see [Configuring transfers with Snowcone][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs
    # [2]: https://docs.aws.amazon.com/datasync/latest/userguide/nfs-on-snowcone.html
    #
    # @option params [required, String] :subdirectory
    #   Specifies the export path in your NFS file server that you want
    #   DataSync to mount.
    #
    #   This path (or a subdirectory of the path) is where DataSync transfers
    #   data to or from. For information on configuring an export for
    #   DataSync, see [Accessing NFS file servers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs
    #
    # @option params [required, String] :server_hostname
    #   Specifies the Domain Name System (DNS) name or IP version 4 address of
    #   the NFS file server that your DataSync agent connects to.
    #
    # @option params [required, Types::OnPremConfig] :on_prem_config
    #   Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #   want to connect to your NFS file server.
    #
    #   You can specify more than one agent. For more information, see [Using
    #   multiple agents for transfers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/multiple-agents.html
    #
    # @option params [Types::NfsMountOptions] :mount_options
    #   Specifies the options that DataSync can use to mount your NFS file
    #   server.
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   Specifies labels that help you categorize, filter, and search for your
    #   Amazon Web Services resources. We recommend creating at least a name
    #   tag for your location.
    #
    # @return [Types::CreateLocationNfsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationNfsResponse#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_nfs({
    #     subdirectory: "NfsSubdirectory", # required
    #     server_hostname: "ServerHostname", # required
    #     on_prem_config: { # required
    #       agent_arns: ["AgentArn"], # required
    #     },
    #     mount_options: {
    #       version: "AUTOMATIC", # accepts AUTOMATIC, NFS3, NFS4_0, NFS4_1
    #     },
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
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationNfs AWS API Documentation
    #
    # @overload create_location_nfs(params = {})
    # @param [Hash] params ({})
    def create_location_nfs(params = {}, options = {})
      req = build_request(:create_location_nfs, params)
      req.send_request(options)
    end

    # Creates a transfer *location* for an object storage system. DataSync
    # can use this location as a source or destination for transferring
    # data.
    #
    # Before you begin, make sure that you understand the [prerequisites][1]
    # for DataSync to work with object storage systems.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html#create-object-location-prerequisites
    #
    # @option params [required, String] :server_hostname
    #   Specifies the domain name or IP address of the object storage server.
    #   A DataSync agent uses this hostname to mount the object storage server
    #   in a network.
    #
    # @option params [Integer] :server_port
    #   Specifies the port that your object storage server accepts inbound
    #   network traffic on (for example, port 443).
    #
    # @option params [String] :server_protocol
    #   Specifies the protocol that your object storage server uses to
    #   communicate.
    #
    # @option params [String] :subdirectory
    #   Specifies the object prefix for your object storage server. If this is
    #   a source location, DataSync only copies objects with this prefix. If
    #   this is a destination location, DataSync writes all objects with this
    #   prefix.
    #
    # @option params [required, String] :bucket_name
    #   Specifies the name of the object storage bucket involved in the
    #   transfer.
    #
    # @option params [String] :access_key
    #   Specifies the access key (for example, a user name) if credentials are
    #   required to authenticate with the object storage server.
    #
    # @option params [String] :secret_key
    #   Specifies the secret key (for example, a password) if credentials are
    #   required to authenticate with the object storage server.
    #
    # @option params [required, Array<String>] :agent_arns
    #   Specifies the Amazon Resource Names (ARNs) of the DataSync agents that
    #   can securely connect with your location.
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   Specifies the key-value pair that represents a tag that you want to
    #   add to the resource. Tags can help you manage, filter, and search for
    #   your resources. We recommend creating a name tag for your location.
    #
    # @option params [String, StringIO, File] :server_certificate
    #   Specifies a certificate chain for DataSync to authenticate with your
    #   object storage system if the system uses a private or self-signed
    #   certificate authority (CA). You must specify a single `.pem` file with
    #   a full certificate chain (for example,
    #   `file:///home/user/.ssh/object_storage_certificates.pem`).
    #
    #   The certificate chain might include:
    #
    #   * The object storage system's certificate
    #
    #   * All intermediate certificates (if there are any)
    #
    #   * The root certificate of the signing CA
    #
    #   You can concatenate your certificates into a `.pem` file (which can be
    #   up to 32768 bytes before base64 encoding). The following example `cat`
    #   command creates an `object_storage_certificates.pem` file that
    #   includes three certificates:
    #
    #   `cat object_server_certificate.pem intermediate_certificate.pem
    #   ca_root_certificate.pem > object_storage_certificates.pem`
    #
    #   To use this parameter, configure `ServerProtocol` to `HTTPS`.
    #
    # @return [Types::CreateLocationObjectStorageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationObjectStorageResponse#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_object_storage({
    #     server_hostname: "ServerHostname", # required
    #     server_port: 1,
    #     server_protocol: "HTTPS", # accepts HTTPS, HTTP
    #     subdirectory: "S3Subdirectory",
    #     bucket_name: "ObjectStorageBucketName", # required
    #     access_key: "ObjectStorageAccessKey",
    #     secret_key: "ObjectStorageSecretKey",
    #     agent_arns: ["AgentArn"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     server_certificate: "data",
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationObjectStorage AWS API Documentation
    #
    # @overload create_location_object_storage(params = {})
    # @param [Hash] params ({})
    def create_location_object_storage(params = {}, options = {})
      req = build_request(:create_location_object_storage, params)
      req.send_request(options)
    end

    # Creates a transfer *location* for an Amazon S3 bucket. DataSync can
    # use this location as a source or destination for transferring data.
    #
    # Before you begin, make sure that you read the following topics:
    #
    #  * [Storage class considerations with Amazon S3 locations][1]
    #
    # * [Evaluating S3 request costs when using DataSync][2]
    #
    # For more information, see [Configuring transfers with Amazon S3][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
    # [2]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests
    # [3]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html
    #
    # @option params [String] :subdirectory
    #   Specifies a prefix in the S3 bucket that DataSync reads from or writes
    #   to (depending on whether the bucket is a source or destination
    #   location).
    #
    #   <note markdown="1"> DataSync can't transfer objects with a prefix that begins with a
    #   slash (`/`) or includes `//`, `/./`, or `/../` patterns. For example:
    #
    #    * `/photos`
    #
    #   * `photos//2006/January`
    #
    #   * `photos/./2006/February`
    #
    #   * `photos/../2006/March`
    #
    #    </note>
    #
    # @option params [required, String] :s3_bucket_arn
    #   Specifies the ARN of the S3 bucket that you want to use as a location.
    #   (When creating your DataSync task later, you specify whether this
    #   location is a transfer source or destination.)
    #
    #   If your S3 bucket is located on an Outposts resource, you must specify
    #   an Amazon S3 access point. For more information, see [Managing data
    #   access with Amazon S3 access points][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html
    #
    # @option params [String] :s3_storage_class
    #   Specifies the storage class that you want your objects to use when
    #   Amazon S3 is a transfer destination.
    #
    #   For buckets in Amazon Web Services Regions, the storage class defaults
    #   to `STANDARD`. For buckets on Outposts, the storage class defaults to
    #   `OUTPOSTS`.
    #
    #   For more information, see [Storage class considerations with Amazon S3
    #   transfers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
    #
    # @option params [required, Types::S3Config] :s3_config
    #   Specifies the Amazon Resource Name (ARN) of the Identity and Access
    #   Management (IAM) role that DataSync uses to access your S3 bucket.
    #
    #   For more information, see [Accessing S3 buckets][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-access
    #
    # @option params [Array<String>] :agent_arns
    #   (Amazon S3 on Outposts only) Specifies the Amazon Resource Name (ARN)
    #   of the DataSync agent on your Outpost.
    #
    #   For more information, see [Deploy your DataSync agent on Outposts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html#outposts-agent
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   Specifies labels that help you categorize, filter, and search for your
    #   Amazon Web Services resources. We recommend creating at least a name
    #   tag for your transfer location.
    #
    # @return [Types::CreateLocationS3Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationS3Response#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_s3({
    #     subdirectory: "S3Subdirectory",
    #     s3_bucket_arn: "S3BucketArn", # required
    #     s3_storage_class: "STANDARD", # accepts STANDARD, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE, OUTPOSTS, GLACIER_INSTANT_RETRIEVAL
    #     s3_config: { # required
    #       bucket_access_role_arn: "IamRoleArn", # required
    #     },
    #     agent_arns: ["AgentArn"],
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
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationS3 AWS API Documentation
    #
    # @overload create_location_s3(params = {})
    # @param [Hash] params ({})
    def create_location_s3(params = {}, options = {})
      req = build_request(:create_location_s3, params)
      req.send_request(options)
    end

    # Creates a transfer *location* for a Server Message Block (SMB) file
    # server. DataSync can use this location as a source or destination for
    # transferring data.
    #
    # Before you begin, make sure that you understand how DataSync [accesses
    # SMB file servers][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb
    #
    # @option params [required, String] :subdirectory
    #   Specifies the name of the share exported by your SMB file server where
    #   DataSync will read or write data. You can include a subdirectory in
    #   the share path (for example, `/path/to/subdirectory`). Make sure that
    #   other SMB clients in your network can also mount this path.
    #
    #   To copy all data in the subdirectory, DataSync must be able to mount
    #   the SMB share and access all of its data. For more information, see
    #   [required permissions][1] for SMB locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #
    # @option params [required, String] :server_hostname
    #   Specifies the Domain Name Service (DNS) name or IP address of the SMB
    #   file server that your DataSync agent will mount.
    #
    #   <note markdown="1"> You can't specify an IP version 6 (IPv6) address.
    #
    #    </note>
    #
    # @option params [required, String] :user
    #   Specifies the user that can mount and access the files, folders, and
    #   file metadata in your SMB file server.
    #
    #   For information about choosing a user with the right level of access
    #   for your transfer, see [required permissions][1] for SMB locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #
    # @option params [String] :domain
    #   Specifies the name of the Active Directory domain that your SMB file
    #   server belongs to.
    #
    #   If you have multiple Active Directory domains in your environment,
    #   configuring this parameter makes sure that DataSync connects to the
    #   right file server.
    #
    # @option params [required, String] :password
    #   Specifies the password of the user who can mount your SMB file server
    #   and has permission to access the files and folders involved in your
    #   transfer.
    #
    #   For more information, see [required permissions][1] for SMB locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #
    # @option params [required, Array<String>] :agent_arns
    #   Specifies the DataSync agent (or agents) which you want to connect to
    #   your SMB file server. You specify an agent by using its Amazon
    #   Resource Name (ARN).
    #
    # @option params [Types::SmbMountOptions] :mount_options
    #   Specifies the version of the SMB protocol that DataSync uses to access
    #   your SMB file server.
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   Specifies labels that help you categorize, filter, and search for your
    #   Amazon Web Services resources. We recommend creating at least a name
    #   tag for your location.
    #
    # @return [Types::CreateLocationSmbResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationSmbResponse#location_arn #location_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_smb({
    #     subdirectory: "SmbSubdirectory", # required
    #     server_hostname: "ServerHostname", # required
    #     user: "SmbUser", # required
    #     domain: "SmbDomain",
    #     password: "SmbPassword", # required
    #     agent_arns: ["AgentArn"], # required
    #     mount_options: {
    #       version: "AUTOMATIC", # accepts AUTOMATIC, SMB2, SMB3, SMB1, SMB2_0
    #     },
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
    #   resp.location_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateLocationSmb AWS API Documentation
    #
    # @overload create_location_smb(params = {})
    # @param [Hash] params ({})
    def create_location_smb(params = {}, options = {})
      req = build_request(:create_location_smb, params)
      req.send_request(options)
    end

    # Configures a *task*, which defines where and how DataSync transfers
    # your data.
    #
    # A task includes a source location, destination location, and transfer
    # options (such as bandwidth limits, scheduling, and more).
    #
    # If you're planning to transfer data to or from an Amazon S3 location,
    # review [how DataSync can affect your S3 request charges][1] and the
    # [DataSync pricing page][2] before you begin.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests
    # [2]: http://aws.amazon.com/datasync/pricing/
    #
    # @option params [required, String] :source_location_arn
    #   Specifies the ARN of your transfer's source location.
    #
    # @option params [required, String] :destination_location_arn
    #   Specifies the ARN of your transfer's destination location.
    #
    # @option params [String] :cloud_watch_log_group_arn
    #   Specifies the Amazon Resource Name (ARN) of an Amazon CloudWatch log
    #   group for monitoring your task.
    #
    # @option params [String] :name
    #   Specifies the name of your task.
    #
    # @option params [Types::Options] :options
    #   Specifies your task's settings, such as preserving file metadata,
    #   verifying data integrity, among other options.
    #
    # @option params [Array<Types::FilterRule>] :excludes
    #   Specifies exclude filters that define the files, objects, and folders
    #   in your source location that you don't want DataSync to transfer. For
    #   more information and examples, see [Specifying what DataSync transfers
    #   by using filters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #
    # @option params [Types::TaskSchedule] :schedule
    #   Specifies a schedule for when you want your task to run. For more
    #   information, see [Scheduling your task][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   Specifies the tags that you want to apply to your task.
    #
    #   *Tags* are key-value pairs that help you manage, filter, and search
    #   for your DataSync resources.
    #
    # @option params [Array<Types::FilterRule>] :includes
    #   Specifies include filters define the files, objects, and folders in
    #   your source location that you want DataSync to transfer. For more
    #   information and examples, see [Specifying what DataSync transfers by
    #   using filters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #
    # @option params [Types::ManifestConfig] :manifest_config
    #   Configures a manifest, which is a list of files or objects that you
    #   want DataSync to transfer. For more information and configuration
    #   examples, see [Specifying what DataSync transfers by using a
    #   manifest][1].
    #
    #   When using this parameter, your caller identity (the role that you're
    #   using DataSync with) must have the `iam:PassRole` permission. The
    #   [AWSDataSyncFullAccess][2] policy includes this permission.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess
    #
    # @option params [Types::TaskReportConfig] :task_report_config
    #   Specifies how you want to configure a task report, which provides
    #   detailed information about your DataSync transfer. For more
    #   information, see [Monitoring your DataSync transfers with task
    #   reports][1].
    #
    #   When using this parameter, your caller identity (the role that you're
    #   using DataSync with) must have the `iam:PassRole` permission. The
    #   [AWSDataSyncFullAccess][2] policy includes this permission.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess
    #
    # @return [Types::CreateTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTaskResponse#task_arn #task_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_task({
    #     source_location_arn: "LocationArn", # required
    #     destination_location_arn: "LocationArn", # required
    #     cloud_watch_log_group_arn: "LogGroupArn",
    #     name: "TagValue",
    #     options: {
    #       verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED, NONE
    #       overwrite_mode: "ALWAYS", # accepts ALWAYS, NEVER
    #       atime: "NONE", # accepts NONE, BEST_EFFORT
    #       mtime: "NONE", # accepts NONE, PRESERVE
    #       uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #       preserve_devices: "NONE", # accepts NONE, PRESERVE
    #       posix_permissions: "NONE", # accepts NONE, PRESERVE
    #       bytes_per_second: 1,
    #       task_queueing: "ENABLED", # accepts ENABLED, DISABLED
    #       log_level: "OFF", # accepts OFF, BASIC, TRANSFER
    #       transfer_mode: "CHANGED", # accepts CHANGED, ALL
    #       security_descriptor_copy_flags: "NONE", # accepts NONE, OWNER_DACL, OWNER_DACL_SACL
    #       object_tags: "PRESERVE", # accepts PRESERVE, NONE
    #     },
    #     excludes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN", # accepts SIMPLE_PATTERN
    #         value: "FilterValue",
    #       },
    #     ],
    #     schedule: {
    #       schedule_expression: "ScheduleExpressionCron", # required
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     includes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN", # accepts SIMPLE_PATTERN
    #         value: "FilterValue",
    #       },
    #     ],
    #     manifest_config: {
    #       action: "TRANSFER", # accepts TRANSFER
    #       format: "CSV", # accepts CSV
    #       source: {
    #         s3: { # required
    #           manifest_object_path: "S3Subdirectory", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #           s3_bucket_arn: "S3BucketArn", # required
    #           manifest_object_version_id: "S3ObjectVersionId",
    #         },
    #       },
    #     },
    #     task_report_config: {
    #       destination: {
    #         s3: {
    #           subdirectory: "S3Subdirectory",
    #           s3_bucket_arn: "S3BucketArn", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #         },
    #       },
    #       output_type: "SUMMARY_ONLY", # accepts SUMMARY_ONLY, STANDARD
    #       report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #       object_version_ids: "INCLUDE", # accepts INCLUDE, NONE
    #       overrides: {
    #         transferred: {
    #           report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #         },
    #         verified: {
    #           report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #         },
    #         deleted: {
    #           report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #         },
    #         skipped: {
    #           report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.task_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/CreateTask AWS API Documentation
    #
    # @overload create_task(params = {})
    # @param [Hash] params ({})
    def create_task(params = {}, options = {})
      req = build_request(:create_task, params)
      req.send_request(options)
    end

    # Removes an DataSync agent resource from your Amazon Web Services
    # account.
    #
    # Keep in mind that this operation (which can't be undone) doesn't
    # remove the agent's virtual machine (VM) or Amazon EC2 instance from
    # your storage environment. For next steps, you can delete the VM or
    # instance from your storage environment or reuse it to [activate a new
    # agent][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/activate-agent.html
    #
    # @option params [required, String] :agent_arn
    #   The Amazon Resource Name (ARN) of the agent to delete. Use the
    #   `ListAgents` operation to return a list of agents for your account and
    #   Amazon Web Services Region.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent({
    #     agent_arn: "AgentArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteAgent AWS API Documentation
    #
    # @overload delete_agent(params = {})
    # @param [Hash] params ({})
    def delete_agent(params = {}, options = {})
      req = build_request(:delete_agent, params)
      req.send_request(options)
    end

    # Deletes a transfer location resource from DataSync.
    #
    # @option params [required, String] :location_arn
    #   The Amazon Resource Name (ARN) of the location to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_location({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteLocation AWS API Documentation
    #
    # @overload delete_location(params = {})
    # @param [Hash] params ({})
    def delete_location(params = {}, options = {})
      req = build_request(:delete_location, params)
      req.send_request(options)
    end

    # Deletes a transfer task resource from DataSync.
    #
    # @option params [required, String] :task_arn
    #   Specifies the Amazon Resource Name (ARN) of the task that you want to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_task({
    #     task_arn: "TaskArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DeleteTask AWS API Documentation
    #
    # @overload delete_task(params = {})
    # @param [Hash] params ({})
    def delete_task(params = {}, options = {})
      req = build_request(:delete_task, params)
      req.send_request(options)
    end

    # Returns information about an DataSync agent, such as its name, service
    # endpoint type, and status.
    #
    # @option params [required, String] :agent_arn
    #   Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #   you want information about.
    #
    # @return [Types::DescribeAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAgentResponse#agent_arn #agent_arn} => String
    #   * {Types::DescribeAgentResponse#name #name} => String
    #   * {Types::DescribeAgentResponse#status #status} => String
    #   * {Types::DescribeAgentResponse#last_connection_time #last_connection_time} => Time
    #   * {Types::DescribeAgentResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeAgentResponse#endpoint_type #endpoint_type} => String
    #   * {Types::DescribeAgentResponse#private_link_config #private_link_config} => Types::PrivateLinkConfig
    #   * {Types::DescribeAgentResponse#platform #platform} => Types::Platform
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_agent({
    #     agent_arn: "AgentArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "ONLINE", "OFFLINE"
    #   resp.last_connection_time #=> Time
    #   resp.creation_time #=> Time
    #   resp.endpoint_type #=> String, one of "PUBLIC", "PRIVATE_LINK", "FIPS"
    #   resp.private_link_config.vpc_endpoint_id #=> String
    #   resp.private_link_config.private_link_endpoint #=> String
    #   resp.private_link_config.subnet_arns #=> Array
    #   resp.private_link_config.subnet_arns[0] #=> String
    #   resp.private_link_config.security_group_arns #=> Array
    #   resp.private_link_config.security_group_arns[0] #=> String
    #   resp.platform.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeAgent AWS API Documentation
    #
    # @overload describe_agent(params = {})
    # @param [Hash] params ({})
    def describe_agent(params = {}, options = {})
      req = build_request(:describe_agent, params)
      req.send_request(options)
    end

    # Returns information about a DataSync discovery job.
    #
    # @option params [required, String] :discovery_job_arn
    #   Specifies the Amazon Resource Name (ARN) of the discovery job that you
    #   want information about.
    #
    # @return [Types::DescribeDiscoveryJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDiscoveryJobResponse#storage_system_arn #storage_system_arn} => String
    #   * {Types::DescribeDiscoveryJobResponse#discovery_job_arn #discovery_job_arn} => String
    #   * {Types::DescribeDiscoveryJobResponse#collection_duration_minutes #collection_duration_minutes} => Integer
    #   * {Types::DescribeDiscoveryJobResponse#status #status} => String
    #   * {Types::DescribeDiscoveryJobResponse#job_start_time #job_start_time} => Time
    #   * {Types::DescribeDiscoveryJobResponse#job_end_time #job_end_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_discovery_job({
    #     discovery_job_arn: "DiscoveryJobArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_system_arn #=> String
    #   resp.discovery_job_arn #=> String
    #   resp.collection_duration_minutes #=> Integer
    #   resp.status #=> String, one of "RUNNING", "WARNING", "TERMINATED", "FAILED", "STOPPED", "COMPLETED", "COMPLETED_WITH_ISSUES"
    #   resp.job_start_time #=> Time
    #   resp.job_end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeDiscoveryJob AWS API Documentation
    #
    # @overload describe_discovery_job(params = {})
    # @param [Hash] params ({})
    def describe_discovery_job(params = {}, options = {})
      req = build_request(:describe_discovery_job, params)
      req.send_request(options)
    end

    # Provides details about how an DataSync transfer location for Microsoft
    # Azure Blob Storage is configured.
    #
    # @option params [required, String] :location_arn
    #   Specifies the Amazon Resource Name (ARN) of your Azure Blob Storage
    #   transfer location.
    #
    # @return [Types::DescribeLocationAzureBlobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationAzureBlobResponse#location_arn #location_arn} => String
    #   * {Types::DescribeLocationAzureBlobResponse#location_uri #location_uri} => String
    #   * {Types::DescribeLocationAzureBlobResponse#authentication_type #authentication_type} => String
    #   * {Types::DescribeLocationAzureBlobResponse#blob_type #blob_type} => String
    #   * {Types::DescribeLocationAzureBlobResponse#access_tier #access_tier} => String
    #   * {Types::DescribeLocationAzureBlobResponse#agent_arns #agent_arns} => Array&lt;String&gt;
    #   * {Types::DescribeLocationAzureBlobResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_azure_blob({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.authentication_type #=> String, one of "SAS"
    #   resp.blob_type #=> String, one of "BLOCK"
    #   resp.access_tier #=> String, one of "HOT", "COOL", "ARCHIVE"
    #   resp.agent_arns #=> Array
    #   resp.agent_arns[0] #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationAzureBlob AWS API Documentation
    #
    # @overload describe_location_azure_blob(params = {})
    # @param [Hash] params ({})
    def describe_location_azure_blob(params = {}, options = {})
      req = build_request(:describe_location_azure_blob, params)
      req.send_request(options)
    end

    # Provides details about how an DataSync transfer location for an Amazon
    # EFS file system is configured.
    #
    # @option params [required, String] :location_arn
    #   The Amazon Resource Name (ARN) of the Amazon EFS file system location
    #   that you want information about.
    #
    # @return [Types::DescribeLocationEfsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationEfsResponse#location_arn #location_arn} => String
    #   * {Types::DescribeLocationEfsResponse#location_uri #location_uri} => String
    #   * {Types::DescribeLocationEfsResponse#ec2_config #ec2_config} => Types::Ec2Config
    #   * {Types::DescribeLocationEfsResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeLocationEfsResponse#access_point_arn #access_point_arn} => String
    #   * {Types::DescribeLocationEfsResponse#file_system_access_role_arn #file_system_access_role_arn} => String
    #   * {Types::DescribeLocationEfsResponse#in_transit_encryption #in_transit_encryption} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_efs({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.ec2_config.subnet_arn #=> String
    #   resp.ec2_config.security_group_arns #=> Array
    #   resp.ec2_config.security_group_arns[0] #=> String
    #   resp.creation_time #=> Time
    #   resp.access_point_arn #=> String
    #   resp.file_system_access_role_arn #=> String
    #   resp.in_transit_encryption #=> String, one of "NONE", "TLS1_2"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationEfs AWS API Documentation
    #
    # @overload describe_location_efs(params = {})
    # @param [Hash] params ({})
    def describe_location_efs(params = {}, options = {})
      req = build_request(:describe_location_efs, params)
      req.send_request(options)
    end

    # Provides details about how an DataSync transfer location for an Amazon
    # FSx for Lustre file system is configured.
    #
    # @option params [required, String] :location_arn
    #   The Amazon Resource Name (ARN) of the FSx for Lustre location to
    #   describe.
    #
    # @return [Types::DescribeLocationFsxLustreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationFsxLustreResponse#location_arn #location_arn} => String
    #   * {Types::DescribeLocationFsxLustreResponse#location_uri #location_uri} => String
    #   * {Types::DescribeLocationFsxLustreResponse#security_group_arns #security_group_arns} => Array&lt;String&gt;
    #   * {Types::DescribeLocationFsxLustreResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_fsx_lustre({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.security_group_arns #=> Array
    #   resp.security_group_arns[0] #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationFsxLustre AWS API Documentation
    #
    # @overload describe_location_fsx_lustre(params = {})
    # @param [Hash] params ({})
    def describe_location_fsx_lustre(params = {}, options = {})
      req = build_request(:describe_location_fsx_lustre, params)
      req.send_request(options)
    end

    # Provides details about how an DataSync transfer location for an Amazon
    # FSx for NetApp ONTAP file system is configured.
    #
    # <note markdown="1"> If your location uses SMB, the `DescribeLocationFsxOntap` operation
    # doesn't actually return a `Password`.
    #
    #  </note>
    #
    # @option params [required, String] :location_arn
    #   Specifies the Amazon Resource Name (ARN) of the FSx for ONTAP file
    #   system location that you want information about.
    #
    # @return [Types::DescribeLocationFsxOntapResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationFsxOntapResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeLocationFsxOntapResponse#location_arn #location_arn} => String
    #   * {Types::DescribeLocationFsxOntapResponse#location_uri #location_uri} => String
    #   * {Types::DescribeLocationFsxOntapResponse#protocol #protocol} => Types::FsxProtocol
    #   * {Types::DescribeLocationFsxOntapResponse#security_group_arns #security_group_arns} => Array&lt;String&gt;
    #   * {Types::DescribeLocationFsxOntapResponse#storage_virtual_machine_arn #storage_virtual_machine_arn} => String
    #   * {Types::DescribeLocationFsxOntapResponse#fsx_filesystem_arn #fsx_filesystem_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_fsx_ontap({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.protocol.nfs.mount_options.version #=> String, one of "AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"
    #   resp.protocol.smb.domain #=> String
    #   resp.protocol.smb.mount_options.version #=> String, one of "AUTOMATIC", "SMB2", "SMB3", "SMB1", "SMB2_0"
    #   resp.protocol.smb.password #=> String
    #   resp.protocol.smb.user #=> String
    #   resp.security_group_arns #=> Array
    #   resp.security_group_arns[0] #=> String
    #   resp.storage_virtual_machine_arn #=> String
    #   resp.fsx_filesystem_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationFsxOntap AWS API Documentation
    #
    # @overload describe_location_fsx_ontap(params = {})
    # @param [Hash] params ({})
    def describe_location_fsx_ontap(params = {}, options = {})
      req = build_request(:describe_location_fsx_ontap, params)
      req.send_request(options)
    end

    # Provides details about how an DataSync transfer location for an Amazon
    # FSx for OpenZFS file system is configured.
    #
    # <note markdown="1"> Response elements related to `SMB` aren't supported with the
    # `DescribeLocationFsxOpenZfs` operation.
    #
    #  </note>
    #
    # @option params [required, String] :location_arn
    #   The Amazon Resource Name (ARN) of the FSx for OpenZFS location to
    #   describe.
    #
    # @return [Types::DescribeLocationFsxOpenZfsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationFsxOpenZfsResponse#location_arn #location_arn} => String
    #   * {Types::DescribeLocationFsxOpenZfsResponse#location_uri #location_uri} => String
    #   * {Types::DescribeLocationFsxOpenZfsResponse#security_group_arns #security_group_arns} => Array&lt;String&gt;
    #   * {Types::DescribeLocationFsxOpenZfsResponse#protocol #protocol} => Types::FsxProtocol
    #   * {Types::DescribeLocationFsxOpenZfsResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_fsx_open_zfs({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.security_group_arns #=> Array
    #   resp.security_group_arns[0] #=> String
    #   resp.protocol.nfs.mount_options.version #=> String, one of "AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"
    #   resp.protocol.smb.domain #=> String
    #   resp.protocol.smb.mount_options.version #=> String, one of "AUTOMATIC", "SMB2", "SMB3", "SMB1", "SMB2_0"
    #   resp.protocol.smb.password #=> String
    #   resp.protocol.smb.user #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationFsxOpenZfs AWS API Documentation
    #
    # @overload describe_location_fsx_open_zfs(params = {})
    # @param [Hash] params ({})
    def describe_location_fsx_open_zfs(params = {}, options = {})
      req = build_request(:describe_location_fsx_open_zfs, params)
      req.send_request(options)
    end

    # Provides details about how an DataSync transfer location for an Amazon
    # FSx for Windows File Server file system is configured.
    #
    # @option params [required, String] :location_arn
    #   Specifies the Amazon Resource Name (ARN) of the FSx for Windows File
    #   Server location.
    #
    # @return [Types::DescribeLocationFsxWindowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationFsxWindowsResponse#location_arn #location_arn} => String
    #   * {Types::DescribeLocationFsxWindowsResponse#location_uri #location_uri} => String
    #   * {Types::DescribeLocationFsxWindowsResponse#security_group_arns #security_group_arns} => Array&lt;String&gt;
    #   * {Types::DescribeLocationFsxWindowsResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeLocationFsxWindowsResponse#user #user} => String
    #   * {Types::DescribeLocationFsxWindowsResponse#domain #domain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_fsx_windows({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.security_group_arns #=> Array
    #   resp.security_group_arns[0] #=> String
    #   resp.creation_time #=> Time
    #   resp.user #=> String
    #   resp.domain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationFsxWindows AWS API Documentation
    #
    # @overload describe_location_fsx_windows(params = {})
    # @param [Hash] params ({})
    def describe_location_fsx_windows(params = {}, options = {})
      req = build_request(:describe_location_fsx_windows, params)
      req.send_request(options)
    end

    # Provides details about how an DataSync transfer location for a Hadoop
    # Distributed File System (HDFS) is configured.
    #
    # @option params [required, String] :location_arn
    #   Specifies the Amazon Resource Name (ARN) of the HDFS location.
    #
    # @return [Types::DescribeLocationHdfsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationHdfsResponse#location_arn #location_arn} => String
    #   * {Types::DescribeLocationHdfsResponse#location_uri #location_uri} => String
    #   * {Types::DescribeLocationHdfsResponse#name_nodes #name_nodes} => Array&lt;Types::HdfsNameNode&gt;
    #   * {Types::DescribeLocationHdfsResponse#block_size #block_size} => Integer
    #   * {Types::DescribeLocationHdfsResponse#replication_factor #replication_factor} => Integer
    #   * {Types::DescribeLocationHdfsResponse#kms_key_provider_uri #kms_key_provider_uri} => String
    #   * {Types::DescribeLocationHdfsResponse#qop_configuration #qop_configuration} => Types::QopConfiguration
    #   * {Types::DescribeLocationHdfsResponse#authentication_type #authentication_type} => String
    #   * {Types::DescribeLocationHdfsResponse#simple_user #simple_user} => String
    #   * {Types::DescribeLocationHdfsResponse#kerberos_principal #kerberos_principal} => String
    #   * {Types::DescribeLocationHdfsResponse#agent_arns #agent_arns} => Array&lt;String&gt;
    #   * {Types::DescribeLocationHdfsResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_hdfs({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.name_nodes #=> Array
    #   resp.name_nodes[0].hostname #=> String
    #   resp.name_nodes[0].port #=> Integer
    #   resp.block_size #=> Integer
    #   resp.replication_factor #=> Integer
    #   resp.kms_key_provider_uri #=> String
    #   resp.qop_configuration.rpc_protection #=> String, one of "DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"
    #   resp.qop_configuration.data_transfer_protection #=> String, one of "DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"
    #   resp.authentication_type #=> String, one of "SIMPLE", "KERBEROS"
    #   resp.simple_user #=> String
    #   resp.kerberos_principal #=> String
    #   resp.agent_arns #=> Array
    #   resp.agent_arns[0] #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationHdfs AWS API Documentation
    #
    # @overload describe_location_hdfs(params = {})
    # @param [Hash] params ({})
    def describe_location_hdfs(params = {}, options = {})
      req = build_request(:describe_location_hdfs, params)
      req.send_request(options)
    end

    # Provides details about how an DataSync transfer location for a Network
    # File System (NFS) file server is configured.
    #
    # @option params [required, String] :location_arn
    #   Specifies the Amazon Resource Name (ARN) of the NFS location that you
    #   want information about.
    #
    # @return [Types::DescribeLocationNfsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationNfsResponse#location_arn #location_arn} => String
    #   * {Types::DescribeLocationNfsResponse#location_uri #location_uri} => String
    #   * {Types::DescribeLocationNfsResponse#on_prem_config #on_prem_config} => Types::OnPremConfig
    #   * {Types::DescribeLocationNfsResponse#mount_options #mount_options} => Types::NfsMountOptions
    #   * {Types::DescribeLocationNfsResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_nfs({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.on_prem_config.agent_arns #=> Array
    #   resp.on_prem_config.agent_arns[0] #=> String
    #   resp.mount_options.version #=> String, one of "AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationNfs AWS API Documentation
    #
    # @overload describe_location_nfs(params = {})
    # @param [Hash] params ({})
    def describe_location_nfs(params = {}, options = {})
      req = build_request(:describe_location_nfs, params)
      req.send_request(options)
    end

    # Provides details about how an DataSync transfer location for an object
    # storage system is configured.
    #
    # @option params [required, String] :location_arn
    #   Specifies the Amazon Resource Name (ARN) of the object storage system
    #   location.
    #
    # @return [Types::DescribeLocationObjectStorageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationObjectStorageResponse#location_arn #location_arn} => String
    #   * {Types::DescribeLocationObjectStorageResponse#location_uri #location_uri} => String
    #   * {Types::DescribeLocationObjectStorageResponse#access_key #access_key} => String
    #   * {Types::DescribeLocationObjectStorageResponse#server_port #server_port} => Integer
    #   * {Types::DescribeLocationObjectStorageResponse#server_protocol #server_protocol} => String
    #   * {Types::DescribeLocationObjectStorageResponse#agent_arns #agent_arns} => Array&lt;String&gt;
    #   * {Types::DescribeLocationObjectStorageResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeLocationObjectStorageResponse#server_certificate #server_certificate} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_object_storage({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.access_key #=> String
    #   resp.server_port #=> Integer
    #   resp.server_protocol #=> String, one of "HTTPS", "HTTP"
    #   resp.agent_arns #=> Array
    #   resp.agent_arns[0] #=> String
    #   resp.creation_time #=> Time
    #   resp.server_certificate #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationObjectStorage AWS API Documentation
    #
    # @overload describe_location_object_storage(params = {})
    # @param [Hash] params ({})
    def describe_location_object_storage(params = {}, options = {})
      req = build_request(:describe_location_object_storage, params)
      req.send_request(options)
    end

    # Provides details about how an DataSync transfer location for an S3
    # bucket is configured.
    #
    # @option params [required, String] :location_arn
    #   Specifies the Amazon Resource Name (ARN) of the Amazon S3 location.
    #
    # @return [Types::DescribeLocationS3Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationS3Response#location_arn #location_arn} => String
    #   * {Types::DescribeLocationS3Response#location_uri #location_uri} => String
    #   * {Types::DescribeLocationS3Response#s3_storage_class #s3_storage_class} => String
    #   * {Types::DescribeLocationS3Response#s3_config #s3_config} => Types::S3Config
    #   * {Types::DescribeLocationS3Response#agent_arns #agent_arns} => Array&lt;String&gt;
    #   * {Types::DescribeLocationS3Response#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_s3({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.s3_storage_class #=> String, one of "STANDARD", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_INSTANT_RETRIEVAL"
    #   resp.s3_config.bucket_access_role_arn #=> String
    #   resp.agent_arns #=> Array
    #   resp.agent_arns[0] #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationS3 AWS API Documentation
    #
    # @overload describe_location_s3(params = {})
    # @param [Hash] params ({})
    def describe_location_s3(params = {}, options = {})
      req = build_request(:describe_location_s3, params)
      req.send_request(options)
    end

    # Provides details about how an DataSync transfer location for a Server
    # Message Block (SMB) file server is configured.
    #
    # @option params [required, String] :location_arn
    #   Specifies the Amazon Resource Name (ARN) of the SMB location that you
    #   want information about.
    #
    # @return [Types::DescribeLocationSmbResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLocationSmbResponse#location_arn #location_arn} => String
    #   * {Types::DescribeLocationSmbResponse#location_uri #location_uri} => String
    #   * {Types::DescribeLocationSmbResponse#agent_arns #agent_arns} => Array&lt;String&gt;
    #   * {Types::DescribeLocationSmbResponse#user #user} => String
    #   * {Types::DescribeLocationSmbResponse#domain #domain} => String
    #   * {Types::DescribeLocationSmbResponse#mount_options #mount_options} => Types::SmbMountOptions
    #   * {Types::DescribeLocationSmbResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_smb({
    #     location_arn: "LocationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location_arn #=> String
    #   resp.location_uri #=> String
    #   resp.agent_arns #=> Array
    #   resp.agent_arns[0] #=> String
    #   resp.user #=> String
    #   resp.domain #=> String
    #   resp.mount_options.version #=> String, one of "AUTOMATIC", "SMB2", "SMB3", "SMB1", "SMB2_0"
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeLocationSmb AWS API Documentation
    #
    # @overload describe_location_smb(params = {})
    # @param [Hash] params ({})
    def describe_location_smb(params = {}, options = {})
      req = build_request(:describe_location_smb, params)
      req.send_request(options)
    end

    # Returns information about an on-premises storage system that you're
    # using with DataSync Discovery.
    #
    # @option params [required, String] :storage_system_arn
    #   Specifies the Amazon Resource Name (ARN) of an on-premises storage
    #   system that you're using with DataSync Discovery.
    #
    # @return [Types::DescribeStorageSystemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStorageSystemResponse#storage_system_arn #storage_system_arn} => String
    #   * {Types::DescribeStorageSystemResponse#server_configuration #server_configuration} => Types::DiscoveryServerConfiguration
    #   * {Types::DescribeStorageSystemResponse#system_type #system_type} => String
    #   * {Types::DescribeStorageSystemResponse#agent_arns #agent_arns} => Array&lt;String&gt;
    #   * {Types::DescribeStorageSystemResponse#name #name} => String
    #   * {Types::DescribeStorageSystemResponse#error_message #error_message} => String
    #   * {Types::DescribeStorageSystemResponse#connectivity_status #connectivity_status} => String
    #   * {Types::DescribeStorageSystemResponse#cloud_watch_log_group_arn #cloud_watch_log_group_arn} => String
    #   * {Types::DescribeStorageSystemResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeStorageSystemResponse#secrets_manager_arn #secrets_manager_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_storage_system({
    #     storage_system_arn: "StorageSystemArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_system_arn #=> String
    #   resp.server_configuration.server_hostname #=> String
    #   resp.server_configuration.server_port #=> Integer
    #   resp.system_type #=> String, one of "NetAppONTAP"
    #   resp.agent_arns #=> Array
    #   resp.agent_arns[0] #=> String
    #   resp.name #=> String
    #   resp.error_message #=> String
    #   resp.connectivity_status #=> String, one of "PASS", "FAIL", "UNKNOWN"
    #   resp.cloud_watch_log_group_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.secrets_manager_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeStorageSystem AWS API Documentation
    #
    # @overload describe_storage_system(params = {})
    # @param [Hash] params ({})
    def describe_storage_system(params = {}, options = {})
      req = build_request(:describe_storage_system, params)
      req.send_request(options)
    end

    # Returns information, including performance data and capacity usage,
    # which DataSync Discovery collects about a specific resource in
    # your-premises storage system.
    #
    # @option params [required, String] :discovery_job_arn
    #   Specifies the Amazon Resource Name (ARN) of the discovery job that
    #   collects information about your on-premises storage system.
    #
    # @option params [required, String] :resource_type
    #   Specifies the kind of storage system resource that you want
    #   information about.
    #
    # @option params [required, String] :resource_id
    #   Specifies the universally unique identifier (UUID) of the storage
    #   system resource that you want information about.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Specifies a time within the total duration that the discovery job ran.
    #   To see information gathered during a certain time frame, use this
    #   parameter with `EndTime`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Specifies a time within the total duration that the discovery job ran.
    #   To see information gathered during a certain time frame, use this
    #   parameter with `StartTime`.
    #
    # @option params [Integer] :max_results
    #   Specifies how many results that you want in the response.
    #
    # @option params [String] :next_token
    #   Specifies an opaque string that indicates the position to begin the
    #   next list of results in the response.
    #
    # @return [Types::DescribeStorageSystemResourceMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStorageSystemResourceMetricsResponse#metrics #metrics} => Array&lt;Types::ResourceMetrics&gt;
    #   * {Types::DescribeStorageSystemResourceMetricsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_storage_system_resource_metrics({
    #     discovery_job_arn: "DiscoveryJobArn", # required
    #     resource_type: "SVM", # required, accepts SVM, VOLUME, CLUSTER
    #     resource_id: "ResourceId", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: "DiscoveryNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.metrics #=> Array
    #   resp.metrics[0].timestamp #=> Time
    #   resp.metrics[0].p95_metrics.iops.read #=> Float
    #   resp.metrics[0].p95_metrics.iops.write #=> Float
    #   resp.metrics[0].p95_metrics.iops.other #=> Float
    #   resp.metrics[0].p95_metrics.iops.total #=> Float
    #   resp.metrics[0].p95_metrics.throughput.read #=> Float
    #   resp.metrics[0].p95_metrics.throughput.write #=> Float
    #   resp.metrics[0].p95_metrics.throughput.other #=> Float
    #   resp.metrics[0].p95_metrics.throughput.total #=> Float
    #   resp.metrics[0].p95_metrics.latency.read #=> Float
    #   resp.metrics[0].p95_metrics.latency.write #=> Float
    #   resp.metrics[0].p95_metrics.latency.other #=> Float
    #   resp.metrics[0].capacity.used #=> Integer
    #   resp.metrics[0].capacity.provisioned #=> Integer
    #   resp.metrics[0].capacity.logical_used #=> Integer
    #   resp.metrics[0].capacity.cluster_cloud_storage_used #=> Integer
    #   resp.metrics[0].resource_id #=> String
    #   resp.metrics[0].resource_type #=> String, one of "SVM", "VOLUME", "CLUSTER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeStorageSystemResourceMetrics AWS API Documentation
    #
    # @overload describe_storage_system_resource_metrics(params = {})
    # @param [Hash] params ({})
    def describe_storage_system_resource_metrics(params = {}, options = {})
      req = build_request(:describe_storage_system_resource_metrics, params)
      req.send_request(options)
    end

    # Returns information that DataSync Discovery collects about resources
    # in your on-premises storage system.
    #
    # @option params [required, String] :discovery_job_arn
    #   Specifies the Amazon Resource Name (ARN) of the discovery job that's
    #   collecting data from your on-premises storage system.
    #
    # @option params [required, String] :resource_type
    #   Specifies what kind of storage system resources that you want
    #   information about.
    #
    # @option params [Array<String>] :resource_ids
    #   Specifies the universally unique identifiers (UUIDs) of the storage
    #   system resources that you want information about. You can't use this
    #   parameter in combination with the `Filter` parameter.
    #
    # @option params [Hash<String,Array>] :filter
    #   Filters the storage system resources that you want returned. For
    #   example, this might be volumes associated with a specific storage
    #   virtual machine (SVM).
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of storage system resources that you want
    #   to list in a response.
    #
    # @option params [String] :next_token
    #   Specifies an opaque string that indicates the position to begin the
    #   next list of results in the response.
    #
    # @return [Types::DescribeStorageSystemResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStorageSystemResourcesResponse#resource_details #resource_details} => Types::ResourceDetails
    #   * {Types::DescribeStorageSystemResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_storage_system_resources({
    #     discovery_job_arn: "DiscoveryJobArn", # required
    #     resource_type: "SVM", # required, accepts SVM, VOLUME, CLUSTER
    #     resource_ids: ["ResourceId"],
    #     filter: {
    #       "SVM" => ["PtolemyString"],
    #     },
    #     max_results: 1,
    #     next_token: "DiscoveryNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_details.net_app_ontapsv_ms #=> Array
    #   resp.resource_details.net_app_ontapsv_ms[0].cluster_uuid #=> String
    #   resp.resource_details.net_app_ontapsv_ms[0].resource_id #=> String
    #   resp.resource_details.net_app_ontapsv_ms[0].svm_name #=> String
    #   resp.resource_details.net_app_ontapsv_ms[0].cifs_share_count #=> Integer
    #   resp.resource_details.net_app_ontapsv_ms[0].enabled_protocols #=> Array
    #   resp.resource_details.net_app_ontapsv_ms[0].enabled_protocols[0] #=> String
    #   resp.resource_details.net_app_ontapsv_ms[0].total_capacity_used #=> Integer
    #   resp.resource_details.net_app_ontapsv_ms[0].total_capacity_provisioned #=> Integer
    #   resp.resource_details.net_app_ontapsv_ms[0].total_logical_capacity_used #=> Integer
    #   resp.resource_details.net_app_ontapsv_ms[0].max_p95_performance.iops_read #=> Float
    #   resp.resource_details.net_app_ontapsv_ms[0].max_p95_performance.iops_write #=> Float
    #   resp.resource_details.net_app_ontapsv_ms[0].max_p95_performance.iops_other #=> Float
    #   resp.resource_details.net_app_ontapsv_ms[0].max_p95_performance.iops_total #=> Float
    #   resp.resource_details.net_app_ontapsv_ms[0].max_p95_performance.throughput_read #=> Float
    #   resp.resource_details.net_app_ontapsv_ms[0].max_p95_performance.throughput_write #=> Float
    #   resp.resource_details.net_app_ontapsv_ms[0].max_p95_performance.throughput_other #=> Float
    #   resp.resource_details.net_app_ontapsv_ms[0].max_p95_performance.throughput_total #=> Float
    #   resp.resource_details.net_app_ontapsv_ms[0].max_p95_performance.latency_read #=> Float
    #   resp.resource_details.net_app_ontapsv_ms[0].max_p95_performance.latency_write #=> Float
    #   resp.resource_details.net_app_ontapsv_ms[0].max_p95_performance.latency_other #=> Float
    #   resp.resource_details.net_app_ontapsv_ms[0].recommendations #=> Array
    #   resp.resource_details.net_app_ontapsv_ms[0].recommendations[0].storage_type #=> String
    #   resp.resource_details.net_app_ontapsv_ms[0].recommendations[0].storage_configuration #=> Hash
    #   resp.resource_details.net_app_ontapsv_ms[0].recommendations[0].storage_configuration["PtolemyString"] #=> String
    #   resp.resource_details.net_app_ontapsv_ms[0].recommendations[0].estimated_monthly_storage_cost #=> String
    #   resp.resource_details.net_app_ontapsv_ms[0].nfs_exported_volumes #=> Integer
    #   resp.resource_details.net_app_ontapsv_ms[0].recommendation_status #=> String, one of "NONE", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.resource_details.net_app_ontapsv_ms[0].total_snapshot_capacity_used #=> Integer
    #   resp.resource_details.net_app_ontapsv_ms[0].lun_count #=> Integer
    #   resp.resource_details.net_app_ontap_volumes #=> Array
    #   resp.resource_details.net_app_ontap_volumes[0].volume_name #=> String
    #   resp.resource_details.net_app_ontap_volumes[0].resource_id #=> String
    #   resp.resource_details.net_app_ontap_volumes[0].cifs_share_count #=> Integer
    #   resp.resource_details.net_app_ontap_volumes[0].security_style #=> String
    #   resp.resource_details.net_app_ontap_volumes[0].svm_uuid #=> String
    #   resp.resource_details.net_app_ontap_volumes[0].svm_name #=> String
    #   resp.resource_details.net_app_ontap_volumes[0].capacity_used #=> Integer
    #   resp.resource_details.net_app_ontap_volumes[0].capacity_provisioned #=> Integer
    #   resp.resource_details.net_app_ontap_volumes[0].logical_capacity_used #=> Integer
    #   resp.resource_details.net_app_ontap_volumes[0].nfs_exported #=> Boolean
    #   resp.resource_details.net_app_ontap_volumes[0].snapshot_capacity_used #=> Integer
    #   resp.resource_details.net_app_ontap_volumes[0].max_p95_performance.iops_read #=> Float
    #   resp.resource_details.net_app_ontap_volumes[0].max_p95_performance.iops_write #=> Float
    #   resp.resource_details.net_app_ontap_volumes[0].max_p95_performance.iops_other #=> Float
    #   resp.resource_details.net_app_ontap_volumes[0].max_p95_performance.iops_total #=> Float
    #   resp.resource_details.net_app_ontap_volumes[0].max_p95_performance.throughput_read #=> Float
    #   resp.resource_details.net_app_ontap_volumes[0].max_p95_performance.throughput_write #=> Float
    #   resp.resource_details.net_app_ontap_volumes[0].max_p95_performance.throughput_other #=> Float
    #   resp.resource_details.net_app_ontap_volumes[0].max_p95_performance.throughput_total #=> Float
    #   resp.resource_details.net_app_ontap_volumes[0].max_p95_performance.latency_read #=> Float
    #   resp.resource_details.net_app_ontap_volumes[0].max_p95_performance.latency_write #=> Float
    #   resp.resource_details.net_app_ontap_volumes[0].max_p95_performance.latency_other #=> Float
    #   resp.resource_details.net_app_ontap_volumes[0].recommendations #=> Array
    #   resp.resource_details.net_app_ontap_volumes[0].recommendations[0].storage_type #=> String
    #   resp.resource_details.net_app_ontap_volumes[0].recommendations[0].storage_configuration #=> Hash
    #   resp.resource_details.net_app_ontap_volumes[0].recommendations[0].storage_configuration["PtolemyString"] #=> String
    #   resp.resource_details.net_app_ontap_volumes[0].recommendations[0].estimated_monthly_storage_cost #=> String
    #   resp.resource_details.net_app_ontap_volumes[0].recommendation_status #=> String, one of "NONE", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.resource_details.net_app_ontap_volumes[0].lun_count #=> Integer
    #   resp.resource_details.net_app_ontap_clusters #=> Array
    #   resp.resource_details.net_app_ontap_clusters[0].cifs_share_count #=> Integer
    #   resp.resource_details.net_app_ontap_clusters[0].nfs_exported_volumes #=> Integer
    #   resp.resource_details.net_app_ontap_clusters[0].resource_id #=> String
    #   resp.resource_details.net_app_ontap_clusters[0].cluster_name #=> String
    #   resp.resource_details.net_app_ontap_clusters[0].max_p95_performance.iops_read #=> Float
    #   resp.resource_details.net_app_ontap_clusters[0].max_p95_performance.iops_write #=> Float
    #   resp.resource_details.net_app_ontap_clusters[0].max_p95_performance.iops_other #=> Float
    #   resp.resource_details.net_app_ontap_clusters[0].max_p95_performance.iops_total #=> Float
    #   resp.resource_details.net_app_ontap_clusters[0].max_p95_performance.throughput_read #=> Float
    #   resp.resource_details.net_app_ontap_clusters[0].max_p95_performance.throughput_write #=> Float
    #   resp.resource_details.net_app_ontap_clusters[0].max_p95_performance.throughput_other #=> Float
    #   resp.resource_details.net_app_ontap_clusters[0].max_p95_performance.throughput_total #=> Float
    #   resp.resource_details.net_app_ontap_clusters[0].max_p95_performance.latency_read #=> Float
    #   resp.resource_details.net_app_ontap_clusters[0].max_p95_performance.latency_write #=> Float
    #   resp.resource_details.net_app_ontap_clusters[0].max_p95_performance.latency_other #=> Float
    #   resp.resource_details.net_app_ontap_clusters[0].cluster_block_storage_size #=> Integer
    #   resp.resource_details.net_app_ontap_clusters[0].cluster_block_storage_used #=> Integer
    #   resp.resource_details.net_app_ontap_clusters[0].cluster_block_storage_logical_used #=> Integer
    #   resp.resource_details.net_app_ontap_clusters[0].recommendations #=> Array
    #   resp.resource_details.net_app_ontap_clusters[0].recommendations[0].storage_type #=> String
    #   resp.resource_details.net_app_ontap_clusters[0].recommendations[0].storage_configuration #=> Hash
    #   resp.resource_details.net_app_ontap_clusters[0].recommendations[0].storage_configuration["PtolemyString"] #=> String
    #   resp.resource_details.net_app_ontap_clusters[0].recommendations[0].estimated_monthly_storage_cost #=> String
    #   resp.resource_details.net_app_ontap_clusters[0].recommendation_status #=> String, one of "NONE", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.resource_details.net_app_ontap_clusters[0].lun_count #=> Integer
    #   resp.resource_details.net_app_ontap_clusters[0].cluster_cloud_storage_used #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeStorageSystemResources AWS API Documentation
    #
    # @overload describe_storage_system_resources(params = {})
    # @param [Hash] params ({})
    def describe_storage_system_resources(params = {}, options = {})
      req = build_request(:describe_storage_system_resources, params)
      req.send_request(options)
    end

    # Provides information about a *task*, which defines where and how
    # DataSync transfers your data.
    #
    # @option params [required, String] :task_arn
    #   Specifies the Amazon Resource Name (ARN) of the transfer task that you
    #   want information about.
    #
    # @return [Types::DescribeTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTaskResponse#task_arn #task_arn} => String
    #   * {Types::DescribeTaskResponse#status #status} => String
    #   * {Types::DescribeTaskResponse#name #name} => String
    #   * {Types::DescribeTaskResponse#current_task_execution_arn #current_task_execution_arn} => String
    #   * {Types::DescribeTaskResponse#source_location_arn #source_location_arn} => String
    #   * {Types::DescribeTaskResponse#destination_location_arn #destination_location_arn} => String
    #   * {Types::DescribeTaskResponse#cloud_watch_log_group_arn #cloud_watch_log_group_arn} => String
    #   * {Types::DescribeTaskResponse#source_network_interface_arns #source_network_interface_arns} => Array&lt;String&gt;
    #   * {Types::DescribeTaskResponse#destination_network_interface_arns #destination_network_interface_arns} => Array&lt;String&gt;
    #   * {Types::DescribeTaskResponse#options #options} => Types::Options
    #   * {Types::DescribeTaskResponse#excludes #excludes} => Array&lt;Types::FilterRule&gt;
    #   * {Types::DescribeTaskResponse#schedule #schedule} => Types::TaskSchedule
    #   * {Types::DescribeTaskResponse#error_code #error_code} => String
    #   * {Types::DescribeTaskResponse#error_detail #error_detail} => String
    #   * {Types::DescribeTaskResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeTaskResponse#includes #includes} => Array&lt;Types::FilterRule&gt;
    #   * {Types::DescribeTaskResponse#manifest_config #manifest_config} => Types::ManifestConfig
    #   * {Types::DescribeTaskResponse#task_report_config #task_report_config} => Types::TaskReportConfig
    #   * {Types::DescribeTaskResponse#schedule_details #schedule_details} => Types::TaskScheduleDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_task({
    #     task_arn: "TaskArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_arn #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "QUEUED", "RUNNING", "UNAVAILABLE"
    #   resp.name #=> String
    #   resp.current_task_execution_arn #=> String
    #   resp.source_location_arn #=> String
    #   resp.destination_location_arn #=> String
    #   resp.cloud_watch_log_group_arn #=> String
    #   resp.source_network_interface_arns #=> Array
    #   resp.source_network_interface_arns[0] #=> String
    #   resp.destination_network_interface_arns #=> Array
    #   resp.destination_network_interface_arns[0] #=> String
    #   resp.options.verify_mode #=> String, one of "POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"
    #   resp.options.overwrite_mode #=> String, one of "ALWAYS", "NEVER"
    #   resp.options.atime #=> String, one of "NONE", "BEST_EFFORT"
    #   resp.options.mtime #=> String, one of "NONE", "PRESERVE"
    #   resp.options.uid #=> String, one of "NONE", "INT_VALUE", "NAME", "BOTH"
    #   resp.options.gid #=> String, one of "NONE", "INT_VALUE", "NAME", "BOTH"
    #   resp.options.preserve_deleted_files #=> String, one of "PRESERVE", "REMOVE"
    #   resp.options.preserve_devices #=> String, one of "NONE", "PRESERVE"
    #   resp.options.posix_permissions #=> String, one of "NONE", "PRESERVE"
    #   resp.options.bytes_per_second #=> Integer
    #   resp.options.task_queueing #=> String, one of "ENABLED", "DISABLED"
    #   resp.options.log_level #=> String, one of "OFF", "BASIC", "TRANSFER"
    #   resp.options.transfer_mode #=> String, one of "CHANGED", "ALL"
    #   resp.options.security_descriptor_copy_flags #=> String, one of "NONE", "OWNER_DACL", "OWNER_DACL_SACL"
    #   resp.options.object_tags #=> String, one of "PRESERVE", "NONE"
    #   resp.excludes #=> Array
    #   resp.excludes[0].filter_type #=> String, one of "SIMPLE_PATTERN"
    #   resp.excludes[0].value #=> String
    #   resp.schedule.schedule_expression #=> String
    #   resp.schedule.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.error_code #=> String
    #   resp.error_detail #=> String
    #   resp.creation_time #=> Time
    #   resp.includes #=> Array
    #   resp.includes[0].filter_type #=> String, one of "SIMPLE_PATTERN"
    #   resp.includes[0].value #=> String
    #   resp.manifest_config.action #=> String, one of "TRANSFER"
    #   resp.manifest_config.format #=> String, one of "CSV"
    #   resp.manifest_config.source.s3.manifest_object_path #=> String
    #   resp.manifest_config.source.s3.bucket_access_role_arn #=> String
    #   resp.manifest_config.source.s3.s3_bucket_arn #=> String
    #   resp.manifest_config.source.s3.manifest_object_version_id #=> String
    #   resp.task_report_config.destination.s3.subdirectory #=> String
    #   resp.task_report_config.destination.s3.s3_bucket_arn #=> String
    #   resp.task_report_config.destination.s3.bucket_access_role_arn #=> String
    #   resp.task_report_config.output_type #=> String, one of "SUMMARY_ONLY", "STANDARD"
    #   resp.task_report_config.report_level #=> String, one of "ERRORS_ONLY", "SUCCESSES_AND_ERRORS"
    #   resp.task_report_config.object_version_ids #=> String, one of "INCLUDE", "NONE"
    #   resp.task_report_config.overrides.transferred.report_level #=> String, one of "ERRORS_ONLY", "SUCCESSES_AND_ERRORS"
    #   resp.task_report_config.overrides.verified.report_level #=> String, one of "ERRORS_ONLY", "SUCCESSES_AND_ERRORS"
    #   resp.task_report_config.overrides.deleted.report_level #=> String, one of "ERRORS_ONLY", "SUCCESSES_AND_ERRORS"
    #   resp.task_report_config.overrides.skipped.report_level #=> String, one of "ERRORS_ONLY", "SUCCESSES_AND_ERRORS"
    #   resp.schedule_details.status_update_time #=> Time
    #   resp.schedule_details.disabled_reason #=> String
    #   resp.schedule_details.disabled_by #=> String, one of "USER", "SERVICE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeTask AWS API Documentation
    #
    # @overload describe_task(params = {})
    # @param [Hash] params ({})
    def describe_task(params = {}, options = {})
      req = build_request(:describe_task, params)
      req.send_request(options)
    end

    # Provides information about an execution of your DataSync task. You can
    # use this operation to help monitor the progress of an ongoing transfer
    # or check the results of the transfer.
    #
    # @option params [required, String] :task_execution_arn
    #   Specifies the Amazon Resource Name (ARN) of the task execution that
    #   you want information about.
    #
    # @return [Types::DescribeTaskExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTaskExecutionResponse#task_execution_arn #task_execution_arn} => String
    #   * {Types::DescribeTaskExecutionResponse#status #status} => String
    #   * {Types::DescribeTaskExecutionResponse#options #options} => Types::Options
    #   * {Types::DescribeTaskExecutionResponse#excludes #excludes} => Array&lt;Types::FilterRule&gt;
    #   * {Types::DescribeTaskExecutionResponse#includes #includes} => Array&lt;Types::FilterRule&gt;
    #   * {Types::DescribeTaskExecutionResponse#manifest_config #manifest_config} => Types::ManifestConfig
    #   * {Types::DescribeTaskExecutionResponse#start_time #start_time} => Time
    #   * {Types::DescribeTaskExecutionResponse#estimated_files_to_transfer #estimated_files_to_transfer} => Integer
    #   * {Types::DescribeTaskExecutionResponse#estimated_bytes_to_transfer #estimated_bytes_to_transfer} => Integer
    #   * {Types::DescribeTaskExecutionResponse#files_transferred #files_transferred} => Integer
    #   * {Types::DescribeTaskExecutionResponse#bytes_written #bytes_written} => Integer
    #   * {Types::DescribeTaskExecutionResponse#bytes_transferred #bytes_transferred} => Integer
    #   * {Types::DescribeTaskExecutionResponse#bytes_compressed #bytes_compressed} => Integer
    #   * {Types::DescribeTaskExecutionResponse#result #result} => Types::TaskExecutionResultDetail
    #   * {Types::DescribeTaskExecutionResponse#task_report_config #task_report_config} => Types::TaskReportConfig
    #   * {Types::DescribeTaskExecutionResponse#files_deleted #files_deleted} => Integer
    #   * {Types::DescribeTaskExecutionResponse#files_skipped #files_skipped} => Integer
    #   * {Types::DescribeTaskExecutionResponse#files_verified #files_verified} => Integer
    #   * {Types::DescribeTaskExecutionResponse#report_result #report_result} => Types::ReportResult
    #   * {Types::DescribeTaskExecutionResponse#estimated_files_to_delete #estimated_files_to_delete} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_task_execution({
    #     task_execution_arn: "TaskExecutionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_execution_arn #=> String
    #   resp.status #=> String, one of "QUEUED", "CANCELLING", "LAUNCHING", "PREPARING", "TRANSFERRING", "VERIFYING", "SUCCESS", "ERROR"
    #   resp.options.verify_mode #=> String, one of "POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"
    #   resp.options.overwrite_mode #=> String, one of "ALWAYS", "NEVER"
    #   resp.options.atime #=> String, one of "NONE", "BEST_EFFORT"
    #   resp.options.mtime #=> String, one of "NONE", "PRESERVE"
    #   resp.options.uid #=> String, one of "NONE", "INT_VALUE", "NAME", "BOTH"
    #   resp.options.gid #=> String, one of "NONE", "INT_VALUE", "NAME", "BOTH"
    #   resp.options.preserve_deleted_files #=> String, one of "PRESERVE", "REMOVE"
    #   resp.options.preserve_devices #=> String, one of "NONE", "PRESERVE"
    #   resp.options.posix_permissions #=> String, one of "NONE", "PRESERVE"
    #   resp.options.bytes_per_second #=> Integer
    #   resp.options.task_queueing #=> String, one of "ENABLED", "DISABLED"
    #   resp.options.log_level #=> String, one of "OFF", "BASIC", "TRANSFER"
    #   resp.options.transfer_mode #=> String, one of "CHANGED", "ALL"
    #   resp.options.security_descriptor_copy_flags #=> String, one of "NONE", "OWNER_DACL", "OWNER_DACL_SACL"
    #   resp.options.object_tags #=> String, one of "PRESERVE", "NONE"
    #   resp.excludes #=> Array
    #   resp.excludes[0].filter_type #=> String, one of "SIMPLE_PATTERN"
    #   resp.excludes[0].value #=> String
    #   resp.includes #=> Array
    #   resp.includes[0].filter_type #=> String, one of "SIMPLE_PATTERN"
    #   resp.includes[0].value #=> String
    #   resp.manifest_config.action #=> String, one of "TRANSFER"
    #   resp.manifest_config.format #=> String, one of "CSV"
    #   resp.manifest_config.source.s3.manifest_object_path #=> String
    #   resp.manifest_config.source.s3.bucket_access_role_arn #=> String
    #   resp.manifest_config.source.s3.s3_bucket_arn #=> String
    #   resp.manifest_config.source.s3.manifest_object_version_id #=> String
    #   resp.start_time #=> Time
    #   resp.estimated_files_to_transfer #=> Integer
    #   resp.estimated_bytes_to_transfer #=> Integer
    #   resp.files_transferred #=> Integer
    #   resp.bytes_written #=> Integer
    #   resp.bytes_transferred #=> Integer
    #   resp.bytes_compressed #=> Integer
    #   resp.result.prepare_duration #=> Integer
    #   resp.result.prepare_status #=> String, one of "PENDING", "SUCCESS", "ERROR"
    #   resp.result.total_duration #=> Integer
    #   resp.result.transfer_duration #=> Integer
    #   resp.result.transfer_status #=> String, one of "PENDING", "SUCCESS", "ERROR"
    #   resp.result.verify_duration #=> Integer
    #   resp.result.verify_status #=> String, one of "PENDING", "SUCCESS", "ERROR"
    #   resp.result.error_code #=> String
    #   resp.result.error_detail #=> String
    #   resp.task_report_config.destination.s3.subdirectory #=> String
    #   resp.task_report_config.destination.s3.s3_bucket_arn #=> String
    #   resp.task_report_config.destination.s3.bucket_access_role_arn #=> String
    #   resp.task_report_config.output_type #=> String, one of "SUMMARY_ONLY", "STANDARD"
    #   resp.task_report_config.report_level #=> String, one of "ERRORS_ONLY", "SUCCESSES_AND_ERRORS"
    #   resp.task_report_config.object_version_ids #=> String, one of "INCLUDE", "NONE"
    #   resp.task_report_config.overrides.transferred.report_level #=> String, one of "ERRORS_ONLY", "SUCCESSES_AND_ERRORS"
    #   resp.task_report_config.overrides.verified.report_level #=> String, one of "ERRORS_ONLY", "SUCCESSES_AND_ERRORS"
    #   resp.task_report_config.overrides.deleted.report_level #=> String, one of "ERRORS_ONLY", "SUCCESSES_AND_ERRORS"
    #   resp.task_report_config.overrides.skipped.report_level #=> String, one of "ERRORS_ONLY", "SUCCESSES_AND_ERRORS"
    #   resp.files_deleted #=> Integer
    #   resp.files_skipped #=> Integer
    #   resp.files_verified #=> Integer
    #   resp.report_result.status #=> String, one of "PENDING", "SUCCESS", "ERROR"
    #   resp.report_result.error_code #=> String
    #   resp.report_result.error_detail #=> String
    #   resp.estimated_files_to_delete #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/DescribeTaskExecution AWS API Documentation
    #
    # @overload describe_task_execution(params = {})
    # @param [Hash] params ({})
    def describe_task_execution(params = {}, options = {})
      req = build_request(:describe_task_execution, params)
      req.send_request(options)
    end

    # Creates recommendations about where to migrate your data to in Amazon
    # Web Services. Recommendations are generated based on information that
    # DataSync Discovery collects about your on-premises storage system's
    # resources. For more information, see [Recommendations provided by
    # DataSync Discovery][1].
    #
    # Once generated, you can view your recommendations by using the
    # [DescribeStorageSystemResources][2] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/discovery-understand-recommendations.html
    # [2]: https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeStorageSystemResources.html
    #
    # @option params [required, String] :discovery_job_arn
    #   Specifies the Amazon Resource Name (ARN) of the discovery job that
    #   collects information about your on-premises storage system.
    #
    # @option params [required, Array<String>] :resource_ids
    #   Specifies the universally unique identifiers (UUIDs) of the resources
    #   in your storage system that you want recommendations on.
    #
    # @option params [required, String] :resource_type
    #   Specifies the type of resource in your storage system that you want
    #   recommendations on.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_recommendations({
    #     discovery_job_arn: "DiscoveryJobArn", # required
    #     resource_ids: ["ResourceId"], # required
    #     resource_type: "SVM", # required, accepts SVM, VOLUME, CLUSTER
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/GenerateRecommendations AWS API Documentation
    #
    # @overload generate_recommendations(params = {})
    # @param [Hash] params ({})
    def generate_recommendations(params = {}, options = {})
      req = build_request(:generate_recommendations, params)
      req.send_request(options)
    end

    # Returns a list of DataSync agents that belong to an Amazon Web
    # Services account in the Amazon Web Services Region specified in the
    # request.
    #
    # With pagination, you can reduce the number of agents returned in a
    # response. If you get a truncated list of agents in a response, the
    # response contains a marker that you can specify in your next request
    # to fetch the next page of agents.
    #
    # `ListAgents` is eventually consistent. This means the result of
    # running the operation might not reflect that you just created or
    # deleted an agent. For example, if you create an agent with
    # [CreateAgent][1] and then immediately run `ListAgents`, that agent
    # might not show up in the list right away. In situations like this, you
    # can always confirm whether an agent has been created (or deleted) by
    # using [DescribeAgent][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateAgent.html
    # [2]: https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeAgent.html
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of DataSync agents to list in a response.
    #   By default, a response shows a maximum of 100 agents.
    #
    # @option params [String] :next_token
    #   Specifies an opaque string that indicates the position to begin the
    #   next list of results in the response.
    #
    # @return [Types::ListAgentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentsResponse#agents #agents} => Array&lt;Types::AgentListEntry&gt;
    #   * {Types::ListAgentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agents({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agents #=> Array
    #   resp.agents[0].agent_arn #=> String
    #   resp.agents[0].name #=> String
    #   resp.agents[0].status #=> String, one of "ONLINE", "OFFLINE"
    #   resp.agents[0].platform.version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListAgents AWS API Documentation
    #
    # @overload list_agents(params = {})
    # @param [Hash] params ({})
    def list_agents(params = {}, options = {})
      req = build_request(:list_agents, params)
      req.send_request(options)
    end

    # Provides a list of the existing discovery jobs in the Amazon Web
    # Services Region and Amazon Web Services account where you're using
    # DataSync Discovery.
    #
    # @option params [String] :storage_system_arn
    #   Specifies the Amazon Resource Name (ARN) of an on-premises storage
    #   system. Use this parameter if you only want to list the discovery jobs
    #   that are associated with a specific storage system.
    #
    # @option params [Integer] :max_results
    #   Specifies how many results you want in the response.
    #
    # @option params [String] :next_token
    #   Specifies an opaque string that indicates the position to begin the
    #   next list of results in the response.
    #
    # @return [Types::ListDiscoveryJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDiscoveryJobsResponse#discovery_jobs #discovery_jobs} => Array&lt;Types::DiscoveryJobListEntry&gt;
    #   * {Types::ListDiscoveryJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_discovery_jobs({
    #     storage_system_arn: "StorageSystemArn",
    #     max_results: 1,
    #     next_token: "DiscoveryNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.discovery_jobs #=> Array
    #   resp.discovery_jobs[0].discovery_job_arn #=> String
    #   resp.discovery_jobs[0].status #=> String, one of "RUNNING", "WARNING", "TERMINATED", "FAILED", "STOPPED", "COMPLETED", "COMPLETED_WITH_ISSUES"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListDiscoveryJobs AWS API Documentation
    #
    # @overload list_discovery_jobs(params = {})
    # @param [Hash] params ({})
    def list_discovery_jobs(params = {}, options = {})
      req = build_request(:list_discovery_jobs, params)
      req.send_request(options)
    end

    # Returns a list of source and destination locations.
    #
    # If you have more locations than are returned in a response (that is,
    # the response returns only a truncated list of your agents), the
    # response contains a token that you can specify in your next request to
    # fetch the next page of locations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of locations to return.
    #
    # @option params [String] :next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of locations.
    #
    # @option params [Array<Types::LocationFilter>] :filters
    #   You can use API filters to narrow down the list of resources returned
    #   by `ListLocations`. For example, to retrieve all tasks on a specific
    #   source location, you can use `ListLocations` with filter name
    #   `LocationType S3` and `Operator Equals`.
    #
    # @return [Types::ListLocationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLocationsResponse#locations #locations} => Array&lt;Types::LocationListEntry&gt;
    #   * {Types::ListLocationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_locations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "LocationUri", # required, accepts LocationUri, LocationType, CreationTime
    #         values: ["FilterAttributeValue"], # required
    #         operator: "Equals", # required, accepts Equals, NotEquals, In, LessThanOrEqual, LessThan, GreaterThanOrEqual, GreaterThan, Contains, NotContains, BeginsWith
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.locations #=> Array
    #   resp.locations[0].location_arn #=> String
    #   resp.locations[0].location_uri #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListLocations AWS API Documentation
    #
    # @overload list_locations(params = {})
    # @param [Hash] params ({})
    def list_locations(params = {}, options = {})
      req = build_request(:list_locations, params)
      req.send_request(options)
    end

    # Lists the on-premises storage systems that you're using with DataSync
    # Discovery.
    #
    # @option params [Integer] :max_results
    #   Specifies how many results you want in the response.
    #
    # @option params [String] :next_token
    #   Specifies an opaque string that indicates the position to begin the
    #   next list of results in the response.
    #
    # @return [Types::ListStorageSystemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStorageSystemsResponse#storage_systems #storage_systems} => Array&lt;Types::StorageSystemListEntry&gt;
    #   * {Types::ListStorageSystemsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_storage_systems({
    #     max_results: 1,
    #     next_token: "DiscoveryNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_systems #=> Array
    #   resp.storage_systems[0].storage_system_arn #=> String
    #   resp.storage_systems[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListStorageSystems AWS API Documentation
    #
    # @overload list_storage_systems(params = {})
    # @param [Hash] params ({})
    def list_storage_systems(params = {}, options = {})
      req = build_request(:list_storage_systems, params)
      req.send_request(options)
    end

    # Returns all the tags associated with an Amazon Web Services resource.
    #
    # @option params [required, String] :resource_arn
    #   Specifies the Amazon Resource Name (ARN) of the resource that you want
    #   tag information on.
    #
    # @option params [Integer] :max_results
    #   Specifies how many results that you want in the response.
    #
    # @option params [String] :next_token
    #   Specifies an opaque string that indicates the position to begin the
    #   next list of results in the response.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::TagListEntry&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of executions for an DataSync transfer task.
    #
    # @option params [String] :task_arn
    #   Specifies the Amazon Resource Name (ARN) of the task that you want
    #   execution information about.
    #
    # @option params [Integer] :max_results
    #   Specifies how many results you want in the response.
    #
    # @option params [String] :next_token
    #   Specifies an opaque string that indicates the position at which to
    #   begin the next list of results in the response.
    #
    # @return [Types::ListTaskExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTaskExecutionsResponse#task_executions #task_executions} => Array&lt;Types::TaskExecutionListEntry&gt;
    #   * {Types::ListTaskExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_task_executions({
    #     task_arn: "TaskArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.task_executions #=> Array
    #   resp.task_executions[0].task_execution_arn #=> String
    #   resp.task_executions[0].status #=> String, one of "QUEUED", "CANCELLING", "LAUNCHING", "PREPARING", "TRANSFERRING", "VERIFYING", "SUCCESS", "ERROR"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTaskExecutions AWS API Documentation
    #
    # @overload list_task_executions(params = {})
    # @param [Hash] params ({})
    def list_task_executions(params = {}, options = {})
      req = build_request(:list_task_executions, params)
      req.send_request(options)
    end

    # Returns a list of the DataSync tasks you created.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tasks to return.
    #
    # @option params [String] :next_token
    #   An opaque string that indicates the position at which to begin the
    #   next list of tasks.
    #
    # @option params [Array<Types::TaskFilter>] :filters
    #   You can use API filters to narrow down the list of resources returned
    #   by `ListTasks`. For example, to retrieve all tasks on a specific
    #   source location, you can use `ListTasks` with filter name `LocationId`
    #   and `Operator Equals` with the ARN for the location.
    #
    # @return [Types::ListTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTasksResponse#tasks #tasks} => Array&lt;Types::TaskListEntry&gt;
    #   * {Types::ListTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tasks({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "LocationId", # required, accepts LocationId, CreationTime
    #         values: ["FilterAttributeValue"], # required
    #         operator: "Equals", # required, accepts Equals, NotEquals, In, LessThanOrEqual, LessThan, GreaterThanOrEqual, GreaterThan, Contains, NotContains, BeginsWith
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].task_arn #=> String
    #   resp.tasks[0].status #=> String, one of "AVAILABLE", "CREATING", "QUEUED", "RUNNING", "UNAVAILABLE"
    #   resp.tasks[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/ListTasks AWS API Documentation
    #
    # @overload list_tasks(params = {})
    # @param [Hash] params ({})
    def list_tasks(params = {}, options = {})
      req = build_request(:list_tasks, params)
      req.send_request(options)
    end

    # Permanently removes a storage system resource from DataSync Discovery,
    # including the associated discovery jobs, collected data, and
    # recommendations.
    #
    # @option params [required, String] :storage_system_arn
    #   Specifies the Amazon Resource Name (ARN) of the storage system that
    #   you want to permanently remove from DataSync Discovery.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_storage_system({
    #     storage_system_arn: "StorageSystemArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/RemoveStorageSystem AWS API Documentation
    #
    # @overload remove_storage_system(params = {})
    # @param [Hash] params ({})
    def remove_storage_system(params = {}, options = {})
      req = build_request(:remove_storage_system, params)
      req.send_request(options)
    end

    # Runs a DataSync discovery job on your on-premises storage system. If
    # you haven't added the storage system to DataSync Discovery yet, do
    # this first by using the [AddStorageSystem][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_AddStorageSystem.html
    #
    # @option params [required, String] :storage_system_arn
    #   Specifies the Amazon Resource Name (ARN) of the on-premises storage
    #   system that you want to run the discovery job on.
    #
    # @option params [required, Integer] :collection_duration_minutes
    #   Specifies in minutes how long you want the discovery job to run.
    #
    #   <note markdown="1"> For more accurate recommendations, we recommend a duration of at least
    #   14 days. Longer durations allow time to collect a sufficient number of
    #   data points and provide a realistic representation of storage
    #   performance and utilization.
    #
    #    </note>
    #
    # @option params [required, String] :client_token
    #   Specifies a client token to make sure requests with this API operation
    #   are idempotent. If you don't specify a client token, DataSync
    #   generates one for you automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   Specifies labels that help you categorize, filter, and search for your
    #   Amazon Web Services resources.
    #
    # @return [Types::StartDiscoveryJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDiscoveryJobResponse#discovery_job_arn #discovery_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_discovery_job({
    #     storage_system_arn: "StorageSystemArn", # required
    #     collection_duration_minutes: 1, # required
    #     client_token: "PtolemyUUID", # required
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
    #   resp.discovery_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StartDiscoveryJob AWS API Documentation
    #
    # @overload start_discovery_job(params = {})
    # @param [Hash] params ({})
    def start_discovery_job(params = {}, options = {})
      req = build_request(:start_discovery_job, params)
      req.send_request(options)
    end

    # Starts an DataSync transfer task. For each task, you can only run one
    # task execution at a time.
    #
    # There are several phases to a task execution. For more information,
    # see [Task execution statuses][1].
    #
    # If you're planning to transfer data to or from an Amazon S3 location,
    # review [how DataSync can affect your S3 request charges][2] and the
    # [DataSync pricing page][3] before you begin.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#understand-task-execution-statuses
    # [2]: https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests
    # [3]: http://aws.amazon.com/datasync/pricing/
    #
    # @option params [required, String] :task_arn
    #   Specifies the Amazon Resource Name (ARN) of the task that you want to
    #   start.
    #
    # @option params [Types::Options] :override_options
    #   Indicates how your transfer task is configured. These options include
    #   how DataSync handles files, objects, and their associated metadata
    #   during your transfer. You also can specify how to verify data
    #   integrity, set bandwidth limits for your task, among other options.
    #
    #   Each option has a default value. Unless you need to, you don't have
    #   to configure any option before calling [StartTaskExecution][1].
    #
    #   You also can override your task options for each task execution. For
    #   example, you might want to adjust the `LogLevel` for an individual
    #   execution.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html
    #
    # @option params [Array<Types::FilterRule>] :includes
    #   Specifies a list of filter rules that determines which files to
    #   include when running a task. The pattern should contain a single
    #   filter string that consists of the patterns to include. The patterns
    #   are delimited by "\|" (that is, a pipe), for example,
    #   `"/folder1|/folder2"`.
    #
    # @option params [Array<Types::FilterRule>] :excludes
    #   Specifies a list of filter rules that determines which files to
    #   exclude from a task. The list contains a single filter string that
    #   consists of the patterns to exclude. The patterns are delimited by
    #   "\|" (that is, a pipe), for example, `"/folder1|/folder2"`.
    #
    # @option params [Types::ManifestConfig] :manifest_config
    #   Configures a manifest, which is a list of files or objects that you
    #   want DataSync to transfer. For more information and configuration
    #   examples, see [Specifying what DataSync transfers by using a
    #   manifest][1].
    #
    #   When using this parameter, your caller identity (the role that you're
    #   using DataSync with) must have the `iam:PassRole` permission. The
    #   [AWSDataSyncFullAccess][2] policy includes this permission.
    #
    #   To remove a manifest configuration, specify this parameter with an
    #   empty value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess
    #
    # @option params [Types::TaskReportConfig] :task_report_config
    #   Specifies how you want to configure a task report, which provides
    #   detailed information about your DataSync transfer. For more
    #   information, see [Monitoring your DataSync transfers with task
    #   reports][1].
    #
    #   When using this parameter, your caller identity (the role that you're
    #   using DataSync with) must have the `iam:PassRole` permission. The
    #   [AWSDataSyncFullAccess][2] policy includes this permission.
    #
    #   To remove a task report configuration, specify this parameter as
    #   empty.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess
    #
    # @option params [Array<Types::TagListEntry>] :tags
    #   Specifies the tags that you want to apply to the Amazon Resource Name
    #   (ARN) representing the task execution.
    #
    #   *Tags* are key-value pairs that help you manage, filter, and search
    #   for your DataSync resources.
    #
    # @return [Types::StartTaskExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTaskExecutionResponse#task_execution_arn #task_execution_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_task_execution({
    #     task_arn: "TaskArn", # required
    #     override_options: {
    #       verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED, NONE
    #       overwrite_mode: "ALWAYS", # accepts ALWAYS, NEVER
    #       atime: "NONE", # accepts NONE, BEST_EFFORT
    #       mtime: "NONE", # accepts NONE, PRESERVE
    #       uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #       preserve_devices: "NONE", # accepts NONE, PRESERVE
    #       posix_permissions: "NONE", # accepts NONE, PRESERVE
    #       bytes_per_second: 1,
    #       task_queueing: "ENABLED", # accepts ENABLED, DISABLED
    #       log_level: "OFF", # accepts OFF, BASIC, TRANSFER
    #       transfer_mode: "CHANGED", # accepts CHANGED, ALL
    #       security_descriptor_copy_flags: "NONE", # accepts NONE, OWNER_DACL, OWNER_DACL_SACL
    #       object_tags: "PRESERVE", # accepts PRESERVE, NONE
    #     },
    #     includes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN", # accepts SIMPLE_PATTERN
    #         value: "FilterValue",
    #       },
    #     ],
    #     excludes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN", # accepts SIMPLE_PATTERN
    #         value: "FilterValue",
    #       },
    #     ],
    #     manifest_config: {
    #       action: "TRANSFER", # accepts TRANSFER
    #       format: "CSV", # accepts CSV
    #       source: {
    #         s3: { # required
    #           manifest_object_path: "S3Subdirectory", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #           s3_bucket_arn: "S3BucketArn", # required
    #           manifest_object_version_id: "S3ObjectVersionId",
    #         },
    #       },
    #     },
    #     task_report_config: {
    #       destination: {
    #         s3: {
    #           subdirectory: "S3Subdirectory",
    #           s3_bucket_arn: "S3BucketArn", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #         },
    #       },
    #       output_type: "SUMMARY_ONLY", # accepts SUMMARY_ONLY, STANDARD
    #       report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #       object_version_ids: "INCLUDE", # accepts INCLUDE, NONE
    #       overrides: {
    #         transferred: {
    #           report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #         },
    #         verified: {
    #           report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #         },
    #         deleted: {
    #           report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #         },
    #         skipped: {
    #           report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #         },
    #       },
    #     },
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
    #   resp.task_execution_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StartTaskExecution AWS API Documentation
    #
    # @overload start_task_execution(params = {})
    # @param [Hash] params ({})
    def start_task_execution(params = {}, options = {})
      req = build_request(:start_task_execution, params)
      req.send_request(options)
    end

    # Stops a running DataSync discovery job.
    #
    # You can stop a discovery job anytime. A job that's stopped before
    # it's scheduled to end likely will provide you some information about
    # your on-premises storage system resources. To get recommendations for
    # a stopped job, you must use the [GenerateRecommendations][1]
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_GenerateRecommendations.html
    #
    # @option params [required, String] :discovery_job_arn
    #   Specifies the Amazon Resource Name (ARN) of the discovery job that you
    #   want to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_discovery_job({
    #     discovery_job_arn: "DiscoveryJobArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/StopDiscoveryJob AWS API Documentation
    #
    # @overload stop_discovery_job(params = {})
    # @param [Hash] params ({})
    def stop_discovery_job(params = {}, options = {})
      req = build_request(:stop_discovery_job, params)
      req.send_request(options)
    end

    # Applies a *tag* to an Amazon Web Services resource. Tags are key-value
    # pairs that can help you manage, filter, and search for your resources.
    #
    # These include DataSync resources, such as locations, tasks, and task
    # executions.
    #
    # @option params [required, String] :resource_arn
    #   Specifies the Amazon Resource Name (ARN) of the resource to apply the
    #   tag to.
    #
    # @option params [required, Array<Types::TagListEntry>] :tags
    #   Specifies the tags that you want to apply to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from an Amazon Web Services resource.
    #
    # @option params [required, String] :resource_arn
    #   Specifies the Amazon Resource Name (ARN) of the resource to remove the
    #   tags from.
    #
    # @option params [required, Array<String>] :keys
    #   Specifies the keys in the tags that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableResourceArn", # required
    #     keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the name of an DataSync agent.
    #
    # @option params [required, String] :agent_arn
    #   The Amazon Resource Name (ARN) of the agent to update.
    #
    # @option params [String] :name
    #   The name that you want to use to configure the agent.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent({
    #     agent_arn: "AgentArn", # required
    #     name: "TagValue",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateAgent AWS API Documentation
    #
    # @overload update_agent(params = {})
    # @param [Hash] params ({})
    def update_agent(params = {}, options = {})
      req = build_request(:update_agent, params)
      req.send_request(options)
    end

    # Edits a DataSync discovery job configuration.
    #
    # @option params [required, String] :discovery_job_arn
    #   Specifies the Amazon Resource Name (ARN) of the discovery job that you
    #   want to update.
    #
    # @option params [required, Integer] :collection_duration_minutes
    #   Specifies in minutes how long that you want the discovery job to run.
    #   (You can't set this parameter to less than the number of minutes that
    #   the job has already run for.)
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_discovery_job({
    #     discovery_job_arn: "DiscoveryJobArn", # required
    #     collection_duration_minutes: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateDiscoveryJob AWS API Documentation
    #
    # @overload update_discovery_job(params = {})
    # @param [Hash] params ({})
    def update_discovery_job(params = {}, options = {})
      req = build_request(:update_discovery_job, params)
      req.send_request(options)
    end

    # Modifies some configurations of the Microsoft Azure Blob Storage
    # transfer location that you're using with DataSync.
    #
    # @option params [required, String] :location_arn
    #   Specifies the ARN of the Azure Blob Storage transfer location that
    #   you're updating.
    #
    # @option params [String] :subdirectory
    #   Specifies path segments if you want to limit your transfer to a
    #   virtual directory in your container (for example, `/my/images`).
    #
    # @option params [String] :authentication_type
    #   Specifies the authentication method DataSync uses to access your Azure
    #   Blob Storage. DataSync can access blob storage using a shared access
    #   signature (SAS).
    #
    # @option params [Types::AzureBlobSasConfiguration] :sas_configuration
    #   Specifies the SAS configuration that allows DataSync to access your
    #   Azure Blob Storage.
    #
    # @option params [String] :blob_type
    #   Specifies the type of blob that you want your objects or files to be
    #   when transferring them into Azure Blob Storage. Currently, DataSync
    #   only supports moving data into Azure Blob Storage as block blobs. For
    #   more information on blob types, see the [Azure Blob Storage
    #   documentation][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/rest/api/storageservices/understanding-block-blobs--append-blobs--and-page-blobs
    #
    # @option params [String] :access_tier
    #   Specifies the access tier that you want your objects or files
    #   transferred into. This only applies when using the location as a
    #   transfer destination. For more information, see [Access tiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers
    #
    # @option params [Array<String>] :agent_arns
    #   Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #   can connect with your Azure Blob Storage container.
    #
    #   You can specify more than one agent. For more information, see [Using
    #   multiple agents for your transfer][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/multiple-agents.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_location_azure_blob({
    #     location_arn: "LocationArn", # required
    #     subdirectory: "AzureBlobSubdirectory",
    #     authentication_type: "SAS", # accepts SAS
    #     sas_configuration: {
    #       token: "AzureBlobSasToken", # required
    #     },
    #     blob_type: "BLOCK", # accepts BLOCK
    #     access_tier: "HOT", # accepts HOT, COOL, ARCHIVE
    #     agent_arns: ["AgentArn"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationAzureBlob AWS API Documentation
    #
    # @overload update_location_azure_blob(params = {})
    # @param [Hash] params ({})
    def update_location_azure_blob(params = {}, options = {})
      req = build_request(:update_location_azure_blob, params)
      req.send_request(options)
    end

    # Updates some parameters of a previously created location for a Hadoop
    # Distributed File System cluster.
    #
    # @option params [required, String] :location_arn
    #   The Amazon Resource Name (ARN) of the source HDFS cluster location.
    #
    # @option params [String] :subdirectory
    #   A subdirectory in the HDFS cluster. This subdirectory is used to read
    #   data from or write data to the HDFS cluster.
    #
    # @option params [Array<Types::HdfsNameNode>] :name_nodes
    #   The NameNode that manages the HDFS namespace. The NameNode performs
    #   operations such as opening, closing, and renaming files and
    #   directories. The NameNode contains the information to map blocks of
    #   data to the DataNodes. You can use only one NameNode.
    #
    # @option params [Integer] :block_size
    #   The size of the data blocks to write into the HDFS cluster.
    #
    # @option params [Integer] :replication_factor
    #   The number of DataNodes to replicate the data to when writing to the
    #   HDFS cluster.
    #
    # @option params [String] :kms_key_provider_uri
    #   The URI of the HDFS cluster's Key Management Server (KMS).
    #
    # @option params [Types::QopConfiguration] :qop_configuration
    #   The Quality of Protection (QOP) configuration specifies the Remote
    #   Procedure Call (RPC) and data transfer privacy settings configured on
    #   the Hadoop Distributed File System (HDFS) cluster.
    #
    # @option params [String] :authentication_type
    #   The type of authentication used to determine the identity of the user.
    #
    # @option params [String] :simple_user
    #   The user name used to identify the client on the host operating
    #   system.
    #
    # @option params [String] :kerberos_principal
    #   The Kerberos principal with access to the files and folders on the
    #   HDFS cluster.
    #
    # @option params [String, StringIO, File] :kerberos_keytab
    #   The Kerberos key table (keytab) that contains mappings between the
    #   defined Kerberos principal and the encrypted keys. You can load the
    #   keytab from a file by providing the file's address. If you use the
    #   CLI, it performs base64 encoding for you. Otherwise, provide the
    #   base64-encoded text.
    #
    # @option params [String, StringIO, File] :kerberos_krb_5_conf
    #   The `krb5.conf` file that contains the Kerberos configuration
    #   information. You can load the `krb5.conf` file by providing the
    #   file's address. If you're using the CLI, it performs the base64
    #   encoding for you. Otherwise, provide the base64-encoded text.
    #
    # @option params [Array<String>] :agent_arns
    #   The ARNs of the agents that are used to connect to the HDFS cluster.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_location_hdfs({
    #     location_arn: "LocationArn", # required
    #     subdirectory: "HdfsSubdirectory",
    #     name_nodes: [
    #       {
    #         hostname: "HdfsServerHostname", # required
    #         port: 1, # required
    #       },
    #     ],
    #     block_size: 1,
    #     replication_factor: 1,
    #     kms_key_provider_uri: "KmsKeyProviderUri",
    #     qop_configuration: {
    #       rpc_protection: "DISABLED", # accepts DISABLED, AUTHENTICATION, INTEGRITY, PRIVACY
    #       data_transfer_protection: "DISABLED", # accepts DISABLED, AUTHENTICATION, INTEGRITY, PRIVACY
    #     },
    #     authentication_type: "SIMPLE", # accepts SIMPLE, KERBEROS
    #     simple_user: "HdfsUser",
    #     kerberos_principal: "KerberosPrincipal",
    #     kerberos_keytab: "data",
    #     kerberos_krb_5_conf: "data",
    #     agent_arns: ["AgentArn"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationHdfs AWS API Documentation
    #
    # @overload update_location_hdfs(params = {})
    # @param [Hash] params ({})
    def update_location_hdfs(params = {}, options = {})
      req = build_request(:update_location_hdfs, params)
      req.send_request(options)
    end

    # Modifies some configurations of the Network File System (NFS) transfer
    # location that you're using with DataSync.
    #
    # For more information, see [Configuring transfers to or from an NFS
    # file server][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html
    #
    # @option params [required, String] :location_arn
    #   Specifies the Amazon Resource Name (ARN) of the NFS transfer location
    #   that you want to update.
    #
    # @option params [String] :subdirectory
    #   Specifies the export path in your NFS file server that you want
    #   DataSync to mount.
    #
    #   This path (or a subdirectory of the path) is where DataSync transfers
    #   data to or from. For information on configuring an export for
    #   DataSync, see [Accessing NFS file servers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs
    #
    # @option params [Types::OnPremConfig] :on_prem_config
    #   The DataSync agents that are connecting to a Network File System (NFS)
    #   location.
    #
    # @option params [Types::NfsMountOptions] :mount_options
    #   Specifies how DataSync can access a location using the NFS protocol.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_location_nfs({
    #     location_arn: "LocationArn", # required
    #     subdirectory: "NfsSubdirectory",
    #     on_prem_config: {
    #       agent_arns: ["AgentArn"], # required
    #     },
    #     mount_options: {
    #       version: "AUTOMATIC", # accepts AUTOMATIC, NFS3, NFS4_0, NFS4_1
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationNfs AWS API Documentation
    #
    # @overload update_location_nfs(params = {})
    # @param [Hash] params ({})
    def update_location_nfs(params = {}, options = {})
      req = build_request(:update_location_nfs, params)
      req.send_request(options)
    end

    # Updates some parameters of an existing DataSync location for an object
    # storage system.
    #
    # @option params [required, String] :location_arn
    #   Specifies the ARN of the object storage system location that you're
    #   updating.
    #
    # @option params [Integer] :server_port
    #   Specifies the port that your object storage server accepts inbound
    #   network traffic on (for example, port 443).
    #
    # @option params [String] :server_protocol
    #   Specifies the protocol that your object storage server uses to
    #   communicate.
    #
    # @option params [String] :subdirectory
    #   Specifies the object prefix for your object storage server. If this is
    #   a source location, DataSync only copies objects with this prefix. If
    #   this is a destination location, DataSync writes all objects with this
    #   prefix.
    #
    # @option params [String] :access_key
    #   Specifies the access key (for example, a user name) if credentials are
    #   required to authenticate with the object storage server.
    #
    # @option params [String] :secret_key
    #   Specifies the secret key (for example, a password) if credentials are
    #   required to authenticate with the object storage server.
    #
    # @option params [Array<String>] :agent_arns
    #   Specifies the Amazon Resource Names (ARNs) of the DataSync agents that
    #   can securely connect with your location.
    #
    # @option params [String, StringIO, File] :server_certificate
    #   Specifies a certificate chain for DataSync to authenticate with your
    #   object storage system if the system uses a private or self-signed
    #   certificate authority (CA). You must specify a single `.pem` file with
    #   a full certificate chain (for example,
    #   `file:///home/user/.ssh/object_storage_certificates.pem`).
    #
    #   The certificate chain might include:
    #
    #   * The object storage system's certificate
    #
    #   * All intermediate certificates (if there are any)
    #
    #   * The root certificate of the signing CA
    #
    #   You can concatenate your certificates into a `.pem` file (which can be
    #   up to 32768 bytes before base64 encoding). The following example `cat`
    #   command creates an `object_storage_certificates.pem` file that
    #   includes three certificates:
    #
    #   `cat object_server_certificate.pem intermediate_certificate.pem
    #   ca_root_certificate.pem > object_storage_certificates.pem`
    #
    #   To use this parameter, configure `ServerProtocol` to `HTTPS`.
    #
    #   Updating this parameter doesn't interfere with tasks that you have in
    #   progress.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_location_object_storage({
    #     location_arn: "LocationArn", # required
    #     server_port: 1,
    #     server_protocol: "HTTPS", # accepts HTTPS, HTTP
    #     subdirectory: "S3Subdirectory",
    #     access_key: "ObjectStorageAccessKey",
    #     secret_key: "ObjectStorageSecretKey",
    #     agent_arns: ["AgentArn"],
    #     server_certificate: "data",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationObjectStorage AWS API Documentation
    #
    # @overload update_location_object_storage(params = {})
    # @param [Hash] params ({})
    def update_location_object_storage(params = {}, options = {})
      req = build_request(:update_location_object_storage, params)
      req.send_request(options)
    end

    # Updates some of the parameters of a Server Message Block (SMB) file
    # server location that you can use for DataSync transfers.
    #
    # @option params [required, String] :location_arn
    #   Specifies the ARN of the SMB location that you want to update.
    #
    # @option params [String] :subdirectory
    #   Specifies the name of the share exported by your SMB file server where
    #   DataSync will read or write data. You can include a subdirectory in
    #   the share path (for example, `/path/to/subdirectory`). Make sure that
    #   other SMB clients in your network can also mount this path.
    #
    #   To copy all data in the specified subdirectory, DataSync must be able
    #   to mount the SMB share and access all of its data. For more
    #   information, see [required permissions][1] for SMB locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #
    # @option params [String] :user
    #   Specifies the user name that can mount your SMB file server and has
    #   permission to access the files and folders involved in your transfer.
    #
    #   For information about choosing a user with the right level of access
    #   for your transfer, see [required permissions][1] for SMB locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #
    # @option params [String] :domain
    #   Specifies the Windows domain name that your SMB file server belongs
    #   to.
    #
    #   If you have multiple domains in your environment, configuring this
    #   parameter makes sure that DataSync connects to the right file server.
    #
    #   For more information, see [required permissions][1] for SMB locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #
    # @option params [String] :password
    #   Specifies the password of the user who can mount your SMB file server
    #   and has permission to access the files and folders involved in your
    #   transfer.
    #
    #   For more information, see [required permissions][1] for SMB locations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions
    #
    # @option params [Array<String>] :agent_arns
    #   Specifies the DataSync agent (or agents) which you want to connect to
    #   your SMB file server. You specify an agent by using its Amazon
    #   Resource Name (ARN).
    #
    # @option params [Types::SmbMountOptions] :mount_options
    #   Specifies the version of the Server Message Block (SMB) protocol that
    #   DataSync uses to access an SMB file server.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_location_smb({
    #     location_arn: "LocationArn", # required
    #     subdirectory: "SmbSubdirectory",
    #     user: "SmbUser",
    #     domain: "SmbDomain",
    #     password: "SmbPassword",
    #     agent_arns: ["AgentArn"],
    #     mount_options: {
    #       version: "AUTOMATIC", # accepts AUTOMATIC, SMB2, SMB3, SMB1, SMB2_0
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateLocationSmb AWS API Documentation
    #
    # @overload update_location_smb(params = {})
    # @param [Hash] params ({})
    def update_location_smb(params = {}, options = {})
      req = build_request(:update_location_smb, params)
      req.send_request(options)
    end

    # Modifies some configurations of an on-premises storage system resource
    # that you're using with DataSync Discovery.
    #
    # @option params [required, String] :storage_system_arn
    #   Specifies the ARN of the on-premises storage system that you want
    #   reconfigure.
    #
    # @option params [Types::DiscoveryServerConfiguration] :server_configuration
    #   Specifies the server name and network port required to connect with
    #   your on-premises storage system's management interface.
    #
    # @option params [Array<String>] :agent_arns
    #   Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #   connects to and reads your on-premises storage system. You can only
    #   specify one ARN.
    #
    # @option params [String] :name
    #   Specifies a familiar name for your on-premises storage system.
    #
    # @option params [String] :cloud_watch_log_group_arn
    #   Specifies the ARN of the Amazon CloudWatch log group for monitoring
    #   and logging discovery job events.
    #
    # @option params [Types::Credentials] :credentials
    #   Specifies the user name and password for accessing your on-premises
    #   storage system's management interface.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_storage_system({
    #     storage_system_arn: "StorageSystemArn", # required
    #     server_configuration: {
    #       server_hostname: "DiscoveryServerHostname", # required
    #       server_port: 1,
    #     },
    #     agent_arns: ["AgentArn"],
    #     name: "Name",
    #     cloud_watch_log_group_arn: "LogGroupArn",
    #     credentials: {
    #       username: "PtolemyUsername", # required
    #       password: "PtolemyPassword", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateStorageSystem AWS API Documentation
    #
    # @overload update_storage_system(params = {})
    # @param [Hash] params ({})
    def update_storage_system(params = {}, options = {})
      req = build_request(:update_storage_system, params)
      req.send_request(options)
    end

    # Updates the configuration of a *task*, which defines where and how
    # DataSync transfers your data.
    #
    # @option params [required, String] :task_arn
    #   Specifies the ARN of the task that you want to update.
    #
    # @option params [Types::Options] :options
    #   Indicates how your transfer task is configured. These options include
    #   how DataSync handles files, objects, and their associated metadata
    #   during your transfer. You also can specify how to verify data
    #   integrity, set bandwidth limits for your task, among other options.
    #
    #   Each option has a default value. Unless you need to, you don't have
    #   to configure any option before calling [StartTaskExecution][1].
    #
    #   You also can override your task options for each task execution. For
    #   example, you might want to adjust the `LogLevel` for an individual
    #   execution.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html
    #
    # @option params [Array<Types::FilterRule>] :excludes
    #   Specifies exclude filters that define the files, objects, and folders
    #   in your source location that you don't want DataSync to transfer. For
    #   more information and examples, see [Specifying what DataSync transfers
    #   by using filters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #
    # @option params [Types::TaskSchedule] :schedule
    #   Specifies a schedule for when you want your task to run. For more
    #   information, see [Scheduling your task][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html
    #
    # @option params [String] :name
    #   Specifies the name of your task.
    #
    # @option params [String] :cloud_watch_log_group_arn
    #   Specifies the Amazon Resource Name (ARN) of an Amazon CloudWatch log
    #   group for monitoring your task.
    #
    # @option params [Array<Types::FilterRule>] :includes
    #   Specifies include filters define the files, objects, and folders in
    #   your source location that you want DataSync to transfer. For more
    #   information and examples, see [Specifying what DataSync transfers by
    #   using filters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html
    #
    # @option params [Types::ManifestConfig] :manifest_config
    #   Configures a manifest, which is a list of files or objects that you
    #   want DataSync to transfer. For more information and configuration
    #   examples, see [Specifying what DataSync transfers by using a
    #   manifest][1].
    #
    #   When using this parameter, your caller identity (the IAM role that
    #   you're using DataSync with) must have the `iam:PassRole` permission.
    #   The [AWSDataSyncFullAccess][2] policy includes this permission.
    #
    #   To remove a manifest configuration, specify this parameter as empty.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess
    #
    # @option params [Types::TaskReportConfig] :task_report_config
    #   Specifies how you want to configure a task report, which provides
    #   detailed information about your DataSync transfer. For more
    #   information, see [Monitoring your DataSync transfers with task
    #   reports][1].
    #
    #   When using this parameter, your caller identity (the IAM role that
    #   you're using DataSync with) must have the `iam:PassRole` permission.
    #   The [AWSDataSyncFullAccess][2] policy includes this permission.
    #
    #   To remove a task report configuration, specify this parameter as
    #   empty.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html
    #   [2]: https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_task({
    #     task_arn: "TaskArn", # required
    #     options: {
    #       verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED, NONE
    #       overwrite_mode: "ALWAYS", # accepts ALWAYS, NEVER
    #       atime: "NONE", # accepts NONE, BEST_EFFORT
    #       mtime: "NONE", # accepts NONE, PRESERVE
    #       uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #       preserve_devices: "NONE", # accepts NONE, PRESERVE
    #       posix_permissions: "NONE", # accepts NONE, PRESERVE
    #       bytes_per_second: 1,
    #       task_queueing: "ENABLED", # accepts ENABLED, DISABLED
    #       log_level: "OFF", # accepts OFF, BASIC, TRANSFER
    #       transfer_mode: "CHANGED", # accepts CHANGED, ALL
    #       security_descriptor_copy_flags: "NONE", # accepts NONE, OWNER_DACL, OWNER_DACL_SACL
    #       object_tags: "PRESERVE", # accepts PRESERVE, NONE
    #     },
    #     excludes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN", # accepts SIMPLE_PATTERN
    #         value: "FilterValue",
    #       },
    #     ],
    #     schedule: {
    #       schedule_expression: "ScheduleExpressionCron", # required
    #       status: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     name: "TagValue",
    #     cloud_watch_log_group_arn: "LogGroupArn",
    #     includes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN", # accepts SIMPLE_PATTERN
    #         value: "FilterValue",
    #       },
    #     ],
    #     manifest_config: {
    #       action: "TRANSFER", # accepts TRANSFER
    #       format: "CSV", # accepts CSV
    #       source: {
    #         s3: { # required
    #           manifest_object_path: "S3Subdirectory", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #           s3_bucket_arn: "S3BucketArn", # required
    #           manifest_object_version_id: "S3ObjectVersionId",
    #         },
    #       },
    #     },
    #     task_report_config: {
    #       destination: {
    #         s3: {
    #           subdirectory: "S3Subdirectory",
    #           s3_bucket_arn: "S3BucketArn", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #         },
    #       },
    #       output_type: "SUMMARY_ONLY", # accepts SUMMARY_ONLY, STANDARD
    #       report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #       object_version_ids: "INCLUDE", # accepts INCLUDE, NONE
    #       overrides: {
    #         transferred: {
    #           report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #         },
    #         verified: {
    #           report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #         },
    #         deleted: {
    #           report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #         },
    #         skipped: {
    #           report_level: "ERRORS_ONLY", # accepts ERRORS_ONLY, SUCCESSES_AND_ERRORS
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateTask AWS API Documentation
    #
    # @overload update_task(params = {})
    # @param [Hash] params ({})
    def update_task(params = {}, options = {})
      req = build_request(:update_task, params)
      req.send_request(options)
    end

    # Updates the configuration of a running DataSync task execution.
    #
    # <note markdown="1"> Currently, the only `Option` that you can modify with
    # `UpdateTaskExecution` is ` BytesPerSecond `, which throttles bandwidth
    # for a running or queued task execution.
    #
    #  </note>
    #
    # @option params [required, String] :task_execution_arn
    #   Specifies the Amazon Resource Name (ARN) of the task execution that
    #   you're updating.
    #
    # @option params [required, Types::Options] :options
    #   Indicates how your transfer task is configured. These options include
    #   how DataSync handles files, objects, and their associated metadata
    #   during your transfer. You also can specify how to verify data
    #   integrity, set bandwidth limits for your task, among other options.
    #
    #   Each option has a default value. Unless you need to, you don't have
    #   to configure any option before calling [StartTaskExecution][1].
    #
    #   You also can override your task options for each task execution. For
    #   example, you might want to adjust the `LogLevel` for an individual
    #   execution.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_task_execution({
    #     task_execution_arn: "TaskExecutionArn", # required
    #     options: { # required
    #       verify_mode: "POINT_IN_TIME_CONSISTENT", # accepts POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED, NONE
    #       overwrite_mode: "ALWAYS", # accepts ALWAYS, NEVER
    #       atime: "NONE", # accepts NONE, BEST_EFFORT
    #       mtime: "NONE", # accepts NONE, PRESERVE
    #       uid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       gid: "NONE", # accepts NONE, INT_VALUE, NAME, BOTH
    #       preserve_deleted_files: "PRESERVE", # accepts PRESERVE, REMOVE
    #       preserve_devices: "NONE", # accepts NONE, PRESERVE
    #       posix_permissions: "NONE", # accepts NONE, PRESERVE
    #       bytes_per_second: 1,
    #       task_queueing: "ENABLED", # accepts ENABLED, DISABLED
    #       log_level: "OFF", # accepts OFF, BASIC, TRANSFER
    #       transfer_mode: "CHANGED", # accepts CHANGED, ALL
    #       security_descriptor_copy_flags: "NONE", # accepts NONE, OWNER_DACL, OWNER_DACL_SACL
    #       object_tags: "PRESERVE", # accepts PRESERVE, NONE
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datasync-2018-11-09/UpdateTaskExecution AWS API Documentation
    #
    # @overload update_task_execution(params = {})
    # @param [Hash] params ({})
    def update_task_execution(params = {}, options = {})
      req = build_request(:update_task_execution, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::DataSync')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-datasync'
      context[:gem_version] = '1.89.0'
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
