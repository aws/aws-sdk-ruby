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
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:states)

module Aws::States
  # An API client for States.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::States::Client.new(
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

    @identifier = :states

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
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::States::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
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
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
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
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    #   @option options [Aws::States::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::States::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates an activity. An activity is a task that you write in any
    # programming language and host on any machine that has access to Step
    # Functions. Activities must poll Step Functions using the
    # `GetActivityTask` API action and respond using `SendTask*` API
    # actions. This function lets Step Functions know the existence of your
    # activity and returns an identifier for use in a state machine and when
    # polling from the activity.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # <note markdown="1"> `CreateActivity` is an idempotent API. Subsequent requests won’t
    # create a duplicate resource if it was already created.
    # `CreateActivity`'s idempotency check is based on the activity `name`.
    # If a following request has different `tags` values, Step Functions
    # will ignore these differences and treat it as an idempotent request of
    # the previous. In this case, `tags` will not be updated, even if they
    # are different.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the activity to create. This name must be unique for your
    #   Amazon Web Services account and region for 90 days. For more
    #   information, see [ Limits Related to State Machine Executions][1] in
    #   the *Step Functions Developer Guide*.
    #
    #   A name must *not* contain:
    #
    #   * white space
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #   To enable logging with CloudWatch Logs, the name should only contain
    #   0-9, A-Z, a-z, - and \_.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions
    #
    # @option params [Array<Types::Tag>] :tags
    #   The list of tags to add to a resource.
    #
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *Amazon Web Services Billing and Cost
    #   Management User Guide*, and [Controlling Access Using IAM Tags][2].
    #
    #   Tags may only contain Unicode letters, digits, white space, or these
    #   symbols: `_ . : / = + - @`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html
    #
    # @return [Types::CreateActivityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateActivityOutput#activity_arn #activity_arn} => String
    #   * {Types::CreateActivityOutput#creation_date #creation_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_activity({
    #     name: "Name", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.activity_arn #=> String
    #   resp.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateActivity AWS API Documentation
    #
    # @overload create_activity(params = {})
    # @param [Hash] params ({})
    def create_activity(params = {}, options = {})
      req = build_request(:create_activity, params)
      req.send_request(options)
    end

    # Creates a state machine. A state machine consists of a collection of
    # states that can do work (`Task` states), determine to which states to
    # transition next (`Choice` states), stop an execution with an error
    # (`Fail` states), and so on. State machines are specified using a
    # JSON-based, structured language. For more information, see [Amazon
    # States Language][1] in the Step Functions User Guide.
    #
    # If you set the `publish` parameter of this API action to `true`, it
    # publishes version `1` as the first revision of the state machine.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # <note markdown="1"> `CreateStateMachine` is an idempotent API. Subsequent requests won’t
    # create a duplicate resource if it was already created.
    # `CreateStateMachine`'s idempotency check is based on the state
    # machine `name`, `definition`, `type`, `LoggingConfiguration`, and
    # `TracingConfiguration`. The check is also based on the `publish` and
    # `versionDescription` parameters. If a following request has a
    # different `roleArn` or `tags`, Step Functions will ignore these
    # differences and treat it as an idempotent request of the previous. In
    # this case, `roleArn` and `tags` will not be updated, even if they are
    # different.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html
    #
    # @option params [required, String] :name
    #   The name of the state machine.
    #
    #   A name must *not* contain:
    #
    #   * white space
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #   To enable logging with CloudWatch Logs, the name should only contain
    #   0-9, A-Z, a-z, - and \_.
    #
    # @option params [required, String] :definition
    #   The Amazon States Language definition of the state machine. See
    #   [Amazon States Language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to use for this state
    #   machine.
    #
    # @option params [String] :type
    #   Determines whether a Standard or Express state machine is created. The
    #   default is `STANDARD`. You cannot update the `type` of a state machine
    #   once it has been created.
    #
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   Defines what execution history events are logged and where they are
    #   logged.
    #
    #   <note markdown="1"> By default, the `level` is set to `OFF`. For more information see [Log
    #   Levels][1] in the Step Functions User Guide.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to be added when creating a state machine.
    #
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *Amazon Web Services Billing and Cost
    #   Management User Guide*, and [Controlling Access Using IAM Tags][2].
    #
    #   Tags may only contain Unicode letters, digits, white space, or these
    #   symbols: `_ . : / = + - @`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html
    #
    # @option params [Types::TracingConfiguration] :tracing_configuration
    #   Selects whether X-Ray tracing is enabled.
    #
    # @option params [Boolean] :publish
    #   Set to `true` to publish the first version of the state machine during
    #   creation. The default is `false`.
    #
    # @option params [String] :version_description
    #   Sets description about the state machine version. You can only set the
    #   description if the `publish` parameter is set to `true`. Otherwise, if
    #   you set `versionDescription`, but `publish` to `false`, this API
    #   action throws `ValidationException`.
    #
    # @return [Types::CreateStateMachineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStateMachineOutput#state_machine_arn #state_machine_arn} => String
    #   * {Types::CreateStateMachineOutput#creation_date #creation_date} => Time
    #   * {Types::CreateStateMachineOutput#state_machine_version_arn #state_machine_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_state_machine({
    #     name: "Name", # required
    #     definition: "Definition", # required
    #     role_arn: "Arn", # required
    #     type: "STANDARD", # accepts STANDARD, EXPRESS
    #     logging_configuration: {
    #       level: "ALL", # accepts ALL, ERROR, FATAL, OFF
    #       include_execution_data: false,
    #       destinations: [
    #         {
    #           cloud_watch_logs_log_group: {
    #             log_group_arn: "Arn",
    #           },
    #         },
    #       ],
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     tracing_configuration: {
    #       enabled: false,
    #     },
    #     publish: false,
    #     version_description: "VersionDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.state_machine_arn #=> String
    #   resp.creation_date #=> Time
    #   resp.state_machine_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateStateMachine AWS API Documentation
    #
    # @overload create_state_machine(params = {})
    # @param [Hash] params ({})
    def create_state_machine(params = {}, options = {})
      req = build_request(:create_state_machine, params)
      req.send_request(options)
    end

    # Creates an [alias][1] for a state machine that points to one or two
    # [versions][2] of the same state machine. You can set your application
    # to call StartExecution with an alias and update the version the alias
    # uses without changing the client's code.
    #
    # You can also map an alias to split StartExecution requests between two
    # versions of a state machine. To do this, add a second `RoutingConfig`
    # object in the `routingConfiguration` parameter. You must also specify
    # the percentage of execution run requests each version should receive
    # in both `RoutingConfig` objects. Step Functions randomly chooses which
    # version runs a given execution based on the percentage you specify.
    #
    # To create an alias that points to a single version, specify a single
    # `RoutingConfig` object with a `weight` set to 100.
    #
    # You can create up to 100 aliases for each state machine. You must
    # delete unused aliases using the DeleteStateMachineAlias API action.
    #
    # `CreateStateMachineAlias` is an idempotent API. Step Functions bases
    # the idempotency check on the `stateMachineArn`, `description`, `name`,
    # and `routingConfiguration` parameters. Requests that contain the same
    # values for these parameters return a successful idempotent response
    # without creating a duplicate resource.
    #
    # **Related operations:**
    #
    # * DescribeStateMachineAlias
    #
    # * ListStateMachineAliases
    #
    # * UpdateStateMachineAlias
    #
    # * DeleteStateMachineAlias
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
    # [2]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
    #
    # @option params [String] :description
    #   A description for the state machine alias.
    #
    # @option params [required, String] :name
    #   The name of the state machine alias.
    #
    #   To avoid conflict with version ARNs, don't use an integer in the name
    #   of the alias.
    #
    # @option params [required, Array<Types::RoutingConfigurationListItem>] :routing_configuration
    #   The routing configuration of a state machine alias. The routing
    #   configuration shifts execution traffic between two state machine
    #   versions. `routingConfiguration` contains an array of `RoutingConfig`
    #   objects that specify up to two state machine versions. Step Functions
    #   then randomly choses which version to run an execution with based on
    #   the weight assigned to each `RoutingConfig`.
    #
    # @return [Types::CreateStateMachineAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStateMachineAliasOutput#state_machine_alias_arn #state_machine_alias_arn} => String
    #   * {Types::CreateStateMachineAliasOutput#creation_date #creation_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_state_machine_alias({
    #     description: "AliasDescription",
    #     name: "CharacterRestrictedName", # required
    #     routing_configuration: [ # required
    #       {
    #         state_machine_version_arn: "Arn", # required
    #         weight: 1, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.state_machine_alias_arn #=> String
    #   resp.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateStateMachineAlias AWS API Documentation
    #
    # @overload create_state_machine_alias(params = {})
    # @param [Hash] params ({})
    def create_state_machine_alias(params = {}, options = {})
      req = build_request(:create_state_machine_alias, params)
      req.send_request(options)
    end

    # Deletes an activity.
    #
    # @option params [required, String] :activity_arn
    #   The Amazon Resource Name (ARN) of the activity to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_activity({
    #     activity_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteActivity AWS API Documentation
    #
    # @overload delete_activity(params = {})
    # @param [Hash] params ({})
    def delete_activity(params = {}, options = {})
      req = build_request(:delete_activity, params)
      req.send_request(options)
    end

    # Deletes a state machine. This is an asynchronous operation: It sets
    # the state machine's status to `DELETING` and begins the deletion
    # process.
    #
    # A qualified state machine ARN can either refer to a *Distributed Map
    # state* defined within a state machine, a version ARN, or an alias ARN.
    #
    # The following are some examples of qualified and unqualified state
    # machine ARNs:
    #
    # * The following qualified state machine ARN refers to a *Distributed
    #   Map state* with a label `mapStateLabel` in a state machine named
    #   `myStateMachine`.
    #
    #   `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel`
    #
    #   <note markdown="1"> If you provide a qualified state machine ARN that refers to a
    #   *Distributed Map state*, the request fails with
    #   `ValidationException`.
    #
    #    </note>
    #
    # * The following unqualified state machine ARN refers to a state
    #   machine named `myStateMachine`.
    #
    #   `arn:partition:states:region:account-id:stateMachine:myStateMachine`
    #
    # This API action also deletes all [versions][1] and [aliases][2]
    # associated with a state machine.
    #
    # <note markdown="1"> For `EXPRESS` state machines, the deletion happens eventually (usually
    # in less than a minute). Running executions may emit logs after
    # `DeleteStateMachine` API is called.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
    # [2]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
    #
    # @option params [required, String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_state_machine({
    #     state_machine_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteStateMachine AWS API Documentation
    #
    # @overload delete_state_machine(params = {})
    # @param [Hash] params ({})
    def delete_state_machine(params = {}, options = {})
      req = build_request(:delete_state_machine, params)
      req.send_request(options)
    end

    # Deletes a state machine [alias][1].
    #
    # After you delete a state machine alias, you can't use it to start
    # executions. When you delete a state machine alias, Step Functions
    # doesn't delete the state machine versions that alias references.
    #
    # **Related operations:**
    #
    # * CreateStateMachineAlias
    #
    # * DescribeStateMachineAlias
    #
    # * ListStateMachineAliases
    #
    # * UpdateStateMachineAlias
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
    #
    # @option params [required, String] :state_machine_alias_arn
    #   The Amazon Resource Name (ARN) of the state machine alias to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_state_machine_alias({
    #     state_machine_alias_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteStateMachineAlias AWS API Documentation
    #
    # @overload delete_state_machine_alias(params = {})
    # @param [Hash] params ({})
    def delete_state_machine_alias(params = {}, options = {})
      req = build_request(:delete_state_machine_alias, params)
      req.send_request(options)
    end

    # Deletes a state machine [version][1]. After you delete a version, you
    # can't call StartExecution using that version's ARN or use the
    # version with a state machine [alias][2].
    #
    # <note markdown="1"> Deleting a state machine version won't terminate its in-progress
    # executions.
    #
    #  </note>
    #
    # <note markdown="1"> You can't delete a state machine version currently referenced by one
    # or more aliases. Before you delete a version, you must either delete
    # the aliases or update them to point to another state machine version.
    #
    #  </note>
    #
    # **Related operations:**
    #
    # * PublishStateMachineVersion
    #
    # * ListStateMachineVersions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
    # [2]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
    #
    # @option params [required, String] :state_machine_version_arn
    #   The Amazon Resource Name (ARN) of the state machine version to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_state_machine_version({
    #     state_machine_version_arn: "LongArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteStateMachineVersion AWS API Documentation
    #
    # @overload delete_state_machine_version(params = {})
    # @param [Hash] params ({})
    def delete_state_machine_version(params = {}, options = {})
      req = build_request(:delete_state_machine_version, params)
      req.send_request(options)
    end

    # Describes an activity.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [required, String] :activity_arn
    #   The Amazon Resource Name (ARN) of the activity to describe.
    #
    # @return [Types::DescribeActivityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeActivityOutput#activity_arn #activity_arn} => String
    #   * {Types::DescribeActivityOutput#name #name} => String
    #   * {Types::DescribeActivityOutput#creation_date #creation_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_activity({
    #     activity_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.activity_arn #=> String
    #   resp.name #=> String
    #   resp.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeActivity AWS API Documentation
    #
    # @overload describe_activity(params = {})
    # @param [Hash] params ({})
    def describe_activity(params = {}, options = {})
      req = build_request(:describe_activity, params)
      req.send_request(options)
    end

    # Provides information about a state machine execution, such as the
    # state machine associated with the execution, the execution input and
    # output, and relevant execution metadata. Use this API action to return
    # the Map Run Amazon Resource Name (ARN) if the execution was dispatched
    # by a Map Run.
    #
    # If you specify a version or alias ARN when you call the StartExecution
    # API action, `DescribeExecution` returns that ARN.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # Executions of an `EXPRESS` state machinearen't supported by
    # `DescribeExecution` unless a Map Run dispatched them.
    #
    # @option params [required, String] :execution_arn
    #   The Amazon Resource Name (ARN) of the execution to describe.
    #
    # @return [Types::DescribeExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExecutionOutput#execution_arn #execution_arn} => String
    #   * {Types::DescribeExecutionOutput#state_machine_arn #state_machine_arn} => String
    #   * {Types::DescribeExecutionOutput#name #name} => String
    #   * {Types::DescribeExecutionOutput#status #status} => String
    #   * {Types::DescribeExecutionOutput#start_date #start_date} => Time
    #   * {Types::DescribeExecutionOutput#stop_date #stop_date} => Time
    #   * {Types::DescribeExecutionOutput#input #input} => String
    #   * {Types::DescribeExecutionOutput#input_details #input_details} => Types::CloudWatchEventsExecutionDataDetails
    #   * {Types::DescribeExecutionOutput#output #output} => String
    #   * {Types::DescribeExecutionOutput#output_details #output_details} => Types::CloudWatchEventsExecutionDataDetails
    #   * {Types::DescribeExecutionOutput#trace_header #trace_header} => String
    #   * {Types::DescribeExecutionOutput#map_run_arn #map_run_arn} => String
    #   * {Types::DescribeExecutionOutput#error #error} => String
    #   * {Types::DescribeExecutionOutput#cause #cause} => String
    #   * {Types::DescribeExecutionOutput#state_machine_version_arn #state_machine_version_arn} => String
    #   * {Types::DescribeExecutionOutput#state_machine_alias_arn #state_machine_alias_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_execution({
    #     execution_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_arn #=> String
    #   resp.state_machine_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED"
    #   resp.start_date #=> Time
    #   resp.stop_date #=> Time
    #   resp.input #=> String
    #   resp.input_details.included #=> Boolean
    #   resp.output #=> String
    #   resp.output_details.included #=> Boolean
    #   resp.trace_header #=> String
    #   resp.map_run_arn #=> String
    #   resp.error #=> String
    #   resp.cause #=> String
    #   resp.state_machine_version_arn #=> String
    #   resp.state_machine_alias_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeExecution AWS API Documentation
    #
    # @overload describe_execution(params = {})
    # @param [Hash] params ({})
    def describe_execution(params = {}, options = {})
      req = build_request(:describe_execution, params)
      req.send_request(options)
    end

    # Provides information about a Map Run's configuration, progress, and
    # results. For more information, see [Examining Map Run][1] in the *Step
    # Functions Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-examine-map-run.html
    #
    # @option params [required, String] :map_run_arn
    #   The Amazon Resource Name (ARN) that identifies a Map Run.
    #
    # @return [Types::DescribeMapRunOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMapRunOutput#map_run_arn #map_run_arn} => String
    #   * {Types::DescribeMapRunOutput#execution_arn #execution_arn} => String
    #   * {Types::DescribeMapRunOutput#status #status} => String
    #   * {Types::DescribeMapRunOutput#start_date #start_date} => Time
    #   * {Types::DescribeMapRunOutput#stop_date #stop_date} => Time
    #   * {Types::DescribeMapRunOutput#max_concurrency #max_concurrency} => Integer
    #   * {Types::DescribeMapRunOutput#tolerated_failure_percentage #tolerated_failure_percentage} => Float
    #   * {Types::DescribeMapRunOutput#tolerated_failure_count #tolerated_failure_count} => Integer
    #   * {Types::DescribeMapRunOutput#item_counts #item_counts} => Types::MapRunItemCounts
    #   * {Types::DescribeMapRunOutput#execution_counts #execution_counts} => Types::MapRunExecutionCounts
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_map_run({
    #     map_run_arn: "LongArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.map_run_arn #=> String
    #   resp.execution_arn #=> String
    #   resp.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "ABORTED"
    #   resp.start_date #=> Time
    #   resp.stop_date #=> Time
    #   resp.max_concurrency #=> Integer
    #   resp.tolerated_failure_percentage #=> Float
    #   resp.tolerated_failure_count #=> Integer
    #   resp.item_counts.pending #=> Integer
    #   resp.item_counts.running #=> Integer
    #   resp.item_counts.succeeded #=> Integer
    #   resp.item_counts.failed #=> Integer
    #   resp.item_counts.timed_out #=> Integer
    #   resp.item_counts.aborted #=> Integer
    #   resp.item_counts.total #=> Integer
    #   resp.item_counts.results_written #=> Integer
    #   resp.execution_counts.pending #=> Integer
    #   resp.execution_counts.running #=> Integer
    #   resp.execution_counts.succeeded #=> Integer
    #   resp.execution_counts.failed #=> Integer
    #   resp.execution_counts.timed_out #=> Integer
    #   resp.execution_counts.aborted #=> Integer
    #   resp.execution_counts.total #=> Integer
    #   resp.execution_counts.results_written #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeMapRun AWS API Documentation
    #
    # @overload describe_map_run(params = {})
    # @param [Hash] params ({})
    def describe_map_run(params = {}, options = {})
      req = build_request(:describe_map_run, params)
      req.send_request(options)
    end

    # Provides information about a state machine's definition, its IAM role
    # Amazon Resource Name (ARN), and configuration.
    #
    # A qualified state machine ARN can either refer to a *Distributed Map
    # state* defined within a state machine, a version ARN, or an alias ARN.
    #
    # The following are some examples of qualified and unqualified state
    # machine ARNs:
    #
    # * The following qualified state machine ARN refers to a *Distributed
    #   Map state* with a label `mapStateLabel` in a state machine named
    #   `myStateMachine`.
    #
    #   `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel`
    #
    #   <note markdown="1"> If you provide a qualified state machine ARN that refers to a
    #   *Distributed Map state*, the request fails with
    #   `ValidationException`.
    #
    #    </note>
    #
    # * The following qualified state machine ARN refers to an alias named
    #   `PROD`.
    #
    #   `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD>`
    #
    #   <note markdown="1"> If you provide a qualified state machine ARN that refers to a
    #   version ARN or an alias ARN, the request starts execution for that
    #   version or alias.
    #
    #    </note>
    #
    # * The following unqualified state machine ARN refers to a state
    #   machine named `myStateMachine`.
    #
    #   `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine>`
    #
    # This API action returns the details for a state machine version if the
    # `stateMachineArn` you specify is a state machine version ARN.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [required, String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine for which you want
    #   the information.
    #
    #   If you specify a state machine version ARN, this API returns details
    #   about that version. The version ARN is a combination of state machine
    #   ARN and the version number separated by a colon (:). For example,
    #   `stateMachineARN:1`.
    #
    # @return [Types::DescribeStateMachineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStateMachineOutput#state_machine_arn #state_machine_arn} => String
    #   * {Types::DescribeStateMachineOutput#name #name} => String
    #   * {Types::DescribeStateMachineOutput#status #status} => String
    #   * {Types::DescribeStateMachineOutput#definition #definition} => String
    #   * {Types::DescribeStateMachineOutput#role_arn #role_arn} => String
    #   * {Types::DescribeStateMachineOutput#type #type} => String
    #   * {Types::DescribeStateMachineOutput#creation_date #creation_date} => Time
    #   * {Types::DescribeStateMachineOutput#logging_configuration #logging_configuration} => Types::LoggingConfiguration
    #   * {Types::DescribeStateMachineOutput#tracing_configuration #tracing_configuration} => Types::TracingConfiguration
    #   * {Types::DescribeStateMachineOutput#label #label} => String
    #   * {Types::DescribeStateMachineOutput#revision_id #revision_id} => String
    #   * {Types::DescribeStateMachineOutput#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_state_machine({
    #     state_machine_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state_machine_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "ACTIVE", "DELETING"
    #   resp.definition #=> String
    #   resp.role_arn #=> String
    #   resp.type #=> String, one of "STANDARD", "EXPRESS"
    #   resp.creation_date #=> Time
    #   resp.logging_configuration.level #=> String, one of "ALL", "ERROR", "FATAL", "OFF"
    #   resp.logging_configuration.include_execution_data #=> Boolean
    #   resp.logging_configuration.destinations #=> Array
    #   resp.logging_configuration.destinations[0].cloud_watch_logs_log_group.log_group_arn #=> String
    #   resp.tracing_configuration.enabled #=> Boolean
    #   resp.label #=> String
    #   resp.revision_id #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachine AWS API Documentation
    #
    # @overload describe_state_machine(params = {})
    # @param [Hash] params ({})
    def describe_state_machine(params = {}, options = {})
      req = build_request(:describe_state_machine, params)
      req.send_request(options)
    end

    # Returns details about a state machine [alias][1].
    #
    # **Related operations:**
    #
    # * CreateStateMachineAlias
    #
    # * ListStateMachineAliases
    #
    # * UpdateStateMachineAlias
    #
    # * DeleteStateMachineAlias
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
    #
    # @option params [required, String] :state_machine_alias_arn
    #   The Amazon Resource Name (ARN) of the state machine alias.
    #
    # @return [Types::DescribeStateMachineAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStateMachineAliasOutput#state_machine_alias_arn #state_machine_alias_arn} => String
    #   * {Types::DescribeStateMachineAliasOutput#name #name} => String
    #   * {Types::DescribeStateMachineAliasOutput#description #description} => String
    #   * {Types::DescribeStateMachineAliasOutput#routing_configuration #routing_configuration} => Array&lt;Types::RoutingConfigurationListItem&gt;
    #   * {Types::DescribeStateMachineAliasOutput#creation_date #creation_date} => Time
    #   * {Types::DescribeStateMachineAliasOutput#update_date #update_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_state_machine_alias({
    #     state_machine_alias_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state_machine_alias_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.routing_configuration #=> Array
    #   resp.routing_configuration[0].state_machine_version_arn #=> String
    #   resp.routing_configuration[0].weight #=> Integer
    #   resp.creation_date #=> Time
    #   resp.update_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineAlias AWS API Documentation
    #
    # @overload describe_state_machine_alias(params = {})
    # @param [Hash] params ({})
    def describe_state_machine_alias(params = {}, options = {})
      req = build_request(:describe_state_machine_alias, params)
      req.send_request(options)
    end

    # Provides information about a state machine's definition, its
    # execution role ARN, and configuration. If a Map Run dispatched the
    # execution, this action returns the Map Run Amazon Resource Name (ARN)
    # in the response. The state machine returned is the state machine
    # associated with the Map Run.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # This API action is not supported by `EXPRESS` state machines.
    #
    # @option params [required, String] :execution_arn
    #   The Amazon Resource Name (ARN) of the execution you want state machine
    #   information for.
    #
    # @return [Types::DescribeStateMachineForExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStateMachineForExecutionOutput#state_machine_arn #state_machine_arn} => String
    #   * {Types::DescribeStateMachineForExecutionOutput#name #name} => String
    #   * {Types::DescribeStateMachineForExecutionOutput#definition #definition} => String
    #   * {Types::DescribeStateMachineForExecutionOutput#role_arn #role_arn} => String
    #   * {Types::DescribeStateMachineForExecutionOutput#update_date #update_date} => Time
    #   * {Types::DescribeStateMachineForExecutionOutput#logging_configuration #logging_configuration} => Types::LoggingConfiguration
    #   * {Types::DescribeStateMachineForExecutionOutput#tracing_configuration #tracing_configuration} => Types::TracingConfiguration
    #   * {Types::DescribeStateMachineForExecutionOutput#map_run_arn #map_run_arn} => String
    #   * {Types::DescribeStateMachineForExecutionOutput#label #label} => String
    #   * {Types::DescribeStateMachineForExecutionOutput#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_state_machine_for_execution({
    #     execution_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state_machine_arn #=> String
    #   resp.name #=> String
    #   resp.definition #=> String
    #   resp.role_arn #=> String
    #   resp.update_date #=> Time
    #   resp.logging_configuration.level #=> String, one of "ALL", "ERROR", "FATAL", "OFF"
    #   resp.logging_configuration.include_execution_data #=> Boolean
    #   resp.logging_configuration.destinations #=> Array
    #   resp.logging_configuration.destinations[0].cloud_watch_logs_log_group.log_group_arn #=> String
    #   resp.tracing_configuration.enabled #=> Boolean
    #   resp.map_run_arn #=> String
    #   resp.label #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineForExecution AWS API Documentation
    #
    # @overload describe_state_machine_for_execution(params = {})
    # @param [Hash] params ({})
    def describe_state_machine_for_execution(params = {}, options = {})
      req = build_request(:describe_state_machine_for_execution, params)
      req.send_request(options)
    end

    # Used by workers to retrieve a task (with the specified activity ARN)
    # which has been scheduled for execution by a running state machine.
    # This initiates a long poll, where the service holds the HTTP
    # connection open and responds as soon as a task becomes available (i.e.
    # an execution of a task of this type is needed.) The maximum time the
    # service holds on to the request before responding is 60 seconds. If no
    # task is available within 60 seconds, the poll returns a `taskToken`
    # with a null string.
    #
    # <note markdown="1"> This API action isn't logged in CloudTrail.
    #
    #  </note>
    #
    # Workers should set their client side socket timeout to at least 65
    # seconds (5 seconds higher than the maximum time the service may hold
    # the poll request).
    #
    #  Polling with `GetActivityTask` can cause latency in some
    # implementations. See [Avoid Latency When Polling for Activity
    # Tasks][1] in the Step Functions Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html
    #
    # @option params [required, String] :activity_arn
    #   The Amazon Resource Name (ARN) of the activity to retrieve tasks from
    #   (assigned when you create the task using CreateActivity.)
    #
    # @option params [String] :worker_name
    #   You can provide an arbitrary name in order to identify the worker that
    #   the task is assigned to. This name is used when it is logged in the
    #   execution history.
    #
    # @return [Types::GetActivityTaskOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetActivityTaskOutput#task_token #task_token} => String
    #   * {Types::GetActivityTaskOutput#input #input} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_activity_task({
    #     activity_arn: "Arn", # required
    #     worker_name: "Name",
    #   })
    #
    # @example Response structure
    #
    #   resp.task_token #=> String
    #   resp.input #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/GetActivityTask AWS API Documentation
    #
    # @overload get_activity_task(params = {})
    # @param [Hash] params ({})
    def get_activity_task(params = {}, options = {})
      req = build_request(:get_activity_task, params)
      req.send_request(options)
    end

    # Returns the history of the specified execution as a list of events. By
    # default, the results are returned in ascending order of the
    # `timeStamp` of the events. Use the `reverseOrder` parameter to get the
    # latest events first.
    #
    # If `nextToken` is returned, there are more results available. The
    # value of `nextToken` is a unique pagination token for each page. Make
    # the call again using the returned token to retrieve the next page.
    # Keep all other arguments unchanged. Each pagination token expires
    # after 24 hours. Using an expired pagination token will return an *HTTP
    # 400 InvalidToken* error.
    #
    # This API action is not supported by `EXPRESS` state machines.
    #
    # @option params [required, String] :execution_arn
    #   The Amazon Resource Name (ARN) of the execution.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 100 and
    #   the maximum allowed page size is 1000. A value of 0 uses the default.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @option params [Boolean] :reverse_order
    #   Lists events in descending order of their `timeStamp`.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken* error.
    #
    # @option params [Boolean] :include_execution_data
    #   You can select whether execution data (input or output of a history
    #   event) is returned. The default is `true`.
    #
    # @return [Types::GetExecutionHistoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExecutionHistoryOutput#events #events} => Array&lt;Types::HistoryEvent&gt;
    #   * {Types::GetExecutionHistoryOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_execution_history({
    #     execution_arn: "Arn", # required
    #     max_results: 1,
    #     reverse_order: false,
    #     next_token: "PageToken",
    #     include_execution_data: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].timestamp #=> Time
    #   resp.events[0].type #=> String, one of "ActivityFailed", "ActivityScheduled", "ActivityScheduleFailed", "ActivityStarted", "ActivitySucceeded", "ActivityTimedOut", "ChoiceStateEntered", "ChoiceStateExited", "ExecutionAborted", "ExecutionFailed", "ExecutionStarted", "ExecutionSucceeded", "ExecutionTimedOut", "FailStateEntered", "LambdaFunctionFailed", "LambdaFunctionScheduled", "LambdaFunctionScheduleFailed", "LambdaFunctionStarted", "LambdaFunctionStartFailed", "LambdaFunctionSucceeded", "LambdaFunctionTimedOut", "MapIterationAborted", "MapIterationFailed", "MapIterationStarted", "MapIterationSucceeded", "MapStateAborted", "MapStateEntered", "MapStateExited", "MapStateFailed", "MapStateStarted", "MapStateSucceeded", "ParallelStateAborted", "ParallelStateEntered", "ParallelStateExited", "ParallelStateFailed", "ParallelStateStarted", "ParallelStateSucceeded", "PassStateEntered", "PassStateExited", "SucceedStateEntered", "SucceedStateExited", "TaskFailed", "TaskScheduled", "TaskStarted", "TaskStartFailed", "TaskStateAborted", "TaskStateEntered", "TaskStateExited", "TaskSubmitFailed", "TaskSubmitted", "TaskSucceeded", "TaskTimedOut", "WaitStateAborted", "WaitStateEntered", "WaitStateExited", "MapRunAborted", "MapRunFailed", "MapRunStarted", "MapRunSucceeded"
    #   resp.events[0].id #=> Integer
    #   resp.events[0].previous_event_id #=> Integer
    #   resp.events[0].activity_failed_event_details.error #=> String
    #   resp.events[0].activity_failed_event_details.cause #=> String
    #   resp.events[0].activity_schedule_failed_event_details.error #=> String
    #   resp.events[0].activity_schedule_failed_event_details.cause #=> String
    #   resp.events[0].activity_scheduled_event_details.resource #=> String
    #   resp.events[0].activity_scheduled_event_details.input #=> String
    #   resp.events[0].activity_scheduled_event_details.input_details.truncated #=> Boolean
    #   resp.events[0].activity_scheduled_event_details.timeout_in_seconds #=> Integer
    #   resp.events[0].activity_scheduled_event_details.heartbeat_in_seconds #=> Integer
    #   resp.events[0].activity_started_event_details.worker_name #=> String
    #   resp.events[0].activity_succeeded_event_details.output #=> String
    #   resp.events[0].activity_succeeded_event_details.output_details.truncated #=> Boolean
    #   resp.events[0].activity_timed_out_event_details.error #=> String
    #   resp.events[0].activity_timed_out_event_details.cause #=> String
    #   resp.events[0].task_failed_event_details.resource_type #=> String
    #   resp.events[0].task_failed_event_details.resource #=> String
    #   resp.events[0].task_failed_event_details.error #=> String
    #   resp.events[0].task_failed_event_details.cause #=> String
    #   resp.events[0].task_scheduled_event_details.resource_type #=> String
    #   resp.events[0].task_scheduled_event_details.resource #=> String
    #   resp.events[0].task_scheduled_event_details.region #=> String
    #   resp.events[0].task_scheduled_event_details.parameters #=> String
    #   resp.events[0].task_scheduled_event_details.timeout_in_seconds #=> Integer
    #   resp.events[0].task_scheduled_event_details.heartbeat_in_seconds #=> Integer
    #   resp.events[0].task_scheduled_event_details.task_credentials.role_arn #=> String
    #   resp.events[0].task_start_failed_event_details.resource_type #=> String
    #   resp.events[0].task_start_failed_event_details.resource #=> String
    #   resp.events[0].task_start_failed_event_details.error #=> String
    #   resp.events[0].task_start_failed_event_details.cause #=> String
    #   resp.events[0].task_started_event_details.resource_type #=> String
    #   resp.events[0].task_started_event_details.resource #=> String
    #   resp.events[0].task_submit_failed_event_details.resource_type #=> String
    #   resp.events[0].task_submit_failed_event_details.resource #=> String
    #   resp.events[0].task_submit_failed_event_details.error #=> String
    #   resp.events[0].task_submit_failed_event_details.cause #=> String
    #   resp.events[0].task_submitted_event_details.resource_type #=> String
    #   resp.events[0].task_submitted_event_details.resource #=> String
    #   resp.events[0].task_submitted_event_details.output #=> String
    #   resp.events[0].task_submitted_event_details.output_details.truncated #=> Boolean
    #   resp.events[0].task_succeeded_event_details.resource_type #=> String
    #   resp.events[0].task_succeeded_event_details.resource #=> String
    #   resp.events[0].task_succeeded_event_details.output #=> String
    #   resp.events[0].task_succeeded_event_details.output_details.truncated #=> Boolean
    #   resp.events[0].task_timed_out_event_details.resource_type #=> String
    #   resp.events[0].task_timed_out_event_details.resource #=> String
    #   resp.events[0].task_timed_out_event_details.error #=> String
    #   resp.events[0].task_timed_out_event_details.cause #=> String
    #   resp.events[0].execution_failed_event_details.error #=> String
    #   resp.events[0].execution_failed_event_details.cause #=> String
    #   resp.events[0].execution_started_event_details.input #=> String
    #   resp.events[0].execution_started_event_details.input_details.truncated #=> Boolean
    #   resp.events[0].execution_started_event_details.role_arn #=> String
    #   resp.events[0].execution_started_event_details.state_machine_alias_arn #=> String
    #   resp.events[0].execution_started_event_details.state_machine_version_arn #=> String
    #   resp.events[0].execution_succeeded_event_details.output #=> String
    #   resp.events[0].execution_succeeded_event_details.output_details.truncated #=> Boolean
    #   resp.events[0].execution_aborted_event_details.error #=> String
    #   resp.events[0].execution_aborted_event_details.cause #=> String
    #   resp.events[0].execution_timed_out_event_details.error #=> String
    #   resp.events[0].execution_timed_out_event_details.cause #=> String
    #   resp.events[0].map_state_started_event_details.length #=> Integer
    #   resp.events[0].map_iteration_started_event_details.name #=> String
    #   resp.events[0].map_iteration_started_event_details.index #=> Integer
    #   resp.events[0].map_iteration_succeeded_event_details.name #=> String
    #   resp.events[0].map_iteration_succeeded_event_details.index #=> Integer
    #   resp.events[0].map_iteration_failed_event_details.name #=> String
    #   resp.events[0].map_iteration_failed_event_details.index #=> Integer
    #   resp.events[0].map_iteration_aborted_event_details.name #=> String
    #   resp.events[0].map_iteration_aborted_event_details.index #=> Integer
    #   resp.events[0].lambda_function_failed_event_details.error #=> String
    #   resp.events[0].lambda_function_failed_event_details.cause #=> String
    #   resp.events[0].lambda_function_schedule_failed_event_details.error #=> String
    #   resp.events[0].lambda_function_schedule_failed_event_details.cause #=> String
    #   resp.events[0].lambda_function_scheduled_event_details.resource #=> String
    #   resp.events[0].lambda_function_scheduled_event_details.input #=> String
    #   resp.events[0].lambda_function_scheduled_event_details.input_details.truncated #=> Boolean
    #   resp.events[0].lambda_function_scheduled_event_details.timeout_in_seconds #=> Integer
    #   resp.events[0].lambda_function_scheduled_event_details.task_credentials.role_arn #=> String
    #   resp.events[0].lambda_function_start_failed_event_details.error #=> String
    #   resp.events[0].lambda_function_start_failed_event_details.cause #=> String
    #   resp.events[0].lambda_function_succeeded_event_details.output #=> String
    #   resp.events[0].lambda_function_succeeded_event_details.output_details.truncated #=> Boolean
    #   resp.events[0].lambda_function_timed_out_event_details.error #=> String
    #   resp.events[0].lambda_function_timed_out_event_details.cause #=> String
    #   resp.events[0].state_entered_event_details.name #=> String
    #   resp.events[0].state_entered_event_details.input #=> String
    #   resp.events[0].state_entered_event_details.input_details.truncated #=> Boolean
    #   resp.events[0].state_exited_event_details.name #=> String
    #   resp.events[0].state_exited_event_details.output #=> String
    #   resp.events[0].state_exited_event_details.output_details.truncated #=> Boolean
    #   resp.events[0].map_run_started_event_details.map_run_arn #=> String
    #   resp.events[0].map_run_failed_event_details.error #=> String
    #   resp.events[0].map_run_failed_event_details.cause #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/GetExecutionHistory AWS API Documentation
    #
    # @overload get_execution_history(params = {})
    # @param [Hash] params ({})
    def get_execution_history(params = {}, options = {})
      req = build_request(:get_execution_history, params)
      req.send_request(options)
    end

    # Lists the existing activities.
    #
    # If `nextToken` is returned, there are more results available. The
    # value of `nextToken` is a unique pagination token for each page. Make
    # the call again using the returned token to retrieve the next page.
    # Keep all other arguments unchanged. Each pagination token expires
    # after 24 hours. Using an expired pagination token will return an *HTTP
    # 400 InvalidToken* error.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 100 and
    #   the maximum allowed page size is 1000. A value of 0 uses the default.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken* error.
    #
    # @return [Types::ListActivitiesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListActivitiesOutput#activities #activities} => Array&lt;Types::ActivityListItem&gt;
    #   * {Types::ListActivitiesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_activities({
    #     max_results: 1,
    #     next_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.activities #=> Array
    #   resp.activities[0].activity_arn #=> String
    #   resp.activities[0].name #=> String
    #   resp.activities[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListActivities AWS API Documentation
    #
    # @overload list_activities(params = {})
    # @param [Hash] params ({})
    def list_activities(params = {}, options = {})
      req = build_request(:list_activities, params)
      req.send_request(options)
    end

    # Lists all executions of a state machine or a Map Run. You can list all
    # executions related to a state machine by specifying a state machine
    # Amazon Resource Name (ARN), or those related to a Map Run by
    # specifying a Map Run ARN.
    #
    # You can also provide a state machine [alias][1] ARN or [version][2]
    # ARN to list the executions associated with a specific alias or
    # version.
    #
    # Results are sorted by time, with the most recent execution first.
    #
    # If `nextToken` is returned, there are more results available. The
    # value of `nextToken` is a unique pagination token for each page. Make
    # the call again using the returned token to retrieve the next page.
    # Keep all other arguments unchanged. Each pagination token expires
    # after 24 hours. Using an expired pagination token will return an *HTTP
    # 400 InvalidToken* error.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # This API action is not supported by `EXPRESS` state machines.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
    # [2]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
    #
    # @option params [String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine whose executions
    #   is listed.
    #
    #   You can specify either a `mapRunArn` or a `stateMachineArn`, but not
    #   both.
    #
    #   You can also return a list of executions associated with a specific
    #   [alias][1] or [version][2], by specifying an alias ARN or a version
    #   ARN in the `stateMachineArn` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
    #   [2]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
    #
    # @option params [String] :status_filter
    #   If specified, only list the executions whose current execution status
    #   matches the given filter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 100 and
    #   the maximum allowed page size is 1000. A value of 0 uses the default.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken* error.
    #
    # @option params [String] :map_run_arn
    #   The Amazon Resource Name (ARN) of the Map Run that started the child
    #   workflow executions. If the `mapRunArn` field is specified, a list of
    #   all of the child workflow executions started by a Map Run is returned.
    #   For more information, see [Examining Map Run][1] in the *Step
    #   Functions Developer Guide*.
    #
    #   You can specify either a `mapRunArn` or a `stateMachineArn`, but not
    #   both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-examine-map-run.html
    #
    # @return [Types::ListExecutionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExecutionsOutput#executions #executions} => Array&lt;Types::ExecutionListItem&gt;
    #   * {Types::ListExecutionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_executions({
    #     state_machine_arn: "Arn",
    #     status_filter: "RUNNING", # accepts RUNNING, SUCCEEDED, FAILED, TIMED_OUT, ABORTED
    #     max_results: 1,
    #     next_token: "ListExecutionsPageToken",
    #     map_run_arn: "LongArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.executions #=> Array
    #   resp.executions[0].execution_arn #=> String
    #   resp.executions[0].state_machine_arn #=> String
    #   resp.executions[0].name #=> String
    #   resp.executions[0].status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED"
    #   resp.executions[0].start_date #=> Time
    #   resp.executions[0].stop_date #=> Time
    #   resp.executions[0].map_run_arn #=> String
    #   resp.executions[0].item_count #=> Integer
    #   resp.executions[0].state_machine_version_arn #=> String
    #   resp.executions[0].state_machine_alias_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListExecutions AWS API Documentation
    #
    # @overload list_executions(params = {})
    # @param [Hash] params ({})
    def list_executions(params = {}, options = {})
      req = build_request(:list_executions, params)
      req.send_request(options)
    end

    # Lists all Map Runs that were started by a given state machine
    # execution. Use this API action to obtain Map Run ARNs, and then call
    # `DescribeMapRun` to obtain more information, if needed.
    #
    # @option params [required, String] :execution_arn
    #   The Amazon Resource Name (ARN) of the execution for which the Map Runs
    #   must be listed.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 100 and
    #   the maximum allowed page size is 1000. A value of 0 uses the default.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken* error.
    #
    # @return [Types::ListMapRunsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMapRunsOutput#map_runs #map_runs} => Array&lt;Types::MapRunListItem&gt;
    #   * {Types::ListMapRunsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_map_runs({
    #     execution_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.map_runs #=> Array
    #   resp.map_runs[0].execution_arn #=> String
    #   resp.map_runs[0].map_run_arn #=> String
    #   resp.map_runs[0].state_machine_arn #=> String
    #   resp.map_runs[0].start_date #=> Time
    #   resp.map_runs[0].stop_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListMapRuns AWS API Documentation
    #
    # @overload list_map_runs(params = {})
    # @param [Hash] params ({})
    def list_map_runs(params = {}, options = {})
      req = build_request(:list_map_runs, params)
      req.send_request(options)
    end

    # Lists [aliases][1] for a specified state machine ARN. Results are
    # sorted by time, with the most recently created aliases listed first.
    #
    # To list aliases that reference a state machine [version][2], you can
    # specify the version ARN in the `stateMachineArn` parameter.
    #
    # If `nextToken` is returned, there are more results available. The
    # value of `nextToken` is a unique pagination token for each page. Make
    # the call again using the returned token to retrieve the next page.
    # Keep all other arguments unchanged. Each pagination token expires
    # after 24 hours. Using an expired pagination token will return an *HTTP
    # 400 InvalidToken* error.
    #
    # **Related operations:**
    #
    # * CreateStateMachineAlias
    #
    # * DescribeStateMachineAlias
    #
    # * UpdateStateMachineAlias
    #
    # * DeleteStateMachineAlias
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
    # [2]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
    #
    # @option params [required, String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine for which you want
    #   to list aliases.
    #
    #   If you specify a state machine version ARN, this API returns a list of
    #   aliases for that version.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken* error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 100 and
    #   the maximum allowed page size is 1000. A value of 0 uses the default.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @return [Types::ListStateMachineAliasesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStateMachineAliasesOutput#state_machine_aliases #state_machine_aliases} => Array&lt;Types::StateMachineAliasListItem&gt;
    #   * {Types::ListStateMachineAliasesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_state_machine_aliases({
    #     state_machine_arn: "Arn", # required
    #     next_token: "PageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.state_machine_aliases #=> Array
    #   resp.state_machine_aliases[0].state_machine_alias_arn #=> String
    #   resp.state_machine_aliases[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListStateMachineAliases AWS API Documentation
    #
    # @overload list_state_machine_aliases(params = {})
    # @param [Hash] params ({})
    def list_state_machine_aliases(params = {}, options = {})
      req = build_request(:list_state_machine_aliases, params)
      req.send_request(options)
    end

    # Lists [versions][1] for the specified state machine Amazon Resource
    # Name (ARN).
    #
    # The results are sorted in descending order of the version creation
    # time.
    #
    # If `nextToken` is returned, there are more results available. The
    # value of `nextToken` is a unique pagination token for each page. Make
    # the call again using the returned token to retrieve the next page.
    # Keep all other arguments unchanged. Each pagination token expires
    # after 24 hours. Using an expired pagination token will return an *HTTP
    # 400 InvalidToken* error.
    #
    # **Related operations:**
    #
    # * PublishStateMachineVersion
    #
    # * DeleteStateMachineVersion
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
    #
    # @option params [required, String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken* error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 100 and
    #   the maximum allowed page size is 1000. A value of 0 uses the default.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @return [Types::ListStateMachineVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStateMachineVersionsOutput#state_machine_versions #state_machine_versions} => Array&lt;Types::StateMachineVersionListItem&gt;
    #   * {Types::ListStateMachineVersionsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_state_machine_versions({
    #     state_machine_arn: "Arn", # required
    #     next_token: "PageToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.state_machine_versions #=> Array
    #   resp.state_machine_versions[0].state_machine_version_arn #=> String
    #   resp.state_machine_versions[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListStateMachineVersions AWS API Documentation
    #
    # @overload list_state_machine_versions(params = {})
    # @param [Hash] params ({})
    def list_state_machine_versions(params = {}, options = {})
      req = build_request(:list_state_machine_versions, params)
      req.send_request(options)
    end

    # Lists the existing state machines.
    #
    # If `nextToken` is returned, there are more results available. The
    # value of `nextToken` is a unique pagination token for each page. Make
    # the call again using the returned token to retrieve the next page.
    # Keep all other arguments unchanged. Each pagination token expires
    # after 24 hours. Using an expired pagination token will return an *HTTP
    # 400 InvalidToken* error.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 100 and
    #   the maximum allowed page size is 1000. A value of 0 uses the default.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken* error.
    #
    # @return [Types::ListStateMachinesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStateMachinesOutput#state_machines #state_machines} => Array&lt;Types::StateMachineListItem&gt;
    #   * {Types::ListStateMachinesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_state_machines({
    #     max_results: 1,
    #     next_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.state_machines #=> Array
    #   resp.state_machines[0].state_machine_arn #=> String
    #   resp.state_machines[0].name #=> String
    #   resp.state_machines[0].type #=> String, one of "STANDARD", "EXPRESS"
    #   resp.state_machines[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListStateMachines AWS API Documentation
    #
    # @overload list_state_machines(params = {})
    # @param [Hash] params ({})
    def list_state_machines(params = {}, options = {})
      req = build_request(:list_state_machines, params)
      req.send_request(options)
    end

    # List tags for a given resource.
    #
    # Tags may only contain Unicode letters, digits, white space, or these
    # symbols: `_ . : / = + - @`.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the Step Functions state machine or
    #   activity.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates a [version][1] from the current revision of a state machine.
    # Use versions to create immutable snapshots of your state machine. You
    # can start executions from versions either directly or with an alias.
    # To create an alias, use CreateStateMachineAlias.
    #
    # You can publish up to 1000 versions for each state machine. You must
    # manually delete unused versions using the DeleteStateMachineVersion
    # API action.
    #
    # `PublishStateMachineVersion` is an idempotent API. It doesn't create
    # a duplicate state machine version if it already exists for the current
    # revision. Step Functions bases `PublishStateMachineVersion`'s
    # idempotency check on the `stateMachineArn`, `name`, and `revisionId`
    # parameters. Requests with the same parameters return a successful
    # idempotent response. If you don't specify a `revisionId`, Step
    # Functions checks for a previously published version of the state
    # machine's current revision.
    #
    # **Related operations:**
    #
    # * DeleteStateMachineVersion
    #
    # * ListStateMachineVersions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
    #
    # @option params [required, String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine.
    #
    # @option params [String] :revision_id
    #   Only publish the state machine version if the current state machine's
    #   revision ID matches the specified ID.
    #
    #   Use this option to avoid publishing a version if the state machine
    #   changed since you last updated it. If the specified revision ID
    #   doesn't match the state machine's current revision ID, the API
    #   returns `ConflictException`.
    #
    #   <note markdown="1"> To specify an initial revision ID for a state machine with no revision
    #   ID assigned, specify the string `INITIAL` for the `revisionId`
    #   parameter. For example, you can specify a `revisionID` of `INITIAL`
    #   when you create a state machine using the CreateStateMachine API
    #   action.
    #
    #    </note>
    #
    # @option params [String] :description
    #   An optional description of the state machine version.
    #
    # @return [Types::PublishStateMachineVersionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PublishStateMachineVersionOutput#creation_date #creation_date} => Time
    #   * {Types::PublishStateMachineVersionOutput#state_machine_version_arn #state_machine_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_state_machine_version({
    #     state_machine_arn: "Arn", # required
    #     revision_id: "RevisionId",
    #     description: "VersionDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_date #=> Time
    #   resp.state_machine_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/PublishStateMachineVersion AWS API Documentation
    #
    # @overload publish_state_machine_version(params = {})
    # @param [Hash] params ({})
    def publish_state_machine_version(params = {}, options = {})
      req = build_request(:publish_state_machine_version, params)
      req.send_request(options)
    end

    # Used by activity workers and task states using the [callback][1]
    # pattern to report that the task identified by the `taskToken` failed.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token
    #
    # @option params [required, String] :task_token
    #   The token that represents this task. Task tokens are generated by Step
    #   Functions when tasks are assigned to a worker, or in the [context
    #   object][1] when a workflow enters a task state. See
    #   GetActivityTaskOutput$taskToken.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html
    #
    # @option params [String] :error
    #   The error code of the failure.
    #
    # @option params [String] :cause
    #   A more detailed explanation of the cause of the failure.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_task_failure({
    #     task_token: "TaskToken", # required
    #     error: "SensitiveError",
    #     cause: "SensitiveCause",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskFailure AWS API Documentation
    #
    # @overload send_task_failure(params = {})
    # @param [Hash] params ({})
    def send_task_failure(params = {}, options = {})
      req = build_request(:send_task_failure, params)
      req.send_request(options)
    end

    # Used by activity workers and task states using the [callback][1]
    # pattern to report to Step Functions that the task represented by the
    # specified `taskToken` is still making progress. This action resets the
    # `Heartbeat` clock. The `Heartbeat` threshold is specified in the state
    # machine's Amazon States Language definition (`HeartbeatSeconds`).
    # This action does not in itself create an event in the execution
    # history. However, if the task times out, the execution history
    # contains an `ActivityTimedOut` entry for activities, or a
    # `TaskTimedOut` entry for for tasks using the [job run][2] or
    # [callback][1] pattern.
    #
    # <note markdown="1"> The `Timeout` of a task, defined in the state machine's Amazon States
    # Language definition, is its maximum allowed duration, regardless of
    # the number of SendTaskHeartbeat requests received. Use
    # `HeartbeatSeconds` to configure the timeout interval for heartbeats.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token
    # [2]: https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync
    #
    # @option params [required, String] :task_token
    #   The token that represents this task. Task tokens are generated by Step
    #   Functions when tasks are assigned to a worker, or in the [context
    #   object][1] when a workflow enters a task state. See
    #   GetActivityTaskOutput$taskToken.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_task_heartbeat({
    #     task_token: "TaskToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskHeartbeat AWS API Documentation
    #
    # @overload send_task_heartbeat(params = {})
    # @param [Hash] params ({})
    def send_task_heartbeat(params = {}, options = {})
      req = build_request(:send_task_heartbeat, params)
      req.send_request(options)
    end

    # Used by activity workers and task states using the [callback][1]
    # pattern to report that the task identified by the `taskToken`
    # completed successfully.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token
    #
    # @option params [required, String] :task_token
    #   The token that represents this task. Task tokens are generated by Step
    #   Functions when tasks are assigned to a worker, or in the [context
    #   object][1] when a workflow enters a task state. See
    #   GetActivityTaskOutput$taskToken.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html
    #
    # @option params [required, String] :output
    #   The JSON output of the task. Length constraints apply to the payload
    #   size, and are expressed as bytes in UTF-8 encoding.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_task_success({
    #     task_token: "TaskToken", # required
    #     output: "SensitiveData", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskSuccess AWS API Documentation
    #
    # @overload send_task_success(params = {})
    # @param [Hash] params ({})
    def send_task_success(params = {}, options = {})
      req = build_request(:send_task_success, params)
      req.send_request(options)
    end

    # Starts a state machine execution.
    #
    # A qualified state machine ARN can either refer to a *Distributed Map
    # state* defined within a state machine, a version ARN, or an alias ARN.
    #
    # The following are some examples of qualified and unqualified state
    # machine ARNs:
    #
    # * The following qualified state machine ARN refers to a *Distributed
    #   Map state* with a label `mapStateLabel` in a state machine named
    #   `myStateMachine`.
    #
    #   `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel`
    #
    #   <note markdown="1"> If you provide a qualified state machine ARN that refers to a
    #   *Distributed Map state*, the request fails with
    #   `ValidationException`.
    #
    #    </note>
    #
    # * The following qualified state machine ARN refers to an alias named
    #   `PROD`.
    #
    #   `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD>`
    #
    #   <note markdown="1"> If you provide a qualified state machine ARN that refers to a
    #   version ARN or an alias ARN, the request starts execution for that
    #   version or alias.
    #
    #    </note>
    #
    # * The following unqualified state machine ARN refers to a state
    #   machine named `myStateMachine`.
    #
    #   `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine>`
    #
    # If you start an execution with an unqualified state machine ARN, Step
    # Functions uses the latest revision of the state machine for the
    # execution.
    #
    # To start executions of a state machine [version][1], call
    # `StartExecution` and provide the version ARN or the ARN of an
    # [alias][2] that points to the version.
    #
    # <note markdown="1"> `StartExecution` is idempotent for `STANDARD` workflows. For a
    # `STANDARD` workflow, if you call `StartExecution` with the same name
    # and input as a running execution, the call succeeds and return the
    # same response as the original request. If the execution is closed or
    # if the input is different, it returns a `400 ExecutionAlreadyExists`
    # error. You can reuse names after 90 days.
    #
    #  `StartExecution` isn't idempotent for `EXPRESS` workflows.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
    # [2]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
    #
    # @option params [required, String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine to execute.
    #
    #   The `stateMachineArn` parameter accepts one of the following inputs:
    #
    #   * **An unqualified state machine ARN** – Refers to a state machine ARN
    #     that isn't qualified with a version or alias ARN. The following is
    #     an example of an unqualified state machine ARN.
    #
    #     `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine>`
    #
    #     Step Functions doesn't associate state machine executions that you
    #     start with an unqualified ARN with a version. This is true even if
    #     that version uses the same revision that the execution used.
    #
    #   * **A state machine version ARN** – Refers to a version ARN, which is
    #     a combination of state machine ARN and the version number separated
    #     by a colon (:). The following is an example of the ARN for version
    #     10.
    #
    #     `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine>:10`
    #
    #     Step Functions doesn't associate executions that you start with a
    #     version ARN with any aliases that point to that version.
    #
    #   * **A state machine alias ARN** – Refers to an alias ARN, which is a
    #     combination of state machine ARN and the alias name separated by a
    #     colon (:). The following is an example of the ARN for an alias named
    #     `PROD`.
    #
    #     `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD>`
    #
    #     Step Functions associates executions that you start with an alias
    #     ARN with that alias and the state machine version used for that
    #     execution.
    #
    # @option params [String] :name
    #   Optional name of the execution. This name must be unique for your
    #   Amazon Web Services account, Region, and state machine for 90 days.
    #   For more information, see [ Limits Related to State Machine
    #   Executions][1] in the *Step Functions Developer Guide*.
    #
    #   A name must *not* contain:
    #
    #   * white space
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #   To enable logging with CloudWatch Logs, the name should only contain
    #   0-9, A-Z, a-z, - and \_.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions
    #
    # @option params [String] :input
    #   The string that contains the JSON input data for the execution, for
    #   example:
    #
    #   `"input": "\{"first_name" : "test"\}"`
    #
    #   <note markdown="1"> If you don't include any JSON input data, you still must include the
    #   two braces, for example: `"input": "\{\}"`
    #
    #    </note>
    #
    #   Length constraints apply to the payload size, and are expressed as
    #   bytes in UTF-8 encoding.
    #
    # @option params [String] :trace_header
    #   Passes the X-Ray trace header. The trace header can also be passed in
    #   the request payload.
    #
    # @return [Types::StartExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartExecutionOutput#execution_arn #execution_arn} => String
    #   * {Types::StartExecutionOutput#start_date #start_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_execution({
    #     state_machine_arn: "Arn", # required
    #     name: "Name",
    #     input: "SensitiveData",
    #     trace_header: "TraceHeader",
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_arn #=> String
    #   resp.start_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StartExecution AWS API Documentation
    #
    # @overload start_execution(params = {})
    # @param [Hash] params ({})
    def start_execution(params = {}, options = {})
      req = build_request(:start_execution, params)
      req.send_request(options)
    end

    # Starts a Synchronous Express state machine execution.
    # `StartSyncExecution` is not available for `STANDARD` workflows.
    #
    # <note markdown="1"> `StartSyncExecution` will return a `200 OK` response, even if your
    # execution fails, because the status code in the API response doesn't
    # reflect function errors. Error codes are reserved for errors that
    # prevent your execution from running, such as permissions errors, limit
    # errors, or issues with your state machine code and configuration.
    #
    #  </note>
    #
    # <note markdown="1"> This API action isn't logged in CloudTrail.
    #
    #  </note>
    #
    # @option params [required, String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine to execute.
    #
    # @option params [String] :name
    #   The name of the execution.
    #
    # @option params [String] :input
    #   The string that contains the JSON input data for the execution, for
    #   example:
    #
    #   `"input": "\{"first_name" : "test"\}"`
    #
    #   <note markdown="1"> If you don't include any JSON input data, you still must include the
    #   two braces, for example: `"input": "\{\}"`
    #
    #    </note>
    #
    #   Length constraints apply to the payload size, and are expressed as
    #   bytes in UTF-8 encoding.
    #
    # @option params [String] :trace_header
    #   Passes the X-Ray trace header. The trace header can also be passed in
    #   the request payload.
    #
    # @return [Types::StartSyncExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSyncExecutionOutput#execution_arn #execution_arn} => String
    #   * {Types::StartSyncExecutionOutput#state_machine_arn #state_machine_arn} => String
    #   * {Types::StartSyncExecutionOutput#name #name} => String
    #   * {Types::StartSyncExecutionOutput#start_date #start_date} => Time
    #   * {Types::StartSyncExecutionOutput#stop_date #stop_date} => Time
    #   * {Types::StartSyncExecutionOutput#status #status} => String
    #   * {Types::StartSyncExecutionOutput#error #error} => String
    #   * {Types::StartSyncExecutionOutput#cause #cause} => String
    #   * {Types::StartSyncExecutionOutput#input #input} => String
    #   * {Types::StartSyncExecutionOutput#input_details #input_details} => Types::CloudWatchEventsExecutionDataDetails
    #   * {Types::StartSyncExecutionOutput#output #output} => String
    #   * {Types::StartSyncExecutionOutput#output_details #output_details} => Types::CloudWatchEventsExecutionDataDetails
    #   * {Types::StartSyncExecutionOutput#trace_header #trace_header} => String
    #   * {Types::StartSyncExecutionOutput#billing_details #billing_details} => Types::BillingDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_sync_execution({
    #     state_machine_arn: "Arn", # required
    #     name: "Name",
    #     input: "SensitiveData",
    #     trace_header: "TraceHeader",
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_arn #=> String
    #   resp.state_machine_arn #=> String
    #   resp.name #=> String
    #   resp.start_date #=> Time
    #   resp.stop_date #=> Time
    #   resp.status #=> String, one of "SUCCEEDED", "FAILED", "TIMED_OUT"
    #   resp.error #=> String
    #   resp.cause #=> String
    #   resp.input #=> String
    #   resp.input_details.included #=> Boolean
    #   resp.output #=> String
    #   resp.output_details.included #=> Boolean
    #   resp.trace_header #=> String
    #   resp.billing_details.billed_memory_used_in_mb #=> Integer
    #   resp.billing_details.billed_duration_in_milliseconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StartSyncExecution AWS API Documentation
    #
    # @overload start_sync_execution(params = {})
    # @param [Hash] params ({})
    def start_sync_execution(params = {}, options = {})
      req = build_request(:start_sync_execution, params)
      req.send_request(options)
    end

    # Stops an execution.
    #
    # This API action is not supported by `EXPRESS` state machines.
    #
    # @option params [required, String] :execution_arn
    #   The Amazon Resource Name (ARN) of the execution to stop.
    #
    # @option params [String] :error
    #   The error code of the failure.
    #
    # @option params [String] :cause
    #   A more detailed explanation of the cause of the failure.
    #
    # @return [Types::StopExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopExecutionOutput#stop_date #stop_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_execution({
    #     execution_arn: "Arn", # required
    #     error: "SensitiveError",
    #     cause: "SensitiveCause",
    #   })
    #
    # @example Response structure
    #
    #   resp.stop_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StopExecution AWS API Documentation
    #
    # @overload stop_execution(params = {})
    # @param [Hash] params ({})
    def stop_execution(params = {}, options = {})
      req = build_request(:stop_execution, params)
      req.send_request(options)
    end

    # Add a tag to a Step Functions resource.
    #
    # An array of key-value pairs. For more information, see [Using Cost
    # Allocation Tags][1] in the *Amazon Web Services Billing and Cost
    # Management User Guide*, and [Controlling Access Using IAM Tags][2].
    #
    # Tags may only contain Unicode letters, digits, white space, or these
    # symbols: `_ . : / = + - @`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the Step Functions state machine or
    #   activity.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The list of tags to add to a resource.
    #
    #   Tags may only contain Unicode letters, digits, white space, or these
    #   symbols: `_ . : / = + - @`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove a tag from a Step Functions resource
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the Step Functions state machine or
    #   activity.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tags to remove from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an in-progress Map Run's configuration to include changes to
    # the settings that control maximum concurrency and Map Run failure.
    #
    # @option params [required, String] :map_run_arn
    #   The Amazon Resource Name (ARN) of a Map Run.
    #
    # @option params [Integer] :max_concurrency
    #   The maximum number of child workflow executions that can be specified
    #   to run in parallel for the Map Run at the same time.
    #
    # @option params [Float] :tolerated_failure_percentage
    #   The maximum percentage of failed items before the Map Run fails.
    #
    # @option params [Integer] :tolerated_failure_count
    #   The maximum number of failed items before the Map Run fails.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_map_run({
    #     map_run_arn: "LongArn", # required
    #     max_concurrency: 1,
    #     tolerated_failure_percentage: 1.0,
    #     tolerated_failure_count: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UpdateMapRun AWS API Documentation
    #
    # @overload update_map_run(params = {})
    # @param [Hash] params ({})
    def update_map_run(params = {}, options = {})
      req = build_request(:update_map_run, params)
      req.send_request(options)
    end

    # Updates an existing state machine by modifying its `definition`,
    # `roleArn`, or `loggingConfiguration`. Running executions will continue
    # to use the previous `definition` and `roleArn`. You must include at
    # least one of `definition` or `roleArn` or you will receive a
    # `MissingRequiredParameter` error.
    #
    # A qualified state machine ARN refers to a *Distributed Map state*
    # defined within a state machine. For example, the qualified state
    # machine ARN
    # `arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel`
    # refers to a *Distributed Map state* with a label `mapStateLabel` in
    # the state machine named `stateMachineName`.
    #
    # A qualified state machine ARN can either refer to a *Distributed Map
    # state* defined within a state machine, a version ARN, or an alias ARN.
    #
    # The following are some examples of qualified and unqualified state
    # machine ARNs:
    #
    # * The following qualified state machine ARN refers to a *Distributed
    #   Map state* with a label `mapStateLabel` in a state machine named
    #   `myStateMachine`.
    #
    #   `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel`
    #
    #   <note markdown="1"> If you provide a qualified state machine ARN that refers to a
    #   *Distributed Map state*, the request fails with
    #   `ValidationException`.
    #
    #    </note>
    #
    # * The following qualified state machine ARN refers to an alias named
    #   `PROD`.
    #
    #   `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD>`
    #
    #   <note markdown="1"> If you provide a qualified state machine ARN that refers to a
    #   version ARN or an alias ARN, the request starts execution for that
    #   version or alias.
    #
    #    </note>
    #
    # * The following unqualified state machine ARN refers to a state
    #   machine named `myStateMachine`.
    #
    #   `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine>`
    #
    # After you update your state machine, you can set the `publish`
    # parameter to `true` in the same action to publish a new [version][1].
    # This way, you can opt-in to strict versioning of your state machine.
    #
    # <note markdown="1"> Step Functions assigns monotonically increasing integers for state
    # machine versions, starting at version number 1.
    #
    #  </note>
    #
    # <note markdown="1"> All `StartExecution` calls within a few seconds use the updated
    # `definition` and `roleArn`. Executions started immediately after you
    # call `UpdateStateMachine` may use the previous state machine
    # `definition` and `roleArn`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html
    #
    # @option params [required, String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine.
    #
    # @option params [String] :definition
    #   The Amazon States Language definition of the state machine. See
    #   [Amazon States Language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role of the state machine.
    #
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   Use the `LoggingConfiguration` data type to set CloudWatch Logs
    #   options.
    #
    # @option params [Types::TracingConfiguration] :tracing_configuration
    #   Selects whether X-Ray tracing is enabled.
    #
    # @option params [Boolean] :publish
    #   Specifies whether the state machine version is published. The default
    #   is `false`. To publish a version after updating the state machine, set
    #   `publish` to `true`.
    #
    # @option params [String] :version_description
    #   An optional description of the state machine version to publish.
    #
    #   You can only specify the `versionDescription` parameter if you've set
    #   `publish` to `true`.
    #
    # @return [Types::UpdateStateMachineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStateMachineOutput#update_date #update_date} => Time
    #   * {Types::UpdateStateMachineOutput#revision_id #revision_id} => String
    #   * {Types::UpdateStateMachineOutput#state_machine_version_arn #state_machine_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_state_machine({
    #     state_machine_arn: "Arn", # required
    #     definition: "Definition",
    #     role_arn: "Arn",
    #     logging_configuration: {
    #       level: "ALL", # accepts ALL, ERROR, FATAL, OFF
    #       include_execution_data: false,
    #       destinations: [
    #         {
    #           cloud_watch_logs_log_group: {
    #             log_group_arn: "Arn",
    #           },
    #         },
    #       ],
    #     },
    #     tracing_configuration: {
    #       enabled: false,
    #     },
    #     publish: false,
    #     version_description: "VersionDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.update_date #=> Time
    #   resp.revision_id #=> String
    #   resp.state_machine_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UpdateStateMachine AWS API Documentation
    #
    # @overload update_state_machine(params = {})
    # @param [Hash] params ({})
    def update_state_machine(params = {}, options = {})
      req = build_request(:update_state_machine, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing state machine [alias][1] by
    # modifying its `description` or `routingConfiguration`.
    #
    # You must specify at least one of the `description` or
    # `routingConfiguration` parameters to update a state machine alias.
    #
    # <note markdown="1"> `UpdateStateMachineAlias` is an idempotent API. Step Functions bases
    # the idempotency check on the `stateMachineAliasArn`, `description`,
    # and `routingConfiguration` parameters. Requests with the same
    # parameters return an idempotent response.
    #
    #  </note>
    #
    # <note markdown="1"> This operation is eventually consistent. All StartExecution requests
    # made within a few seconds use the latest alias configuration.
    # Executions started immediately after calling `UpdateStateMachineAlias`
    # may use the previous routing configuration.
    #
    #  </note>
    #
    # **Related operations:**
    #
    # * CreateStateMachineAlias
    #
    # * DescribeStateMachineAlias
    #
    # * ListStateMachineAliases
    #
    # * DeleteStateMachineAlias
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html
    #
    # @option params [required, String] :state_machine_alias_arn
    #   The Amazon Resource Name (ARN) of the state machine alias.
    #
    # @option params [String] :description
    #   A description of the state machine alias.
    #
    # @option params [Array<Types::RoutingConfigurationListItem>] :routing_configuration
    #   The routing configuration of the state machine alias.
    #
    #   An array of `RoutingConfig` objects that specifies up to two state
    #   machine versions that the alias starts executions for.
    #
    # @return [Types::UpdateStateMachineAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStateMachineAliasOutput#update_date #update_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_state_machine_alias({
    #     state_machine_alias_arn: "Arn", # required
    #     description: "AliasDescription",
    #     routing_configuration: [
    #       {
    #         state_machine_version_arn: "Arn", # required
    #         weight: 1, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.update_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UpdateStateMachineAlias AWS API Documentation
    #
    # @overload update_state_machine_alias(params = {})
    # @param [Hash] params ({})
    def update_state_machine_alias(params = {}, options = {})
      req = build_request(:update_state_machine_alias, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-states'
      context[:gem_version] = '1.58.0'
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
