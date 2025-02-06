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

module Aws::SSMQuickSetup
  # An API client for SSMQuickSetup.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SSMQuickSetup::Client.new(
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

    @identifier = :ssmquicksetup

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
    add_plugin(Aws::SSMQuickSetup::Plugins::Endpoints)

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
    #   @option options [Aws::SSMQuickSetup::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::SSMQuickSetup::EndpointParameters`.
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

    # Creates a Quick Setup configuration manager resource. This object is a
    # collection of desired state configurations for multiple configuration
    # definitions and summaries describing the deployments of those
    # definitions.
    #
    # @option params [required, Array<Types::ConfigurationDefinitionInput>] :configuration_definitions
    #   The definition of the Quick Setup configuration that the configuration
    #   manager deploys.
    #
    # @option params [String] :description
    #   A description of the configuration manager.
    #
    # @option params [String] :name
    #   A name for the configuration manager.
    #
    # @option params [Hash<String,String>] :tags
    #   Key-value pairs of metadata to assign to the configuration manager.
    #
    # @return [Types::CreateConfigurationManagerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfigurationManagerOutput#manager_arn #manager_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_manager({
    #     configuration_definitions: [ # required
    #       {
    #         local_deployment_administration_role_arn: "IAMRoleArn",
    #         local_deployment_execution_role_name: "ConfigurationDefinitionInputLocalDeploymentExecutionRoleNameString",
    #         parameters: { # required
    #           "ConfigurationParametersMapKeyString" => "ConfigurationParametersMapValueString",
    #         },
    #         type: "ConfigurationDefinitionInputTypeString", # required
    #         type_version: "ConfigurationDefinitionInputTypeVersionString",
    #       },
    #     ],
    #     description: "CreateConfigurationManagerInputDescriptionString",
    #     name: "CreateConfigurationManagerInputNameString",
    #     tags: {
    #       "TagsMapKeyString" => "TagsMapValueString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.manager_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/CreateConfigurationManager AWS API Documentation
    #
    # @overload create_configuration_manager(params = {})
    # @param [Hash] params ({})
    def create_configuration_manager(params = {}, options = {})
      req = build_request(:create_configuration_manager, params)
      req.send_request(options)
    end

    # Deletes a configuration manager.
    #
    # @option params [required, String] :manager_arn
    #   The ID of the configuration manager.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_manager({
    #     manager_arn: "DeleteConfigurationManagerInputManagerArnString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/DeleteConfigurationManager AWS API Documentation
    #
    # @overload delete_configuration_manager(params = {})
    # @param [Hash] params ({})
    def delete_configuration_manager(params = {}, options = {})
      req = build_request(:delete_configuration_manager, params)
      req.send_request(options)
    end

    # Returns details about the specified configuration.
    #
    # @option params [required, String] :configuration_id
    #   A service generated identifier for the configuration.
    #
    # @return [Types::GetConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigurationOutput#account #account} => String
    #   * {Types::GetConfigurationOutput#configuration_definition_id #configuration_definition_id} => String
    #   * {Types::GetConfigurationOutput#created_at #created_at} => Time
    #   * {Types::GetConfigurationOutput#id #id} => String
    #   * {Types::GetConfigurationOutput#last_modified_at #last_modified_at} => Time
    #   * {Types::GetConfigurationOutput#manager_arn #manager_arn} => String
    #   * {Types::GetConfigurationOutput#parameters #parameters} => Hash&lt;String,String&gt;
    #   * {Types::GetConfigurationOutput#region #region} => String
    #   * {Types::GetConfigurationOutput#status_summaries #status_summaries} => Array&lt;Types::StatusSummary&gt;
    #   * {Types::GetConfigurationOutput#type #type} => String
    #   * {Types::GetConfigurationOutput#type_version #type_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration({
    #     configuration_id: "GetConfigurationInputConfigurationIdString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account #=> String
    #   resp.configuration_definition_id #=> String
    #   resp.created_at #=> Time
    #   resp.id #=> String
    #   resp.last_modified_at #=> Time
    #   resp.manager_arn #=> String
    #   resp.parameters #=> Hash
    #   resp.parameters["ConfigurationParametersMapKeyString"] #=> String
    #   resp.region #=> String
    #   resp.status_summaries #=> Array
    #   resp.status_summaries[0].last_updated_at #=> Time
    #   resp.status_summaries[0].status #=> String, one of "INITIALIZING", "DEPLOYING", "SUCCEEDED", "DELETING", "STOPPING", "FAILED", "STOPPED", "DELETE_FAILED", "STOP_FAILED", "NONE"
    #   resp.status_summaries[0].status_details #=> Hash
    #   resp.status_summaries[0].status_details["String"] #=> String
    #   resp.status_summaries[0].status_message #=> String
    #   resp.status_summaries[0].status_type #=> String, one of "Deployment", "AsyncExecutions"
    #   resp.type #=> String
    #   resp.type_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/GetConfiguration AWS API Documentation
    #
    # @overload get_configuration(params = {})
    # @param [Hash] params ({})
    def get_configuration(params = {}, options = {})
      req = build_request(:get_configuration, params)
      req.send_request(options)
    end

    # Returns a configuration manager.
    #
    # @option params [required, String] :manager_arn
    #   The ARN of the configuration manager.
    #
    # @return [Types::GetConfigurationManagerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigurationManagerOutput#configuration_definitions #configuration_definitions} => Array&lt;Types::ConfigurationDefinition&gt;
    #   * {Types::GetConfigurationManagerOutput#created_at #created_at} => Time
    #   * {Types::GetConfigurationManagerOutput#description #description} => String
    #   * {Types::GetConfigurationManagerOutput#last_modified_at #last_modified_at} => Time
    #   * {Types::GetConfigurationManagerOutput#manager_arn #manager_arn} => String
    #   * {Types::GetConfigurationManagerOutput#name #name} => String
    #   * {Types::GetConfigurationManagerOutput#status_summaries #status_summaries} => Array&lt;Types::StatusSummary&gt;
    #   * {Types::GetConfigurationManagerOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_manager({
    #     manager_arn: "GetConfigurationManagerInputManagerArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_definitions #=> Array
    #   resp.configuration_definitions[0].id #=> String
    #   resp.configuration_definitions[0].local_deployment_administration_role_arn #=> String
    #   resp.configuration_definitions[0].local_deployment_execution_role_name #=> String
    #   resp.configuration_definitions[0].parameters #=> Hash
    #   resp.configuration_definitions[0].parameters["ConfigurationParametersMapKeyString"] #=> String
    #   resp.configuration_definitions[0].type #=> String
    #   resp.configuration_definitions[0].type_version #=> String
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.last_modified_at #=> Time
    #   resp.manager_arn #=> String
    #   resp.name #=> String
    #   resp.status_summaries #=> Array
    #   resp.status_summaries[0].last_updated_at #=> Time
    #   resp.status_summaries[0].status #=> String, one of "INITIALIZING", "DEPLOYING", "SUCCEEDED", "DELETING", "STOPPING", "FAILED", "STOPPED", "DELETE_FAILED", "STOP_FAILED", "NONE"
    #   resp.status_summaries[0].status_details #=> Hash
    #   resp.status_summaries[0].status_details["String"] #=> String
    #   resp.status_summaries[0].status_message #=> String
    #   resp.status_summaries[0].status_type #=> String, one of "Deployment", "AsyncExecutions"
    #   resp.tags #=> Hash
    #   resp.tags["TagsMapKeyString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/GetConfigurationManager AWS API Documentation
    #
    # @overload get_configuration_manager(params = {})
    # @param [Hash] params ({})
    def get_configuration_manager(params = {}, options = {})
      req = build_request(:get_configuration_manager, params)
      req.send_request(options)
    end

    # Returns settings configured for Quick Setup in the requesting Amazon
    # Web Services account and Amazon Web Services Region.
    #
    # @return [Types::GetServiceSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceSettingsOutput#service_settings #service_settings} => Types::ServiceSettings
    #
    # @example Response structure
    #
    #   resp.service_settings.explorer_enabling_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/GetServiceSettings AWS API Documentation
    #
    # @overload get_service_settings(params = {})
    # @param [Hash] params ({})
    def get_service_settings(params = {}, options = {})
      req = build_request(:get_service_settings, params)
      req.send_request(options)
    end

    # Returns Quick Setup configuration managers.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters the results returned by the request.
    #
    # @option params [Integer] :max_items
    #   Specifies the maximum number of configuration managers that are
    #   returned by the request.
    #
    # @option params [String] :starting_token
    #   The token to use when requesting a specific set of items from a list.
    #
    # @return [Types::ListConfigurationManagersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationManagersOutput#configuration_managers_list #configuration_managers_list} => Array&lt;Types::ConfigurationManagerSummary&gt;
    #   * {Types::ListConfigurationManagersOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_managers({
    #     filters: [
    #       {
    #         key: "FilterKeyString", # required
    #         values: ["FilterValuesMemberString"], # required
    #       },
    #     ],
    #     max_items: 1,
    #     starting_token: "ListConfigurationManagersInputStartingTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_managers_list #=> Array
    #   resp.configuration_managers_list[0].configuration_definition_summaries #=> Array
    #   resp.configuration_managers_list[0].configuration_definition_summaries[0].first_class_parameters #=> Hash
    #   resp.configuration_managers_list[0].configuration_definition_summaries[0].first_class_parameters["ConfigurationParametersMapKeyString"] #=> String
    #   resp.configuration_managers_list[0].configuration_definition_summaries[0].id #=> String
    #   resp.configuration_managers_list[0].configuration_definition_summaries[0].type #=> String
    #   resp.configuration_managers_list[0].configuration_definition_summaries[0].type_version #=> String
    #   resp.configuration_managers_list[0].description #=> String
    #   resp.configuration_managers_list[0].manager_arn #=> String
    #   resp.configuration_managers_list[0].name #=> String
    #   resp.configuration_managers_list[0].status_summaries #=> Array
    #   resp.configuration_managers_list[0].status_summaries[0].last_updated_at #=> Time
    #   resp.configuration_managers_list[0].status_summaries[0].status #=> String, one of "INITIALIZING", "DEPLOYING", "SUCCEEDED", "DELETING", "STOPPING", "FAILED", "STOPPED", "DELETE_FAILED", "STOP_FAILED", "NONE"
    #   resp.configuration_managers_list[0].status_summaries[0].status_details #=> Hash
    #   resp.configuration_managers_list[0].status_summaries[0].status_details["String"] #=> String
    #   resp.configuration_managers_list[0].status_summaries[0].status_message #=> String
    #   resp.configuration_managers_list[0].status_summaries[0].status_type #=> String, one of "Deployment", "AsyncExecutions"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ListConfigurationManagers AWS API Documentation
    #
    # @overload list_configuration_managers(params = {})
    # @param [Hash] params ({})
    def list_configuration_managers(params = {}, options = {})
      req = build_request(:list_configuration_managers, params)
      req.send_request(options)
    end

    # Returns configurations deployed by Quick Setup in the requesting
    # Amazon Web Services account and Amazon Web Services Region.
    #
    # @option params [String] :configuration_definition_id
    #   The ID of the configuration definition.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filters the results returned by the request.
    #
    # @option params [String] :manager_arn
    #   The ARN of the configuration manager.
    #
    # @option params [Integer] :max_items
    #   Specifies the maximum number of configurations that are returned by
    #   the request.
    #
    # @option params [String] :starting_token
    #   The token to use when requesting a specific set of items from a list.
    #
    # @return [Types::ListConfigurationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationsOutput#configurations_list #configurations_list} => Array&lt;Types::ConfigurationSummary&gt;
    #   * {Types::ListConfigurationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configurations({
    #     configuration_definition_id: "ListConfigurationsInputConfigurationDefinitionIdString",
    #     filters: [
    #       {
    #         key: "FilterKeyString", # required
    #         values: ["FilterValuesMemberString"], # required
    #       },
    #     ],
    #     manager_arn: "ListConfigurationsInputManagerArnString",
    #     max_items: 1,
    #     starting_token: "ListConfigurationsInputStartingTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.configurations_list #=> Array
    #   resp.configurations_list[0].account #=> String
    #   resp.configurations_list[0].configuration_definition_id #=> String
    #   resp.configurations_list[0].created_at #=> Time
    #   resp.configurations_list[0].first_class_parameters #=> Hash
    #   resp.configurations_list[0].first_class_parameters["ConfigurationParametersMapKeyString"] #=> String
    #   resp.configurations_list[0].id #=> String
    #   resp.configurations_list[0].manager_arn #=> String
    #   resp.configurations_list[0].region #=> String
    #   resp.configurations_list[0].status_summaries #=> Array
    #   resp.configurations_list[0].status_summaries[0].last_updated_at #=> Time
    #   resp.configurations_list[0].status_summaries[0].status #=> String, one of "INITIALIZING", "DEPLOYING", "SUCCEEDED", "DELETING", "STOPPING", "FAILED", "STOPPED", "DELETE_FAILED", "STOP_FAILED", "NONE"
    #   resp.configurations_list[0].status_summaries[0].status_details #=> Hash
    #   resp.configurations_list[0].status_summaries[0].status_details["String"] #=> String
    #   resp.configurations_list[0].status_summaries[0].status_message #=> String
    #   resp.configurations_list[0].status_summaries[0].status_type #=> String, one of "Deployment", "AsyncExecutions"
    #   resp.configurations_list[0].type #=> String
    #   resp.configurations_list[0].type_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ListConfigurations AWS API Documentation
    #
    # @overload list_configurations(params = {})
    # @param [Hash] params ({})
    def list_configurations(params = {}, options = {})
      req = build_request(:list_configurations, params)
      req.send_request(options)
    end

    # Returns the available Quick Setup types.
    #
    # @return [Types::ListQuickSetupTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQuickSetupTypesOutput#quick_setup_type_list #quick_setup_type_list} => Array&lt;Types::QuickSetupTypeOutput&gt;
    #
    # @example Response structure
    #
    #   resp.quick_setup_type_list #=> Array
    #   resp.quick_setup_type_list[0].latest_version #=> String
    #   resp.quick_setup_type_list[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ListQuickSetupTypes AWS API Documentation
    #
    # @overload list_quick_setup_types(params = {})
    # @param [Hash] params ({})
    def list_quick_setup_types(params = {}, options = {})
      req = build_request(:list_quick_setup_types, params)
      req.send_request(options)
    end

    # Returns tags assigned to the resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource the tag is assigned to.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::TagEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Assigns key-value pairs of metadata to Amazon Web Services resources.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Key-value pairs of metadata to assign to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagsMapKeyString" => "TagsMapValueString",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a Quick Setup configuration definition.
    #
    # @option params [required, String] :id
    #   The ID of the configuration definition you want to update.
    #
    # @option params [String] :local_deployment_administration_role_arn
    #   The ARN of the IAM role used to administrate local configuration
    #   deployments.
    #
    # @option params [String] :local_deployment_execution_role_name
    #   The name of the IAM role used to deploy local configurations.
    #
    # @option params [required, String] :manager_arn
    #   The ARN of the configuration manager associated with the definition to
    #   update.
    #
    # @option params [Hash<String,String>] :parameters
    #   The parameters for the configuration definition type.
    #
    # @option params [String] :type_version
    #   The version of the Quick Setup type to use.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_definition({
    #     id: "UpdateConfigurationDefinitionInputIdString", # required
    #     local_deployment_administration_role_arn: "IAMRoleArn",
    #     local_deployment_execution_role_name: "UpdateConfigurationDefinitionInputLocalDeploymentExecutionRoleNameString",
    #     manager_arn: "UpdateConfigurationDefinitionInputManagerArnString", # required
    #     parameters: {
    #       "ConfigurationParametersMapKeyString" => "ConfigurationParametersMapValueString",
    #     },
    #     type_version: "UpdateConfigurationDefinitionInputTypeVersionString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/UpdateConfigurationDefinition AWS API Documentation
    #
    # @overload update_configuration_definition(params = {})
    # @param [Hash] params ({})
    def update_configuration_definition(params = {}, options = {})
      req = build_request(:update_configuration_definition, params)
      req.send_request(options)
    end

    # Updates a Quick Setup configuration manager.
    #
    # @option params [String] :description
    #   A description of the configuration manager.
    #
    # @option params [required, String] :manager_arn
    #   The ARN of the configuration manager.
    #
    # @option params [String] :name
    #   A name for the configuration manager.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_manager({
    #     description: "UpdateConfigurationManagerInputDescriptionString",
    #     manager_arn: "UpdateConfigurationManagerInputManagerArnString", # required
    #     name: "UpdateConfigurationManagerInputNameString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/UpdateConfigurationManager AWS API Documentation
    #
    # @overload update_configuration_manager(params = {})
    # @param [Hash] params ({})
    def update_configuration_manager(params = {}, options = {})
      req = build_request(:update_configuration_manager, params)
      req.send_request(options)
    end

    # Updates settings configured for Quick Setup.
    #
    # @option params [String] :explorer_enabling_role_arn
    #   The IAM role used to enable Explorer.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_settings({
    #     explorer_enabling_role_arn: "IAMRoleArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10/UpdateServiceSettings AWS API Documentation
    #
    # @overload update_service_settings(params = {})
    # @param [Hash] params ({})
    def update_service_settings(params = {}, options = {})
      req = build_request(:update_service_settings, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::SSMQuickSetup')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-ssmquicksetup'
      context[:gem_version] = '1.11.0'
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
