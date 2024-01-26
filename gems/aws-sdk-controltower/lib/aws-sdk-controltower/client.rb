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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:controltower)

module Aws::ControlTower
  # An API client for ControlTower.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ControlTower::Client.new(
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

    @identifier = :controltower

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
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::ControlTower::Plugins::Endpoints)

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
    #   @option options [Aws::ControlTower::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ControlTower::EndpointParameters`
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

    # Creates a new landing zone. This API call starts an asynchronous
    # operation that creates and configures a landing zone, based on the
    # parameters specified in the manifest JSON file.
    #
    # @option params [required, Hash,Array,String,Numeric,Boolean] :manifest
    #   The manifest JSON file is a text file that describes your Amazon Web
    #   Services resources. For examples, review [Launch your landing
    #   zone][1].
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to be applied to the landing zone.
    #
    # @option params [required, String] :version
    #   The landing zone version, for example, 3.0.
    #
    # @return [Types::CreateLandingZoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLandingZoneOutput#arn #arn} => String
    #   * {Types::CreateLandingZoneOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_landing_zone({
    #     manifest: { # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     version: "LandingZoneVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/CreateLandingZone AWS API Documentation
    #
    # @overload create_landing_zone(params = {})
    # @param [Hash] params ({})
    def create_landing_zone(params = {}, options = {})
      req = build_request(:create_landing_zone, params)
      req.send_request(options)
    end

    # Decommissions a landing zone. This API call starts an asynchronous
    # operation that deletes Amazon Web Services Control Tower resources
    # deployed in accounts managed by Amazon Web Services Control Tower.
    #
    # @option params [required, String] :landing_zone_identifier
    #   The unique identifier of the landing zone.
    #
    # @return [Types::DeleteLandingZoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLandingZoneOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_landing_zone({
    #     landing_zone_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DeleteLandingZone AWS API Documentation
    #
    # @overload delete_landing_zone(params = {})
    # @param [Hash] params ({})
    def delete_landing_zone(params = {}, options = {})
      req = build_request(:delete_landing_zone, params)
      req.send_request(options)
    end

    # This API call turns off a control. It starts an asynchronous operation
    # that deletes Amazon Web Services resources on the specified
    # organizational unit and the accounts it contains. The resources will
    # vary according to the control that you specify. For usage examples,
    # see [ *the Amazon Web Services Control Tower User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html
    #
    # @option params [required, String] :control_identifier
    #   The ARN of the control. Only **Strongly recommended** and **Elective**
    #   controls are permitted, with the exception of the **landing zone
    #   Region deny** control. For information on how to find the
    #   `controlIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #
    # @option params [required, String] :target_identifier
    #   The ARN of the organizational unit. For information on how to find the
    #   `targetIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #
    # @return [Types::DisableControlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableControlOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_control({
    #     control_identifier: "ControlIdentifier", # required
    #     target_identifier: "TargetIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DisableControl AWS API Documentation
    #
    # @overload disable_control(params = {})
    # @param [Hash] params ({})
    def disable_control(params = {}, options = {})
      req = build_request(:disable_control, params)
      req.send_request(options)
    end

    # This API call activates a control. It starts an asynchronous operation
    # that creates Amazon Web Services resources on the specified
    # organizational unit and the accounts it contains. The resources
    # created will vary according to the control that you specify. For usage
    # examples, see [ *the Amazon Web Services Control Tower User Guide*
    # ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html
    #
    # @option params [required, String] :control_identifier
    #   The ARN of the control. Only **Strongly recommended** and **Elective**
    #   controls are permitted, with the exception of the **landing zone
    #   Region deny** control. For information on how to find the
    #   `controlIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #
    # @option params [Array<Types::EnabledControlParameter>] :parameters
    #   An array of `EnabledControlParameter` objects
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to be applied to the `EnabledControl` resource.
    #
    # @option params [required, String] :target_identifier
    #   The ARN of the organizational unit. For information on how to find the
    #   `targetIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #
    # @return [Types::EnableControlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableControlOutput#arn #arn} => String
    #   * {Types::EnableControlOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_control({
    #     control_identifier: "ControlIdentifier", # required
    #     parameters: [
    #       {
    #         key: "String", # required
    #         value: { # required
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     target_identifier: "TargetIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnableControl AWS API Documentation
    #
    # @overload enable_control(params = {})
    # @param [Hash] params ({})
    def enable_control(params = {}, options = {})
      req = build_request(:enable_control, params)
      req.send_request(options)
    end

    # Returns the status of a particular `EnableControl` or `DisableControl`
    # operation. Displays a message in case of error. Details for an
    # operation are available for 90 days. For usage examples, see [ *the
    # Amazon Web Services Control Tower User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html
    #
    # @option params [required, String] :operation_identifier
    #   The ID of the asynchronous operation, which is used to track status.
    #   The operation is available for 90 days.
    #
    # @return [Types::GetControlOperationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetControlOperationOutput#control_operation #control_operation} => Types::ControlOperation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_control_operation({
    #     operation_identifier: "OperationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.control_operation.end_time #=> Time
    #   resp.control_operation.operation_type #=> String, one of "ENABLE_CONTROL", "DISABLE_CONTROL", "UPDATE_ENABLED_CONTROL"
    #   resp.control_operation.start_time #=> Time
    #   resp.control_operation.status #=> String, one of "SUCCEEDED", "FAILED", "IN_PROGRESS"
    #   resp.control_operation.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetControlOperation AWS API Documentation
    #
    # @overload get_control_operation(params = {})
    # @param [Hash] params ({})
    def get_control_operation(params = {}, options = {})
      req = build_request(:get_control_operation, params)
      req.send_request(options)
    end

    # Retrieves details about an enabled control. For usage examples, see [
    # *the Amazon Web Services Control Tower User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html
    #
    # @option params [required, String] :enabled_control_identifier
    #   The `controlIdentifier` of the enabled control.
    #
    # @return [Types::GetEnabledControlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnabledControlOutput#enabled_control_details #enabled_control_details} => Types::EnabledControlDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_enabled_control({
    #     enabled_control_identifier: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.enabled_control_details.arn #=> String
    #   resp.enabled_control_details.control_identifier #=> String
    #   resp.enabled_control_details.drift_status_summary.drift_status #=> String, one of "DRIFTED", "IN_SYNC", "NOT_CHECKING", "UNKNOWN"
    #   resp.enabled_control_details.parameters #=> Array
    #   resp.enabled_control_details.parameters[0].key #=> String
    #   resp.enabled_control_details.status_summary.last_operation_identifier #=> String
    #   resp.enabled_control_details.status_summary.status #=> String, one of "SUCCEEDED", "FAILED", "UNDER_CHANGE"
    #   resp.enabled_control_details.target_identifier #=> String
    #   resp.enabled_control_details.target_regions #=> Array
    #   resp.enabled_control_details.target_regions[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetEnabledControl AWS API Documentation
    #
    # @overload get_enabled_control(params = {})
    # @param [Hash] params ({})
    def get_enabled_control(params = {}, options = {})
      req = build_request(:get_enabled_control, params)
      req.send_request(options)
    end

    # Returns details about the landing zone. Displays a message in case of
    # error.
    #
    # @option params [required, String] :landing_zone_identifier
    #   The unique identifier of the landing zone.
    #
    # @return [Types::GetLandingZoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLandingZoneOutput#landing_zone #landing_zone} => Types::LandingZoneDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_landing_zone({
    #     landing_zone_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.landing_zone.arn #=> String
    #   resp.landing_zone.drift_status.status #=> String, one of "DRIFTED", "IN_SYNC"
    #   resp.landing_zone.latest_available_version #=> String
    #   resp.landing_zone.status #=> String, one of "ACTIVE", "PROCESSING", "FAILED"
    #   resp.landing_zone.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetLandingZone AWS API Documentation
    #
    # @overload get_landing_zone(params = {})
    # @param [Hash] params ({})
    def get_landing_zone(params = {}, options = {})
      req = build_request(:get_landing_zone, params)
      req.send_request(options)
    end

    # Returns the status of the specified landing zone operation. Details
    # for an operation are available for 60 days.
    #
    # @option params [required, String] :operation_identifier
    #   A unique identifier assigned to a landing zone operation.
    #
    # @return [Types::GetLandingZoneOperationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLandingZoneOperationOutput#operation_details #operation_details} => Types::LandingZoneOperationDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_landing_zone_operation({
    #     operation_identifier: "OperationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_details.end_time #=> Time
    #   resp.operation_details.operation_type #=> String, one of "DELETE", "CREATE", "UPDATE", "RESET"
    #   resp.operation_details.start_time #=> Time
    #   resp.operation_details.status #=> String, one of "SUCCEEDED", "FAILED", "IN_PROGRESS"
    #   resp.operation_details.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetLandingZoneOperation AWS API Documentation
    #
    # @overload get_landing_zone_operation(params = {})
    # @param [Hash] params ({})
    def get_landing_zone_operation(params = {}, options = {})
      req = build_request(:get_landing_zone_operation, params)
      req.send_request(options)
    end

    # Lists the controls enabled by Amazon Web Services Control Tower on the
    # specified organizational unit and the accounts it contains. For usage
    # examples, see [ *the Amazon Web Services Control Tower User Guide*
    # ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html
    #
    # @option params [Integer] :max_results
    #   How many results to return per API call.
    #
    # @option params [String] :next_token
    #   The token to continue the list from a previous API call with the same
    #   parameters.
    #
    # @option params [required, String] :target_identifier
    #   The ARN of the organizational unit. For information on how to find the
    #   `targetIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #
    # @return [Types::ListEnabledControlsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnabledControlsOutput#enabled_controls #enabled_controls} => Array&lt;Types::EnabledControlSummary&gt;
    #   * {Types::ListEnabledControlsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_enabled_controls({
    #     max_results: 1,
    #     next_token: "String",
    #     target_identifier: "TargetIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.enabled_controls #=> Array
    #   resp.enabled_controls[0].arn #=> String
    #   resp.enabled_controls[0].control_identifier #=> String
    #   resp.enabled_controls[0].drift_status_summary.drift_status #=> String, one of "DRIFTED", "IN_SYNC", "NOT_CHECKING", "UNKNOWN"
    #   resp.enabled_controls[0].status_summary.last_operation_identifier #=> String
    #   resp.enabled_controls[0].status_summary.status #=> String, one of "SUCCEEDED", "FAILED", "UNDER_CHANGE"
    #   resp.enabled_controls[0].target_identifier #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListEnabledControls AWS API Documentation
    #
    # @overload list_enabled_controls(params = {})
    # @param [Hash] params ({})
    def list_enabled_controls(params = {}, options = {})
      req = build_request(:list_enabled_controls, params)
      req.send_request(options)
    end

    # Returns the landing zone ARN for the landing zone deployed in your
    # managed account. This API also creates an ARN for existing accounts
    # that do not yet have a landing zone ARN.
    #
    # Returns one landing zone ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of returned landing zone ARNs, which is one.
    #
    # @option params [String] :next_token
    #   The token to continue the list from a previous API call with the same
    #   parameters.
    #
    # @return [Types::ListLandingZonesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLandingZonesOutput#landing_zones #landing_zones} => Array&lt;Types::LandingZoneSummary&gt;
    #   * {Types::ListLandingZonesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_landing_zones({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.landing_zones #=> Array
    #   resp.landing_zones[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListLandingZones AWS API Documentation
    #
    # @overload list_landing_zones(params = {})
    # @param [Hash] params ({})
    def list_landing_zones(params = {}, options = {})
      req = build_request(:list_landing_zones, params)
      req.send_request(options)
    end

    # Returns a list of tags associated with the resource. For usage
    # examples, see [ *the Amazon Web Services Control Tower User Guide*
    # ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # This API call resets a landing zone. It starts an asynchronous
    # operation that resets the landing zone to the parameters specified in
    # its original configuration.
    #
    # @option params [required, String] :landing_zone_identifier
    #   The unique identifier of the landing zone.
    #
    # @return [Types::ResetLandingZoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetLandingZoneOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_landing_zone({
    #     landing_zone_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ResetLandingZone AWS API Documentation
    #
    # @overload reset_landing_zone(params = {})
    # @param [Hash] params ({})
    def reset_landing_zone(params = {}, options = {})
      req = build_request(:reset_landing_zone, params)
      req.send_request(options)
    end

    # Applies tags to a resource. For usage examples, see [ *the Amazon Web
    # Services Control Tower User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be tagged.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tags to be applied to the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource. For usage examples, see [ *the Amazon
    # Web Services Control Tower User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Tag keys to be removed from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of an already enabled control.
    #
    # If the enabled control shows an `EnablementStatus` of SUCCEEDED,
    # supply parameters that are different from the currently configured
    # parameters. Otherwise, Amazon Web Services Control Tower will not
    # accept the request.
    #
    # If the enabled control shows an `EnablementStatus` of FAILED, Amazon
    # Web Services Control Tower will update the control to match any valid
    # parameters that you supply.
    #
    # If the `DriftSummary` status for the control shows as DRIFTED, you
    # cannot call this API. Instead, you can update the control by calling
    # `DisableControl` and again calling `EnableControl`, or you can run an
    # extending governance operation. For usage examples, see [ *the Amazon
    # Web Services Control Tower User Guide* ][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html
    #
    # @option params [required, String] :enabled_control_identifier
    #   The ARN of the enabled control that will be updated.
    #
    # @option params [required, Array<Types::EnabledControlParameter>] :parameters
    #   A key/value pair, where `Key` is of type `String` and `Value` is of
    #   type `Document`.
    #
    # @return [Types::UpdateEnabledControlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnabledControlOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_enabled_control({
    #     enabled_control_identifier: "Arn", # required
    #     parameters: [ # required
    #       {
    #         key: "String", # required
    #         value: { # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UpdateEnabledControl AWS API Documentation
    #
    # @overload update_enabled_control(params = {})
    # @param [Hash] params ({})
    def update_enabled_control(params = {}, options = {})
      req = build_request(:update_enabled_control, params)
      req.send_request(options)
    end

    # This API call updates the landing zone. It starts an asynchronous
    # operation that updates the landing zone based on the new landing zone
    # version, or on the changed parameters specified in the updated
    # manifest file.
    #
    # @option params [required, String] :landing_zone_identifier
    #   The unique identifier of the landing zone.
    #
    # @option params [required, Hash,Array,String,Numeric,Boolean] :manifest
    #   The manifest JSON file is a text file that describes your Amazon Web
    #   Services resources. For examples, review [Launch your landing
    #   zone][1].
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch
    #
    # @option params [required, String] :version
    #   The landing zone version, for example, 3.2.
    #
    # @return [Types::UpdateLandingZoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLandingZoneOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_landing_zone({
    #     landing_zone_identifier: "String", # required
    #     manifest: { # required
    #     },
    #     version: "LandingZoneVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UpdateLandingZone AWS API Documentation
    #
    # @overload update_landing_zone(params = {})
    # @param [Hash] params ({})
    def update_landing_zone(params = {}, options = {})
      req = build_request(:update_landing_zone, params)
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
      context[:gem_name] = 'aws-sdk-controltower'
      context[:gem_version] = '1.17.0'
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
