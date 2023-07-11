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

Aws::Plugins::GlobalConfiguration.add_identifier(:appintegrationsservice)

module Aws::AppIntegrationsService
  # An API client for AppIntegrationsService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AppIntegrationsService::Client.new(
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

    @identifier = :appintegrationsservice

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
    add_plugin(Aws::AppIntegrationsService::Plugins::Endpoints)

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
    #   @option options [Aws::AppIntegrationsService::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::AppIntegrationsService::EndpointParameters`
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

    # Creates and persists a DataIntegration resource.
    #
    # <note markdown="1"> You cannot create a DataIntegration association for a DataIntegration
    # that has been previously associated. Use a different DataIntegration,
    # or recreate the DataIntegration using the `CreateDataIntegration` API.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the DataIntegration.
    #
    # @option params [String] :description
    #   A description of the DataIntegration.
    #
    # @option params [required, String] :kms_key
    #   The KMS key for the DataIntegration.
    #
    # @option params [required, String] :source_uri
    #   The URI of the data source.
    #
    # @option params [required, Types::ScheduleConfiguration] :schedule_config
    #   The name of the data and how often it should be pulled from the
    #   source.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Types::FileConfiguration] :file_configuration
    #   The configuration for what files should be pulled from the source.
    #
    # @option params [Hash<String,Hash>] :object_configuration
    #   The configuration for what data should be pulled from the source.
    #
    # @return [Types::CreateDataIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataIntegrationResponse#arn #arn} => String
    #   * {Types::CreateDataIntegrationResponse#id #id} => String
    #   * {Types::CreateDataIntegrationResponse#name #name} => String
    #   * {Types::CreateDataIntegrationResponse#description #description} => String
    #   * {Types::CreateDataIntegrationResponse#kms_key #kms_key} => String
    #   * {Types::CreateDataIntegrationResponse#source_uri #source_uri} => String
    #   * {Types::CreateDataIntegrationResponse#schedule_configuration #schedule_configuration} => Types::ScheduleConfiguration
    #   * {Types::CreateDataIntegrationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateDataIntegrationResponse#client_token #client_token} => String
    #   * {Types::CreateDataIntegrationResponse#file_configuration #file_configuration} => Types::FileConfiguration
    #   * {Types::CreateDataIntegrationResponse#object_configuration #object_configuration} => Hash&lt;String,Hash&lt;String,Array&lt;String&gt;&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_integration({
    #     name: "Name", # required
    #     description: "Description",
    #     kms_key: "NonBlankString", # required
    #     source_uri: "SourceURI", # required
    #     schedule_config: { # required
    #       first_execution_from: "NonBlankString",
    #       object: "Object",
    #       schedule_expression: "NonBlankString", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "IdempotencyToken",
    #     file_configuration: {
    #       folders: ["NonBlankLongString"], # required
    #       filters: {
    #         "NonBlankString" => ["Fields"],
    #       },
    #     },
    #     object_configuration: {
    #       "NonBlankString" => {
    #         "NonBlankString" => ["Fields"],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.kms_key #=> String
    #   resp.source_uri #=> String
    #   resp.schedule_configuration.first_execution_from #=> String
    #   resp.schedule_configuration.object #=> String
    #   resp.schedule_configuration.schedule_expression #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.client_token #=> String
    #   resp.file_configuration.folders #=> Array
    #   resp.file_configuration.folders[0] #=> String
    #   resp.file_configuration.filters #=> Hash
    #   resp.file_configuration.filters["NonBlankString"] #=> Array
    #   resp.file_configuration.filters["NonBlankString"][0] #=> String
    #   resp.object_configuration #=> Hash
    #   resp.object_configuration["NonBlankString"] #=> Hash
    #   resp.object_configuration["NonBlankString"]["NonBlankString"] #=> Array
    #   resp.object_configuration["NonBlankString"]["NonBlankString"][0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/CreateDataIntegration AWS API Documentation
    #
    # @overload create_data_integration(params = {})
    # @param [Hash] params ({})
    def create_data_integration(params = {}, options = {})
      req = build_request(:create_data_integration, params)
      req.send_request(options)
    end

    # Creates an EventIntegration, given a specified name, description, and
    # a reference to an Amazon EventBridge bus in your account and a partner
    # event source that pushes events to that bus. No objects are created in
    # the your account, only metadata that is persisted on the
    # EventIntegration control plane.
    #
    # @option params [required, String] :name
    #   The name of the event integration.
    #
    # @option params [String] :description
    #   The description of the event integration.
    #
    # @option params [required, Types::EventFilter] :event_filter
    #   The event filter.
    #
    # @option params [required, String] :event_bridge_bus
    #   The EventBridge bus.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreateEventIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventIntegrationResponse#event_integration_arn #event_integration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_integration({
    #     name: "Name", # required
    #     description: "Description",
    #     event_filter: { # required
    #       source: "Source", # required
    #     },
    #     event_bridge_bus: "EventBridgeBus", # required
    #     client_token: "IdempotencyToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.event_integration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/CreateEventIntegration AWS API Documentation
    #
    # @overload create_event_integration(params = {})
    # @param [Hash] params ({})
    def create_event_integration(params = {}, options = {})
      req = build_request(:create_event_integration, params)
      req.send_request(options)
    end

    # Deletes the DataIntegration. Only DataIntegrations that don't have
    # any DataIntegrationAssociations can be deleted. Deleting a
    # DataIntegration also deletes the underlying Amazon AppFlow flow and
    # service linked role.
    #
    # <note markdown="1"> You cannot create a DataIntegration association for a DataIntegration
    # that has been previously associated. Use a different DataIntegration,
    # or recreate the DataIntegration using the [CreateDataIntegration][1]
    # API.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [required, String] :data_integration_identifier
    #   A unique identifier for the DataIntegration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_integration({
    #     data_integration_identifier: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/DeleteDataIntegration AWS API Documentation
    #
    # @overload delete_data_integration(params = {})
    # @param [Hash] params ({})
    def delete_data_integration(params = {}, options = {})
      req = build_request(:delete_data_integration, params)
      req.send_request(options)
    end

    # Deletes the specified existing event integration. If the event
    # integration is associated with clients, the request is rejected.
    #
    # @option params [required, String] :name
    #   The name of the event integration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_integration({
    #     name: "Name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/DeleteEventIntegration AWS API Documentation
    #
    # @overload delete_event_integration(params = {})
    # @param [Hash] params ({})
    def delete_event_integration(params = {}, options = {})
      req = build_request(:delete_event_integration, params)
      req.send_request(options)
    end

    # Returns information about the DataIntegration.
    #
    # <note markdown="1"> You cannot create a DataIntegration association for a DataIntegration
    # that has been previously associated. Use a different DataIntegration,
    # or recreate the DataIntegration using the [CreateDataIntegration][1]
    # API.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [required, String] :identifier
    #   A unique identifier.
    #
    # @return [Types::GetDataIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataIntegrationResponse#arn #arn} => String
    #   * {Types::GetDataIntegrationResponse#id #id} => String
    #   * {Types::GetDataIntegrationResponse#name #name} => String
    #   * {Types::GetDataIntegrationResponse#description #description} => String
    #   * {Types::GetDataIntegrationResponse#kms_key #kms_key} => String
    #   * {Types::GetDataIntegrationResponse#source_uri #source_uri} => String
    #   * {Types::GetDataIntegrationResponse#schedule_configuration #schedule_configuration} => Types::ScheduleConfiguration
    #   * {Types::GetDataIntegrationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetDataIntegrationResponse#file_configuration #file_configuration} => Types::FileConfiguration
    #   * {Types::GetDataIntegrationResponse#object_configuration #object_configuration} => Hash&lt;String,Hash&lt;String,Array&lt;String&gt;&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_integration({
    #     identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.kms_key #=> String
    #   resp.source_uri #=> String
    #   resp.schedule_configuration.first_execution_from #=> String
    #   resp.schedule_configuration.object #=> String
    #   resp.schedule_configuration.schedule_expression #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.file_configuration.folders #=> Array
    #   resp.file_configuration.folders[0] #=> String
    #   resp.file_configuration.filters #=> Hash
    #   resp.file_configuration.filters["NonBlankString"] #=> Array
    #   resp.file_configuration.filters["NonBlankString"][0] #=> String
    #   resp.object_configuration #=> Hash
    #   resp.object_configuration["NonBlankString"] #=> Hash
    #   resp.object_configuration["NonBlankString"]["NonBlankString"] #=> Array
    #   resp.object_configuration["NonBlankString"]["NonBlankString"][0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/GetDataIntegration AWS API Documentation
    #
    # @overload get_data_integration(params = {})
    # @param [Hash] params ({})
    def get_data_integration(params = {}, options = {})
      req = build_request(:get_data_integration, params)
      req.send_request(options)
    end

    # Returns information about the event integration.
    #
    # @option params [required, String] :name
    #   The name of the event integration.
    #
    # @return [Types::GetEventIntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventIntegrationResponse#name #name} => String
    #   * {Types::GetEventIntegrationResponse#description #description} => String
    #   * {Types::GetEventIntegrationResponse#event_integration_arn #event_integration_arn} => String
    #   * {Types::GetEventIntegrationResponse#event_bridge_bus #event_bridge_bus} => String
    #   * {Types::GetEventIntegrationResponse#event_filter #event_filter} => Types::EventFilter
    #   * {Types::GetEventIntegrationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_integration({
    #     name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.event_integration_arn #=> String
    #   resp.event_bridge_bus #=> String
    #   resp.event_filter.source #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/GetEventIntegration AWS API Documentation
    #
    # @overload get_event_integration(params = {})
    # @param [Hash] params ({})
    def get_event_integration(params = {}, options = {})
      req = build_request(:get_event_integration, params)
      req.send_request(options)
    end

    # Returns a paginated list of DataIntegration associations in the
    # account.
    #
    # <note markdown="1"> You cannot create a DataIntegration association for a DataIntegration
    # that has been previously associated. Use a different DataIntegration,
    # or recreate the DataIntegration using the [CreateDataIntegration][1]
    # API.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [required, String] :data_integration_identifier
    #   A unique identifier for the DataIntegration.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListDataIntegrationAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataIntegrationAssociationsResponse#data_integration_associations #data_integration_associations} => Array&lt;Types::DataIntegrationAssociationSummary&gt;
    #   * {Types::ListDataIntegrationAssociationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_integration_associations({
    #     data_integration_identifier: "Identifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_integration_associations #=> Array
    #   resp.data_integration_associations[0].data_integration_association_arn #=> String
    #   resp.data_integration_associations[0].data_integration_arn #=> String
    #   resp.data_integration_associations[0].client_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListDataIntegrationAssociations AWS API Documentation
    #
    # @overload list_data_integration_associations(params = {})
    # @param [Hash] params ({})
    def list_data_integration_associations(params = {}, options = {})
      req = build_request(:list_data_integration_associations, params)
      req.send_request(options)
    end

    # Returns a paginated list of DataIntegrations in the account.
    #
    # <note markdown="1"> You cannot create a DataIntegration association for a DataIntegration
    # that has been previously associated. Use a different DataIntegration,
    # or recreate the DataIntegration using the [CreateDataIntegration][1]
    # API.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListDataIntegrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataIntegrationsResponse#data_integrations #data_integrations} => Array&lt;Types::DataIntegrationSummary&gt;
    #   * {Types::ListDataIntegrationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_integrations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_integrations #=> Array
    #   resp.data_integrations[0].arn #=> String
    #   resp.data_integrations[0].name #=> String
    #   resp.data_integrations[0].source_uri #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListDataIntegrations AWS API Documentation
    #
    # @overload list_data_integrations(params = {})
    # @param [Hash] params ({})
    def list_data_integrations(params = {}, options = {})
      req = build_request(:list_data_integrations, params)
      req.send_request(options)
    end

    # Returns a paginated list of event integration associations in the
    # account.
    #
    # @option params [required, String] :event_integration_name
    #   The name of the event integration.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListEventIntegrationAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventIntegrationAssociationsResponse#event_integration_associations #event_integration_associations} => Array&lt;Types::EventIntegrationAssociation&gt;
    #   * {Types::ListEventIntegrationAssociationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_integration_associations({
    #     event_integration_name: "Name", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_integration_associations #=> Array
    #   resp.event_integration_associations[0].event_integration_association_arn #=> String
    #   resp.event_integration_associations[0].event_integration_association_id #=> String
    #   resp.event_integration_associations[0].event_integration_name #=> String
    #   resp.event_integration_associations[0].client_id #=> String
    #   resp.event_integration_associations[0].event_bridge_rule_name #=> String
    #   resp.event_integration_associations[0].client_association_metadata #=> Hash
    #   resp.event_integration_associations[0].client_association_metadata["NonBlankString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListEventIntegrationAssociations AWS API Documentation
    #
    # @overload list_event_integration_associations(params = {})
    # @param [Hash] params ({})
    def list_event_integration_associations(params = {}, options = {})
      req = build_request(:list_event_integration_associations, params)
      req.send_request(options)
    end

    # Returns a paginated list of event integrations in the account.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListEventIntegrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventIntegrationsResponse#event_integrations #event_integrations} => Array&lt;Types::EventIntegration&gt;
    #   * {Types::ListEventIntegrationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_integrations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_integrations #=> Array
    #   resp.event_integrations[0].event_integration_arn #=> String
    #   resp.event_integrations[0].name #=> String
    #   resp.event_integrations[0].description #=> String
    #   resp.event_integrations[0].event_filter.source #=> String
    #   resp.event_integrations[0].event_bridge_bus #=> String
    #   resp.event_integrations[0].tags #=> Hash
    #   resp.event_integrations[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListEventIntegrations AWS API Documentation
    #
    # @overload list_event_integrations(params = {})
    # @param [Hash] params ({})
    def list_event_integrations(params = {}, options = {})
      req = build_request(:list_event_integrations, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the description of a DataIntegration.
    #
    # <note markdown="1"> You cannot create a DataIntegration association for a DataIntegration
    # that has been previously associated. Use a different DataIntegration,
    # or recreate the DataIntegration using the [CreateDataIntegration][1]
    # API.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
    #
    # @option params [required, String] :identifier
    #   A unique identifier for the DataIntegration.
    #
    # @option params [String] :name
    #   The name of the DataIntegration.
    #
    # @option params [String] :description
    #   A description of the DataIntegration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_integration({
    #     identifier: "Identifier", # required
    #     name: "Name",
    #     description: "Description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UpdateDataIntegration AWS API Documentation
    #
    # @overload update_data_integration(params = {})
    # @param [Hash] params ({})
    def update_data_integration(params = {}, options = {})
      req = build_request(:update_data_integration, params)
      req.send_request(options)
    end

    # Updates the description of an event integration.
    #
    # @option params [required, String] :name
    #   The name of the event integration.
    #
    # @option params [String] :description
    #   The description of the event inegration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_integration({
    #     name: "Name", # required
    #     description: "Description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UpdateEventIntegration AWS API Documentation
    #
    # @overload update_event_integration(params = {})
    # @param [Hash] params ({})
    def update_event_integration(params = {}, options = {})
      req = build_request(:update_event_integration, params)
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
      context[:gem_name] = 'aws-sdk-appintegrationsservice'
      context[:gem_version] = '1.21.0'
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
