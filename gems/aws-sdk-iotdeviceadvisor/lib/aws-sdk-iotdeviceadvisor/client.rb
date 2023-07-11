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

Aws::Plugins::GlobalConfiguration.add_identifier(:iotdeviceadvisor)

module Aws::IoTDeviceAdvisor
  # An API client for IoTDeviceAdvisor.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IoTDeviceAdvisor::Client.new(
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

    @identifier = :iotdeviceadvisor

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
    add_plugin(Aws::IoTDeviceAdvisor::Plugins::Endpoints)

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
    #   @option options [Aws::IoTDeviceAdvisor::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::IoTDeviceAdvisor::EndpointParameters`
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

    # Creates a Device Advisor test suite.
    #
    # Requires permission to access the [CreateSuiteDefinition][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, Types::SuiteDefinitionConfiguration] :suite_definition_configuration
    #   Creates a Device Advisor test suite with suite definition
    #   configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be attached to the suite definition.
    #
    # @return [Types::CreateSuiteDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSuiteDefinitionResponse#suite_definition_id #suite_definition_id} => String
    #   * {Types::CreateSuiteDefinitionResponse#suite_definition_arn #suite_definition_arn} => String
    #   * {Types::CreateSuiteDefinitionResponse#suite_definition_name #suite_definition_name} => String
    #   * {Types::CreateSuiteDefinitionResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_suite_definition({
    #     suite_definition_configuration: { # required
    #       suite_definition_name: "SuiteDefinitionName", # required
    #       devices: [
    #         {
    #           thing_arn: "AmazonResourceName",
    #           certificate_arn: "AmazonResourceName",
    #           device_role_arn: "AmazonResourceName",
    #         },
    #       ],
    #       intended_for_qualification: false,
    #       is_long_duration_test: false,
    #       root_group: "RootGroup", # required
    #       device_permission_role_arn: "AmazonResourceName", # required
    #       protocol: "MqttV3_1_1", # accepts MqttV3_1_1, MqttV5, MqttV3_1_1_OverWebSocket, MqttV5_OverWebSocket
    #     },
    #     tags: {
    #       "String128" => "String256",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.suite_definition_id #=> String
    #   resp.suite_definition_arn #=> String
    #   resp.suite_definition_name #=> String
    #   resp.created_at #=> Time
    #
    # @overload create_suite_definition(params = {})
    # @param [Hash] params ({})
    def create_suite_definition(params = {}, options = {})
      req = build_request(:create_suite_definition, params)
      req.send_request(options)
    end

    # Deletes a Device Advisor test suite.
    #
    # Requires permission to access the [DeleteSuiteDefinition][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :suite_definition_id
    #   Suite definition ID of the test suite to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_suite_definition({
    #     suite_definition_id: "UUID", # required
    #   })
    #
    # @overload delete_suite_definition(params = {})
    # @param [Hash] params ({})
    def delete_suite_definition(params = {}, options = {})
      req = build_request(:delete_suite_definition, params)
      req.send_request(options)
    end

    # Gets information about an Device Advisor endpoint.
    #
    # @option params [String] :thing_arn
    #   The thing ARN of the device. This is an optional parameter.
    #
    # @option params [String] :certificate_arn
    #   The certificate ARN of the device. This is an optional parameter.
    #
    # @option params [String] :device_role_arn
    #   The device role ARN of the device. This is an optional parameter.
    #
    # @option params [String] :authentication_method
    #   The authentication method used during the device connection.
    #
    # @return [Types::GetEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEndpointResponse#endpoint #endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_endpoint({
    #     thing_arn: "AmazonResourceName",
    #     certificate_arn: "AmazonResourceName",
    #     device_role_arn: "AmazonResourceName",
    #     authentication_method: "X509ClientCertificate", # accepts X509ClientCertificate, SignatureVersion4
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint #=> String
    #
    # @overload get_endpoint(params = {})
    # @param [Hash] params ({})
    def get_endpoint(params = {}, options = {})
      req = build_request(:get_endpoint, params)
      req.send_request(options)
    end

    # Gets information about a Device Advisor test suite.
    #
    # Requires permission to access the [GetSuiteDefinition][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :suite_definition_id
    #   Suite definition ID of the test suite to get.
    #
    # @option params [String] :suite_definition_version
    #   Suite definition version of the test suite to get.
    #
    # @return [Types::GetSuiteDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSuiteDefinitionResponse#suite_definition_id #suite_definition_id} => String
    #   * {Types::GetSuiteDefinitionResponse#suite_definition_arn #suite_definition_arn} => String
    #   * {Types::GetSuiteDefinitionResponse#suite_definition_version #suite_definition_version} => String
    #   * {Types::GetSuiteDefinitionResponse#latest_version #latest_version} => String
    #   * {Types::GetSuiteDefinitionResponse#suite_definition_configuration #suite_definition_configuration} => Types::SuiteDefinitionConfiguration
    #   * {Types::GetSuiteDefinitionResponse#created_at #created_at} => Time
    #   * {Types::GetSuiteDefinitionResponse#last_modified_at #last_modified_at} => Time
    #   * {Types::GetSuiteDefinitionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_suite_definition({
    #     suite_definition_id: "UUID", # required
    #     suite_definition_version: "SuiteDefinitionVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.suite_definition_id #=> String
    #   resp.suite_definition_arn #=> String
    #   resp.suite_definition_version #=> String
    #   resp.latest_version #=> String
    #   resp.suite_definition_configuration.suite_definition_name #=> String
    #   resp.suite_definition_configuration.devices #=> Array
    #   resp.suite_definition_configuration.devices[0].thing_arn #=> String
    #   resp.suite_definition_configuration.devices[0].certificate_arn #=> String
    #   resp.suite_definition_configuration.devices[0].device_role_arn #=> String
    #   resp.suite_definition_configuration.intended_for_qualification #=> Boolean
    #   resp.suite_definition_configuration.is_long_duration_test #=> Boolean
    #   resp.suite_definition_configuration.root_group #=> String
    #   resp.suite_definition_configuration.device_permission_role_arn #=> String
    #   resp.suite_definition_configuration.protocol #=> String, one of "MqttV3_1_1", "MqttV5", "MqttV3_1_1_OverWebSocket", "MqttV5_OverWebSocket"
    #   resp.created_at #=> Time
    #   resp.last_modified_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["String128"] #=> String
    #
    # @overload get_suite_definition(params = {})
    # @param [Hash] params ({})
    def get_suite_definition(params = {}, options = {})
      req = build_request(:get_suite_definition, params)
      req.send_request(options)
    end

    # Gets information about a Device Advisor test suite run.
    #
    # Requires permission to access the [GetSuiteRun][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :suite_definition_id
    #   Suite definition ID for the test suite run.
    #
    # @option params [required, String] :suite_run_id
    #   Suite run ID for the test suite run.
    #
    # @return [Types::GetSuiteRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSuiteRunResponse#suite_definition_id #suite_definition_id} => String
    #   * {Types::GetSuiteRunResponse#suite_definition_version #suite_definition_version} => String
    #   * {Types::GetSuiteRunResponse#suite_run_id #suite_run_id} => String
    #   * {Types::GetSuiteRunResponse#suite_run_arn #suite_run_arn} => String
    #   * {Types::GetSuiteRunResponse#suite_run_configuration #suite_run_configuration} => Types::SuiteRunConfiguration
    #   * {Types::GetSuiteRunResponse#test_result #test_result} => Types::TestResult
    #   * {Types::GetSuiteRunResponse#start_time #start_time} => Time
    #   * {Types::GetSuiteRunResponse#end_time #end_time} => Time
    #   * {Types::GetSuiteRunResponse#status #status} => String
    #   * {Types::GetSuiteRunResponse#error_reason #error_reason} => String
    #   * {Types::GetSuiteRunResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_suite_run({
    #     suite_definition_id: "UUID", # required
    #     suite_run_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.suite_definition_id #=> String
    #   resp.suite_definition_version #=> String
    #   resp.suite_run_id #=> String
    #   resp.suite_run_arn #=> String
    #   resp.suite_run_configuration.primary_device.thing_arn #=> String
    #   resp.suite_run_configuration.primary_device.certificate_arn #=> String
    #   resp.suite_run_configuration.primary_device.device_role_arn #=> String
    #   resp.suite_run_configuration.selected_test_list #=> Array
    #   resp.suite_run_configuration.selected_test_list[0] #=> String
    #   resp.suite_run_configuration.parallel_run #=> Boolean
    #   resp.test_result.groups #=> Array
    #   resp.test_result.groups[0].group_id #=> String
    #   resp.test_result.groups[0].group_name #=> String
    #   resp.test_result.groups[0].tests #=> Array
    #   resp.test_result.groups[0].tests[0].test_case_run_id #=> String
    #   resp.test_result.groups[0].tests[0].test_case_definition_id #=> String
    #   resp.test_result.groups[0].tests[0].test_case_definition_name #=> String
    #   resp.test_result.groups[0].tests[0].status #=> String, one of "PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"
    #   resp.test_result.groups[0].tests[0].start_time #=> Time
    #   resp.test_result.groups[0].tests[0].end_time #=> Time
    #   resp.test_result.groups[0].tests[0].log_url #=> String
    #   resp.test_result.groups[0].tests[0].warnings #=> String
    #   resp.test_result.groups[0].tests[0].failure #=> String
    #   resp.test_result.groups[0].tests[0].test_scenarios #=> Array
    #   resp.test_result.groups[0].tests[0].test_scenarios[0].test_case_scenario_id #=> String
    #   resp.test_result.groups[0].tests[0].test_scenarios[0].test_case_scenario_type #=> String, one of "Advanced", "Basic"
    #   resp.test_result.groups[0].tests[0].test_scenarios[0].status #=> String, one of "PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"
    #   resp.test_result.groups[0].tests[0].test_scenarios[0].failure #=> String
    #   resp.test_result.groups[0].tests[0].test_scenarios[0].system_message #=> String
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.status #=> String, one of "PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"
    #   resp.error_reason #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String128"] #=> String
    #
    # @overload get_suite_run(params = {})
    # @param [Hash] params ({})
    def get_suite_run(params = {}, options = {})
      req = build_request(:get_suite_run, params)
      req.send_request(options)
    end

    # Gets a report download link for a successful Device Advisor qualifying
    # test suite run.
    #
    # Requires permission to access the [GetSuiteRunReport][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :suite_definition_id
    #   Suite definition ID of the test suite.
    #
    # @option params [required, String] :suite_run_id
    #   Suite run ID of the test suite run.
    #
    # @return [Types::GetSuiteRunReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSuiteRunReportResponse#qualification_report_download_url #qualification_report_download_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_suite_run_report({
    #     suite_definition_id: "UUID", # required
    #     suite_run_id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.qualification_report_download_url #=> String
    #
    # @overload get_suite_run_report(params = {})
    # @param [Hash] params ({})
    def get_suite_run_report(params = {}, options = {})
      req = build_request(:get_suite_run_report, params)
      req.send_request(options)
    end

    # Lists the Device Advisor test suites you have created.
    #
    # Requires permission to access the [ListSuiteDefinitions][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at once.
    #
    # @option params [String] :next_token
    #   A token used to get the next set of results.
    #
    # @return [Types::ListSuiteDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSuiteDefinitionsResponse#suite_definition_information_list #suite_definition_information_list} => Array&lt;Types::SuiteDefinitionInformation&gt;
    #   * {Types::ListSuiteDefinitionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_suite_definitions({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.suite_definition_information_list #=> Array
    #   resp.suite_definition_information_list[0].suite_definition_id #=> String
    #   resp.suite_definition_information_list[0].suite_definition_name #=> String
    #   resp.suite_definition_information_list[0].default_devices #=> Array
    #   resp.suite_definition_information_list[0].default_devices[0].thing_arn #=> String
    #   resp.suite_definition_information_list[0].default_devices[0].certificate_arn #=> String
    #   resp.suite_definition_information_list[0].default_devices[0].device_role_arn #=> String
    #   resp.suite_definition_information_list[0].intended_for_qualification #=> Boolean
    #   resp.suite_definition_information_list[0].is_long_duration_test #=> Boolean
    #   resp.suite_definition_information_list[0].protocol #=> String, one of "MqttV3_1_1", "MqttV5", "MqttV3_1_1_OverWebSocket", "MqttV5_OverWebSocket"
    #   resp.suite_definition_information_list[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_suite_definitions(params = {})
    # @param [Hash] params ({})
    def list_suite_definitions(params = {}, options = {})
      req = build_request(:list_suite_definitions, params)
      req.send_request(options)
    end

    # Lists runs of the specified Device Advisor test suite. You can list
    # all runs of the test suite, or the runs of a specific version of the
    # test suite.
    #
    # Requires permission to access the [ListSuiteRuns][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :suite_definition_id
    #   Lists the test suite runs of the specified test suite based on suite
    #   definition ID.
    #
    # @option params [String] :suite_definition_version
    #   Must be passed along with `suiteDefinitionId`. Lists the test suite
    #   runs of the specified test suite based on suite definition version.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at once.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next set of results.
    #
    # @return [Types::ListSuiteRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSuiteRunsResponse#suite_runs_list #suite_runs_list} => Array&lt;Types::SuiteRunInformation&gt;
    #   * {Types::ListSuiteRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_suite_runs({
    #     suite_definition_id: "UUID",
    #     suite_definition_version: "SuiteDefinitionVersion",
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.suite_runs_list #=> Array
    #   resp.suite_runs_list[0].suite_definition_id #=> String
    #   resp.suite_runs_list[0].suite_definition_version #=> String
    #   resp.suite_runs_list[0].suite_definition_name #=> String
    #   resp.suite_runs_list[0].suite_run_id #=> String
    #   resp.suite_runs_list[0].created_at #=> Time
    #   resp.suite_runs_list[0].started_at #=> Time
    #   resp.suite_runs_list[0].end_at #=> Time
    #   resp.suite_runs_list[0].status #=> String, one of "PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"
    #   resp.suite_runs_list[0].passed #=> Integer
    #   resp.suite_runs_list[0].failed #=> Integer
    #   resp.next_token #=> String
    #
    # @overload list_suite_runs(params = {})
    # @param [Hash] params ({})
    def list_suite_runs(params = {}, options = {})
      req = build_request(:list_suite_runs, params)
      req.send_request(options)
    end

    # Lists the tags attached to an IoT Device Advisor resource.
    #
    # Requires permission to access the [ListTagsForResource][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN of the IoT Device Advisor resource. This can be
    #   SuiteDefinition ARN or SuiteRun ARN.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
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
    #   resp.tags["String128"] #=> String
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts a Device Advisor test suite run.
    #
    # Requires permission to access the [StartSuiteRun][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :suite_definition_id
    #   Suite definition ID of the test suite.
    #
    # @option params [String] :suite_definition_version
    #   Suite definition version of the test suite.
    #
    # @option params [required, Types::SuiteRunConfiguration] :suite_run_configuration
    #   Suite run configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be attached to the suite run.
    #
    # @return [Types::StartSuiteRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSuiteRunResponse#suite_run_id #suite_run_id} => String
    #   * {Types::StartSuiteRunResponse#suite_run_arn #suite_run_arn} => String
    #   * {Types::StartSuiteRunResponse#created_at #created_at} => Time
    #   * {Types::StartSuiteRunResponse#endpoint #endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_suite_run({
    #     suite_definition_id: "UUID", # required
    #     suite_definition_version: "SuiteDefinitionVersion",
    #     suite_run_configuration: { # required
    #       primary_device: { # required
    #         thing_arn: "AmazonResourceName",
    #         certificate_arn: "AmazonResourceName",
    #         device_role_arn: "AmazonResourceName",
    #       },
    #       selected_test_list: ["UUID"],
    #       parallel_run: false,
    #     },
    #     tags: {
    #       "String128" => "String256",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.suite_run_id #=> String
    #   resp.suite_run_arn #=> String
    #   resp.created_at #=> Time
    #   resp.endpoint #=> String
    #
    # @overload start_suite_run(params = {})
    # @param [Hash] params ({})
    def start_suite_run(params = {}, options = {})
      req = build_request(:start_suite_run, params)
      req.send_request(options)
    end

    # Stops a Device Advisor test suite run that is currently running.
    #
    # Requires permission to access the [StopSuiteRun][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :suite_definition_id
    #   Suite definition ID of the test suite run to be stopped.
    #
    # @option params [required, String] :suite_run_id
    #   Suite run ID of the test suite run to be stopped.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_suite_run({
    #     suite_definition_id: "UUID", # required
    #     suite_run_id: "UUID", # required
    #   })
    #
    # @overload stop_suite_run(params = {})
    # @param [Hash] params ({})
    def stop_suite_run(params = {}, options = {})
      req = build_request(:stop_suite_run, params)
      req.send_request(options)
    end

    # Adds to and modifies existing tags of an IoT Device Advisor resource.
    #
    # Requires permission to access the [TagResource][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN of an IoT Device Advisor resource. This can be
    #   SuiteDefinition ARN or SuiteRun ARN.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to be attached to the IoT Device Advisor resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: { # required
    #       "String128" => "String256",
    #     },
    #   })
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from an IoT Device Advisor resource.
    #
    # Requires permission to access the [UntagResource][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN of an IoT Device Advisor resource. This can be
    #   SuiteDefinition ARN or SuiteRun ARN.
    #
    # @option params [required, Array<String>] :tag_keys
    #   List of tag keys to remove from the IoT Device Advisor resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["String128"], # required
    #   })
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a Device Advisor test suite.
    #
    # Requires permission to access the [UpdateSuiteDefinition][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :suite_definition_id
    #   Suite definition ID of the test suite to be updated.
    #
    # @option params [required, Types::SuiteDefinitionConfiguration] :suite_definition_configuration
    #   Updates a Device Advisor test suite with suite definition
    #   configuration.
    #
    # @return [Types::UpdateSuiteDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSuiteDefinitionResponse#suite_definition_id #suite_definition_id} => String
    #   * {Types::UpdateSuiteDefinitionResponse#suite_definition_arn #suite_definition_arn} => String
    #   * {Types::UpdateSuiteDefinitionResponse#suite_definition_name #suite_definition_name} => String
    #   * {Types::UpdateSuiteDefinitionResponse#suite_definition_version #suite_definition_version} => String
    #   * {Types::UpdateSuiteDefinitionResponse#created_at #created_at} => Time
    #   * {Types::UpdateSuiteDefinitionResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_suite_definition({
    #     suite_definition_id: "UUID", # required
    #     suite_definition_configuration: { # required
    #       suite_definition_name: "SuiteDefinitionName", # required
    #       devices: [
    #         {
    #           thing_arn: "AmazonResourceName",
    #           certificate_arn: "AmazonResourceName",
    #           device_role_arn: "AmazonResourceName",
    #         },
    #       ],
    #       intended_for_qualification: false,
    #       is_long_duration_test: false,
    #       root_group: "RootGroup", # required
    #       device_permission_role_arn: "AmazonResourceName", # required
    #       protocol: "MqttV3_1_1", # accepts MqttV3_1_1, MqttV5, MqttV3_1_1_OverWebSocket, MqttV5_OverWebSocket
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.suite_definition_id #=> String
    #   resp.suite_definition_arn #=> String
    #   resp.suite_definition_name #=> String
    #   resp.suite_definition_version #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #
    # @overload update_suite_definition(params = {})
    # @param [Hash] params ({})
    def update_suite_definition(params = {}, options = {})
      req = build_request(:update_suite_definition, params)
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
      context[:gem_name] = 'aws-sdk-iotdeviceadvisor'
      context[:gem_version] = '1.25.0'
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
