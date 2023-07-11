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

Aws::Plugins::GlobalConfiguration.add_identifier(:mgn)

module Aws::Mgn
  # An API client for Mgn.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Mgn::Client.new(
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

    @identifier = :mgn

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
    add_plugin(Aws::Mgn::Plugins::Endpoints)

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
    #   @option options [Aws::Mgn::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Mgn::EndpointParameters`
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

    # Archive application.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [required, String] :application_id
    #   Application ID.
    #
    # @return [Types::Application] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Application#application_aggregated_status #application_aggregated_status} => Types::ApplicationAggregatedStatus
    #   * {Types::Application#application_id #application_id} => String
    #   * {Types::Application#arn #arn} => String
    #   * {Types::Application#creation_date_time #creation_date_time} => String
    #   * {Types::Application#description #description} => String
    #   * {Types::Application#is_archived #is_archived} => Boolean
    #   * {Types::Application#last_modified_date_time #last_modified_date_time} => String
    #   * {Types::Application#name #name} => String
    #   * {Types::Application#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::Application#wave_id #wave_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.archive_application({
    #     account_id: "AccountID",
    #     application_id: "ApplicationID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_aggregated_status.health_status #=> String, one of "HEALTHY", "LAGGING", "ERROR"
    #   resp.application_aggregated_status.last_update_date_time #=> String
    #   resp.application_aggregated_status.progress_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED"
    #   resp.application_aggregated_status.total_source_servers #=> Integer
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.creation_date_time #=> String
    #   resp.description #=> String
    #   resp.is_archived #=> Boolean
    #   resp.last_modified_date_time #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.wave_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ArchiveApplication AWS API Documentation
    #
    # @overload archive_application(params = {})
    # @param [Hash] params ({})
    def archive_application(params = {}, options = {})
      req = build_request(:archive_application, params)
      req.send_request(options)
    end

    # Archive wave.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [required, String] :wave_id
    #   Wave ID.
    #
    # @return [Types::Wave] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Wave#arn #arn} => String
    #   * {Types::Wave#creation_date_time #creation_date_time} => String
    #   * {Types::Wave#description #description} => String
    #   * {Types::Wave#is_archived #is_archived} => Boolean
    #   * {Types::Wave#last_modified_date_time #last_modified_date_time} => String
    #   * {Types::Wave#name #name} => String
    #   * {Types::Wave#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::Wave#wave_aggregated_status #wave_aggregated_status} => Types::WaveAggregatedStatus
    #   * {Types::Wave#wave_id #wave_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.archive_wave({
    #     account_id: "AccountID",
    #     wave_id: "WaveID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_date_time #=> String
    #   resp.description #=> String
    #   resp.is_archived #=> Boolean
    #   resp.last_modified_date_time #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.wave_aggregated_status.health_status #=> String, one of "HEALTHY", "LAGGING", "ERROR"
    #   resp.wave_aggregated_status.last_update_date_time #=> String
    #   resp.wave_aggregated_status.progress_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED"
    #   resp.wave_aggregated_status.replication_started_date_time #=> String
    #   resp.wave_aggregated_status.total_applications #=> Integer
    #   resp.wave_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ArchiveWave AWS API Documentation
    #
    # @overload archive_wave(params = {})
    # @param [Hash] params ({})
    def archive_wave(params = {}, options = {})
      req = build_request(:archive_wave, params)
      req.send_request(options)
    end

    # Associate applications to wave.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [required, Array<String>] :application_i_ds
    #   Application IDs list.
    #
    # @option params [required, String] :wave_id
    #   Wave ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_applications({
    #     account_id: "AccountID",
    #     application_i_ds: ["ApplicationID"], # required
    #     wave_id: "WaveID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/AssociateApplications AWS API Documentation
    #
    # @overload associate_applications(params = {})
    # @param [Hash] params ({})
    def associate_applications(params = {}, options = {})
      req = build_request(:associate_applications, params)
      req.send_request(options)
    end

    # Associate source servers to application.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [required, String] :application_id
    #   Application ID.
    #
    # @option params [required, Array<String>] :source_server_i_ds
    #   Source server IDs list.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_source_servers({
    #     account_id: "AccountID",
    #     application_id: "ApplicationID", # required
    #     source_server_i_ds: ["SourceServerID"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/AssociateSourceServers AWS API Documentation
    #
    # @overload associate_source_servers(params = {})
    # @param [Hash] params ({})
    def associate_source_servers(params = {}, options = {})
      req = build_request(:associate_source_servers, params)
      req.send_request(options)
    end

    # Allows the user to set the SourceServer.LifeCycle.state property for
    # specific Source Server IDs to one of the following: READY\_FOR\_TEST
    # or READY\_FOR\_CUTOVER. This command only works if the Source Server
    # is already launchable (dataReplicationInfo.lagDuration is not null.)
    #
    # @option params [String] :account_id
    #   The request to change the source server migration account ID.
    #
    # @option params [required, Types::ChangeServerLifeCycleStateSourceServerLifecycle] :life_cycle
    #   The request to change the source server migration lifecycle state.
    #
    # @option params [required, String] :source_server_id
    #   The request to change the source server migration lifecycle state by
    #   source server ID.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#application_id #application_id} => String
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#fqdn_for_action_framework #fqdn_for_action_framework} => String
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#user_provided_id #user_provided_id} => String
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_server_life_cycle_state({
    #     account_id: "AccountID",
    #     life_cycle: { # required
    #       state: "READY_FOR_TEST", # required, accepts READY_FOR_TEST, READY_FOR_CUTOVER, CUTOVER
    #     },
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"
    #   resp.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"
    #   resp.data_replication_info.eta_date_time #=> String
    #   resp.data_replication_info.lag_duration #=> String
    #   resp.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data_replication_info.replicated_disks #=> Array
    #   resp.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.fqdn_for_action_framework #=> String
    #   resp.is_archived #=> Boolean
    #   resp.launched_instance.ec2_instance_id #=> String
    #   resp.launched_instance.first_boot #=> String, one of "WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"
    #   resp.launched_instance.job_id #=> String
    #   resp.life_cycle.added_to_service_date_time #=> String
    #   resp.life_cycle.elapsed_replication_duration #=> String
    #   resp.life_cycle.first_byte_date_time #=> String
    #   resp.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.job_id #=> String
    #   resp.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED", "PENDING_INSTALLATION"
    #   resp.replication_type #=> String, one of "AGENT_BASED", "SNAPSHOT_SHIPPING"
    #   resp.source_properties.cpus #=> Array
    #   resp.source_properties.cpus[0].cores #=> Integer
    #   resp.source_properties.cpus[0].model_name #=> String
    #   resp.source_properties.disks #=> Array
    #   resp.source_properties.disks[0].bytes #=> Integer
    #   resp.source_properties.disks[0].device_name #=> String
    #   resp.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_properties.identification_hints.fqdn #=> String
    #   resp.source_properties.identification_hints.hostname #=> String
    #   resp.source_properties.identification_hints.vm_path #=> String
    #   resp.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.source_properties.last_updated_date_time #=> String
    #   resp.source_properties.network_interfaces #=> Array
    #   resp.source_properties.network_interfaces[0].ips #=> Array
    #   resp.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.source_properties.os.full_string #=> String
    #   resp.source_properties.ram_bytes #=> Integer
    #   resp.source_properties.recommended_instance_type #=> String
    #   resp.source_server_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.user_provided_id #=> String
    #   resp.vcenter_client_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ChangeServerLifeCycleState AWS API Documentation
    #
    # @overload change_server_life_cycle_state(params = {})
    # @param [Hash] params ({})
    def change_server_life_cycle_state(params = {}, options = {})
      req = build_request(:change_server_life_cycle_state, params)
      req.send_request(options)
    end

    # Create application.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [String] :description
    #   Application description.
    #
    # @option params [required, String] :name
    #   Application name.
    #
    # @option params [Hash<String,String>] :tags
    #   Application tags.
    #
    # @return [Types::Application] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Application#application_aggregated_status #application_aggregated_status} => Types::ApplicationAggregatedStatus
    #   * {Types::Application#application_id #application_id} => String
    #   * {Types::Application#arn #arn} => String
    #   * {Types::Application#creation_date_time #creation_date_time} => String
    #   * {Types::Application#description #description} => String
    #   * {Types::Application#is_archived #is_archived} => Boolean
    #   * {Types::Application#last_modified_date_time #last_modified_date_time} => String
    #   * {Types::Application#name #name} => String
    #   * {Types::Application#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::Application#wave_id #wave_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     account_id: "AccountID",
    #     description: "ApplicationDescription",
    #     name: "ApplicationName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_aggregated_status.health_status #=> String, one of "HEALTHY", "LAGGING", "ERROR"
    #   resp.application_aggregated_status.last_update_date_time #=> String
    #   resp.application_aggregated_status.progress_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED"
    #   resp.application_aggregated_status.total_source_servers #=> Integer
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.creation_date_time #=> String
    #   resp.description #=> String
    #   resp.is_archived #=> Boolean
    #   resp.last_modified_date_time #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.wave_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates a new Launch Configuration Template.
    #
    # @option params [Boolean] :associate_public_ip_address
    #   Associate public Ip address.
    #
    # @option params [String] :boot_mode
    #   Launch configuration template boot mode.
    #
    # @option params [Boolean] :copy_private_ip
    #   Copy private Ip.
    #
    # @option params [Boolean] :copy_tags
    #   Copy tags.
    #
    # @option params [Boolean] :enable_map_auto_tagging
    #   Enable map auto tagging.
    #
    # @option params [Types::LaunchTemplateDiskConf] :large_volume_conf
    #   Large volume config.
    #
    # @option params [String] :launch_disposition
    #   Launch disposition.
    #
    # @option params [Types::Licensing] :licensing
    #   Configure Licensing.
    #
    # @option params [String] :map_auto_tagging_mpe_id
    #   Launch configuration template map auto tagging MPE ID.
    #
    # @option params [Types::PostLaunchActions] :post_launch_actions
    #   Launch configuration template post launch actions.
    #
    # @option params [Types::LaunchTemplateDiskConf] :small_volume_conf
    #   Small volume config.
    #
    # @option params [Integer] :small_volume_max_size
    #   Small volume maximum size.
    #
    # @option params [Hash<String,String>] :tags
    #   Request to associate tags during creation of a Launch Configuration
    #   Template.
    #
    # @option params [String] :target_instance_type_right_sizing_method
    #   Target instance type right-sizing method.
    #
    # @return [Types::LaunchConfigurationTemplate] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LaunchConfigurationTemplate#arn #arn} => String
    #   * {Types::LaunchConfigurationTemplate#associate_public_ip_address #associate_public_ip_address} => Boolean
    #   * {Types::LaunchConfigurationTemplate#boot_mode #boot_mode} => String
    #   * {Types::LaunchConfigurationTemplate#copy_private_ip #copy_private_ip} => Boolean
    #   * {Types::LaunchConfigurationTemplate#copy_tags #copy_tags} => Boolean
    #   * {Types::LaunchConfigurationTemplate#ec2_launch_template_id #ec2_launch_template_id} => String
    #   * {Types::LaunchConfigurationTemplate#enable_map_auto_tagging #enable_map_auto_tagging} => Boolean
    #   * {Types::LaunchConfigurationTemplate#large_volume_conf #large_volume_conf} => Types::LaunchTemplateDiskConf
    #   * {Types::LaunchConfigurationTemplate#launch_configuration_template_id #launch_configuration_template_id} => String
    #   * {Types::LaunchConfigurationTemplate#launch_disposition #launch_disposition} => String
    #   * {Types::LaunchConfigurationTemplate#licensing #licensing} => Types::Licensing
    #   * {Types::LaunchConfigurationTemplate#map_auto_tagging_mpe_id #map_auto_tagging_mpe_id} => String
    #   * {Types::LaunchConfigurationTemplate#post_launch_actions #post_launch_actions} => Types::PostLaunchActions
    #   * {Types::LaunchConfigurationTemplate#small_volume_conf #small_volume_conf} => Types::LaunchTemplateDiskConf
    #   * {Types::LaunchConfigurationTemplate#small_volume_max_size #small_volume_max_size} => Integer
    #   * {Types::LaunchConfigurationTemplate#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::LaunchConfigurationTemplate#target_instance_type_right_sizing_method #target_instance_type_right_sizing_method} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_launch_configuration_template({
    #     associate_public_ip_address: false,
    #     boot_mode: "LEGACY_BIOS", # accepts LEGACY_BIOS, UEFI
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     enable_map_auto_tagging: false,
    #     large_volume_conf: {
    #       iops: 1,
    #       throughput: 1,
    #       volume_type: "io1", # accepts io1, io2, gp3, gp2, st1, sc1, standard
    #     },
    #     launch_disposition: "STOPPED", # accepts STOPPED, STARTED
    #     licensing: {
    #       os_byol: false,
    #     },
    #     map_auto_tagging_mpe_id: "TagValue",
    #     post_launch_actions: {
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       deployment: "TEST_AND_CUTOVER", # accepts TEST_AND_CUTOVER, CUTOVER_ONLY, TEST_ONLY
    #       s3_log_bucket: "S3LogBucketName",
    #       s3_output_key_prefix: "BoundedString",
    #       ssm_documents: [
    #         {
    #           action_name: "BoundedString", # required
    #           external_parameters: {
    #             "SsmDocumentParameterName" => {
    #               dynamic_path: "JmesPathString",
    #             },
    #           },
    #           must_succeed_for_cutover: false,
    #           parameters: {
    #             "SsmDocumentParameterName" => [
    #               {
    #                 parameter_name: "SsmParameterStoreParameterName", # required
    #                 parameter_type: "STRING", # required, accepts STRING
    #               },
    #             ],
    #           },
    #           ssm_document_name: "SsmDocumentName", # required
    #           timeout_seconds: 1,
    #         },
    #       ],
    #     },
    #     small_volume_conf: {
    #       iops: 1,
    #       throughput: 1,
    #       volume_type: "io1", # accepts io1, io2, gp3, gp2, st1, sc1, standard
    #     },
    #     small_volume_max_size: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     target_instance_type_right_sizing_method: "NONE", # accepts NONE, BASIC
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.associate_public_ip_address #=> Boolean
    #   resp.boot_mode #=> String, one of "LEGACY_BIOS", "UEFI"
    #   resp.copy_private_ip #=> Boolean
    #   resp.copy_tags #=> Boolean
    #   resp.ec2_launch_template_id #=> String
    #   resp.enable_map_auto_tagging #=> Boolean
    #   resp.large_volume_conf.iops #=> Integer
    #   resp.large_volume_conf.throughput #=> Integer
    #   resp.large_volume_conf.volume_type #=> String, one of "io1", "io2", "gp3", "gp2", "st1", "sc1", "standard"
    #   resp.launch_configuration_template_id #=> String
    #   resp.launch_disposition #=> String, one of "STOPPED", "STARTED"
    #   resp.licensing.os_byol #=> Boolean
    #   resp.map_auto_tagging_mpe_id #=> String
    #   resp.post_launch_actions.cloud_watch_log_group_name #=> String
    #   resp.post_launch_actions.deployment #=> String, one of "TEST_AND_CUTOVER", "CUTOVER_ONLY", "TEST_ONLY"
    #   resp.post_launch_actions.s3_log_bucket #=> String
    #   resp.post_launch_actions.s3_output_key_prefix #=> String
    #   resp.post_launch_actions.ssm_documents #=> Array
    #   resp.post_launch_actions.ssm_documents[0].action_name #=> String
    #   resp.post_launch_actions.ssm_documents[0].external_parameters #=> Hash
    #   resp.post_launch_actions.ssm_documents[0].external_parameters["SsmDocumentParameterName"].dynamic_path #=> String
    #   resp.post_launch_actions.ssm_documents[0].must_succeed_for_cutover #=> Boolean
    #   resp.post_launch_actions.ssm_documents[0].parameters #=> Hash
    #   resp.post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"] #=> Array
    #   resp.post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"][0].parameter_name #=> String
    #   resp.post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"][0].parameter_type #=> String, one of "STRING"
    #   resp.post_launch_actions.ssm_documents[0].ssm_document_name #=> String
    #   resp.post_launch_actions.ssm_documents[0].timeout_seconds #=> Integer
    #   resp.small_volume_conf.iops #=> Integer
    #   resp.small_volume_conf.throughput #=> Integer
    #   resp.small_volume_conf.volume_type #=> String, one of "io1", "io2", "gp3", "gp2", "st1", "sc1", "standard"
    #   resp.small_volume_max_size #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.target_instance_type_right_sizing_method #=> String, one of "NONE", "BASIC"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateLaunchConfigurationTemplate AWS API Documentation
    #
    # @overload create_launch_configuration_template(params = {})
    # @param [Hash] params ({})
    def create_launch_configuration_template(params = {}, options = {})
      req = build_request(:create_launch_configuration_template, params)
      req.send_request(options)
    end

    # Creates a new ReplicationConfigurationTemplate.
    #
    # @option params [required, Boolean] :associate_default_security_group
    #   Request to associate the default Application Migration Service
    #   Security group with the Replication Settings template.
    #
    # @option params [required, Integer] :bandwidth_throttling
    #   Request to configure bandwidth throttling during Replication Settings
    #   template creation.
    #
    # @option params [required, Boolean] :create_public_ip
    #   Request to create Public IP during Replication Settings template
    #   creation.
    #
    # @option params [required, String] :data_plane_routing
    #   Request to configure data plane routing during Replication Settings
    #   template creation.
    #
    # @option params [required, String] :default_large_staging_disk_type
    #   Request to configure the default large staging disk EBS volume type
    #   during Replication Settings template creation.
    #
    # @option params [required, String] :ebs_encryption
    #   Request to configure EBS encryption during Replication Settings
    #   template creation.
    #
    # @option params [String] :ebs_encryption_key_arn
    #   Request to configure an EBS encryption key during Replication Settings
    #   template creation.
    #
    # @option params [required, String] :replication_server_instance_type
    #   Request to configure the Replication Server instance type during
    #   Replication Settings template creation.
    #
    # @option params [required, Array<String>] :replication_servers_security_groups_i_ds
    #   Request to configure the Replication Server Security group ID during
    #   Replication Settings template creation.
    #
    # @option params [required, String] :staging_area_subnet_id
    #   Request to configure the Staging Area subnet ID during Replication
    #   Settings template creation.
    #
    # @option params [required, Hash<String,String>] :staging_area_tags
    #   Request to configure Staging Area tags during Replication Settings
    #   template creation.
    #
    # @option params [Hash<String,String>] :tags
    #   Request to configure tags during Replication Settings template
    #   creation.
    #
    # @option params [required, Boolean] :use_dedicated_replication_server
    #   Request to use Dedicated Replication Servers during Replication
    #   Settings template creation.
    #
    # @option params [Boolean] :use_fips_endpoint
    #   Request to use Fips Endpoint during Replication Settings template
    #   creation.
    #
    # @return [Types::ReplicationConfigurationTemplate] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicationConfigurationTemplate#arn #arn} => String
    #   * {Types::ReplicationConfigurationTemplate#associate_default_security_group #associate_default_security_group} => Boolean
    #   * {Types::ReplicationConfigurationTemplate#bandwidth_throttling #bandwidth_throttling} => Integer
    #   * {Types::ReplicationConfigurationTemplate#create_public_ip #create_public_ip} => Boolean
    #   * {Types::ReplicationConfigurationTemplate#data_plane_routing #data_plane_routing} => String
    #   * {Types::ReplicationConfigurationTemplate#default_large_staging_disk_type #default_large_staging_disk_type} => String
    #   * {Types::ReplicationConfigurationTemplate#ebs_encryption #ebs_encryption} => String
    #   * {Types::ReplicationConfigurationTemplate#ebs_encryption_key_arn #ebs_encryption_key_arn} => String
    #   * {Types::ReplicationConfigurationTemplate#replication_configuration_template_id #replication_configuration_template_id} => String
    #   * {Types::ReplicationConfigurationTemplate#replication_server_instance_type #replication_server_instance_type} => String
    #   * {Types::ReplicationConfigurationTemplate#replication_servers_security_groups_i_ds #replication_servers_security_groups_i_ds} => Array&lt;String&gt;
    #   * {Types::ReplicationConfigurationTemplate#staging_area_subnet_id #staging_area_subnet_id} => String
    #   * {Types::ReplicationConfigurationTemplate#staging_area_tags #staging_area_tags} => Hash&lt;String,String&gt;
    #   * {Types::ReplicationConfigurationTemplate#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::ReplicationConfigurationTemplate#use_dedicated_replication_server #use_dedicated_replication_server} => Boolean
    #   * {Types::ReplicationConfigurationTemplate#use_fips_endpoint #use_fips_endpoint} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_configuration_template({
    #     associate_default_security_group: false, # required
    #     bandwidth_throttling: 1, # required
    #     create_public_ip: false, # required
    #     data_plane_routing: "PRIVATE_IP", # required, accepts PRIVATE_IP, PUBLIC_IP
    #     default_large_staging_disk_type: "GP2", # required, accepts GP2, ST1, GP3
    #     ebs_encryption: "DEFAULT", # required, accepts DEFAULT, CUSTOM
    #     ebs_encryption_key_arn: "ARN",
    #     replication_server_instance_type: "EC2InstanceType", # required
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"], # required
    #     staging_area_subnet_id: "SubnetID", # required
    #     staging_area_tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     use_dedicated_replication_server: false, # required
    #     use_fips_endpoint: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.associate_default_security_group #=> Boolean
    #   resp.bandwidth_throttling #=> Integer
    #   resp.create_public_ip #=> Boolean
    #   resp.data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.default_large_staging_disk_type #=> String, one of "GP2", "ST1", "GP3"
    #   resp.ebs_encryption #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.ebs_encryption_key_arn #=> String
    #   resp.replication_configuration_template_id #=> String
    #   resp.replication_server_instance_type #=> String
    #   resp.replication_servers_security_groups_i_ds #=> Array
    #   resp.replication_servers_security_groups_i_ds[0] #=> String
    #   resp.staging_area_subnet_id #=> String
    #   resp.staging_area_tags #=> Hash
    #   resp.staging_area_tags["TagKey"] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.use_dedicated_replication_server #=> Boolean
    #   resp.use_fips_endpoint #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateReplicationConfigurationTemplate AWS API Documentation
    #
    # @overload create_replication_configuration_template(params = {})
    # @param [Hash] params ({})
    def create_replication_configuration_template(params = {}, options = {})
      req = build_request(:create_replication_configuration_template, params)
      req.send_request(options)
    end

    # Create wave.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [String] :description
    #   Wave description.
    #
    # @option params [required, String] :name
    #   Wave name.
    #
    # @option params [Hash<String,String>] :tags
    #   Wave tags.
    #
    # @return [Types::Wave] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Wave#arn #arn} => String
    #   * {Types::Wave#creation_date_time #creation_date_time} => String
    #   * {Types::Wave#description #description} => String
    #   * {Types::Wave#is_archived #is_archived} => Boolean
    #   * {Types::Wave#last_modified_date_time #last_modified_date_time} => String
    #   * {Types::Wave#name #name} => String
    #   * {Types::Wave#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::Wave#wave_aggregated_status #wave_aggregated_status} => Types::WaveAggregatedStatus
    #   * {Types::Wave#wave_id #wave_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_wave({
    #     account_id: "AccountID",
    #     description: "WaveDescription",
    #     name: "WaveName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_date_time #=> String
    #   resp.description #=> String
    #   resp.is_archived #=> Boolean
    #   resp.last_modified_date_time #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.wave_aggregated_status.health_status #=> String, one of "HEALTHY", "LAGGING", "ERROR"
    #   resp.wave_aggregated_status.last_update_date_time #=> String
    #   resp.wave_aggregated_status.progress_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED"
    #   resp.wave_aggregated_status.replication_started_date_time #=> String
    #   resp.wave_aggregated_status.total_applications #=> Integer
    #   resp.wave_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateWave AWS API Documentation
    #
    # @overload create_wave(params = {})
    # @param [Hash] params ({})
    def create_wave(params = {}, options = {})
      req = build_request(:create_wave, params)
      req.send_request(options)
    end

    # Delete application.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [required, String] :application_id
    #   Application ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     account_id: "AccountID",
    #     application_id: "ApplicationID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes a single Job by ID.
    #
    # @option params [String] :account_id
    #   Request to delete Job from service by Account ID.
    #
    # @option params [required, String] :job_id
    #   Request to delete Job from service by Job ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job({
    #     account_id: "AccountID",
    #     job_id: "JobID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteJob AWS API Documentation
    #
    # @overload delete_job(params = {})
    # @param [Hash] params ({})
    def delete_job(params = {}, options = {})
      req = build_request(:delete_job, params)
      req.send_request(options)
    end

    # Deletes a single Launch Configuration Template by ID.
    #
    # @option params [required, String] :launch_configuration_template_id
    #   ID of resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_launch_configuration_template({
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteLaunchConfigurationTemplate AWS API Documentation
    #
    # @overload delete_launch_configuration_template(params = {})
    # @param [Hash] params ({})
    def delete_launch_configuration_template(params = {}, options = {})
      req = build_request(:delete_launch_configuration_template, params)
      req.send_request(options)
    end

    # Deletes a single Replication Configuration Template by ID
    #
    # @option params [required, String] :replication_configuration_template_id
    #   Request to delete Replication Configuration Template from service by
    #   Replication Configuration Template ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_configuration_template({
    #     replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteReplicationConfigurationTemplate AWS API Documentation
    #
    # @overload delete_replication_configuration_template(params = {})
    # @param [Hash] params ({})
    def delete_replication_configuration_template(params = {}, options = {})
      req = build_request(:delete_replication_configuration_template, params)
      req.send_request(options)
    end

    # Deletes a single source server by ID.
    #
    # @option params [String] :account_id
    #   Request to delete Source Server from service by Account ID.
    #
    # @option params [required, String] :source_server_id
    #   Request to delete Source Server from service by Server ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_source_server({
    #     account_id: "AccountID",
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteSourceServer AWS API Documentation
    #
    # @overload delete_source_server(params = {})
    # @param [Hash] params ({})
    def delete_source_server(params = {}, options = {})
      req = build_request(:delete_source_server, params)
      req.send_request(options)
    end

    # Deletes a given vCenter client by ID.
    #
    # @option params [required, String] :vcenter_client_id
    #   ID of resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vcenter_client({
    #     vcenter_client_id: "VcenterClientID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteVcenterClient AWS API Documentation
    #
    # @overload delete_vcenter_client(params = {})
    # @param [Hash] params ({})
    def delete_vcenter_client(params = {}, options = {})
      req = build_request(:delete_vcenter_client, params)
      req.send_request(options)
    end

    # Delete wave.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [required, String] :wave_id
    #   Wave ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_wave({
    #     account_id: "AccountID",
    #     wave_id: "WaveID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DeleteWave AWS API Documentation
    #
    # @overload delete_wave(params = {})
    # @param [Hash] params ({})
    def delete_wave(params = {}, options = {})
      req = build_request(:delete_wave, params)
      req.send_request(options)
    end

    # Retrieves detailed job log items with paging.
    #
    # @option params [String] :account_id
    #   Request to describe Job log Account ID.
    #
    # @option params [required, String] :job_id
    #   Request to describe Job log job ID.
    #
    # @option params [Integer] :max_results
    #   Request to describe Job log item maximum results.
    #
    # @option params [String] :next_token
    #   Request to describe Job log next token.
    #
    # @return [Types::DescribeJobLogItemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobLogItemsResponse#items #items} => Array&lt;Types::JobLog&gt;
    #   * {Types::DescribeJobLogItemsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_log_items({
    #     account_id: "AccountID",
    #     job_id: "JobID", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].event #=> String, one of "JOB_START", "SERVER_SKIPPED", "CLEANUP_START", "CLEANUP_END", "CLEANUP_FAIL", "SNAPSHOT_START", "SNAPSHOT_END", "SNAPSHOT_FAIL", "USING_PREVIOUS_SNAPSHOT", "CONVERSION_START", "CONVERSION_END", "CONVERSION_FAIL", "LAUNCH_START", "LAUNCH_FAILED", "JOB_CANCEL", "JOB_END"
    #   resp.items[0].event_data.conversion_server_id #=> String
    #   resp.items[0].event_data.raw_error #=> String
    #   resp.items[0].event_data.source_server_id #=> String
    #   resp.items[0].event_data.target_instance_id #=> String
    #   resp.items[0].log_date_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeJobLogItems AWS API Documentation
    #
    # @overload describe_job_log_items(params = {})
    # @param [Hash] params ({})
    def describe_job_log_items(params = {}, options = {})
      req = build_request(:describe_job_log_items, params)
      req.send_request(options)
    end

    # Returns a list of Jobs. Use the JobsID and fromDate and toData filters
    # to limit which jobs are returned. The response is sorted by
    # creationDataTime - latest date first. Jobs are normally created by the
    # StartTest, StartCutover, and TerminateTargetInstances APIs. Jobs are
    # also created by DiagnosticLaunch and TerminateDiagnosticInstances,
    # which are APIs available only to *Support* and only used in response
    # to relevant support tickets.
    #
    # @option params [String] :account_id
    #   Request to describe job log items by Account ID.
    #
    # @option params [Types::DescribeJobsRequestFilters] :filters
    #   Request to describe Job log filters.
    #
    # @option params [Integer] :max_results
    #   Request to describe job log items by max results.
    #
    # @option params [String] :next_token
    #   Request to describe job log items by next token.
    #
    # @return [Types::DescribeJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobsResponse#items #items} => Array&lt;Types::Job&gt;
    #   * {Types::DescribeJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_jobs({
    #     account_id: "AccountID",
    #     filters: {
    #       from_date: "ISO8601DatetimeString",
    #       job_i_ds: ["JobID"],
    #       to_date: "ISO8601DatetimeString",
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].creation_date_time #=> String
    #   resp.items[0].end_date_time #=> String
    #   resp.items[0].initiated_by #=> String, one of "START_TEST", "START_CUTOVER", "DIAGNOSTIC", "TERMINATE"
    #   resp.items[0].job_id #=> String
    #   resp.items[0].participating_servers #=> Array
    #   resp.items[0].participating_servers[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.items[0].participating_servers[0].launched_ec2_instance_id #=> String
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list #=> Array
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].execution_id #=> String
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].execution_status #=> String, one of "IN_PROGRESS", "SUCCESS", "FAILED"
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].failure_reason #=> String
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.action_name #=> String
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.external_parameters #=> Hash
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.external_parameters["SsmDocumentParameterName"].dynamic_path #=> String
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.must_succeed_for_cutover #=> Boolean
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters #=> Hash
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters["SsmDocumentParameterName"] #=> Array
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters["SsmDocumentParameterName"][0].parameter_name #=> String
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters["SsmDocumentParameterName"][0].parameter_type #=> String, one of "STRING"
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.ssm_document_name #=> String
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.timeout_seconds #=> Integer
    #   resp.items[0].participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document_type #=> String, one of "AUTOMATION", "COMMAND"
    #   resp.items[0].participating_servers[0].post_launch_actions_status.ssm_agent_discovery_datetime #=> String
    #   resp.items[0].participating_servers[0].source_server_id #=> String
    #   resp.items[0].status #=> String, one of "PENDING", "STARTED", "COMPLETED"
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].type #=> String, one of "LAUNCH", "TERMINATE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeJobs AWS API Documentation
    #
    # @overload describe_jobs(params = {})
    # @param [Hash] params ({})
    def describe_jobs(params = {}, options = {})
      req = build_request(:describe_jobs, params)
      req.send_request(options)
    end

    # Lists all Launch Configuration Templates, filtered by Launch
    # Configuration Template IDs
    #
    # @option params [Array<String>] :launch_configuration_template_i_ds
    #   Request to filter Launch Configuration Templates list by Launch
    #   Configuration Template ID.
    #
    # @option params [Integer] :max_results
    #   Maximum results to be returned in
    #   DescribeLaunchConfigurationTemplates.
    #
    # @option params [String] :next_token
    #   Next pagination token returned from
    #   DescribeLaunchConfigurationTemplates.
    #
    # @return [Types::DescribeLaunchConfigurationTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLaunchConfigurationTemplatesResponse#items #items} => Array&lt;Types::LaunchConfigurationTemplate&gt;
    #   * {Types::DescribeLaunchConfigurationTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_launch_configuration_templates({
    #     launch_configuration_template_i_ds: ["LaunchConfigurationTemplateID"],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].associate_public_ip_address #=> Boolean
    #   resp.items[0].boot_mode #=> String, one of "LEGACY_BIOS", "UEFI"
    #   resp.items[0].copy_private_ip #=> Boolean
    #   resp.items[0].copy_tags #=> Boolean
    #   resp.items[0].ec2_launch_template_id #=> String
    #   resp.items[0].enable_map_auto_tagging #=> Boolean
    #   resp.items[0].large_volume_conf.iops #=> Integer
    #   resp.items[0].large_volume_conf.throughput #=> Integer
    #   resp.items[0].large_volume_conf.volume_type #=> String, one of "io1", "io2", "gp3", "gp2", "st1", "sc1", "standard"
    #   resp.items[0].launch_configuration_template_id #=> String
    #   resp.items[0].launch_disposition #=> String, one of "STOPPED", "STARTED"
    #   resp.items[0].licensing.os_byol #=> Boolean
    #   resp.items[0].map_auto_tagging_mpe_id #=> String
    #   resp.items[0].post_launch_actions.cloud_watch_log_group_name #=> String
    #   resp.items[0].post_launch_actions.deployment #=> String, one of "TEST_AND_CUTOVER", "CUTOVER_ONLY", "TEST_ONLY"
    #   resp.items[0].post_launch_actions.s3_log_bucket #=> String
    #   resp.items[0].post_launch_actions.s3_output_key_prefix #=> String
    #   resp.items[0].post_launch_actions.ssm_documents #=> Array
    #   resp.items[0].post_launch_actions.ssm_documents[0].action_name #=> String
    #   resp.items[0].post_launch_actions.ssm_documents[0].external_parameters #=> Hash
    #   resp.items[0].post_launch_actions.ssm_documents[0].external_parameters["SsmDocumentParameterName"].dynamic_path #=> String
    #   resp.items[0].post_launch_actions.ssm_documents[0].must_succeed_for_cutover #=> Boolean
    #   resp.items[0].post_launch_actions.ssm_documents[0].parameters #=> Hash
    #   resp.items[0].post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"] #=> Array
    #   resp.items[0].post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"][0].parameter_name #=> String
    #   resp.items[0].post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"][0].parameter_type #=> String, one of "STRING"
    #   resp.items[0].post_launch_actions.ssm_documents[0].ssm_document_name #=> String
    #   resp.items[0].post_launch_actions.ssm_documents[0].timeout_seconds #=> Integer
    #   resp.items[0].small_volume_conf.iops #=> Integer
    #   resp.items[0].small_volume_conf.throughput #=> Integer
    #   resp.items[0].small_volume_conf.volume_type #=> String, one of "io1", "io2", "gp3", "gp2", "st1", "sc1", "standard"
    #   resp.items[0].small_volume_max_size #=> Integer
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].target_instance_type_right_sizing_method #=> String, one of "NONE", "BASIC"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeLaunchConfigurationTemplates AWS API Documentation
    #
    # @overload describe_launch_configuration_templates(params = {})
    # @param [Hash] params ({})
    def describe_launch_configuration_templates(params = {}, options = {})
      req = build_request(:describe_launch_configuration_templates, params)
      req.send_request(options)
    end

    # Lists all ReplicationConfigurationTemplates, filtered by Source Server
    # IDs.
    #
    # @option params [Integer] :max_results
    #   Request to describe Replication Configuration template by max results.
    #
    # @option params [String] :next_token
    #   Request to describe Replication Configuration template by next token.
    #
    # @option params [Array<String>] :replication_configuration_template_i_ds
    #   Request to describe Replication Configuration template by template
    #   IDs.
    #
    # @return [Types::DescribeReplicationConfigurationTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReplicationConfigurationTemplatesResponse#items #items} => Array&lt;Types::ReplicationConfigurationTemplate&gt;
    #   * {Types::DescribeReplicationConfigurationTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_configuration_templates({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     replication_configuration_template_i_ds: ["ReplicationConfigurationTemplateID"],
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].associate_default_security_group #=> Boolean
    #   resp.items[0].bandwidth_throttling #=> Integer
    #   resp.items[0].create_public_ip #=> Boolean
    #   resp.items[0].data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.items[0].default_large_staging_disk_type #=> String, one of "GP2", "ST1", "GP3"
    #   resp.items[0].ebs_encryption #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.items[0].ebs_encryption_key_arn #=> String
    #   resp.items[0].replication_configuration_template_id #=> String
    #   resp.items[0].replication_server_instance_type #=> String
    #   resp.items[0].replication_servers_security_groups_i_ds #=> Array
    #   resp.items[0].replication_servers_security_groups_i_ds[0] #=> String
    #   resp.items[0].staging_area_subnet_id #=> String
    #   resp.items[0].staging_area_tags #=> Hash
    #   resp.items[0].staging_area_tags["TagKey"] #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].use_dedicated_replication_server #=> Boolean
    #   resp.items[0].use_fips_endpoint #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeReplicationConfigurationTemplates AWS API Documentation
    #
    # @overload describe_replication_configuration_templates(params = {})
    # @param [Hash] params ({})
    def describe_replication_configuration_templates(params = {}, options = {})
      req = build_request(:describe_replication_configuration_templates, params)
      req.send_request(options)
    end

    # Retrieves all SourceServers or multiple SourceServers by ID.
    #
    # @option params [String] :account_id
    #   Request to filter Source Servers list by Accoun ID.
    #
    # @option params [Types::DescribeSourceServersRequestFilters] :filters
    #   Request to filter Source Servers list.
    #
    # @option params [Integer] :max_results
    #   Request to filter Source Servers list by maximum results.
    #
    # @option params [String] :next_token
    #   Request to filter Source Servers list by next token.
    #
    # @return [Types::DescribeSourceServersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSourceServersResponse#items #items} => Array&lt;Types::SourceServer&gt;
    #   * {Types::DescribeSourceServersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_source_servers({
    #     account_id: "AccountID",
    #     filters: {
    #       application_i_ds: ["ApplicationID"],
    #       is_archived: false,
    #       life_cycle_states: ["STOPPED"], # accepts STOPPED, NOT_READY, READY_FOR_TEST, TESTING, READY_FOR_CUTOVER, CUTTING_OVER, CUTOVER, DISCONNECTED, DISCOVERED, PENDING_INSTALLATION
    #       replication_types: ["AGENT_BASED"], # accepts AGENT_BASED, SNAPSHOT_SHIPPING
    #       source_server_i_ds: ["SourceServerID"],
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].application_id #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"
    #   resp.items[0].data_replication_info.data_replication_error.raw_error #=> String
    #   resp.items[0].data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.items[0].data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.items[0].data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.items[0].data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.items[0].data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.items[0].data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"
    #   resp.items[0].data_replication_info.eta_date_time #=> String
    #   resp.items[0].data_replication_info.lag_duration #=> String
    #   resp.items[0].data_replication_info.last_snapshot_date_time #=> String
    #   resp.items[0].data_replication_info.replicated_disks #=> Array
    #   resp.items[0].data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.items[0].data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.items[0].data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.items[0].data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.items[0].data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.items[0].fqdn_for_action_framework #=> String
    #   resp.items[0].is_archived #=> Boolean
    #   resp.items[0].launched_instance.ec2_instance_id #=> String
    #   resp.items[0].launched_instance.first_boot #=> String, one of "WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"
    #   resp.items[0].launched_instance.job_id #=> String
    #   resp.items[0].life_cycle.added_to_service_date_time #=> String
    #   resp.items[0].life_cycle.elapsed_replication_duration #=> String
    #   resp.items[0].life_cycle.first_byte_date_time #=> String
    #   resp.items[0].life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.items[0].life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.items[0].life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.items[0].life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.items[0].life_cycle.last_seen_by_service_date_time #=> String
    #   resp.items[0].life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.items[0].life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.items[0].life_cycle.last_test.initiated.job_id #=> String
    #   resp.items[0].life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.items[0].life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED", "PENDING_INSTALLATION"
    #   resp.items[0].replication_type #=> String, one of "AGENT_BASED", "SNAPSHOT_SHIPPING"
    #   resp.items[0].source_properties.cpus #=> Array
    #   resp.items[0].source_properties.cpus[0].cores #=> Integer
    #   resp.items[0].source_properties.cpus[0].model_name #=> String
    #   resp.items[0].source_properties.disks #=> Array
    #   resp.items[0].source_properties.disks[0].bytes #=> Integer
    #   resp.items[0].source_properties.disks[0].device_name #=> String
    #   resp.items[0].source_properties.identification_hints.aws_instance_id #=> String
    #   resp.items[0].source_properties.identification_hints.fqdn #=> String
    #   resp.items[0].source_properties.identification_hints.hostname #=> String
    #   resp.items[0].source_properties.identification_hints.vm_path #=> String
    #   resp.items[0].source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.items[0].source_properties.last_updated_date_time #=> String
    #   resp.items[0].source_properties.network_interfaces #=> Array
    #   resp.items[0].source_properties.network_interfaces[0].ips #=> Array
    #   resp.items[0].source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.items[0].source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.items[0].source_properties.network_interfaces[0].mac_address #=> String
    #   resp.items[0].source_properties.os.full_string #=> String
    #   resp.items[0].source_properties.ram_bytes #=> Integer
    #   resp.items[0].source_properties.recommended_instance_type #=> String
    #   resp.items[0].source_server_id #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].user_provided_id #=> String
    #   resp.items[0].vcenter_client_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeSourceServers AWS API Documentation
    #
    # @overload describe_source_servers(params = {})
    # @param [Hash] params ({})
    def describe_source_servers(params = {}, options = {})
      req = build_request(:describe_source_servers, params)
      req.send_request(options)
    end

    # Returns a list of the installed vCenter clients.
    #
    # @option params [Integer] :max_results
    #   Maximum results to be returned in DescribeVcenterClients.
    #
    # @option params [String] :next_token
    #   Next pagination token to be provided for DescribeVcenterClients.
    #
    # @return [Types::DescribeVcenterClientsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVcenterClientsResponse#items #items} => Array&lt;Types::VcenterClient&gt;
    #   * {Types::DescribeVcenterClientsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vcenter_clients({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].datacenter_name #=> String
    #   resp.items[0].hostname #=> String
    #   resp.items[0].last_seen_datetime #=> String
    #   resp.items[0].source_server_tags #=> Hash
    #   resp.items[0].source_server_tags["TagKey"] #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].vcenter_client_id #=> String
    #   resp.items[0].vcenter_uuid #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DescribeVcenterClients AWS API Documentation
    #
    # @overload describe_vcenter_clients(params = {})
    # @param [Hash] params ({})
    def describe_vcenter_clients(params = {}, options = {})
      req = build_request(:describe_vcenter_clients, params)
      req.send_request(options)
    end

    # Disassociate applications from wave.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [required, Array<String>] :application_i_ds
    #   Application IDs list.
    #
    # @option params [required, String] :wave_id
    #   Wave ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_applications({
    #     account_id: "AccountID",
    #     application_i_ds: ["ApplicationID"], # required
    #     wave_id: "WaveID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisassociateApplications AWS API Documentation
    #
    # @overload disassociate_applications(params = {})
    # @param [Hash] params ({})
    def disassociate_applications(params = {}, options = {})
      req = build_request(:disassociate_applications, params)
      req.send_request(options)
    end

    # Disassociate source servers from application.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [required, String] :application_id
    #   Application ID.
    #
    # @option params [required, Array<String>] :source_server_i_ds
    #   Source server IDs list.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_source_servers({
    #     account_id: "AccountID",
    #     application_id: "ApplicationID", # required
    #     source_server_i_ds: ["SourceServerID"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisassociateSourceServers AWS API Documentation
    #
    # @overload disassociate_source_servers(params = {})
    # @param [Hash] params ({})
    def disassociate_source_servers(params = {}, options = {})
      req = build_request(:disassociate_source_servers, params)
      req.send_request(options)
    end

    # Disconnects specific Source Servers from Application Migration
    # Service. Data replication is stopped immediately. All AWS resources
    # created by Application Migration Service for enabling the replication
    # of these source servers will be terminated / deleted within 90
    # minutes. Launched Test or Cutover instances will NOT be terminated. If
    # the agent on the source server has not been prevented from
    # communicating with the Application Migration Service service, then it
    # will receive a command to uninstall itself (within approximately 10
    # minutes). The following properties of the SourceServer will be changed
    # immediately: dataReplicationInfo.dataReplicationState will be set to
    # DISCONNECTED; The totalStorageBytes property for each of
    # dataReplicationInfo.replicatedDisks will be set to zero;
    # dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration
    # will be nullified.
    #
    # @option params [String] :account_id
    #   Request to disconnect Source Server from service by Account ID.
    #
    # @option params [required, String] :source_server_id
    #   Request to disconnect Source Server from service by Server ID.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#application_id #application_id} => String
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#fqdn_for_action_framework #fqdn_for_action_framework} => String
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#user_provided_id #user_provided_id} => String
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_from_service({
    #     account_id: "AccountID",
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"
    #   resp.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"
    #   resp.data_replication_info.eta_date_time #=> String
    #   resp.data_replication_info.lag_duration #=> String
    #   resp.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data_replication_info.replicated_disks #=> Array
    #   resp.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.fqdn_for_action_framework #=> String
    #   resp.is_archived #=> Boolean
    #   resp.launched_instance.ec2_instance_id #=> String
    #   resp.launched_instance.first_boot #=> String, one of "WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"
    #   resp.launched_instance.job_id #=> String
    #   resp.life_cycle.added_to_service_date_time #=> String
    #   resp.life_cycle.elapsed_replication_duration #=> String
    #   resp.life_cycle.first_byte_date_time #=> String
    #   resp.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.job_id #=> String
    #   resp.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED", "PENDING_INSTALLATION"
    #   resp.replication_type #=> String, one of "AGENT_BASED", "SNAPSHOT_SHIPPING"
    #   resp.source_properties.cpus #=> Array
    #   resp.source_properties.cpus[0].cores #=> Integer
    #   resp.source_properties.cpus[0].model_name #=> String
    #   resp.source_properties.disks #=> Array
    #   resp.source_properties.disks[0].bytes #=> Integer
    #   resp.source_properties.disks[0].device_name #=> String
    #   resp.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_properties.identification_hints.fqdn #=> String
    #   resp.source_properties.identification_hints.hostname #=> String
    #   resp.source_properties.identification_hints.vm_path #=> String
    #   resp.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.source_properties.last_updated_date_time #=> String
    #   resp.source_properties.network_interfaces #=> Array
    #   resp.source_properties.network_interfaces[0].ips #=> Array
    #   resp.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.source_properties.os.full_string #=> String
    #   resp.source_properties.ram_bytes #=> Integer
    #   resp.source_properties.recommended_instance_type #=> String
    #   resp.source_server_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.user_provided_id #=> String
    #   resp.vcenter_client_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/DisconnectFromService AWS API Documentation
    #
    # @overload disconnect_from_service(params = {})
    # @param [Hash] params ({})
    def disconnect_from_service(params = {}, options = {})
      req = build_request(:disconnect_from_service, params)
      req.send_request(options)
    end

    # Finalizes the cutover immediately for specific Source Servers. All AWS
    # resources created by Application Migration Service for enabling the
    # replication of these source servers will be terminated / deleted
    # within 90 minutes. Launched Test or Cutover instances will NOT be
    # terminated. The AWS Replication Agent will receive a command to
    # uninstall itself (within 10 minutes). The following properties of the
    # SourceServer will be changed immediately:
    # dataReplicationInfo.dataReplicationState will be changed to
    # DISCONNECTED; The SourceServer.lifeCycle.state will be changed to
    # CUTOVER; The totalStorageBytes property fo each of
    # dataReplicationInfo.replicatedDisks will be set to zero;
    # dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration
    # will be nullified.
    #
    # @option params [String] :account_id
    #   Request to finalize Cutover by Source Account ID.
    #
    # @option params [required, String] :source_server_id
    #   Request to finalize Cutover by Source Server ID.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#application_id #application_id} => String
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#fqdn_for_action_framework #fqdn_for_action_framework} => String
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#user_provided_id #user_provided_id} => String
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.finalize_cutover({
    #     account_id: "AccountID",
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"
    #   resp.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"
    #   resp.data_replication_info.eta_date_time #=> String
    #   resp.data_replication_info.lag_duration #=> String
    #   resp.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data_replication_info.replicated_disks #=> Array
    #   resp.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.fqdn_for_action_framework #=> String
    #   resp.is_archived #=> Boolean
    #   resp.launched_instance.ec2_instance_id #=> String
    #   resp.launched_instance.first_boot #=> String, one of "WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"
    #   resp.launched_instance.job_id #=> String
    #   resp.life_cycle.added_to_service_date_time #=> String
    #   resp.life_cycle.elapsed_replication_duration #=> String
    #   resp.life_cycle.first_byte_date_time #=> String
    #   resp.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.job_id #=> String
    #   resp.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED", "PENDING_INSTALLATION"
    #   resp.replication_type #=> String, one of "AGENT_BASED", "SNAPSHOT_SHIPPING"
    #   resp.source_properties.cpus #=> Array
    #   resp.source_properties.cpus[0].cores #=> Integer
    #   resp.source_properties.cpus[0].model_name #=> String
    #   resp.source_properties.disks #=> Array
    #   resp.source_properties.disks[0].bytes #=> Integer
    #   resp.source_properties.disks[0].device_name #=> String
    #   resp.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_properties.identification_hints.fqdn #=> String
    #   resp.source_properties.identification_hints.hostname #=> String
    #   resp.source_properties.identification_hints.vm_path #=> String
    #   resp.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.source_properties.last_updated_date_time #=> String
    #   resp.source_properties.network_interfaces #=> Array
    #   resp.source_properties.network_interfaces[0].ips #=> Array
    #   resp.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.source_properties.os.full_string #=> String
    #   resp.source_properties.ram_bytes #=> Integer
    #   resp.source_properties.recommended_instance_type #=> String
    #   resp.source_server_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.user_provided_id #=> String
    #   resp.vcenter_client_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/FinalizeCutover AWS API Documentation
    #
    # @overload finalize_cutover(params = {})
    # @param [Hash] params ({})
    def finalize_cutover(params = {}, options = {})
      req = build_request(:finalize_cutover, params)
      req.send_request(options)
    end

    # Lists all LaunchConfigurations available, filtered by Source Server
    # IDs.
    #
    # @option params [String] :account_id
    #   Request to get Launch Configuration information by Account ID.
    #
    # @option params [required, String] :source_server_id
    #   Request to get Launch Configuration information by Source Server ID.
    #
    # @return [Types::LaunchConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LaunchConfiguration#boot_mode #boot_mode} => String
    #   * {Types::LaunchConfiguration#copy_private_ip #copy_private_ip} => Boolean
    #   * {Types::LaunchConfiguration#copy_tags #copy_tags} => Boolean
    #   * {Types::LaunchConfiguration#ec2_launch_template_id #ec2_launch_template_id} => String
    #   * {Types::LaunchConfiguration#enable_map_auto_tagging #enable_map_auto_tagging} => Boolean
    #   * {Types::LaunchConfiguration#launch_disposition #launch_disposition} => String
    #   * {Types::LaunchConfiguration#licensing #licensing} => Types::Licensing
    #   * {Types::LaunchConfiguration#map_auto_tagging_mpe_id #map_auto_tagging_mpe_id} => String
    #   * {Types::LaunchConfiguration#name #name} => String
    #   * {Types::LaunchConfiguration#post_launch_actions #post_launch_actions} => Types::PostLaunchActions
    #   * {Types::LaunchConfiguration#source_server_id #source_server_id} => String
    #   * {Types::LaunchConfiguration#target_instance_type_right_sizing_method #target_instance_type_right_sizing_method} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_configuration({
    #     account_id: "AccountID",
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.boot_mode #=> String, one of "LEGACY_BIOS", "UEFI"
    #   resp.copy_private_ip #=> Boolean
    #   resp.copy_tags #=> Boolean
    #   resp.ec2_launch_template_id #=> String
    #   resp.enable_map_auto_tagging #=> Boolean
    #   resp.launch_disposition #=> String, one of "STOPPED", "STARTED"
    #   resp.licensing.os_byol #=> Boolean
    #   resp.map_auto_tagging_mpe_id #=> String
    #   resp.name #=> String
    #   resp.post_launch_actions.cloud_watch_log_group_name #=> String
    #   resp.post_launch_actions.deployment #=> String, one of "TEST_AND_CUTOVER", "CUTOVER_ONLY", "TEST_ONLY"
    #   resp.post_launch_actions.s3_log_bucket #=> String
    #   resp.post_launch_actions.s3_output_key_prefix #=> String
    #   resp.post_launch_actions.ssm_documents #=> Array
    #   resp.post_launch_actions.ssm_documents[0].action_name #=> String
    #   resp.post_launch_actions.ssm_documents[0].external_parameters #=> Hash
    #   resp.post_launch_actions.ssm_documents[0].external_parameters["SsmDocumentParameterName"].dynamic_path #=> String
    #   resp.post_launch_actions.ssm_documents[0].must_succeed_for_cutover #=> Boolean
    #   resp.post_launch_actions.ssm_documents[0].parameters #=> Hash
    #   resp.post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"] #=> Array
    #   resp.post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"][0].parameter_name #=> String
    #   resp.post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"][0].parameter_type #=> String, one of "STRING"
    #   resp.post_launch_actions.ssm_documents[0].ssm_document_name #=> String
    #   resp.post_launch_actions.ssm_documents[0].timeout_seconds #=> Integer
    #   resp.source_server_id #=> String
    #   resp.target_instance_type_right_sizing_method #=> String, one of "NONE", "BASIC"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/GetLaunchConfiguration AWS API Documentation
    #
    # @overload get_launch_configuration(params = {})
    # @param [Hash] params ({})
    def get_launch_configuration(params = {}, options = {})
      req = build_request(:get_launch_configuration, params)
      req.send_request(options)
    end

    # Lists all ReplicationConfigurations, filtered by Source Server ID.
    #
    # @option params [String] :account_id
    #   Request to get Replication Configuration by Account ID.
    #
    # @option params [required, String] :source_server_id
    #   Request to get Replication Configuration by Source Server ID.
    #
    # @return [Types::ReplicationConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicationConfiguration#associate_default_security_group #associate_default_security_group} => Boolean
    #   * {Types::ReplicationConfiguration#bandwidth_throttling #bandwidth_throttling} => Integer
    #   * {Types::ReplicationConfiguration#create_public_ip #create_public_ip} => Boolean
    #   * {Types::ReplicationConfiguration#data_plane_routing #data_plane_routing} => String
    #   * {Types::ReplicationConfiguration#default_large_staging_disk_type #default_large_staging_disk_type} => String
    #   * {Types::ReplicationConfiguration#ebs_encryption #ebs_encryption} => String
    #   * {Types::ReplicationConfiguration#ebs_encryption_key_arn #ebs_encryption_key_arn} => String
    #   * {Types::ReplicationConfiguration#name #name} => String
    #   * {Types::ReplicationConfiguration#replicated_disks #replicated_disks} => Array&lt;Types::ReplicationConfigurationReplicatedDisk&gt;
    #   * {Types::ReplicationConfiguration#replication_server_instance_type #replication_server_instance_type} => String
    #   * {Types::ReplicationConfiguration#replication_servers_security_groups_i_ds #replication_servers_security_groups_i_ds} => Array&lt;String&gt;
    #   * {Types::ReplicationConfiguration#source_server_id #source_server_id} => String
    #   * {Types::ReplicationConfiguration#staging_area_subnet_id #staging_area_subnet_id} => String
    #   * {Types::ReplicationConfiguration#staging_area_tags #staging_area_tags} => Hash&lt;String,String&gt;
    #   * {Types::ReplicationConfiguration#use_dedicated_replication_server #use_dedicated_replication_server} => Boolean
    #   * {Types::ReplicationConfiguration#use_fips_endpoint #use_fips_endpoint} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_replication_configuration({
    #     account_id: "AccountID",
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.associate_default_security_group #=> Boolean
    #   resp.bandwidth_throttling #=> Integer
    #   resp.create_public_ip #=> Boolean
    #   resp.data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.default_large_staging_disk_type #=> String, one of "GP2", "ST1", "GP3"
    #   resp.ebs_encryption #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.ebs_encryption_key_arn #=> String
    #   resp.name #=> String
    #   resp.replicated_disks #=> Array
    #   resp.replicated_disks[0].device_name #=> String
    #   resp.replicated_disks[0].iops #=> Integer
    #   resp.replicated_disks[0].is_boot_disk #=> Boolean
    #   resp.replicated_disks[0].staging_disk_type #=> String, one of "AUTO", "GP2", "IO1", "SC1", "ST1", "STANDARD", "GP3", "IO2"
    #   resp.replicated_disks[0].throughput #=> Integer
    #   resp.replication_server_instance_type #=> String
    #   resp.replication_servers_security_groups_i_ds #=> Array
    #   resp.replication_servers_security_groups_i_ds[0] #=> String
    #   resp.source_server_id #=> String
    #   resp.staging_area_subnet_id #=> String
    #   resp.staging_area_tags #=> Hash
    #   resp.staging_area_tags["TagKey"] #=> String
    #   resp.use_dedicated_replication_server #=> Boolean
    #   resp.use_fips_endpoint #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/GetReplicationConfiguration AWS API Documentation
    #
    # @overload get_replication_configuration(params = {})
    # @param [Hash] params ({})
    def get_replication_configuration(params = {}, options = {})
      req = build_request(:get_replication_configuration, params)
      req.send_request(options)
    end

    # Initialize Application Migration Service.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/InitializeService AWS API Documentation
    #
    # @overload initialize_service(params = {})
    # @param [Hash] params ({})
    def initialize_service(params = {}, options = {})
      req = build_request(:initialize_service, params)
      req.send_request(options)
    end

    # Retrieves all applications or multiple applications by ID.
    #
    # @option params [String] :account_id
    #   Applications list Account ID.
    #
    # @option params [Types::ListApplicationsRequestFilters] :filters
    #   Applications list filters.
    #
    # @option params [Integer] :max_results
    #   Maximum results to return when listing applications.
    #
    # @option params [String] :next_token
    #   Request next token.
    #
    # @return [Types::ListApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsResponse#items #items} => Array&lt;Types::Application&gt;
    #   * {Types::ListApplicationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     account_id: "AccountID",
    #     filters: {
    #       application_i_ds: ["ApplicationID"],
    #       is_archived: false,
    #       wave_i_ds: ["WaveID"],
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].application_aggregated_status.health_status #=> String, one of "HEALTHY", "LAGGING", "ERROR"
    #   resp.items[0].application_aggregated_status.last_update_date_time #=> String
    #   resp.items[0].application_aggregated_status.progress_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED"
    #   resp.items[0].application_aggregated_status.total_source_servers #=> Integer
    #   resp.items[0].application_id #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].creation_date_time #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].is_archived #=> Boolean
    #   resp.items[0].last_modified_date_time #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].wave_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # List export errors.
    #
    # @option params [required, String] :export_id
    #   List export errors request export id.
    #
    # @option params [Integer] :max_results
    #   List export errors request max results.
    #
    # @option params [String] :next_token
    #   List export errors request next token.
    #
    # @return [Types::ListExportErrorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExportErrorsResponse#items #items} => Array&lt;Types::ExportTaskError&gt;
    #   * {Types::ListExportErrorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_export_errors({
    #     export_id: "ExportID", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].error_data.raw_error #=> String
    #   resp.items[0].error_date_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListExportErrors AWS API Documentation
    #
    # @overload list_export_errors(params = {})
    # @param [Hash] params ({})
    def list_export_errors(params = {}, options = {})
      req = build_request(:list_export_errors, params)
      req.send_request(options)
    end

    # List exports.
    #
    # @option params [Types::ListExportsRequestFilters] :filters
    #   List exports request filters.
    #
    # @option params [Integer] :max_results
    #   List export request max results.
    #
    # @option params [String] :next_token
    #   List export request next token.
    #
    # @return [Types::ListExportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExportsResponse#items #items} => Array&lt;Types::ExportTask&gt;
    #   * {Types::ListExportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_exports({
    #     filters: {
    #       export_i_ds: ["ExportID"],
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].creation_date_time #=> String
    #   resp.items[0].end_date_time #=> String
    #   resp.items[0].export_id #=> String
    #   resp.items[0].progress_percentage #=> Float
    #   resp.items[0].s3_bucket #=> String
    #   resp.items[0].s3_bucket_owner #=> String
    #   resp.items[0].s3_key #=> String
    #   resp.items[0].status #=> String, one of "PENDING", "STARTED", "FAILED", "SUCCEEDED"
    #   resp.items[0].summary.applications_count #=> Integer
    #   resp.items[0].summary.servers_count #=> Integer
    #   resp.items[0].summary.waves_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListExports AWS API Documentation
    #
    # @overload list_exports(params = {})
    # @param [Hash] params ({})
    def list_exports(params = {}, options = {})
      req = build_request(:list_exports, params)
      req.send_request(options)
    end

    # List import errors.
    #
    # @option params [required, String] :import_id
    #   List import errors request import id.
    #
    # @option params [Integer] :max_results
    #   List import errors request max results.
    #
    # @option params [String] :next_token
    #   List import errors request next token.
    #
    # @return [Types::ListImportErrorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportErrorsResponse#items #items} => Array&lt;Types::ImportTaskError&gt;
    #   * {Types::ListImportErrorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_import_errors({
    #     import_id: "ImportID", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].error_data.account_id #=> String
    #   resp.items[0].error_data.application_id #=> String
    #   resp.items[0].error_data.ec2_launch_template_id #=> String
    #   resp.items[0].error_data.raw_error #=> String
    #   resp.items[0].error_data.row_number #=> Integer
    #   resp.items[0].error_data.source_server_id #=> String
    #   resp.items[0].error_data.wave_id #=> String
    #   resp.items[0].error_date_time #=> String
    #   resp.items[0].error_type #=> String, one of "VALIDATION_ERROR", "PROCESSING_ERROR"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListImportErrors AWS API Documentation
    #
    # @overload list_import_errors(params = {})
    # @param [Hash] params ({})
    def list_import_errors(params = {}, options = {})
      req = build_request(:list_import_errors, params)
      req.send_request(options)
    end

    # List imports.
    #
    # @option params [Types::ListImportsRequestFilters] :filters
    #   List imports request filters.
    #
    # @option params [Integer] :max_results
    #   List imports request max results.
    #
    # @option params [String] :next_token
    #   List imports request next token.
    #
    # @return [Types::ListImportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportsResponse#items #items} => Array&lt;Types::ImportTask&gt;
    #   * {Types::ListImportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_imports({
    #     filters: {
    #       import_i_ds: ["ImportID"],
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].creation_date_time #=> String
    #   resp.items[0].end_date_time #=> String
    #   resp.items[0].import_id #=> String
    #   resp.items[0].progress_percentage #=> Float
    #   resp.items[0].s3_bucket_source.s3_bucket #=> String
    #   resp.items[0].s3_bucket_source.s3_bucket_owner #=> String
    #   resp.items[0].s3_bucket_source.s3_key #=> String
    #   resp.items[0].status #=> String, one of "PENDING", "STARTED", "FAILED", "SUCCEEDED"
    #   resp.items[0].summary.applications.created_count #=> Integer
    #   resp.items[0].summary.applications.modified_count #=> Integer
    #   resp.items[0].summary.servers.created_count #=> Integer
    #   resp.items[0].summary.servers.modified_count #=> Integer
    #   resp.items[0].summary.waves.created_count #=> Integer
    #   resp.items[0].summary.waves.modified_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListImports AWS API Documentation
    #
    # @overload list_imports(params = {})
    # @param [Hash] params ({})
    def list_imports(params = {}, options = {})
      req = build_request(:list_imports, params)
      req.send_request(options)
    end

    # List Managed Accounts.
    #
    # @option params [Integer] :max_results
    #   List managed accounts request max results.
    #
    # @option params [String] :next_token
    #   List managed accounts request next token.
    #
    # @return [Types::ListManagedAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedAccountsResponse#items #items} => Array&lt;Types::ManagedAccount&gt;
    #   * {Types::ListManagedAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_accounts({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListManagedAccounts AWS API Documentation
    #
    # @overload list_managed_accounts(params = {})
    # @param [Hash] params ({})
    def list_managed_accounts(params = {}, options = {})
      req = build_request(:list_managed_accounts, params)
      req.send_request(options)
    end

    # List source server post migration custom actions.
    #
    # @option params [String] :account_id
    #   Account ID to return when listing source server post migration custom
    #   actions.
    #
    # @option params [Types::SourceServerActionsRequestFilters] :filters
    #   Filters to apply when listing source server post migration custom
    #   actions.
    #
    # @option params [Integer] :max_results
    #   Maximum amount of items to return when listing source server post
    #   migration custom actions.
    #
    # @option params [String] :next_token
    #   Next token to use when listing source server post migration custom
    #   actions.
    #
    # @option params [required, String] :source_server_id
    #   Source server ID.
    #
    # @return [Types::ListSourceServerActionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSourceServerActionsResponse#items #items} => Array&lt;Types::SourceServerActionDocument&gt;
    #   * {Types::ListSourceServerActionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_source_server_actions({
    #     account_id: "AccountID",
    #     filters: {
    #       action_i_ds: ["ActionID"],
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].action_id #=> String
    #   resp.items[0].action_name #=> String
    #   resp.items[0].active #=> Boolean
    #   resp.items[0].category #=> String, one of "DISASTER_RECOVERY", "OPERATING_SYSTEM", "LICENSE_AND_SUBSCRIPTION", "VALIDATION", "OBSERVABILITY", "SECURITY", "NETWORKING", "CONFIGURATION", "BACKUP", "OTHER"
    #   resp.items[0].description #=> String
    #   resp.items[0].document_identifier #=> String
    #   resp.items[0].document_version #=> String
    #   resp.items[0].external_parameters #=> Hash
    #   resp.items[0].external_parameters["SsmDocumentParameterName"].dynamic_path #=> String
    #   resp.items[0].must_succeed_for_cutover #=> Boolean
    #   resp.items[0].order #=> Integer
    #   resp.items[0].parameters #=> Hash
    #   resp.items[0].parameters["SsmDocumentParameterName"] #=> Array
    #   resp.items[0].parameters["SsmDocumentParameterName"][0].parameter_name #=> String
    #   resp.items[0].parameters["SsmDocumentParameterName"][0].parameter_type #=> String, one of "STRING"
    #   resp.items[0].timeout_seconds #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListSourceServerActions AWS API Documentation
    #
    # @overload list_source_server_actions(params = {})
    # @param [Hash] params ({})
    def list_source_server_actions(params = {}, options = {})
      req = build_request(:list_source_server_actions, params)
      req.send_request(options)
    end

    # List all tags for your Application Migration Service resources.
    #
    # @option params [required, String] :resource_arn
    #   List tags for resource request by ARN.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # List template post migration custom actions.
    #
    # @option params [Types::TemplateActionsRequestFilters] :filters
    #   Filters to apply when listing template post migration custom actions.
    #
    # @option params [required, String] :launch_configuration_template_id
    #   Launch configuration template ID.
    #
    # @option params [Integer] :max_results
    #   Maximum amount of items to return when listing template post migration
    #   custom actions.
    #
    # @option params [String] :next_token
    #   Next token to use when listing template post migration custom actions.
    #
    # @return [Types::ListTemplateActionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplateActionsResponse#items #items} => Array&lt;Types::TemplateActionDocument&gt;
    #   * {Types::ListTemplateActionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_actions({
    #     filters: {
    #       action_i_ds: ["ActionID"],
    #     },
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].action_id #=> String
    #   resp.items[0].action_name #=> String
    #   resp.items[0].active #=> Boolean
    #   resp.items[0].category #=> String, one of "DISASTER_RECOVERY", "OPERATING_SYSTEM", "LICENSE_AND_SUBSCRIPTION", "VALIDATION", "OBSERVABILITY", "SECURITY", "NETWORKING", "CONFIGURATION", "BACKUP", "OTHER"
    #   resp.items[0].description #=> String
    #   resp.items[0].document_identifier #=> String
    #   resp.items[0].document_version #=> String
    #   resp.items[0].external_parameters #=> Hash
    #   resp.items[0].external_parameters["SsmDocumentParameterName"].dynamic_path #=> String
    #   resp.items[0].must_succeed_for_cutover #=> Boolean
    #   resp.items[0].operating_system #=> String
    #   resp.items[0].order #=> Integer
    #   resp.items[0].parameters #=> Hash
    #   resp.items[0].parameters["SsmDocumentParameterName"] #=> Array
    #   resp.items[0].parameters["SsmDocumentParameterName"][0].parameter_name #=> String
    #   resp.items[0].parameters["SsmDocumentParameterName"][0].parameter_type #=> String, one of "STRING"
    #   resp.items[0].timeout_seconds #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListTemplateActions AWS API Documentation
    #
    # @overload list_template_actions(params = {})
    # @param [Hash] params ({})
    def list_template_actions(params = {}, options = {})
      req = build_request(:list_template_actions, params)
      req.send_request(options)
    end

    # Retrieves all waves or multiple waves by ID.
    #
    # @option params [String] :account_id
    #   Request account ID.
    #
    # @option params [Types::ListWavesRequestFilters] :filters
    #   Waves list filters.
    #
    # @option params [Integer] :max_results
    #   Maximum results to return when listing waves.
    #
    # @option params [String] :next_token
    #   Request next token.
    #
    # @return [Types::ListWavesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWavesResponse#items #items} => Array&lt;Types::Wave&gt;
    #   * {Types::ListWavesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_waves({
    #     account_id: "AccountID",
    #     filters: {
    #       is_archived: false,
    #       wave_i_ds: ["WaveID"],
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].creation_date_time #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].is_archived #=> Boolean
    #   resp.items[0].last_modified_date_time #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].wave_aggregated_status.health_status #=> String, one of "HEALTHY", "LAGGING", "ERROR"
    #   resp.items[0].wave_aggregated_status.last_update_date_time #=> String
    #   resp.items[0].wave_aggregated_status.progress_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED"
    #   resp.items[0].wave_aggregated_status.replication_started_date_time #=> String
    #   resp.items[0].wave_aggregated_status.total_applications #=> Integer
    #   resp.items[0].wave_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ListWaves AWS API Documentation
    #
    # @overload list_waves(params = {})
    # @param [Hash] params ({})
    def list_waves(params = {}, options = {})
      req = build_request(:list_waves, params)
      req.send_request(options)
    end

    # Archives specific Source Servers by setting the
    # SourceServer.isArchived property to true for specified SourceServers
    # by ID. This command only works for SourceServers with a lifecycle.
    # state which equals DISCONNECTED or CUTOVER.
    #
    # @option params [String] :account_id
    #   Mark as archived by Account ID.
    #
    # @option params [required, String] :source_server_id
    #   Mark as archived by Source Server ID.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#application_id #application_id} => String
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#fqdn_for_action_framework #fqdn_for_action_framework} => String
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#user_provided_id #user_provided_id} => String
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.mark_as_archived({
    #     account_id: "AccountID",
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"
    #   resp.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"
    #   resp.data_replication_info.eta_date_time #=> String
    #   resp.data_replication_info.lag_duration #=> String
    #   resp.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data_replication_info.replicated_disks #=> Array
    #   resp.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.fqdn_for_action_framework #=> String
    #   resp.is_archived #=> Boolean
    #   resp.launched_instance.ec2_instance_id #=> String
    #   resp.launched_instance.first_boot #=> String, one of "WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"
    #   resp.launched_instance.job_id #=> String
    #   resp.life_cycle.added_to_service_date_time #=> String
    #   resp.life_cycle.elapsed_replication_duration #=> String
    #   resp.life_cycle.first_byte_date_time #=> String
    #   resp.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.job_id #=> String
    #   resp.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED", "PENDING_INSTALLATION"
    #   resp.replication_type #=> String, one of "AGENT_BASED", "SNAPSHOT_SHIPPING"
    #   resp.source_properties.cpus #=> Array
    #   resp.source_properties.cpus[0].cores #=> Integer
    #   resp.source_properties.cpus[0].model_name #=> String
    #   resp.source_properties.disks #=> Array
    #   resp.source_properties.disks[0].bytes #=> Integer
    #   resp.source_properties.disks[0].device_name #=> String
    #   resp.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_properties.identification_hints.fqdn #=> String
    #   resp.source_properties.identification_hints.hostname #=> String
    #   resp.source_properties.identification_hints.vm_path #=> String
    #   resp.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.source_properties.last_updated_date_time #=> String
    #   resp.source_properties.network_interfaces #=> Array
    #   resp.source_properties.network_interfaces[0].ips #=> Array
    #   resp.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.source_properties.os.full_string #=> String
    #   resp.source_properties.ram_bytes #=> Integer
    #   resp.source_properties.recommended_instance_type #=> String
    #   resp.source_server_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.user_provided_id #=> String
    #   resp.vcenter_client_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/MarkAsArchived AWS API Documentation
    #
    # @overload mark_as_archived(params = {})
    # @param [Hash] params ({})
    def mark_as_archived(params = {}, options = {})
      req = build_request(:mark_as_archived, params)
      req.send_request(options)
    end

    # Pause Replication.
    #
    # @option params [String] :account_id
    #   Pause Replication Request account ID.
    #
    # @option params [required, String] :source_server_id
    #   Pause Replication Request source server ID.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#application_id #application_id} => String
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#fqdn_for_action_framework #fqdn_for_action_framework} => String
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#user_provided_id #user_provided_id} => String
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.pause_replication({
    #     account_id: "AccountID",
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"
    #   resp.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"
    #   resp.data_replication_info.eta_date_time #=> String
    #   resp.data_replication_info.lag_duration #=> String
    #   resp.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data_replication_info.replicated_disks #=> Array
    #   resp.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.fqdn_for_action_framework #=> String
    #   resp.is_archived #=> Boolean
    #   resp.launched_instance.ec2_instance_id #=> String
    #   resp.launched_instance.first_boot #=> String, one of "WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"
    #   resp.launched_instance.job_id #=> String
    #   resp.life_cycle.added_to_service_date_time #=> String
    #   resp.life_cycle.elapsed_replication_duration #=> String
    #   resp.life_cycle.first_byte_date_time #=> String
    #   resp.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.job_id #=> String
    #   resp.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED", "PENDING_INSTALLATION"
    #   resp.replication_type #=> String, one of "AGENT_BASED", "SNAPSHOT_SHIPPING"
    #   resp.source_properties.cpus #=> Array
    #   resp.source_properties.cpus[0].cores #=> Integer
    #   resp.source_properties.cpus[0].model_name #=> String
    #   resp.source_properties.disks #=> Array
    #   resp.source_properties.disks[0].bytes #=> Integer
    #   resp.source_properties.disks[0].device_name #=> String
    #   resp.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_properties.identification_hints.fqdn #=> String
    #   resp.source_properties.identification_hints.hostname #=> String
    #   resp.source_properties.identification_hints.vm_path #=> String
    #   resp.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.source_properties.last_updated_date_time #=> String
    #   resp.source_properties.network_interfaces #=> Array
    #   resp.source_properties.network_interfaces[0].ips #=> Array
    #   resp.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.source_properties.os.full_string #=> String
    #   resp.source_properties.ram_bytes #=> Integer
    #   resp.source_properties.recommended_instance_type #=> String
    #   resp.source_server_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.user_provided_id #=> String
    #   resp.vcenter_client_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/PauseReplication AWS API Documentation
    #
    # @overload pause_replication(params = {})
    # @param [Hash] params ({})
    def pause_replication(params = {}, options = {})
      req = build_request(:pause_replication, params)
      req.send_request(options)
    end

    # Put source server post migration custom action.
    #
    # @option params [String] :account_id
    #   Source server post migration custom account ID.
    #
    # @option params [required, String] :action_id
    #   Source server post migration custom action ID.
    #
    # @option params [required, String] :action_name
    #   Source server post migration custom action name.
    #
    # @option params [Boolean] :active
    #   Source server post migration custom action active status.
    #
    # @option params [String] :category
    #   Source server post migration custom action category.
    #
    # @option params [String] :description
    #   Source server post migration custom action description.
    #
    # @option params [required, String] :document_identifier
    #   Source server post migration custom action document identifier.
    #
    # @option params [String] :document_version
    #   Source server post migration custom action document version.
    #
    # @option params [Hash<String,Types::SsmExternalParameter>] :external_parameters
    #   Source server post migration custom action external parameters.
    #
    # @option params [Boolean] :must_succeed_for_cutover
    #   Source server post migration custom action must succeed for cutover.
    #
    # @option params [required, Integer] :order
    #   Source server post migration custom action order.
    #
    # @option params [Hash<String,Array>] :parameters
    #   Source server post migration custom action parameters.
    #
    # @option params [required, String] :source_server_id
    #   Source server ID.
    #
    # @option params [Integer] :timeout_seconds
    #   Source server post migration custom action timeout in seconds.
    #
    # @return [Types::SourceServerActionDocument] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServerActionDocument#action_id #action_id} => String
    #   * {Types::SourceServerActionDocument#action_name #action_name} => String
    #   * {Types::SourceServerActionDocument#active #active} => Boolean
    #   * {Types::SourceServerActionDocument#category #category} => String
    #   * {Types::SourceServerActionDocument#description #description} => String
    #   * {Types::SourceServerActionDocument#document_identifier #document_identifier} => String
    #   * {Types::SourceServerActionDocument#document_version #document_version} => String
    #   * {Types::SourceServerActionDocument#external_parameters #external_parameters} => Hash&lt;String,Types::SsmExternalParameter&gt;
    #   * {Types::SourceServerActionDocument#must_succeed_for_cutover #must_succeed_for_cutover} => Boolean
    #   * {Types::SourceServerActionDocument#order #order} => Integer
    #   * {Types::SourceServerActionDocument#parameters #parameters} => Hash&lt;String,Array&lt;Types::SsmParameterStoreParameter&gt;&gt;
    #   * {Types::SourceServerActionDocument#timeout_seconds #timeout_seconds} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_source_server_action({
    #     account_id: "AccountID",
    #     action_id: "ActionID", # required
    #     action_name: "ActionName", # required
    #     active: false,
    #     category: "DISASTER_RECOVERY", # accepts DISASTER_RECOVERY, OPERATING_SYSTEM, LICENSE_AND_SUBSCRIPTION, VALIDATION, OBSERVABILITY, SECURITY, NETWORKING, CONFIGURATION, BACKUP, OTHER
    #     description: "ActionDescription",
    #     document_identifier: "BoundedString", # required
    #     document_version: "DocumentVersion",
    #     external_parameters: {
    #       "SsmDocumentParameterName" => {
    #         dynamic_path: "JmesPathString",
    #       },
    #     },
    #     must_succeed_for_cutover: false,
    #     order: 1, # required
    #     parameters: {
    #       "SsmDocumentParameterName" => [
    #         {
    #           parameter_name: "SsmParameterStoreParameterName", # required
    #           parameter_type: "STRING", # required, accepts STRING
    #         },
    #       ],
    #     },
    #     source_server_id: "SourceServerID", # required
    #     timeout_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.action_id #=> String
    #   resp.action_name #=> String
    #   resp.active #=> Boolean
    #   resp.category #=> String, one of "DISASTER_RECOVERY", "OPERATING_SYSTEM", "LICENSE_AND_SUBSCRIPTION", "VALIDATION", "OBSERVABILITY", "SECURITY", "NETWORKING", "CONFIGURATION", "BACKUP", "OTHER"
    #   resp.description #=> String
    #   resp.document_identifier #=> String
    #   resp.document_version #=> String
    #   resp.external_parameters #=> Hash
    #   resp.external_parameters["SsmDocumentParameterName"].dynamic_path #=> String
    #   resp.must_succeed_for_cutover #=> Boolean
    #   resp.order #=> Integer
    #   resp.parameters #=> Hash
    #   resp.parameters["SsmDocumentParameterName"] #=> Array
    #   resp.parameters["SsmDocumentParameterName"][0].parameter_name #=> String
    #   resp.parameters["SsmDocumentParameterName"][0].parameter_type #=> String, one of "STRING"
    #   resp.timeout_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/PutSourceServerAction AWS API Documentation
    #
    # @overload put_source_server_action(params = {})
    # @param [Hash] params ({})
    def put_source_server_action(params = {}, options = {})
      req = build_request(:put_source_server_action, params)
      req.send_request(options)
    end

    # Put template post migration custom action.
    #
    # @option params [required, String] :action_id
    #   Template post migration custom action ID.
    #
    # @option params [required, String] :action_name
    #   Template post migration custom action name.
    #
    # @option params [Boolean] :active
    #   Template post migration custom action active status.
    #
    # @option params [String] :category
    #   Template post migration custom action category.
    #
    # @option params [String] :description
    #   Template post migration custom action description.
    #
    # @option params [required, String] :document_identifier
    #   Template post migration custom action document identifier.
    #
    # @option params [String] :document_version
    #   Template post migration custom action document version.
    #
    # @option params [Hash<String,Types::SsmExternalParameter>] :external_parameters
    #   Template post migration custom action external parameters.
    #
    # @option params [required, String] :launch_configuration_template_id
    #   Launch configuration template ID.
    #
    # @option params [Boolean] :must_succeed_for_cutover
    #   Template post migration custom action must succeed for cutover.
    #
    # @option params [String] :operating_system
    #   Operating system eligible for this template post migration custom
    #   action.
    #
    # @option params [required, Integer] :order
    #   Template post migration custom action order.
    #
    # @option params [Hash<String,Array>] :parameters
    #   Template post migration custom action parameters.
    #
    # @option params [Integer] :timeout_seconds
    #   Template post migration custom action timeout in seconds.
    #
    # @return [Types::TemplateActionDocument] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TemplateActionDocument#action_id #action_id} => String
    #   * {Types::TemplateActionDocument#action_name #action_name} => String
    #   * {Types::TemplateActionDocument#active #active} => Boolean
    #   * {Types::TemplateActionDocument#category #category} => String
    #   * {Types::TemplateActionDocument#description #description} => String
    #   * {Types::TemplateActionDocument#document_identifier #document_identifier} => String
    #   * {Types::TemplateActionDocument#document_version #document_version} => String
    #   * {Types::TemplateActionDocument#external_parameters #external_parameters} => Hash&lt;String,Types::SsmExternalParameter&gt;
    #   * {Types::TemplateActionDocument#must_succeed_for_cutover #must_succeed_for_cutover} => Boolean
    #   * {Types::TemplateActionDocument#operating_system #operating_system} => String
    #   * {Types::TemplateActionDocument#order #order} => Integer
    #   * {Types::TemplateActionDocument#parameters #parameters} => Hash&lt;String,Array&lt;Types::SsmParameterStoreParameter&gt;&gt;
    #   * {Types::TemplateActionDocument#timeout_seconds #timeout_seconds} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_template_action({
    #     action_id: "ActionID", # required
    #     action_name: "BoundedString", # required
    #     active: false,
    #     category: "DISASTER_RECOVERY", # accepts DISASTER_RECOVERY, OPERATING_SYSTEM, LICENSE_AND_SUBSCRIPTION, VALIDATION, OBSERVABILITY, SECURITY, NETWORKING, CONFIGURATION, BACKUP, OTHER
    #     description: "ActionDescription",
    #     document_identifier: "BoundedString", # required
    #     document_version: "DocumentVersion",
    #     external_parameters: {
    #       "SsmDocumentParameterName" => {
    #         dynamic_path: "JmesPathString",
    #       },
    #     },
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #     must_succeed_for_cutover: false,
    #     operating_system: "OperatingSystemString",
    #     order: 1, # required
    #     parameters: {
    #       "SsmDocumentParameterName" => [
    #         {
    #           parameter_name: "SsmParameterStoreParameterName", # required
    #           parameter_type: "STRING", # required, accepts STRING
    #         },
    #       ],
    #     },
    #     timeout_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.action_id #=> String
    #   resp.action_name #=> String
    #   resp.active #=> Boolean
    #   resp.category #=> String, one of "DISASTER_RECOVERY", "OPERATING_SYSTEM", "LICENSE_AND_SUBSCRIPTION", "VALIDATION", "OBSERVABILITY", "SECURITY", "NETWORKING", "CONFIGURATION", "BACKUP", "OTHER"
    #   resp.description #=> String
    #   resp.document_identifier #=> String
    #   resp.document_version #=> String
    #   resp.external_parameters #=> Hash
    #   resp.external_parameters["SsmDocumentParameterName"].dynamic_path #=> String
    #   resp.must_succeed_for_cutover #=> Boolean
    #   resp.operating_system #=> String
    #   resp.order #=> Integer
    #   resp.parameters #=> Hash
    #   resp.parameters["SsmDocumentParameterName"] #=> Array
    #   resp.parameters["SsmDocumentParameterName"][0].parameter_name #=> String
    #   resp.parameters["SsmDocumentParameterName"][0].parameter_type #=> String, one of "STRING"
    #   resp.timeout_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/PutTemplateAction AWS API Documentation
    #
    # @overload put_template_action(params = {})
    # @param [Hash] params ({})
    def put_template_action(params = {}, options = {})
      req = build_request(:put_template_action, params)
      req.send_request(options)
    end

    # Remove source server post migration custom action.
    #
    # @option params [String] :account_id
    #   Source server post migration account ID.
    #
    # @option params [required, String] :action_id
    #   Source server post migration custom action ID to remove.
    #
    # @option params [required, String] :source_server_id
    #   Source server ID of the post migration custom action to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_source_server_action({
    #     account_id: "AccountID",
    #     action_id: "ActionID", # required
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RemoveSourceServerAction AWS API Documentation
    #
    # @overload remove_source_server_action(params = {})
    # @param [Hash] params ({})
    def remove_source_server_action(params = {}, options = {})
      req = build_request(:remove_source_server_action, params)
      req.send_request(options)
    end

    # Remove template post migration custom action.
    #
    # @option params [required, String] :action_id
    #   Template post migration custom action ID to remove.
    #
    # @option params [required, String] :launch_configuration_template_id
    #   Launch configuration template ID of the post migration custom action
    #   to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_template_action({
    #     action_id: "ActionID", # required
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RemoveTemplateAction AWS API Documentation
    #
    # @overload remove_template_action(params = {})
    # @param [Hash] params ({})
    def remove_template_action(params = {}, options = {})
      req = build_request(:remove_template_action, params)
      req.send_request(options)
    end

    # Resume Replication.
    #
    # @option params [String] :account_id
    #   Resume Replication Request account ID.
    #
    # @option params [required, String] :source_server_id
    #   Resume Replication Request source server ID.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#application_id #application_id} => String
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#fqdn_for_action_framework #fqdn_for_action_framework} => String
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#user_provided_id #user_provided_id} => String
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_replication({
    #     account_id: "AccountID",
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"
    #   resp.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"
    #   resp.data_replication_info.eta_date_time #=> String
    #   resp.data_replication_info.lag_duration #=> String
    #   resp.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data_replication_info.replicated_disks #=> Array
    #   resp.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.fqdn_for_action_framework #=> String
    #   resp.is_archived #=> Boolean
    #   resp.launched_instance.ec2_instance_id #=> String
    #   resp.launched_instance.first_boot #=> String, one of "WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"
    #   resp.launched_instance.job_id #=> String
    #   resp.life_cycle.added_to_service_date_time #=> String
    #   resp.life_cycle.elapsed_replication_duration #=> String
    #   resp.life_cycle.first_byte_date_time #=> String
    #   resp.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.job_id #=> String
    #   resp.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED", "PENDING_INSTALLATION"
    #   resp.replication_type #=> String, one of "AGENT_BASED", "SNAPSHOT_SHIPPING"
    #   resp.source_properties.cpus #=> Array
    #   resp.source_properties.cpus[0].cores #=> Integer
    #   resp.source_properties.cpus[0].model_name #=> String
    #   resp.source_properties.disks #=> Array
    #   resp.source_properties.disks[0].bytes #=> Integer
    #   resp.source_properties.disks[0].device_name #=> String
    #   resp.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_properties.identification_hints.fqdn #=> String
    #   resp.source_properties.identification_hints.hostname #=> String
    #   resp.source_properties.identification_hints.vm_path #=> String
    #   resp.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.source_properties.last_updated_date_time #=> String
    #   resp.source_properties.network_interfaces #=> Array
    #   resp.source_properties.network_interfaces[0].ips #=> Array
    #   resp.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.source_properties.os.full_string #=> String
    #   resp.source_properties.ram_bytes #=> Integer
    #   resp.source_properties.recommended_instance_type #=> String
    #   resp.source_server_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.user_provided_id #=> String
    #   resp.vcenter_client_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/ResumeReplication AWS API Documentation
    #
    # @overload resume_replication(params = {})
    # @param [Hash] params ({})
    def resume_replication(params = {}, options = {})
      req = build_request(:resume_replication, params)
      req.send_request(options)
    end

    # Causes the data replication initiation sequence to begin immediately
    # upon next Handshake for specified SourceServer IDs, regardless of when
    # the previous initiation started. This command will not work if the
    # SourceServer is not stalled or is in a DISCONNECTED or STOPPED state.
    #
    # @option params [String] :account_id
    #   Retry data replication for Account ID.
    #
    # @option params [required, String] :source_server_id
    #   Retry data replication for Source Server ID.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#application_id #application_id} => String
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#fqdn_for_action_framework #fqdn_for_action_framework} => String
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#user_provided_id #user_provided_id} => String
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retry_data_replication({
    #     account_id: "AccountID",
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"
    #   resp.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"
    #   resp.data_replication_info.eta_date_time #=> String
    #   resp.data_replication_info.lag_duration #=> String
    #   resp.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data_replication_info.replicated_disks #=> Array
    #   resp.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.fqdn_for_action_framework #=> String
    #   resp.is_archived #=> Boolean
    #   resp.launched_instance.ec2_instance_id #=> String
    #   resp.launched_instance.first_boot #=> String, one of "WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"
    #   resp.launched_instance.job_id #=> String
    #   resp.life_cycle.added_to_service_date_time #=> String
    #   resp.life_cycle.elapsed_replication_duration #=> String
    #   resp.life_cycle.first_byte_date_time #=> String
    #   resp.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.job_id #=> String
    #   resp.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED", "PENDING_INSTALLATION"
    #   resp.replication_type #=> String, one of "AGENT_BASED", "SNAPSHOT_SHIPPING"
    #   resp.source_properties.cpus #=> Array
    #   resp.source_properties.cpus[0].cores #=> Integer
    #   resp.source_properties.cpus[0].model_name #=> String
    #   resp.source_properties.disks #=> Array
    #   resp.source_properties.disks[0].bytes #=> Integer
    #   resp.source_properties.disks[0].device_name #=> String
    #   resp.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_properties.identification_hints.fqdn #=> String
    #   resp.source_properties.identification_hints.hostname #=> String
    #   resp.source_properties.identification_hints.vm_path #=> String
    #   resp.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.source_properties.last_updated_date_time #=> String
    #   resp.source_properties.network_interfaces #=> Array
    #   resp.source_properties.network_interfaces[0].ips #=> Array
    #   resp.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.source_properties.os.full_string #=> String
    #   resp.source_properties.ram_bytes #=> Integer
    #   resp.source_properties.recommended_instance_type #=> String
    #   resp.source_server_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.user_provided_id #=> String
    #   resp.vcenter_client_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/RetryDataReplication AWS API Documentation
    #
    # @overload retry_data_replication(params = {})
    # @param [Hash] params ({})
    def retry_data_replication(params = {}, options = {})
      req = build_request(:retry_data_replication, params)
      req.send_request(options)
    end

    # Launches a Cutover Instance for specific Source Servers. This command
    # starts a LAUNCH job whose initiatedBy property is StartCutover and
    # changes the SourceServer.lifeCycle.state property to CUTTING\_OVER.
    #
    # @option params [String] :account_id
    #   Start Cutover by Account IDs
    #
    # @option params [required, Array<String>] :source_server_i_ds
    #   Start Cutover by Source Server IDs.
    #
    # @option params [Hash<String,String>] :tags
    #   Start Cutover by Tags.
    #
    # @return [Types::StartCutoverResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCutoverResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_cutover({
    #     account_id: "AccountID",
    #     source_server_i_ds: ["SourceServerID"], # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job.arn #=> String
    #   resp.job.creation_date_time #=> String
    #   resp.job.end_date_time #=> String
    #   resp.job.initiated_by #=> String, one of "START_TEST", "START_CUTOVER", "DIAGNOSTIC", "TERMINATE"
    #   resp.job.job_id #=> String
    #   resp.job.participating_servers #=> Array
    #   resp.job.participating_servers[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.job.participating_servers[0].launched_ec2_instance_id #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list #=> Array
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].execution_id #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].execution_status #=> String, one of "IN_PROGRESS", "SUCCESS", "FAILED"
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].failure_reason #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.action_name #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.external_parameters #=> Hash
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.external_parameters["SsmDocumentParameterName"].dynamic_path #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.must_succeed_for_cutover #=> Boolean
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters #=> Hash
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters["SsmDocumentParameterName"] #=> Array
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters["SsmDocumentParameterName"][0].parameter_name #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters["SsmDocumentParameterName"][0].parameter_type #=> String, one of "STRING"
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.ssm_document_name #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.timeout_seconds #=> Integer
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document_type #=> String, one of "AUTOMATION", "COMMAND"
    #   resp.job.participating_servers[0].post_launch_actions_status.ssm_agent_discovery_datetime #=> String
    #   resp.job.participating_servers[0].source_server_id #=> String
    #   resp.job.status #=> String, one of "PENDING", "STARTED", "COMPLETED"
    #   resp.job.tags #=> Hash
    #   resp.job.tags["TagKey"] #=> String
    #   resp.job.type #=> String, one of "LAUNCH", "TERMINATE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartCutover AWS API Documentation
    #
    # @overload start_cutover(params = {})
    # @param [Hash] params ({})
    def start_cutover(params = {}, options = {})
      req = build_request(:start_cutover, params)
      req.send_request(options)
    end

    # Start export.
    #
    # @option params [required, String] :s3_bucket
    #   Start export request s3 bucket.
    #
    # @option params [String] :s3_bucket_owner
    #   Start export request s3 bucket owner.
    #
    # @option params [required, String] :s3_key
    #   Start export request s3key.
    #
    # @return [Types::StartExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartExportResponse#export_task #export_task} => Types::ExportTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_export({
    #     s3_bucket: "S3BucketName", # required
    #     s3_bucket_owner: "AccountID",
    #     s3_key: "S3Key", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.export_task.creation_date_time #=> String
    #   resp.export_task.end_date_time #=> String
    #   resp.export_task.export_id #=> String
    #   resp.export_task.progress_percentage #=> Float
    #   resp.export_task.s3_bucket #=> String
    #   resp.export_task.s3_bucket_owner #=> String
    #   resp.export_task.s3_key #=> String
    #   resp.export_task.status #=> String, one of "PENDING", "STARTED", "FAILED", "SUCCEEDED"
    #   resp.export_task.summary.applications_count #=> Integer
    #   resp.export_task.summary.servers_count #=> Integer
    #   resp.export_task.summary.waves_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartExport AWS API Documentation
    #
    # @overload start_export(params = {})
    # @param [Hash] params ({})
    def start_export(params = {}, options = {})
      req = build_request(:start_export, params)
      req.send_request(options)
    end

    # Start import.
    #
    # @option params [String] :client_token
    #   Start import request client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::S3BucketSource] :s3_bucket_source
    #   Start import request s3 bucket source.
    #
    # @return [Types::StartImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImportResponse#import_task #import_task} => Types::ImportTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import({
    #     client_token: "ClientIdempotencyToken",
    #     s3_bucket_source: { # required
    #       s3_bucket: "S3BucketName", # required
    #       s3_bucket_owner: "AccountID",
    #       s3_key: "S3Key", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.import_task.creation_date_time #=> String
    #   resp.import_task.end_date_time #=> String
    #   resp.import_task.import_id #=> String
    #   resp.import_task.progress_percentage #=> Float
    #   resp.import_task.s3_bucket_source.s3_bucket #=> String
    #   resp.import_task.s3_bucket_source.s3_bucket_owner #=> String
    #   resp.import_task.s3_bucket_source.s3_key #=> String
    #   resp.import_task.status #=> String, one of "PENDING", "STARTED", "FAILED", "SUCCEEDED"
    #   resp.import_task.summary.applications.created_count #=> Integer
    #   resp.import_task.summary.applications.modified_count #=> Integer
    #   resp.import_task.summary.servers.created_count #=> Integer
    #   resp.import_task.summary.servers.modified_count #=> Integer
    #   resp.import_task.summary.waves.created_count #=> Integer
    #   resp.import_task.summary.waves.modified_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartImport AWS API Documentation
    #
    # @overload start_import(params = {})
    # @param [Hash] params ({})
    def start_import(params = {}, options = {})
      req = build_request(:start_import, params)
      req.send_request(options)
    end

    # Starts replication for SNAPSHOT\_SHIPPING agents.
    #
    # @option params [String] :account_id
    #   Account ID on which to start replication.
    #
    # @option params [required, String] :source_server_id
    #   ID of source server on which to start replication.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#application_id #application_id} => String
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#fqdn_for_action_framework #fqdn_for_action_framework} => String
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#user_provided_id #user_provided_id} => String
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_replication({
    #     account_id: "AccountID",
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"
    #   resp.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"
    #   resp.data_replication_info.eta_date_time #=> String
    #   resp.data_replication_info.lag_duration #=> String
    #   resp.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data_replication_info.replicated_disks #=> Array
    #   resp.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.fqdn_for_action_framework #=> String
    #   resp.is_archived #=> Boolean
    #   resp.launched_instance.ec2_instance_id #=> String
    #   resp.launched_instance.first_boot #=> String, one of "WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"
    #   resp.launched_instance.job_id #=> String
    #   resp.life_cycle.added_to_service_date_time #=> String
    #   resp.life_cycle.elapsed_replication_duration #=> String
    #   resp.life_cycle.first_byte_date_time #=> String
    #   resp.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.job_id #=> String
    #   resp.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED", "PENDING_INSTALLATION"
    #   resp.replication_type #=> String, one of "AGENT_BASED", "SNAPSHOT_SHIPPING"
    #   resp.source_properties.cpus #=> Array
    #   resp.source_properties.cpus[0].cores #=> Integer
    #   resp.source_properties.cpus[0].model_name #=> String
    #   resp.source_properties.disks #=> Array
    #   resp.source_properties.disks[0].bytes #=> Integer
    #   resp.source_properties.disks[0].device_name #=> String
    #   resp.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_properties.identification_hints.fqdn #=> String
    #   resp.source_properties.identification_hints.hostname #=> String
    #   resp.source_properties.identification_hints.vm_path #=> String
    #   resp.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.source_properties.last_updated_date_time #=> String
    #   resp.source_properties.network_interfaces #=> Array
    #   resp.source_properties.network_interfaces[0].ips #=> Array
    #   resp.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.source_properties.os.full_string #=> String
    #   resp.source_properties.ram_bytes #=> Integer
    #   resp.source_properties.recommended_instance_type #=> String
    #   resp.source_server_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.user_provided_id #=> String
    #   resp.vcenter_client_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartReplication AWS API Documentation
    #
    # @overload start_replication(params = {})
    # @param [Hash] params ({})
    def start_replication(params = {}, options = {})
      req = build_request(:start_replication, params)
      req.send_request(options)
    end

    # Launches a Test Instance for specific Source Servers. This command
    # starts a LAUNCH job whose initiatedBy property is StartTest and
    # changes the SourceServer.lifeCycle.state property to TESTING.
    #
    # @option params [String] :account_id
    #   Start Test for Account ID.
    #
    # @option params [required, Array<String>] :source_server_i_ds
    #   Start Test for Source Server IDs.
    #
    # @option params [Hash<String,String>] :tags
    #   Start Test by Tags.
    #
    # @return [Types::StartTestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTestResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_test({
    #     account_id: "AccountID",
    #     source_server_i_ds: ["SourceServerID"], # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job.arn #=> String
    #   resp.job.creation_date_time #=> String
    #   resp.job.end_date_time #=> String
    #   resp.job.initiated_by #=> String, one of "START_TEST", "START_CUTOVER", "DIAGNOSTIC", "TERMINATE"
    #   resp.job.job_id #=> String
    #   resp.job.participating_servers #=> Array
    #   resp.job.participating_servers[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.job.participating_servers[0].launched_ec2_instance_id #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list #=> Array
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].execution_id #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].execution_status #=> String, one of "IN_PROGRESS", "SUCCESS", "FAILED"
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].failure_reason #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.action_name #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.external_parameters #=> Hash
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.external_parameters["SsmDocumentParameterName"].dynamic_path #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.must_succeed_for_cutover #=> Boolean
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters #=> Hash
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters["SsmDocumentParameterName"] #=> Array
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters["SsmDocumentParameterName"][0].parameter_name #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters["SsmDocumentParameterName"][0].parameter_type #=> String, one of "STRING"
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.ssm_document_name #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.timeout_seconds #=> Integer
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document_type #=> String, one of "AUTOMATION", "COMMAND"
    #   resp.job.participating_servers[0].post_launch_actions_status.ssm_agent_discovery_datetime #=> String
    #   resp.job.participating_servers[0].source_server_id #=> String
    #   resp.job.status #=> String, one of "PENDING", "STARTED", "COMPLETED"
    #   resp.job.tags #=> Hash
    #   resp.job.tags["TagKey"] #=> String
    #   resp.job.type #=> String, one of "LAUNCH", "TERMINATE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StartTest AWS API Documentation
    #
    # @overload start_test(params = {})
    # @param [Hash] params ({})
    def start_test(params = {}, options = {})
      req = build_request(:start_test, params)
      req.send_request(options)
    end

    # Stop Replication.
    #
    # @option params [String] :account_id
    #   Stop Replication Request account ID.
    #
    # @option params [required, String] :source_server_id
    #   Stop Replication Request source server ID.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#application_id #application_id} => String
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#fqdn_for_action_framework #fqdn_for_action_framework} => String
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#user_provided_id #user_provided_id} => String
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_replication({
    #     account_id: "AccountID",
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"
    #   resp.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"
    #   resp.data_replication_info.eta_date_time #=> String
    #   resp.data_replication_info.lag_duration #=> String
    #   resp.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data_replication_info.replicated_disks #=> Array
    #   resp.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.fqdn_for_action_framework #=> String
    #   resp.is_archived #=> Boolean
    #   resp.launched_instance.ec2_instance_id #=> String
    #   resp.launched_instance.first_boot #=> String, one of "WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"
    #   resp.launched_instance.job_id #=> String
    #   resp.life_cycle.added_to_service_date_time #=> String
    #   resp.life_cycle.elapsed_replication_duration #=> String
    #   resp.life_cycle.first_byte_date_time #=> String
    #   resp.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.job_id #=> String
    #   resp.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED", "PENDING_INSTALLATION"
    #   resp.replication_type #=> String, one of "AGENT_BASED", "SNAPSHOT_SHIPPING"
    #   resp.source_properties.cpus #=> Array
    #   resp.source_properties.cpus[0].cores #=> Integer
    #   resp.source_properties.cpus[0].model_name #=> String
    #   resp.source_properties.disks #=> Array
    #   resp.source_properties.disks[0].bytes #=> Integer
    #   resp.source_properties.disks[0].device_name #=> String
    #   resp.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_properties.identification_hints.fqdn #=> String
    #   resp.source_properties.identification_hints.hostname #=> String
    #   resp.source_properties.identification_hints.vm_path #=> String
    #   resp.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.source_properties.last_updated_date_time #=> String
    #   resp.source_properties.network_interfaces #=> Array
    #   resp.source_properties.network_interfaces[0].ips #=> Array
    #   resp.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.source_properties.os.full_string #=> String
    #   resp.source_properties.ram_bytes #=> Integer
    #   resp.source_properties.recommended_instance_type #=> String
    #   resp.source_server_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.user_provided_id #=> String
    #   resp.vcenter_client_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/StopReplication AWS API Documentation
    #
    # @overload stop_replication(params = {})
    # @param [Hash] params ({})
    def stop_replication(params = {}, options = {})
      req = build_request(:stop_replication, params)
      req.send_request(options)
    end

    # Adds or overwrites only the specified tags for the specified
    # Application Migration Service resource or resources. When you specify
    # an existing tag key, the value is overwritten with the new value. Each
    # resource can have a maximum of 50 tags. Each tag consists of a key and
    # optional value.
    #
    # @option params [required, String] :resource_arn
    #   Tag resource by ARN.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tag resource by Tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ARN", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Starts a job that terminates specific launched EC2 Test and Cutover
    # instances. This command will not work for any Source Server with a
    # lifecycle.state of TESTING, CUTTING\_OVER, or CUTOVER.
    #
    # @option params [String] :account_id
    #   Terminate Target instance by Account ID
    #
    # @option params [required, Array<String>] :source_server_i_ds
    #   Terminate Target instance by Source Server IDs.
    #
    # @option params [Hash<String,String>] :tags
    #   Terminate Target instance by Tags.
    #
    # @return [Types::TerminateTargetInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TerminateTargetInstancesResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_target_instances({
    #     account_id: "AccountID",
    #     source_server_i_ds: ["SourceServerID"], # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job.arn #=> String
    #   resp.job.creation_date_time #=> String
    #   resp.job.end_date_time #=> String
    #   resp.job.initiated_by #=> String, one of "START_TEST", "START_CUTOVER", "DIAGNOSTIC", "TERMINATE"
    #   resp.job.job_id #=> String
    #   resp.job.participating_servers #=> Array
    #   resp.job.participating_servers[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.job.participating_servers[0].launched_ec2_instance_id #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list #=> Array
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].execution_id #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].execution_status #=> String, one of "IN_PROGRESS", "SUCCESS", "FAILED"
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].failure_reason #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.action_name #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.external_parameters #=> Hash
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.external_parameters["SsmDocumentParameterName"].dynamic_path #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.must_succeed_for_cutover #=> Boolean
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters #=> Hash
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters["SsmDocumentParameterName"] #=> Array
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters["SsmDocumentParameterName"][0].parameter_name #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.parameters["SsmDocumentParameterName"][0].parameter_type #=> String, one of "STRING"
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.ssm_document_name #=> String
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document.timeout_seconds #=> Integer
    #   resp.job.participating_servers[0].post_launch_actions_status.post_launch_actions_launch_status_list[0].ssm_document_type #=> String, one of "AUTOMATION", "COMMAND"
    #   resp.job.participating_servers[0].post_launch_actions_status.ssm_agent_discovery_datetime #=> String
    #   resp.job.participating_servers[0].source_server_id #=> String
    #   resp.job.status #=> String, one of "PENDING", "STARTED", "COMPLETED"
    #   resp.job.tags #=> Hash
    #   resp.job.tags["TagKey"] #=> String
    #   resp.job.type #=> String, one of "LAUNCH", "TERMINATE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/TerminateTargetInstances AWS API Documentation
    #
    # @overload terminate_target_instances(params = {})
    # @param [Hash] params ({})
    def terminate_target_instances(params = {}, options = {})
      req = build_request(:terminate_target_instances, params)
      req.send_request(options)
    end

    # Unarchive application.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [required, String] :application_id
    #   Application ID.
    #
    # @return [Types::Application] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Application#application_aggregated_status #application_aggregated_status} => Types::ApplicationAggregatedStatus
    #   * {Types::Application#application_id #application_id} => String
    #   * {Types::Application#arn #arn} => String
    #   * {Types::Application#creation_date_time #creation_date_time} => String
    #   * {Types::Application#description #description} => String
    #   * {Types::Application#is_archived #is_archived} => Boolean
    #   * {Types::Application#last_modified_date_time #last_modified_date_time} => String
    #   * {Types::Application#name #name} => String
    #   * {Types::Application#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::Application#wave_id #wave_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unarchive_application({
    #     account_id: "AccountID",
    #     application_id: "ApplicationID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_aggregated_status.health_status #=> String, one of "HEALTHY", "LAGGING", "ERROR"
    #   resp.application_aggregated_status.last_update_date_time #=> String
    #   resp.application_aggregated_status.progress_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED"
    #   resp.application_aggregated_status.total_source_servers #=> Integer
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.creation_date_time #=> String
    #   resp.description #=> String
    #   resp.is_archived #=> Boolean
    #   resp.last_modified_date_time #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.wave_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UnarchiveApplication AWS API Documentation
    #
    # @overload unarchive_application(params = {})
    # @param [Hash] params ({})
    def unarchive_application(params = {}, options = {})
      req = build_request(:unarchive_application, params)
      req.send_request(options)
    end

    # Unarchive wave.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [required, String] :wave_id
    #   Wave ID.
    #
    # @return [Types::Wave] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Wave#arn #arn} => String
    #   * {Types::Wave#creation_date_time #creation_date_time} => String
    #   * {Types::Wave#description #description} => String
    #   * {Types::Wave#is_archived #is_archived} => Boolean
    #   * {Types::Wave#last_modified_date_time #last_modified_date_time} => String
    #   * {Types::Wave#name #name} => String
    #   * {Types::Wave#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::Wave#wave_aggregated_status #wave_aggregated_status} => Types::WaveAggregatedStatus
    #   * {Types::Wave#wave_id #wave_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unarchive_wave({
    #     account_id: "AccountID",
    #     wave_id: "WaveID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_date_time #=> String
    #   resp.description #=> String
    #   resp.is_archived #=> Boolean
    #   resp.last_modified_date_time #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.wave_aggregated_status.health_status #=> String, one of "HEALTHY", "LAGGING", "ERROR"
    #   resp.wave_aggregated_status.last_update_date_time #=> String
    #   resp.wave_aggregated_status.progress_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED"
    #   resp.wave_aggregated_status.replication_started_date_time #=> String
    #   resp.wave_aggregated_status.total_applications #=> Integer
    #   resp.wave_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UnarchiveWave AWS API Documentation
    #
    # @overload unarchive_wave(params = {})
    # @param [Hash] params ({})
    def unarchive_wave(params = {}, options = {})
      req = build_request(:unarchive_wave, params)
      req.send_request(options)
    end

    # Deletes the specified set of tags from the specified set of
    # Application Migration Service resources.
    #
    # @option params [required, String] :resource_arn
    #   Untag resource by ARN.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Untag resource by Keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update application.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [required, String] :application_id
    #   Application ID.
    #
    # @option params [String] :description
    #   Application description.
    #
    # @option params [String] :name
    #   Application name.
    #
    # @return [Types::Application] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Application#application_aggregated_status #application_aggregated_status} => Types::ApplicationAggregatedStatus
    #   * {Types::Application#application_id #application_id} => String
    #   * {Types::Application#arn #arn} => String
    #   * {Types::Application#creation_date_time #creation_date_time} => String
    #   * {Types::Application#description #description} => String
    #   * {Types::Application#is_archived #is_archived} => Boolean
    #   * {Types::Application#last_modified_date_time #last_modified_date_time} => String
    #   * {Types::Application#name #name} => String
    #   * {Types::Application#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::Application#wave_id #wave_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     account_id: "AccountID",
    #     application_id: "ApplicationID", # required
    #     description: "ApplicationDescription",
    #     name: "ApplicationName",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_aggregated_status.health_status #=> String, one of "HEALTHY", "LAGGING", "ERROR"
    #   resp.application_aggregated_status.last_update_date_time #=> String
    #   resp.application_aggregated_status.progress_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED"
    #   resp.application_aggregated_status.total_source_servers #=> Integer
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.creation_date_time #=> String
    #   resp.description #=> String
    #   resp.is_archived #=> Boolean
    #   resp.last_modified_date_time #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.wave_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Updates multiple LaunchConfigurations by Source Server ID.
    #
    # @option params [String] :account_id
    #   Update Launch configuration Account ID.
    #
    # @option params [String] :boot_mode
    #   Update Launch configuration boot mode request.
    #
    # @option params [Boolean] :copy_private_ip
    #   Update Launch configuration copy Private IP request.
    #
    # @option params [Boolean] :copy_tags
    #   Update Launch configuration copy Tags request.
    #
    # @option params [Boolean] :enable_map_auto_tagging
    #   Enable map auto tagging.
    #
    # @option params [String] :launch_disposition
    #   Update Launch configuration launch disposition request.
    #
    # @option params [Types::Licensing] :licensing
    #   Update Launch configuration licensing request.
    #
    # @option params [String] :map_auto_tagging_mpe_id
    #   Launch configuration map auto tagging MPE ID.
    #
    # @option params [String] :name
    #   Update Launch configuration name request.
    #
    # @option params [Types::PostLaunchActions] :post_launch_actions
    #   Post Launch Actions to executed on the Test or Cutover instance.
    #
    # @option params [required, String] :source_server_id
    #   Update Launch configuration by Source Server ID request.
    #
    # @option params [String] :target_instance_type_right_sizing_method
    #   Update Launch configuration Target instance right sizing request.
    #
    # @return [Types::LaunchConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LaunchConfiguration#boot_mode #boot_mode} => String
    #   * {Types::LaunchConfiguration#copy_private_ip #copy_private_ip} => Boolean
    #   * {Types::LaunchConfiguration#copy_tags #copy_tags} => Boolean
    #   * {Types::LaunchConfiguration#ec2_launch_template_id #ec2_launch_template_id} => String
    #   * {Types::LaunchConfiguration#enable_map_auto_tagging #enable_map_auto_tagging} => Boolean
    #   * {Types::LaunchConfiguration#launch_disposition #launch_disposition} => String
    #   * {Types::LaunchConfiguration#licensing #licensing} => Types::Licensing
    #   * {Types::LaunchConfiguration#map_auto_tagging_mpe_id #map_auto_tagging_mpe_id} => String
    #   * {Types::LaunchConfiguration#name #name} => String
    #   * {Types::LaunchConfiguration#post_launch_actions #post_launch_actions} => Types::PostLaunchActions
    #   * {Types::LaunchConfiguration#source_server_id #source_server_id} => String
    #   * {Types::LaunchConfiguration#target_instance_type_right_sizing_method #target_instance_type_right_sizing_method} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_launch_configuration({
    #     account_id: "AccountID",
    #     boot_mode: "LEGACY_BIOS", # accepts LEGACY_BIOS, UEFI
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     enable_map_auto_tagging: false,
    #     launch_disposition: "STOPPED", # accepts STOPPED, STARTED
    #     licensing: {
    #       os_byol: false,
    #     },
    #     map_auto_tagging_mpe_id: "TagValue",
    #     name: "SmallBoundedString",
    #     post_launch_actions: {
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       deployment: "TEST_AND_CUTOVER", # accepts TEST_AND_CUTOVER, CUTOVER_ONLY, TEST_ONLY
    #       s3_log_bucket: "S3LogBucketName",
    #       s3_output_key_prefix: "BoundedString",
    #       ssm_documents: [
    #         {
    #           action_name: "BoundedString", # required
    #           external_parameters: {
    #             "SsmDocumentParameterName" => {
    #               dynamic_path: "JmesPathString",
    #             },
    #           },
    #           must_succeed_for_cutover: false,
    #           parameters: {
    #             "SsmDocumentParameterName" => [
    #               {
    #                 parameter_name: "SsmParameterStoreParameterName", # required
    #                 parameter_type: "STRING", # required, accepts STRING
    #               },
    #             ],
    #           },
    #           ssm_document_name: "SsmDocumentName", # required
    #           timeout_seconds: 1,
    #         },
    #       ],
    #     },
    #     source_server_id: "SourceServerID", # required
    #     target_instance_type_right_sizing_method: "NONE", # accepts NONE, BASIC
    #   })
    #
    # @example Response structure
    #
    #   resp.boot_mode #=> String, one of "LEGACY_BIOS", "UEFI"
    #   resp.copy_private_ip #=> Boolean
    #   resp.copy_tags #=> Boolean
    #   resp.ec2_launch_template_id #=> String
    #   resp.enable_map_auto_tagging #=> Boolean
    #   resp.launch_disposition #=> String, one of "STOPPED", "STARTED"
    #   resp.licensing.os_byol #=> Boolean
    #   resp.map_auto_tagging_mpe_id #=> String
    #   resp.name #=> String
    #   resp.post_launch_actions.cloud_watch_log_group_name #=> String
    #   resp.post_launch_actions.deployment #=> String, one of "TEST_AND_CUTOVER", "CUTOVER_ONLY", "TEST_ONLY"
    #   resp.post_launch_actions.s3_log_bucket #=> String
    #   resp.post_launch_actions.s3_output_key_prefix #=> String
    #   resp.post_launch_actions.ssm_documents #=> Array
    #   resp.post_launch_actions.ssm_documents[0].action_name #=> String
    #   resp.post_launch_actions.ssm_documents[0].external_parameters #=> Hash
    #   resp.post_launch_actions.ssm_documents[0].external_parameters["SsmDocumentParameterName"].dynamic_path #=> String
    #   resp.post_launch_actions.ssm_documents[0].must_succeed_for_cutover #=> Boolean
    #   resp.post_launch_actions.ssm_documents[0].parameters #=> Hash
    #   resp.post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"] #=> Array
    #   resp.post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"][0].parameter_name #=> String
    #   resp.post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"][0].parameter_type #=> String, one of "STRING"
    #   resp.post_launch_actions.ssm_documents[0].ssm_document_name #=> String
    #   resp.post_launch_actions.ssm_documents[0].timeout_seconds #=> Integer
    #   resp.source_server_id #=> String
    #   resp.target_instance_type_right_sizing_method #=> String, one of "NONE", "BASIC"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateLaunchConfiguration AWS API Documentation
    #
    # @overload update_launch_configuration(params = {})
    # @param [Hash] params ({})
    def update_launch_configuration(params = {}, options = {})
      req = build_request(:update_launch_configuration, params)
      req.send_request(options)
    end

    # Updates an existing Launch Configuration Template by ID.
    #
    # @option params [Boolean] :associate_public_ip_address
    #   Associate public Ip address.
    #
    # @option params [String] :boot_mode
    #   Launch configuration template boot mode.
    #
    # @option params [Boolean] :copy_private_ip
    #   Copy private Ip.
    #
    # @option params [Boolean] :copy_tags
    #   Copy tags.
    #
    # @option params [Boolean] :enable_map_auto_tagging
    #   Enable map auto tagging.
    #
    # @option params [Types::LaunchTemplateDiskConf] :large_volume_conf
    #   Large volume config.
    #
    # @option params [required, String] :launch_configuration_template_id
    #   Launch Configuration Template ID.
    #
    # @option params [String] :launch_disposition
    #   Launch disposition.
    #
    # @option params [Types::Licensing] :licensing
    #   Configure Licensing.
    #
    # @option params [String] :map_auto_tagging_mpe_id
    #   Launch configuration template map auto tagging MPE ID.
    #
    # @option params [Types::PostLaunchActions] :post_launch_actions
    #   Post Launch Action to execute on the Test or Cutover instance.
    #
    # @option params [Types::LaunchTemplateDiskConf] :small_volume_conf
    #   Small volume config.
    #
    # @option params [Integer] :small_volume_max_size
    #   Small volume maximum size.
    #
    # @option params [String] :target_instance_type_right_sizing_method
    #   Target instance type right-sizing method.
    #
    # @return [Types::LaunchConfigurationTemplate] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LaunchConfigurationTemplate#arn #arn} => String
    #   * {Types::LaunchConfigurationTemplate#associate_public_ip_address #associate_public_ip_address} => Boolean
    #   * {Types::LaunchConfigurationTemplate#boot_mode #boot_mode} => String
    #   * {Types::LaunchConfigurationTemplate#copy_private_ip #copy_private_ip} => Boolean
    #   * {Types::LaunchConfigurationTemplate#copy_tags #copy_tags} => Boolean
    #   * {Types::LaunchConfigurationTemplate#ec2_launch_template_id #ec2_launch_template_id} => String
    #   * {Types::LaunchConfigurationTemplate#enable_map_auto_tagging #enable_map_auto_tagging} => Boolean
    #   * {Types::LaunchConfigurationTemplate#large_volume_conf #large_volume_conf} => Types::LaunchTemplateDiskConf
    #   * {Types::LaunchConfigurationTemplate#launch_configuration_template_id #launch_configuration_template_id} => String
    #   * {Types::LaunchConfigurationTemplate#launch_disposition #launch_disposition} => String
    #   * {Types::LaunchConfigurationTemplate#licensing #licensing} => Types::Licensing
    #   * {Types::LaunchConfigurationTemplate#map_auto_tagging_mpe_id #map_auto_tagging_mpe_id} => String
    #   * {Types::LaunchConfigurationTemplate#post_launch_actions #post_launch_actions} => Types::PostLaunchActions
    #   * {Types::LaunchConfigurationTemplate#small_volume_conf #small_volume_conf} => Types::LaunchTemplateDiskConf
    #   * {Types::LaunchConfigurationTemplate#small_volume_max_size #small_volume_max_size} => Integer
    #   * {Types::LaunchConfigurationTemplate#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::LaunchConfigurationTemplate#target_instance_type_right_sizing_method #target_instance_type_right_sizing_method} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_launch_configuration_template({
    #     associate_public_ip_address: false,
    #     boot_mode: "LEGACY_BIOS", # accepts LEGACY_BIOS, UEFI
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     enable_map_auto_tagging: false,
    #     large_volume_conf: {
    #       iops: 1,
    #       throughput: 1,
    #       volume_type: "io1", # accepts io1, io2, gp3, gp2, st1, sc1, standard
    #     },
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #     launch_disposition: "STOPPED", # accepts STOPPED, STARTED
    #     licensing: {
    #       os_byol: false,
    #     },
    #     map_auto_tagging_mpe_id: "TagValue",
    #     post_launch_actions: {
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       deployment: "TEST_AND_CUTOVER", # accepts TEST_AND_CUTOVER, CUTOVER_ONLY, TEST_ONLY
    #       s3_log_bucket: "S3LogBucketName",
    #       s3_output_key_prefix: "BoundedString",
    #       ssm_documents: [
    #         {
    #           action_name: "BoundedString", # required
    #           external_parameters: {
    #             "SsmDocumentParameterName" => {
    #               dynamic_path: "JmesPathString",
    #             },
    #           },
    #           must_succeed_for_cutover: false,
    #           parameters: {
    #             "SsmDocumentParameterName" => [
    #               {
    #                 parameter_name: "SsmParameterStoreParameterName", # required
    #                 parameter_type: "STRING", # required, accepts STRING
    #               },
    #             ],
    #           },
    #           ssm_document_name: "SsmDocumentName", # required
    #           timeout_seconds: 1,
    #         },
    #       ],
    #     },
    #     small_volume_conf: {
    #       iops: 1,
    #       throughput: 1,
    #       volume_type: "io1", # accepts io1, io2, gp3, gp2, st1, sc1, standard
    #     },
    #     small_volume_max_size: 1,
    #     target_instance_type_right_sizing_method: "NONE", # accepts NONE, BASIC
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.associate_public_ip_address #=> Boolean
    #   resp.boot_mode #=> String, one of "LEGACY_BIOS", "UEFI"
    #   resp.copy_private_ip #=> Boolean
    #   resp.copy_tags #=> Boolean
    #   resp.ec2_launch_template_id #=> String
    #   resp.enable_map_auto_tagging #=> Boolean
    #   resp.large_volume_conf.iops #=> Integer
    #   resp.large_volume_conf.throughput #=> Integer
    #   resp.large_volume_conf.volume_type #=> String, one of "io1", "io2", "gp3", "gp2", "st1", "sc1", "standard"
    #   resp.launch_configuration_template_id #=> String
    #   resp.launch_disposition #=> String, one of "STOPPED", "STARTED"
    #   resp.licensing.os_byol #=> Boolean
    #   resp.map_auto_tagging_mpe_id #=> String
    #   resp.post_launch_actions.cloud_watch_log_group_name #=> String
    #   resp.post_launch_actions.deployment #=> String, one of "TEST_AND_CUTOVER", "CUTOVER_ONLY", "TEST_ONLY"
    #   resp.post_launch_actions.s3_log_bucket #=> String
    #   resp.post_launch_actions.s3_output_key_prefix #=> String
    #   resp.post_launch_actions.ssm_documents #=> Array
    #   resp.post_launch_actions.ssm_documents[0].action_name #=> String
    #   resp.post_launch_actions.ssm_documents[0].external_parameters #=> Hash
    #   resp.post_launch_actions.ssm_documents[0].external_parameters["SsmDocumentParameterName"].dynamic_path #=> String
    #   resp.post_launch_actions.ssm_documents[0].must_succeed_for_cutover #=> Boolean
    #   resp.post_launch_actions.ssm_documents[0].parameters #=> Hash
    #   resp.post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"] #=> Array
    #   resp.post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"][0].parameter_name #=> String
    #   resp.post_launch_actions.ssm_documents[0].parameters["SsmDocumentParameterName"][0].parameter_type #=> String, one of "STRING"
    #   resp.post_launch_actions.ssm_documents[0].ssm_document_name #=> String
    #   resp.post_launch_actions.ssm_documents[0].timeout_seconds #=> Integer
    #   resp.small_volume_conf.iops #=> Integer
    #   resp.small_volume_conf.throughput #=> Integer
    #   resp.small_volume_conf.volume_type #=> String, one of "io1", "io2", "gp3", "gp2", "st1", "sc1", "standard"
    #   resp.small_volume_max_size #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.target_instance_type_right_sizing_method #=> String, one of "NONE", "BASIC"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateLaunchConfigurationTemplate AWS API Documentation
    #
    # @overload update_launch_configuration_template(params = {})
    # @param [Hash] params ({})
    def update_launch_configuration_template(params = {}, options = {})
      req = build_request(:update_launch_configuration_template, params)
      req.send_request(options)
    end

    # Allows you to update multiple ReplicationConfigurations by Source
    # Server ID.
    #
    # @option params [String] :account_id
    #   Update replication configuration Account ID request.
    #
    # @option params [Boolean] :associate_default_security_group
    #   Update replication configuration associate default Application
    #   Migration Service Security group request.
    #
    # @option params [Integer] :bandwidth_throttling
    #   Update replication configuration bandwidth throttling request.
    #
    # @option params [Boolean] :create_public_ip
    #   Update replication configuration create Public IP request.
    #
    # @option params [String] :data_plane_routing
    #   Update replication configuration data plane routing request.
    #
    # @option params [String] :default_large_staging_disk_type
    #   Update replication configuration use default large Staging Disk type
    #   request.
    #
    # @option params [String] :ebs_encryption
    #   Update replication configuration EBS encryption request.
    #
    # @option params [String] :ebs_encryption_key_arn
    #   Update replication configuration EBS encryption key ARN request.
    #
    # @option params [String] :name
    #   Update replication configuration name request.
    #
    # @option params [Array<Types::ReplicationConfigurationReplicatedDisk>] :replicated_disks
    #   Update replication configuration replicated disks request.
    #
    # @option params [String] :replication_server_instance_type
    #   Update replication configuration Replication Server instance type
    #   request.
    #
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   Update replication configuration Replication Server Security Groups
    #   IDs request.
    #
    # @option params [required, String] :source_server_id
    #   Update replication configuration Source Server ID request.
    #
    # @option params [String] :staging_area_subnet_id
    #   Update replication configuration Staging Area subnet request.
    #
    # @option params [Hash<String,String>] :staging_area_tags
    #   Update replication configuration Staging Area Tags request.
    #
    # @option params [Boolean] :use_dedicated_replication_server
    #   Update replication configuration use dedicated Replication Server
    #   request.
    #
    # @option params [Boolean] :use_fips_endpoint
    #   Update replication configuration use Fips Endpoint.
    #
    # @return [Types::ReplicationConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicationConfiguration#associate_default_security_group #associate_default_security_group} => Boolean
    #   * {Types::ReplicationConfiguration#bandwidth_throttling #bandwidth_throttling} => Integer
    #   * {Types::ReplicationConfiguration#create_public_ip #create_public_ip} => Boolean
    #   * {Types::ReplicationConfiguration#data_plane_routing #data_plane_routing} => String
    #   * {Types::ReplicationConfiguration#default_large_staging_disk_type #default_large_staging_disk_type} => String
    #   * {Types::ReplicationConfiguration#ebs_encryption #ebs_encryption} => String
    #   * {Types::ReplicationConfiguration#ebs_encryption_key_arn #ebs_encryption_key_arn} => String
    #   * {Types::ReplicationConfiguration#name #name} => String
    #   * {Types::ReplicationConfiguration#replicated_disks #replicated_disks} => Array&lt;Types::ReplicationConfigurationReplicatedDisk&gt;
    #   * {Types::ReplicationConfiguration#replication_server_instance_type #replication_server_instance_type} => String
    #   * {Types::ReplicationConfiguration#replication_servers_security_groups_i_ds #replication_servers_security_groups_i_ds} => Array&lt;String&gt;
    #   * {Types::ReplicationConfiguration#source_server_id #source_server_id} => String
    #   * {Types::ReplicationConfiguration#staging_area_subnet_id #staging_area_subnet_id} => String
    #   * {Types::ReplicationConfiguration#staging_area_tags #staging_area_tags} => Hash&lt;String,String&gt;
    #   * {Types::ReplicationConfiguration#use_dedicated_replication_server #use_dedicated_replication_server} => Boolean
    #   * {Types::ReplicationConfiguration#use_fips_endpoint #use_fips_endpoint} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_replication_configuration({
    #     account_id: "AccountID",
    #     associate_default_security_group: false,
    #     bandwidth_throttling: 1,
    #     create_public_ip: false,
    #     data_plane_routing: "PRIVATE_IP", # accepts PRIVATE_IP, PUBLIC_IP
    #     default_large_staging_disk_type: "GP2", # accepts GP2, ST1, GP3
    #     ebs_encryption: "DEFAULT", # accepts DEFAULT, CUSTOM
    #     ebs_encryption_key_arn: "ARN",
    #     name: "SmallBoundedString",
    #     replicated_disks: [
    #       {
    #         device_name: "BoundedString",
    #         iops: 1,
    #         is_boot_disk: false,
    #         staging_disk_type: "AUTO", # accepts AUTO, GP2, IO1, SC1, ST1, STANDARD, GP3, IO2
    #         throughput: 1,
    #       },
    #     ],
    #     replication_server_instance_type: "EC2InstanceType",
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     source_server_id: "SourceServerID", # required
    #     staging_area_subnet_id: "SubnetID",
    #     staging_area_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     use_dedicated_replication_server: false,
    #     use_fips_endpoint: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.associate_default_security_group #=> Boolean
    #   resp.bandwidth_throttling #=> Integer
    #   resp.create_public_ip #=> Boolean
    #   resp.data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.default_large_staging_disk_type #=> String, one of "GP2", "ST1", "GP3"
    #   resp.ebs_encryption #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.ebs_encryption_key_arn #=> String
    #   resp.name #=> String
    #   resp.replicated_disks #=> Array
    #   resp.replicated_disks[0].device_name #=> String
    #   resp.replicated_disks[0].iops #=> Integer
    #   resp.replicated_disks[0].is_boot_disk #=> Boolean
    #   resp.replicated_disks[0].staging_disk_type #=> String, one of "AUTO", "GP2", "IO1", "SC1", "ST1", "STANDARD", "GP3", "IO2"
    #   resp.replicated_disks[0].throughput #=> Integer
    #   resp.replication_server_instance_type #=> String
    #   resp.replication_servers_security_groups_i_ds #=> Array
    #   resp.replication_servers_security_groups_i_ds[0] #=> String
    #   resp.source_server_id #=> String
    #   resp.staging_area_subnet_id #=> String
    #   resp.staging_area_tags #=> Hash
    #   resp.staging_area_tags["TagKey"] #=> String
    #   resp.use_dedicated_replication_server #=> Boolean
    #   resp.use_fips_endpoint #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateReplicationConfiguration AWS API Documentation
    #
    # @overload update_replication_configuration(params = {})
    # @param [Hash] params ({})
    def update_replication_configuration(params = {}, options = {})
      req = build_request(:update_replication_configuration, params)
      req.send_request(options)
    end

    # Updates multiple ReplicationConfigurationTemplates by ID.
    #
    # @option params [String] :arn
    #   Update replication configuration template ARN request.
    #
    # @option params [Boolean] :associate_default_security_group
    #   Update replication configuration template associate default
    #   Application Migration Service Security group request.
    #
    # @option params [Integer] :bandwidth_throttling
    #   Update replication configuration template bandwidth throttling
    #   request.
    #
    # @option params [Boolean] :create_public_ip
    #   Update replication configuration template create Public IP request.
    #
    # @option params [String] :data_plane_routing
    #   Update replication configuration template data plane routing request.
    #
    # @option params [String] :default_large_staging_disk_type
    #   Update replication configuration template use default large Staging
    #   Disk type request.
    #
    # @option params [String] :ebs_encryption
    #   Update replication configuration template EBS encryption request.
    #
    # @option params [String] :ebs_encryption_key_arn
    #   Update replication configuration template EBS encryption key ARN
    #   request.
    #
    # @option params [required, String] :replication_configuration_template_id
    #   Update replication configuration template template ID request.
    #
    # @option params [String] :replication_server_instance_type
    #   Update replication configuration template Replication Server instance
    #   type request.
    #
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   Update replication configuration template Replication Server Security
    #   groups IDs request.
    #
    # @option params [String] :staging_area_subnet_id
    #   Update replication configuration template Staging Area subnet ID
    #   request.
    #
    # @option params [Hash<String,String>] :staging_area_tags
    #   Update replication configuration template Staging Area Tags request.
    #
    # @option params [Boolean] :use_dedicated_replication_server
    #   Update replication configuration template use dedicated Replication
    #   Server request.
    #
    # @option params [Boolean] :use_fips_endpoint
    #   Update replication configuration template use Fips Endpoint request.
    #
    # @return [Types::ReplicationConfigurationTemplate] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicationConfigurationTemplate#arn #arn} => String
    #   * {Types::ReplicationConfigurationTemplate#associate_default_security_group #associate_default_security_group} => Boolean
    #   * {Types::ReplicationConfigurationTemplate#bandwidth_throttling #bandwidth_throttling} => Integer
    #   * {Types::ReplicationConfigurationTemplate#create_public_ip #create_public_ip} => Boolean
    #   * {Types::ReplicationConfigurationTemplate#data_plane_routing #data_plane_routing} => String
    #   * {Types::ReplicationConfigurationTemplate#default_large_staging_disk_type #default_large_staging_disk_type} => String
    #   * {Types::ReplicationConfigurationTemplate#ebs_encryption #ebs_encryption} => String
    #   * {Types::ReplicationConfigurationTemplate#ebs_encryption_key_arn #ebs_encryption_key_arn} => String
    #   * {Types::ReplicationConfigurationTemplate#replication_configuration_template_id #replication_configuration_template_id} => String
    #   * {Types::ReplicationConfigurationTemplate#replication_server_instance_type #replication_server_instance_type} => String
    #   * {Types::ReplicationConfigurationTemplate#replication_servers_security_groups_i_ds #replication_servers_security_groups_i_ds} => Array&lt;String&gt;
    #   * {Types::ReplicationConfigurationTemplate#staging_area_subnet_id #staging_area_subnet_id} => String
    #   * {Types::ReplicationConfigurationTemplate#staging_area_tags #staging_area_tags} => Hash&lt;String,String&gt;
    #   * {Types::ReplicationConfigurationTemplate#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::ReplicationConfigurationTemplate#use_dedicated_replication_server #use_dedicated_replication_server} => Boolean
    #   * {Types::ReplicationConfigurationTemplate#use_fips_endpoint #use_fips_endpoint} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_replication_configuration_template({
    #     arn: "ARN",
    #     associate_default_security_group: false,
    #     bandwidth_throttling: 1,
    #     create_public_ip: false,
    #     data_plane_routing: "PRIVATE_IP", # accepts PRIVATE_IP, PUBLIC_IP
    #     default_large_staging_disk_type: "GP2", # accepts GP2, ST1, GP3
    #     ebs_encryption: "DEFAULT", # accepts DEFAULT, CUSTOM
    #     ebs_encryption_key_arn: "ARN",
    #     replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #     replication_server_instance_type: "EC2InstanceType",
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     staging_area_subnet_id: "SubnetID",
    #     staging_area_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     use_dedicated_replication_server: false,
    #     use_fips_endpoint: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.associate_default_security_group #=> Boolean
    #   resp.bandwidth_throttling #=> Integer
    #   resp.create_public_ip #=> Boolean
    #   resp.data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.default_large_staging_disk_type #=> String, one of "GP2", "ST1", "GP3"
    #   resp.ebs_encryption #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.ebs_encryption_key_arn #=> String
    #   resp.replication_configuration_template_id #=> String
    #   resp.replication_server_instance_type #=> String
    #   resp.replication_servers_security_groups_i_ds #=> Array
    #   resp.replication_servers_security_groups_i_ds[0] #=> String
    #   resp.staging_area_subnet_id #=> String
    #   resp.staging_area_tags #=> Hash
    #   resp.staging_area_tags["TagKey"] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.use_dedicated_replication_server #=> Boolean
    #   resp.use_fips_endpoint #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateReplicationConfigurationTemplate AWS API Documentation
    #
    # @overload update_replication_configuration_template(params = {})
    # @param [Hash] params ({})
    def update_replication_configuration_template(params = {}, options = {})
      req = build_request(:update_replication_configuration_template, params)
      req.send_request(options)
    end

    # Allows you to change between the AGENT\_BASED replication type and the
    # SNAPSHOT\_SHIPPING replication type.
    #
    # @option params [String] :account_id
    #   Account ID on which to update replication type.
    #
    # @option params [required, String] :replication_type
    #   Replication type to which to update source server.
    #
    # @option params [required, String] :source_server_id
    #   ID of source server on which to update replication type.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#application_id #application_id} => String
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#fqdn_for_action_framework #fqdn_for_action_framework} => String
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#user_provided_id #user_provided_id} => String
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_source_server_replication_type({
    #     account_id: "AccountID",
    #     replication_type: "AGENT_BASED", # required, accepts AGENT_BASED, SNAPSHOT_SHIPPING
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_id #=> String
    #   resp.arn #=> String
    #   resp.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"
    #   resp.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"
    #   resp.data_replication_info.eta_date_time #=> String
    #   resp.data_replication_info.lag_duration #=> String
    #   resp.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data_replication_info.replicated_disks #=> Array
    #   resp.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.fqdn_for_action_framework #=> String
    #   resp.is_archived #=> Boolean
    #   resp.launched_instance.ec2_instance_id #=> String
    #   resp.launched_instance.first_boot #=> String, one of "WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"
    #   resp.launched_instance.job_id #=> String
    #   resp.life_cycle.added_to_service_date_time #=> String
    #   resp.life_cycle.elapsed_replication_duration #=> String
    #   resp.life_cycle.first_byte_date_time #=> String
    #   resp.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_test.initiated.job_id #=> String
    #   resp.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED", "PENDING_INSTALLATION"
    #   resp.replication_type #=> String, one of "AGENT_BASED", "SNAPSHOT_SHIPPING"
    #   resp.source_properties.cpus #=> Array
    #   resp.source_properties.cpus[0].cores #=> Integer
    #   resp.source_properties.cpus[0].model_name #=> String
    #   resp.source_properties.disks #=> Array
    #   resp.source_properties.disks[0].bytes #=> Integer
    #   resp.source_properties.disks[0].device_name #=> String
    #   resp.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_properties.identification_hints.fqdn #=> String
    #   resp.source_properties.identification_hints.hostname #=> String
    #   resp.source_properties.identification_hints.vm_path #=> String
    #   resp.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.source_properties.last_updated_date_time #=> String
    #   resp.source_properties.network_interfaces #=> Array
    #   resp.source_properties.network_interfaces[0].ips #=> Array
    #   resp.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.source_properties.os.full_string #=> String
    #   resp.source_properties.ram_bytes #=> Integer
    #   resp.source_properties.recommended_instance_type #=> String
    #   resp.source_server_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.user_provided_id #=> String
    #   resp.vcenter_client_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateSourceServerReplicationType AWS API Documentation
    #
    # @overload update_source_server_replication_type(params = {})
    # @param [Hash] params ({})
    def update_source_server_replication_type(params = {}, options = {})
      req = build_request(:update_source_server_replication_type, params)
      req.send_request(options)
    end

    # Update wave.
    #
    # @option params [String] :account_id
    #   Account ID.
    #
    # @option params [String] :description
    #   Wave description.
    #
    # @option params [String] :name
    #   Wave name.
    #
    # @option params [required, String] :wave_id
    #   Wave ID.
    #
    # @return [Types::Wave] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Wave#arn #arn} => String
    #   * {Types::Wave#creation_date_time #creation_date_time} => String
    #   * {Types::Wave#description #description} => String
    #   * {Types::Wave#is_archived #is_archived} => Boolean
    #   * {Types::Wave#last_modified_date_time #last_modified_date_time} => String
    #   * {Types::Wave#name #name} => String
    #   * {Types::Wave#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::Wave#wave_aggregated_status #wave_aggregated_status} => Types::WaveAggregatedStatus
    #   * {Types::Wave#wave_id #wave_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_wave({
    #     account_id: "AccountID",
    #     description: "WaveDescription",
    #     name: "WaveName",
    #     wave_id: "WaveID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_date_time #=> String
    #   resp.description #=> String
    #   resp.is_archived #=> Boolean
    #   resp.last_modified_date_time #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.wave_aggregated_status.health_status #=> String, one of "HEALTHY", "LAGGING", "ERROR"
    #   resp.wave_aggregated_status.last_update_date_time #=> String
    #   resp.wave_aggregated_status.progress_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED"
    #   resp.wave_aggregated_status.replication_started_date_time #=> String
    #   resp.wave_aggregated_status.total_applications #=> Integer
    #   resp.wave_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateWave AWS API Documentation
    #
    # @overload update_wave(params = {})
    # @param [Hash] params ({})
    def update_wave(params = {}, options = {})
      req = build_request(:update_wave, params)
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
      context[:gem_name] = 'aws-sdk-mgn'
      context[:gem_version] = '1.24.0'
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
