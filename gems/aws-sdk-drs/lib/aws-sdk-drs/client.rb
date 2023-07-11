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

Aws::Plugins::GlobalConfiguration.add_identifier(:drs)

module Aws::Drs
  # An API client for Drs.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Drs::Client.new(
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

    @identifier = :drs

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
    add_plugin(Aws::Drs::Plugins::Endpoints)

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
    #   @option options [Aws::Drs::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Drs::EndpointParameters`
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

    # Associate a Source Network to an existing CloudFormation Stack and
    # modify launch templates to use this network. Can be used for reverting
    # to previously deployed CloudFormation stacks.
    #
    # @option params [required, String] :cfn_stack_name
    #   CloudFormation template to associate with a Source Network.
    #
    # @option params [required, String] :source_network_id
    #   The Source Network ID to associate with CloudFormation template.
    #
    # @return [Types::AssociateSourceNetworkStackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateSourceNetworkStackResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_source_network_stack({
    #     cfn_stack_name: "CfnStackName", # required
    #     source_network_id: "SourceNetworkID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.arn #=> String
    #   resp.job.creation_date_time #=> String
    #   resp.job.end_date_time #=> String
    #   resp.job.initiated_by #=> String, one of "START_RECOVERY", "START_DRILL", "FAILBACK", "DIAGNOSTIC", "TERMINATE_RECOVERY_INSTANCES", "TARGET_ACCOUNT", "CREATE_NETWORK_RECOVERY", "UPDATE_NETWORK_RECOVERY", "ASSOCIATE_NETWORK_RECOVERY"
    #   resp.job.job_id #=> String
    #   resp.job.participating_resources #=> Array
    #   resp.job.participating_resources[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.job.participating_resources[0].participating_resource_id.source_network_id #=> String
    #   resp.job.participating_servers #=> Array
    #   resp.job.participating_servers[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.job.participating_servers[0].recovery_instance_id #=> String
    #   resp.job.participating_servers[0].source_server_id #=> String
    #   resp.job.status #=> String, one of "PENDING", "STARTED", "COMPLETED"
    #   resp.job.tags #=> Hash
    #   resp.job.tags["TagKey"] #=> String
    #   resp.job.type #=> String, one of "LAUNCH", "TERMINATE", "CREATE_CONVERTED_SNAPSHOT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/AssociateSourceNetworkStack AWS API Documentation
    #
    # @overload associate_source_network_stack(params = {})
    # @param [Hash] params ({})
    def associate_source_network_stack(params = {}, options = {})
      req = build_request(:associate_source_network_stack, params)
      req.send_request(options)
    end

    # Create an extended source server in the target Account based on the
    # source server in staging account.
    #
    # @option params [required, String] :source_server_arn
    #   This defines the ARN of the source server in staging Account based on
    #   which you want to create an extended source server.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags associated with the extended source server.
    #
    # @return [Types::CreateExtendedSourceServerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateExtendedSourceServerResponse#source_server #source_server} => Types::SourceServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_extended_source_server({
    #     source_server_arn: "SourceServerARN", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.source_server.arn #=> String
    #   resp.source_server.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER"
    #   resp.source_server.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.source_server.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.source_server.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.source_server.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.source_server.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.source_server.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.source_server.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED"
    #   resp.source_server.data_replication_info.eta_date_time #=> String
    #   resp.source_server.data_replication_info.lag_duration #=> String
    #   resp.source_server.data_replication_info.replicated_disks #=> Array
    #   resp.source_server.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.source_server.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.source_server.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.source_server.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.source_server.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.source_server.data_replication_info.staging_availability_zone #=> String
    #   resp.source_server.last_launch_result #=> String, one of "NOT_STARTED", "PENDING", "SUCCEEDED", "FAILED"
    #   resp.source_server.life_cycle.added_to_service_date_time #=> String
    #   resp.source_server.life_cycle.elapsed_replication_duration #=> String
    #   resp.source_server.life_cycle.first_byte_date_time #=> String
    #   resp.source_server.life_cycle.last_launch.initiated.api_call_date_time #=> String
    #   resp.source_server.life_cycle.last_launch.initiated.job_id #=> String
    #   resp.source_server.life_cycle.last_launch.initiated.type #=> String, one of "RECOVERY", "DRILL"
    #   resp.source_server.life_cycle.last_launch.status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.source_server.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.source_server.recovery_instance_id #=> String
    #   resp.source_server.replication_direction #=> String, one of "FAILOVER", "FAILBACK"
    #   resp.source_server.reversed_direction_source_server_arn #=> String
    #   resp.source_server.source_cloud_properties.origin_account_id #=> String
    #   resp.source_server.source_cloud_properties.origin_availability_zone #=> String
    #   resp.source_server.source_cloud_properties.origin_region #=> String
    #   resp.source_server.source_network_id #=> String
    #   resp.source_server.source_properties.cpus #=> Array
    #   resp.source_server.source_properties.cpus[0].cores #=> Integer
    #   resp.source_server.source_properties.cpus[0].model_name #=> String
    #   resp.source_server.source_properties.disks #=> Array
    #   resp.source_server.source_properties.disks[0].bytes #=> Integer
    #   resp.source_server.source_properties.disks[0].device_name #=> String
    #   resp.source_server.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_server.source_properties.identification_hints.fqdn #=> String
    #   resp.source_server.source_properties.identification_hints.hostname #=> String
    #   resp.source_server.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.source_server.source_properties.last_updated_date_time #=> String
    #   resp.source_server.source_properties.network_interfaces #=> Array
    #   resp.source_server.source_properties.network_interfaces[0].ips #=> Array
    #   resp.source_server.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.source_server.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.source_server.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.source_server.source_properties.os.full_string #=> String
    #   resp.source_server.source_properties.ram_bytes #=> Integer
    #   resp.source_server.source_properties.recommended_instance_type #=> String
    #   resp.source_server.source_properties.supports_nitro_instances #=> Boolean
    #   resp.source_server.source_server_id #=> String
    #   resp.source_server.staging_area.error_message #=> String
    #   resp.source_server.staging_area.staging_account_id #=> String
    #   resp.source_server.staging_area.staging_source_server_arn #=> String
    #   resp.source_server.staging_area.status #=> String, one of "EXTENDED", "EXTENSION_ERROR", "NOT_EXTENDED"
    #   resp.source_server.tags #=> Hash
    #   resp.source_server.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/CreateExtendedSourceServer AWS API Documentation
    #
    # @overload create_extended_source_server(params = {})
    # @param [Hash] params ({})
    def create_extended_source_server(params = {}, options = {})
      req = build_request(:create_extended_source_server, params)
      req.send_request(options)
    end

    # Creates a new Launch Configuration Template.
    #
    # @option params [Boolean] :copy_private_ip
    #   Copy private IP.
    #
    # @option params [Boolean] :copy_tags
    #   Copy tags.
    #
    # @option params [String] :export_bucket_arn
    #   S3 bucket ARN to export Source Network templates.
    #
    # @option params [String] :launch_disposition
    #   Launch disposition.
    #
    # @option params [Types::Licensing] :licensing
    #   Licensing.
    #
    # @option params [Hash<String,String>] :tags
    #   Request to associate tags during creation of a Launch Configuration
    #   Template.
    #
    # @option params [String] :target_instance_type_right_sizing_method
    #   Target instance type right-sizing method.
    #
    # @return [Types::CreateLaunchConfigurationTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLaunchConfigurationTemplateResponse#launch_configuration_template #launch_configuration_template} => Types::LaunchConfigurationTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_launch_configuration_template({
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     export_bucket_arn: "ARN",
    #     launch_disposition: "STOPPED", # accepts STOPPED, STARTED
    #     licensing: {
    #       os_byol: false,
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     target_instance_type_right_sizing_method: "NONE", # accepts NONE, BASIC
    #   })
    #
    # @example Response structure
    #
    #   resp.launch_configuration_template.arn #=> String
    #   resp.launch_configuration_template.copy_private_ip #=> Boolean
    #   resp.launch_configuration_template.copy_tags #=> Boolean
    #   resp.launch_configuration_template.export_bucket_arn #=> String
    #   resp.launch_configuration_template.launch_configuration_template_id #=> String
    #   resp.launch_configuration_template.launch_disposition #=> String, one of "STOPPED", "STARTED"
    #   resp.launch_configuration_template.licensing.os_byol #=> Boolean
    #   resp.launch_configuration_template.tags #=> Hash
    #   resp.launch_configuration_template.tags["TagKey"] #=> String
    #   resp.launch_configuration_template.target_instance_type_right_sizing_method #=> String, one of "NONE", "BASIC"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/CreateLaunchConfigurationTemplate AWS API Documentation
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
    #   Whether to associate the default Elastic Disaster Recovery Security
    #   group with the Replication Configuration Template.
    #
    # @option params [Boolean] :auto_replicate_new_disks
    #   Whether to allow the AWS replication agent to automatically replicate
    #   newly added disks.
    #
    # @option params [required, Integer] :bandwidth_throttling
    #   Configure bandwidth throttling for the outbound data transfer rate of
    #   the Source Server in Mbps.
    #
    # @option params [required, Boolean] :create_public_ip
    #   Whether to create a Public IP for the Recovery Instance by default.
    #
    # @option params [required, String] :data_plane_routing
    #   The data plane routing mechanism that will be used for replication.
    #
    # @option params [required, String] :default_large_staging_disk_type
    #   The Staging Disk EBS volume type to be used during replication.
    #
    # @option params [required, String] :ebs_encryption
    #   The type of EBS encryption to be used during replication.
    #
    # @option params [String] :ebs_encryption_key_arn
    #   The ARN of the EBS encryption key to be used during replication.
    #
    # @option params [required, Array<Types::PITPolicyRule>] :pit_policy
    #   The Point in time (PIT) policy to manage snapshots taken during
    #   replication.
    #
    # @option params [required, String] :replication_server_instance_type
    #   The instance type to be used for the replication server.
    #
    # @option params [required, Array<String>] :replication_servers_security_groups_i_ds
    #   The security group IDs that will be used by the replication server.
    #
    # @option params [required, String] :staging_area_subnet_id
    #   The subnet to be used by the replication staging area.
    #
    # @option params [required, Hash<String,String>] :staging_area_tags
    #   A set of tags to be associated with all resources created in the
    #   replication staging area: EC2 replication server, EBS volumes, EBS
    #   snapshots, etc.
    #
    # @option params [Hash<String,String>] :tags
    #   A set of tags to be associated with the Replication Configuration
    #   Template resource.
    #
    # @option params [required, Boolean] :use_dedicated_replication_server
    #   Whether to use a dedicated Replication Server in the replication
    #   staging area.
    #
    # @return [Types::ReplicationConfigurationTemplate] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicationConfigurationTemplate#arn #arn} => String
    #   * {Types::ReplicationConfigurationTemplate#associate_default_security_group #associate_default_security_group} => Boolean
    #   * {Types::ReplicationConfigurationTemplate#auto_replicate_new_disks #auto_replicate_new_disks} => Boolean
    #   * {Types::ReplicationConfigurationTemplate#bandwidth_throttling #bandwidth_throttling} => Integer
    #   * {Types::ReplicationConfigurationTemplate#create_public_ip #create_public_ip} => Boolean
    #   * {Types::ReplicationConfigurationTemplate#data_plane_routing #data_plane_routing} => String
    #   * {Types::ReplicationConfigurationTemplate#default_large_staging_disk_type #default_large_staging_disk_type} => String
    #   * {Types::ReplicationConfigurationTemplate#ebs_encryption #ebs_encryption} => String
    #   * {Types::ReplicationConfigurationTemplate#ebs_encryption_key_arn #ebs_encryption_key_arn} => String
    #   * {Types::ReplicationConfigurationTemplate#pit_policy #pit_policy} => Array&lt;Types::PITPolicyRule&gt;
    #   * {Types::ReplicationConfigurationTemplate#replication_configuration_template_id #replication_configuration_template_id} => String
    #   * {Types::ReplicationConfigurationTemplate#replication_server_instance_type #replication_server_instance_type} => String
    #   * {Types::ReplicationConfigurationTemplate#replication_servers_security_groups_i_ds #replication_servers_security_groups_i_ds} => Array&lt;String&gt;
    #   * {Types::ReplicationConfigurationTemplate#staging_area_subnet_id #staging_area_subnet_id} => String
    #   * {Types::ReplicationConfigurationTemplate#staging_area_tags #staging_area_tags} => Hash&lt;String,String&gt;
    #   * {Types::ReplicationConfigurationTemplate#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::ReplicationConfigurationTemplate#use_dedicated_replication_server #use_dedicated_replication_server} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_configuration_template({
    #     associate_default_security_group: false, # required
    #     auto_replicate_new_disks: false,
    #     bandwidth_throttling: 1, # required
    #     create_public_ip: false, # required
    #     data_plane_routing: "PRIVATE_IP", # required, accepts PRIVATE_IP, PUBLIC_IP
    #     default_large_staging_disk_type: "GP2", # required, accepts GP2, GP3, ST1, AUTO
    #     ebs_encryption: "DEFAULT", # required, accepts DEFAULT, CUSTOM, NONE
    #     ebs_encryption_key_arn: "ARN",
    #     pit_policy: [ # required
    #       {
    #         enabled: false,
    #         interval: 1, # required
    #         retention_duration: 1, # required
    #         rule_id: 1,
    #         units: "MINUTE", # required, accepts MINUTE, HOUR, DAY
    #       },
    #     ],
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
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.associate_default_security_group #=> Boolean
    #   resp.auto_replicate_new_disks #=> Boolean
    #   resp.bandwidth_throttling #=> Integer
    #   resp.create_public_ip #=> Boolean
    #   resp.data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.default_large_staging_disk_type #=> String, one of "GP2", "GP3", "ST1", "AUTO"
    #   resp.ebs_encryption #=> String, one of "DEFAULT", "CUSTOM", "NONE"
    #   resp.ebs_encryption_key_arn #=> String
    #   resp.pit_policy #=> Array
    #   resp.pit_policy[0].enabled #=> Boolean
    #   resp.pit_policy[0].interval #=> Integer
    #   resp.pit_policy[0].retention_duration #=> Integer
    #   resp.pit_policy[0].rule_id #=> Integer
    #   resp.pit_policy[0].units #=> String, one of "MINUTE", "HOUR", "DAY"
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/CreateReplicationConfigurationTemplate AWS API Documentation
    #
    # @overload create_replication_configuration_template(params = {})
    # @param [Hash] params ({})
    def create_replication_configuration_template(params = {}, options = {})
      req = build_request(:create_replication_configuration_template, params)
      req.send_request(options)
    end

    # Create a new Source Network resource for a provided VPC ID.
    #
    # @option params [required, String] :origin_account_id
    #   Account containing the VPC to protect.
    #
    # @option params [required, String] :origin_region
    #   Region containing the VPC to protect.
    #
    # @option params [Hash<String,String>] :tags
    #   A set of tags to be associated with the Source Network resource.
    #
    # @option params [required, String] :vpc_id
    #   Which VPC ID to protect.
    #
    # @return [Types::CreateSourceNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSourceNetworkResponse#source_network_id #source_network_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_source_network({
    #     origin_account_id: "AccountID", # required
    #     origin_region: "AwsRegion", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     vpc_id: "VpcID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.source_network_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/CreateSourceNetwork AWS API Documentation
    #
    # @overload create_source_network(params = {})
    # @param [Hash] params ({})
    def create_source_network(params = {}, options = {})
      req = build_request(:create_source_network, params)
      req.send_request(options)
    end

    # Deletes a single Job by ID.
    #
    # @option params [required, String] :job_id
    #   The ID of the Job to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job({
    #     job_id: "JobID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteJob AWS API Documentation
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
    #   The ID of the Launch Configuration Template to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_launch_configuration_template({
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteLaunchConfigurationTemplate AWS API Documentation
    #
    # @overload delete_launch_configuration_template(params = {})
    # @param [Hash] params ({})
    def delete_launch_configuration_template(params = {}, options = {})
      req = build_request(:delete_launch_configuration_template, params)
      req.send_request(options)
    end

    # Deletes a single Recovery Instance by ID. This deletes the Recovery
    # Instance resource from Elastic Disaster Recovery. The Recovery
    # Instance must be disconnected first in order to delete it.
    #
    # @option params [required, String] :recovery_instance_id
    #   The ID of the Recovery Instance to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recovery_instance({
    #     recovery_instance_id: "RecoveryInstanceID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteRecoveryInstance AWS API Documentation
    #
    # @overload delete_recovery_instance(params = {})
    # @param [Hash] params ({})
    def delete_recovery_instance(params = {}, options = {})
      req = build_request(:delete_recovery_instance, params)
      req.send_request(options)
    end

    # Deletes a single Replication Configuration Template by ID
    #
    # @option params [required, String] :replication_configuration_template_id
    #   The ID of the Replication Configuration Template to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_configuration_template({
    #     replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteReplicationConfigurationTemplate AWS API Documentation
    #
    # @overload delete_replication_configuration_template(params = {})
    # @param [Hash] params ({})
    def delete_replication_configuration_template(params = {}, options = {})
      req = build_request(:delete_replication_configuration_template, params)
      req.send_request(options)
    end

    # Delete Source Network resource.
    #
    # @option params [required, String] :source_network_id
    #   ID of the Source Network to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_source_network({
    #     source_network_id: "SourceNetworkID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteSourceNetwork AWS API Documentation
    #
    # @overload delete_source_network(params = {})
    # @param [Hash] params ({})
    def delete_source_network(params = {}, options = {})
      req = build_request(:delete_source_network, params)
      req.send_request(options)
    end

    # Deletes a single Source Server by ID. The Source Server must be
    # disconnected first.
    #
    # @option params [required, String] :source_server_id
    #   The ID of the Source Server to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_source_server({
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DeleteSourceServer AWS API Documentation
    #
    # @overload delete_source_server(params = {})
    # @param [Hash] params ({})
    def delete_source_server(params = {}, options = {})
      req = build_request(:delete_source_server, params)
      req.send_request(options)
    end

    # Retrieves a detailed Job log with pagination.
    #
    # @option params [required, String] :job_id
    #   The ID of the Job for which Job log items will be retrieved.
    #
    # @option params [Integer] :max_results
    #   Maximum number of Job log items to retrieve.
    #
    # @option params [String] :next_token
    #   The token of the next Job log items to retrieve.
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
    #     job_id: "JobID", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].event #=> String, one of "JOB_START", "SERVER_SKIPPED", "CLEANUP_START", "CLEANUP_END", "CLEANUP_FAIL", "SNAPSHOT_START", "SNAPSHOT_END", "SNAPSHOT_FAIL", "USING_PREVIOUS_SNAPSHOT", "USING_PREVIOUS_SNAPSHOT_FAILED", "CONVERSION_START", "CONVERSION_END", "CONVERSION_FAIL", "LAUNCH_START", "LAUNCH_FAILED", "JOB_CANCEL", "JOB_END", "DEPLOY_NETWORK_CONFIGURATION_START", "DEPLOY_NETWORK_CONFIGURATION_END", "DEPLOY_NETWORK_CONFIGURATION_FAILED", "UPDATE_NETWORK_CONFIGURATION_START", "UPDATE_NETWORK_CONFIGURATION_END", "UPDATE_NETWORK_CONFIGURATION_FAILED", "UPDATE_LAUNCH_TEMPLATE_START", "UPDATE_LAUNCH_TEMPLATE_END", "UPDATE_LAUNCH_TEMPLATE_FAILED", "NETWORK_RECOVERY_FAIL"
    #   resp.items[0].event_data.conversion_properties.data_timestamp #=> String
    #   resp.items[0].event_data.conversion_properties.force_uefi #=> Boolean
    #   resp.items[0].event_data.conversion_properties.root_volume_name #=> String
    #   resp.items[0].event_data.conversion_properties.volume_to_conversion_map #=> Hash
    #   resp.items[0].event_data.conversion_properties.volume_to_conversion_map["LargeBoundedString"] #=> Hash
    #   resp.items[0].event_data.conversion_properties.volume_to_conversion_map["LargeBoundedString"]["EbsSnapshot"] #=> String
    #   resp.items[0].event_data.conversion_properties.volume_to_volume_size #=> Hash
    #   resp.items[0].event_data.conversion_properties.volume_to_volume_size["LargeBoundedString"] #=> Integer
    #   resp.items[0].event_data.conversion_server_id #=> String
    #   resp.items[0].event_data.event_resource_data.source_network_data.source_network_id #=> String
    #   resp.items[0].event_data.event_resource_data.source_network_data.source_vpc #=> String
    #   resp.items[0].event_data.event_resource_data.source_network_data.stack_name #=> String
    #   resp.items[0].event_data.event_resource_data.source_network_data.target_vpc #=> String
    #   resp.items[0].event_data.raw_error #=> String
    #   resp.items[0].event_data.source_server_id #=> String
    #   resp.items[0].event_data.target_instance_id #=> String
    #   resp.items[0].log_date_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeJobLogItems AWS API Documentation
    #
    # @overload describe_job_log_items(params = {})
    # @param [Hash] params ({})
    def describe_job_log_items(params = {}, options = {})
      req = build_request(:describe_job_log_items, params)
      req.send_request(options)
    end

    # Returns a list of Jobs. Use the JobsID and fromDate and toDate filters
    # to limit which jobs are returned. The response is sorted by
    # creationDataTime - latest date first. Jobs are created by the
    # StartRecovery, TerminateRecoveryInstances and StartFailbackLaunch
    # APIs. Jobs are also created by DiagnosticLaunch and
    # TerminateDiagnosticInstances, which are APIs available only to
    # *Support* and only used in response to relevant support tickets.
    #
    # @option params [Types::DescribeJobsRequestFilters] :filters
    #   A set of filters by which to return Jobs.
    #
    # @option params [Integer] :max_results
    #   Maximum number of Jobs to retrieve.
    #
    # @option params [String] :next_token
    #   The token of the next Job to retrieve.
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
    #   resp.items[0].initiated_by #=> String, one of "START_RECOVERY", "START_DRILL", "FAILBACK", "DIAGNOSTIC", "TERMINATE_RECOVERY_INSTANCES", "TARGET_ACCOUNT", "CREATE_NETWORK_RECOVERY", "UPDATE_NETWORK_RECOVERY", "ASSOCIATE_NETWORK_RECOVERY"
    #   resp.items[0].job_id #=> String
    #   resp.items[0].participating_resources #=> Array
    #   resp.items[0].participating_resources[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.items[0].participating_resources[0].participating_resource_id.source_network_id #=> String
    #   resp.items[0].participating_servers #=> Array
    #   resp.items[0].participating_servers[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.items[0].participating_servers[0].recovery_instance_id #=> String
    #   resp.items[0].participating_servers[0].source_server_id #=> String
    #   resp.items[0].status #=> String, one of "PENDING", "STARTED", "COMPLETED"
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].type #=> String, one of "LAUNCH", "TERMINATE", "CREATE_CONVERTED_SNAPSHOT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeJobs AWS API Documentation
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
    #   The token of the next Launch Configuration Template to retrieve.
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
    #   resp.items[0].copy_private_ip #=> Boolean
    #   resp.items[0].copy_tags #=> Boolean
    #   resp.items[0].export_bucket_arn #=> String
    #   resp.items[0].launch_configuration_template_id #=> String
    #   resp.items[0].launch_disposition #=> String, one of "STOPPED", "STARTED"
    #   resp.items[0].licensing.os_byol #=> Boolean
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.items[0].target_instance_type_right_sizing_method #=> String, one of "NONE", "BASIC"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeLaunchConfigurationTemplates AWS API Documentation
    #
    # @overload describe_launch_configuration_templates(params = {})
    # @param [Hash] params ({})
    def describe_launch_configuration_templates(params = {}, options = {})
      req = build_request(:describe_launch_configuration_templates, params)
      req.send_request(options)
    end

    # Lists all Recovery Instances or multiple Recovery Instances by ID.
    #
    # @option params [Types::DescribeRecoveryInstancesRequestFilters] :filters
    #   A set of filters by which to return Recovery Instances.
    #
    # @option params [Integer] :max_results
    #   Maximum number of Recovery Instances to retrieve.
    #
    # @option params [String] :next_token
    #   The token of the next Recovery Instance to retrieve.
    #
    # @return [Types::DescribeRecoveryInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRecoveryInstancesResponse#items #items} => Array&lt;Types::RecoveryInstance&gt;
    #   * {Types::DescribeRecoveryInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recovery_instances({
    #     filters: {
    #       recovery_instance_i_ds: ["RecoveryInstanceID"],
    #       source_server_i_ds: ["SourceServerID"],
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "FAILBACK_CLIENT_NOT_SEEN", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT", "FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE", "FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE", "FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION", "FAILED_GETTING_REPLICATION_STATE", "SNAPSHOTS_FAILURE", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER"
    #   resp.items[0].data_replication_info.data_replication_error.raw_error #=> String
    #   resp.items[0].data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.items[0].data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.items[0].data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE", "COMPLETE_VOLUME_MAPPING", "ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION", "DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT", "CONFIGURE_REPLICATION_SOFTWARE", "PAIR_AGENT_WITH_REPLICATION_SOFTWARE", "ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION", "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.items[0].data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.items[0].data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "REPLICATION_STATE_NOT_AVAILABLE", "NOT_STARTED"
    #   resp.items[0].data_replication_info.eta_date_time #=> String
    #   resp.items[0].data_replication_info.lag_duration #=> String
    #   resp.items[0].data_replication_info.replicated_disks #=> Array
    #   resp.items[0].data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.items[0].data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.items[0].data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.items[0].data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.items[0].data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.items[0].data_replication_info.staging_availability_zone #=> String
    #   resp.items[0].ec2_instance_id #=> String
    #   resp.items[0].ec2_instance_state #=> String, one of "PENDING", "RUNNING", "STOPPING", "STOPPED", "SHUTTING-DOWN", "TERMINATED", "NOT_FOUND"
    #   resp.items[0].failback.agent_last_seen_by_service_date_time #=> String
    #   resp.items[0].failback.elapsed_replication_duration #=> String
    #   resp.items[0].failback.failback_client_id #=> String
    #   resp.items[0].failback.failback_client_last_seen_by_service_date_time #=> String
    #   resp.items[0].failback.failback_initiation_time #=> String
    #   resp.items[0].failback.failback_job_id #=> String
    #   resp.items[0].failback.failback_launch_type #=> String, one of "RECOVERY", "DRILL"
    #   resp.items[0].failback.failback_to_original_server #=> Boolean
    #   resp.items[0].failback.first_byte_date_time #=> String
    #   resp.items[0].failback.state #=> String, one of "FAILBACK_NOT_STARTED", "FAILBACK_IN_PROGRESS", "FAILBACK_READY_FOR_LAUNCH", "FAILBACK_COMPLETED", "FAILBACK_ERROR", "FAILBACK_NOT_READY_FOR_LAUNCH", "FAILBACK_LAUNCH_STATE_NOT_AVAILABLE"
    #   resp.items[0].is_drill #=> Boolean
    #   resp.items[0].job_id #=> String
    #   resp.items[0].origin_availability_zone #=> String
    #   resp.items[0].origin_environment #=> String, one of "ON_PREMISES", "AWS"
    #   resp.items[0].point_in_time_snapshot_date_time #=> String
    #   resp.items[0].recovery_instance_id #=> String
    #   resp.items[0].recovery_instance_properties.cpus #=> Array
    #   resp.items[0].recovery_instance_properties.cpus[0].cores #=> Integer
    #   resp.items[0].recovery_instance_properties.cpus[0].model_name #=> String
    #   resp.items[0].recovery_instance_properties.disks #=> Array
    #   resp.items[0].recovery_instance_properties.disks[0].bytes #=> Integer
    #   resp.items[0].recovery_instance_properties.disks[0].ebs_volume_id #=> String
    #   resp.items[0].recovery_instance_properties.disks[0].internal_device_name #=> String
    #   resp.items[0].recovery_instance_properties.identification_hints.aws_instance_id #=> String
    #   resp.items[0].recovery_instance_properties.identification_hints.fqdn #=> String
    #   resp.items[0].recovery_instance_properties.identification_hints.hostname #=> String
    #   resp.items[0].recovery_instance_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.items[0].recovery_instance_properties.last_updated_date_time #=> String
    #   resp.items[0].recovery_instance_properties.network_interfaces #=> Array
    #   resp.items[0].recovery_instance_properties.network_interfaces[0].ips #=> Array
    #   resp.items[0].recovery_instance_properties.network_interfaces[0].ips[0] #=> String
    #   resp.items[0].recovery_instance_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.items[0].recovery_instance_properties.network_interfaces[0].mac_address #=> String
    #   resp.items[0].recovery_instance_properties.os.full_string #=> String
    #   resp.items[0].recovery_instance_properties.ram_bytes #=> Integer
    #   resp.items[0].source_server_id #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeRecoveryInstances AWS API Documentation
    #
    # @overload describe_recovery_instances(params = {})
    # @param [Hash] params ({})
    def describe_recovery_instances(params = {}, options = {})
      req = build_request(:describe_recovery_instances, params)
      req.send_request(options)
    end

    # Lists all Recovery Snapshots for a single Source Server.
    #
    # @option params [Types::DescribeRecoverySnapshotsRequestFilters] :filters
    #   A set of filters by which to return Recovery Snapshots.
    #
    # @option params [Integer] :max_results
    #   Maximum number of Recovery Snapshots to retrieve.
    #
    # @option params [String] :next_token
    #   The token of the next Recovery Snapshot to retrieve.
    #
    # @option params [String] :order
    #   The sorted ordering by which to return Recovery Snapshots.
    #
    # @option params [required, String] :source_server_id
    #   Filter Recovery Snapshots by Source Server ID.
    #
    # @return [Types::DescribeRecoverySnapshotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRecoverySnapshotsResponse#items #items} => Array&lt;Types::RecoverySnapshot&gt;
    #   * {Types::DescribeRecoverySnapshotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recovery_snapshots({
    #     filters: {
    #       from_date_time: "ISO8601DatetimeString",
    #       to_date_time: "ISO8601DatetimeString",
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     order: "ASC", # accepts ASC, DESC
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].ebs_snapshots #=> Array
    #   resp.items[0].ebs_snapshots[0] #=> String
    #   resp.items[0].expected_timestamp #=> String
    #   resp.items[0].snapshot_id #=> String
    #   resp.items[0].source_server_id #=> String
    #   resp.items[0].timestamp #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeRecoverySnapshots AWS API Documentation
    #
    # @overload describe_recovery_snapshots(params = {})
    # @param [Hash] params ({})
    def describe_recovery_snapshots(params = {}, options = {})
      req = build_request(:describe_recovery_snapshots, params)
      req.send_request(options)
    end

    # Lists all ReplicationConfigurationTemplates, filtered by Source Server
    # IDs.
    #
    # @option params [Integer] :max_results
    #   Maximum number of Replication Configuration Templates to retrieve.
    #
    # @option params [String] :next_token
    #   The token of the next Replication Configuration Template to retrieve.
    #
    # @option params [Array<String>] :replication_configuration_template_i_ds
    #   The IDs of the Replication Configuration Templates to retrieve. An
    #   empty list means all Replication Configuration Templates.
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
    #   resp.items[0].auto_replicate_new_disks #=> Boolean
    #   resp.items[0].bandwidth_throttling #=> Integer
    #   resp.items[0].create_public_ip #=> Boolean
    #   resp.items[0].data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.items[0].default_large_staging_disk_type #=> String, one of "GP2", "GP3", "ST1", "AUTO"
    #   resp.items[0].ebs_encryption #=> String, one of "DEFAULT", "CUSTOM", "NONE"
    #   resp.items[0].ebs_encryption_key_arn #=> String
    #   resp.items[0].pit_policy #=> Array
    #   resp.items[0].pit_policy[0].enabled #=> Boolean
    #   resp.items[0].pit_policy[0].interval #=> Integer
    #   resp.items[0].pit_policy[0].retention_duration #=> Integer
    #   resp.items[0].pit_policy[0].rule_id #=> Integer
    #   resp.items[0].pit_policy[0].units #=> String, one of "MINUTE", "HOUR", "DAY"
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
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeReplicationConfigurationTemplates AWS API Documentation
    #
    # @overload describe_replication_configuration_templates(params = {})
    # @param [Hash] params ({})
    def describe_replication_configuration_templates(params = {}, options = {})
      req = build_request(:describe_replication_configuration_templates, params)
      req.send_request(options)
    end

    # Lists all Source Networks or multiple Source Networks filtered by ID.
    #
    # @option params [Types::DescribeSourceNetworksRequestFilters] :filters
    #   A set of filters by which to return Source Networks.
    #
    # @option params [Integer] :max_results
    #   Maximum number of Source Networks to retrieve.
    #
    # @option params [String] :next_token
    #   The token of the next Source Networks to retrieve.
    #
    # @return [Types::DescribeSourceNetworksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSourceNetworksResponse#items #items} => Array&lt;Types::SourceNetwork&gt;
    #   * {Types::DescribeSourceNetworksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_source_networks({
    #     filters: {
    #       origin_account_id: "AccountID",
    #       origin_region: "AwsRegion",
    #       source_network_i_ds: ["SourceNetworkID"],
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].cfn_stack_name #=> String
    #   resp.items[0].last_recovery.api_call_date_time #=> Time
    #   resp.items[0].last_recovery.job_id #=> String
    #   resp.items[0].last_recovery.last_recovery_result #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCESS", "FAIL", "PARTIAL_SUCCESS", "ASSOCIATE_SUCCESS", "ASSOCIATE_FAIL"
    #   resp.items[0].launched_vpc_id #=> String
    #   resp.items[0].replication_status #=> String, one of "STOPPED", "IN_PROGRESS", "PROTECTED", "ERROR"
    #   resp.items[0].replication_status_details #=> String
    #   resp.items[0].source_account_id #=> String
    #   resp.items[0].source_network_id #=> String
    #   resp.items[0].source_region #=> String
    #   resp.items[0].source_vpc_id #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeSourceNetworks AWS API Documentation
    #
    # @overload describe_source_networks(params = {})
    # @param [Hash] params ({})
    def describe_source_networks(params = {}, options = {})
      req = build_request(:describe_source_networks, params)
      req.send_request(options)
    end

    # Lists all Source Servers or multiple Source Servers filtered by ID.
    #
    # @option params [Types::DescribeSourceServersRequestFilters] :filters
    #   A set of filters by which to return Source Servers.
    #
    # @option params [Integer] :max_results
    #   Maximum number of Source Servers to retrieve.
    #
    # @option params [String] :next_token
    #   The token of the next Source Server to retrieve.
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
    #     filters: {
    #       hardware_id: "BoundedString",
    #       source_server_i_ds: ["SourceServerID"],
    #       staging_account_i_ds: ["AccountID"],
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER"
    #   resp.items[0].data_replication_info.data_replication_error.raw_error #=> String
    #   resp.items[0].data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.items[0].data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.items[0].data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.items[0].data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.items[0].data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.items[0].data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED"
    #   resp.items[0].data_replication_info.eta_date_time #=> String
    #   resp.items[0].data_replication_info.lag_duration #=> String
    #   resp.items[0].data_replication_info.replicated_disks #=> Array
    #   resp.items[0].data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.items[0].data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.items[0].data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.items[0].data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.items[0].data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.items[0].data_replication_info.staging_availability_zone #=> String
    #   resp.items[0].last_launch_result #=> String, one of "NOT_STARTED", "PENDING", "SUCCEEDED", "FAILED"
    #   resp.items[0].life_cycle.added_to_service_date_time #=> String
    #   resp.items[0].life_cycle.elapsed_replication_duration #=> String
    #   resp.items[0].life_cycle.first_byte_date_time #=> String
    #   resp.items[0].life_cycle.last_launch.initiated.api_call_date_time #=> String
    #   resp.items[0].life_cycle.last_launch.initiated.job_id #=> String
    #   resp.items[0].life_cycle.last_launch.initiated.type #=> String, one of "RECOVERY", "DRILL"
    #   resp.items[0].life_cycle.last_launch.status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.items[0].life_cycle.last_seen_by_service_date_time #=> String
    #   resp.items[0].recovery_instance_id #=> String
    #   resp.items[0].replication_direction #=> String, one of "FAILOVER", "FAILBACK"
    #   resp.items[0].reversed_direction_source_server_arn #=> String
    #   resp.items[0].source_cloud_properties.origin_account_id #=> String
    #   resp.items[0].source_cloud_properties.origin_availability_zone #=> String
    #   resp.items[0].source_cloud_properties.origin_region #=> String
    #   resp.items[0].source_network_id #=> String
    #   resp.items[0].source_properties.cpus #=> Array
    #   resp.items[0].source_properties.cpus[0].cores #=> Integer
    #   resp.items[0].source_properties.cpus[0].model_name #=> String
    #   resp.items[0].source_properties.disks #=> Array
    #   resp.items[0].source_properties.disks[0].bytes #=> Integer
    #   resp.items[0].source_properties.disks[0].device_name #=> String
    #   resp.items[0].source_properties.identification_hints.aws_instance_id #=> String
    #   resp.items[0].source_properties.identification_hints.fqdn #=> String
    #   resp.items[0].source_properties.identification_hints.hostname #=> String
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
    #   resp.items[0].source_properties.supports_nitro_instances #=> Boolean
    #   resp.items[0].source_server_id #=> String
    #   resp.items[0].staging_area.error_message #=> String
    #   resp.items[0].staging_area.staging_account_id #=> String
    #   resp.items[0].staging_area.staging_source_server_arn #=> String
    #   resp.items[0].staging_area.status #=> String, one of "EXTENDED", "EXTENSION_ERROR", "NOT_EXTENDED"
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DescribeSourceServers AWS API Documentation
    #
    # @overload describe_source_servers(params = {})
    # @param [Hash] params ({})
    def describe_source_servers(params = {}, options = {})
      req = build_request(:describe_source_servers, params)
      req.send_request(options)
    end

    # Disconnect a Recovery Instance from Elastic Disaster Recovery. Data
    # replication is stopped immediately. All AWS resources created by
    # Elastic Disaster Recovery for enabling the replication of the Recovery
    # Instance will be terminated / deleted within 90 minutes. If the agent
    # on the Recovery Instance has not been prevented from communicating
    # with the Elastic Disaster Recovery service, then it will receive a
    # command to uninstall itself (within approximately 10 minutes). The
    # following properties of the Recovery Instance will be changed
    # immediately: dataReplicationInfo.dataReplicationState will be set to
    # DISCONNECTED; The totalStorageBytes property for each of
    # dataReplicationInfo.replicatedDisks will be set to zero;
    # dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration
    # will be nullified.
    #
    # @option params [required, String] :recovery_instance_id
    #   The ID of the Recovery Instance to disconnect.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_recovery_instance({
    #     recovery_instance_id: "RecoveryInstanceID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DisconnectRecoveryInstance AWS API Documentation
    #
    # @overload disconnect_recovery_instance(params = {})
    # @param [Hash] params ({})
    def disconnect_recovery_instance(params = {}, options = {})
      req = build_request(:disconnect_recovery_instance, params)
      req.send_request(options)
    end

    # Disconnects a specific Source Server from Elastic Disaster Recovery.
    # Data replication is stopped immediately. All AWS resources created by
    # Elastic Disaster Recovery for enabling the replication of the Source
    # Server will be terminated / deleted within 90 minutes. You cannot
    # disconnect a Source Server if it has a Recovery Instance. If the agent
    # on the Source Server has not been prevented from communicating with
    # the Elastic Disaster Recovery service, then it will receive a command
    # to uninstall itself (within approximately 10 minutes). The following
    # properties of the SourceServer will be changed immediately:
    # dataReplicationInfo.dataReplicationState will be set to DISCONNECTED;
    # The totalStorageBytes property for each of
    # dataReplicationInfo.replicatedDisks will be set to zero;
    # dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration
    # will be nullified.
    #
    # @option params [required, String] :source_server_id
    #   The ID of the Source Server to disconnect.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#last_launch_result #last_launch_result} => String
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#recovery_instance_id #recovery_instance_id} => String
    #   * {Types::SourceServer#replication_direction #replication_direction} => String
    #   * {Types::SourceServer#reversed_direction_source_server_arn #reversed_direction_source_server_arn} => String
    #   * {Types::SourceServer#source_cloud_properties #source_cloud_properties} => Types::SourceCloudProperties
    #   * {Types::SourceServer#source_network_id #source_network_id} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#staging_area #staging_area} => Types::StagingArea
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_source_server({
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED"
    #   resp.data_replication_info.eta_date_time #=> String
    #   resp.data_replication_info.lag_duration #=> String
    #   resp.data_replication_info.replicated_disks #=> Array
    #   resp.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.data_replication_info.staging_availability_zone #=> String
    #   resp.last_launch_result #=> String, one of "NOT_STARTED", "PENDING", "SUCCEEDED", "FAILED"
    #   resp.life_cycle.added_to_service_date_time #=> String
    #   resp.life_cycle.elapsed_replication_duration #=> String
    #   resp.life_cycle.first_byte_date_time #=> String
    #   resp.life_cycle.last_launch.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_launch.initiated.job_id #=> String
    #   resp.life_cycle.last_launch.initiated.type #=> String, one of "RECOVERY", "DRILL"
    #   resp.life_cycle.last_launch.status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.recovery_instance_id #=> String
    #   resp.replication_direction #=> String, one of "FAILOVER", "FAILBACK"
    #   resp.reversed_direction_source_server_arn #=> String
    #   resp.source_cloud_properties.origin_account_id #=> String
    #   resp.source_cloud_properties.origin_availability_zone #=> String
    #   resp.source_cloud_properties.origin_region #=> String
    #   resp.source_network_id #=> String
    #   resp.source_properties.cpus #=> Array
    #   resp.source_properties.cpus[0].cores #=> Integer
    #   resp.source_properties.cpus[0].model_name #=> String
    #   resp.source_properties.disks #=> Array
    #   resp.source_properties.disks[0].bytes #=> Integer
    #   resp.source_properties.disks[0].device_name #=> String
    #   resp.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_properties.identification_hints.fqdn #=> String
    #   resp.source_properties.identification_hints.hostname #=> String
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
    #   resp.source_properties.supports_nitro_instances #=> Boolean
    #   resp.source_server_id #=> String
    #   resp.staging_area.error_message #=> String
    #   resp.staging_area.staging_account_id #=> String
    #   resp.staging_area.staging_source_server_arn #=> String
    #   resp.staging_area.status #=> String, one of "EXTENDED", "EXTENSION_ERROR", "NOT_EXTENDED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/DisconnectSourceServer AWS API Documentation
    #
    # @overload disconnect_source_server(params = {})
    # @param [Hash] params ({})
    def disconnect_source_server(params = {}, options = {})
      req = build_request(:disconnect_source_server, params)
      req.send_request(options)
    end

    # Export the Source Network CloudFormation template to an S3 bucket.
    #
    # @option params [required, String] :source_network_id
    #   The Source Network ID to export its CloudFormation template to an S3
    #   bucket.
    #
    # @return [Types::ExportSourceNetworkCfnTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportSourceNetworkCfnTemplateResponse#s3_destination_url #s3_destination_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_source_network_cfn_template({
    #     source_network_id: "SourceNetworkID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.s3_destination_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ExportSourceNetworkCfnTemplate AWS API Documentation
    #
    # @overload export_source_network_cfn_template(params = {})
    # @param [Hash] params ({})
    def export_source_network_cfn_template(params = {}, options = {})
      req = build_request(:export_source_network_cfn_template, params)
      req.send_request(options)
    end

    # Lists all Failback ReplicationConfigurations, filtered by Recovery
    # Instance ID.
    #
    # @option params [required, String] :recovery_instance_id
    #   The ID of the Recovery Instance whose failback replication
    #   configuration should be returned.
    #
    # @return [Types::GetFailbackReplicationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFailbackReplicationConfigurationResponse#bandwidth_throttling #bandwidth_throttling} => Integer
    #   * {Types::GetFailbackReplicationConfigurationResponse#name #name} => String
    #   * {Types::GetFailbackReplicationConfigurationResponse#recovery_instance_id #recovery_instance_id} => String
    #   * {Types::GetFailbackReplicationConfigurationResponse#use_private_ip #use_private_ip} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_failback_replication_configuration({
    #     recovery_instance_id: "RecoveryInstanceID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bandwidth_throttling #=> Integer
    #   resp.name #=> String
    #   resp.recovery_instance_id #=> String
    #   resp.use_private_ip #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/GetFailbackReplicationConfiguration AWS API Documentation
    #
    # @overload get_failback_replication_configuration(params = {})
    # @param [Hash] params ({})
    def get_failback_replication_configuration(params = {}, options = {})
      req = build_request(:get_failback_replication_configuration, params)
      req.send_request(options)
    end

    # Gets a LaunchConfiguration, filtered by Source Server IDs.
    #
    # @option params [required, String] :source_server_id
    #   The ID of the Source Server that we want to retrieve a Launch
    #   Configuration for.
    #
    # @return [Types::LaunchConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LaunchConfiguration#copy_private_ip #copy_private_ip} => Boolean
    #   * {Types::LaunchConfiguration#copy_tags #copy_tags} => Boolean
    #   * {Types::LaunchConfiguration#ec2_launch_template_id #ec2_launch_template_id} => String
    #   * {Types::LaunchConfiguration#launch_disposition #launch_disposition} => String
    #   * {Types::LaunchConfiguration#licensing #licensing} => Types::Licensing
    #   * {Types::LaunchConfiguration#name #name} => String
    #   * {Types::LaunchConfiguration#source_server_id #source_server_id} => String
    #   * {Types::LaunchConfiguration#target_instance_type_right_sizing_method #target_instance_type_right_sizing_method} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_configuration({
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.copy_private_ip #=> Boolean
    #   resp.copy_tags #=> Boolean
    #   resp.ec2_launch_template_id #=> String
    #   resp.launch_disposition #=> String, one of "STOPPED", "STARTED"
    #   resp.licensing.os_byol #=> Boolean
    #   resp.name #=> String
    #   resp.source_server_id #=> String
    #   resp.target_instance_type_right_sizing_method #=> String, one of "NONE", "BASIC"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/GetLaunchConfiguration AWS API Documentation
    #
    # @overload get_launch_configuration(params = {})
    # @param [Hash] params ({})
    def get_launch_configuration(params = {}, options = {})
      req = build_request(:get_launch_configuration, params)
      req.send_request(options)
    end

    # Gets a ReplicationConfiguration, filtered by Source Server ID.
    #
    # @option params [required, String] :source_server_id
    #   The ID of the Source Serve for this Replication Configuration.r
    #
    # @return [Types::ReplicationConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicationConfiguration#associate_default_security_group #associate_default_security_group} => Boolean
    #   * {Types::ReplicationConfiguration#auto_replicate_new_disks #auto_replicate_new_disks} => Boolean
    #   * {Types::ReplicationConfiguration#bandwidth_throttling #bandwidth_throttling} => Integer
    #   * {Types::ReplicationConfiguration#create_public_ip #create_public_ip} => Boolean
    #   * {Types::ReplicationConfiguration#data_plane_routing #data_plane_routing} => String
    #   * {Types::ReplicationConfiguration#default_large_staging_disk_type #default_large_staging_disk_type} => String
    #   * {Types::ReplicationConfiguration#ebs_encryption #ebs_encryption} => String
    #   * {Types::ReplicationConfiguration#ebs_encryption_key_arn #ebs_encryption_key_arn} => String
    #   * {Types::ReplicationConfiguration#name #name} => String
    #   * {Types::ReplicationConfiguration#pit_policy #pit_policy} => Array&lt;Types::PITPolicyRule&gt;
    #   * {Types::ReplicationConfiguration#replicated_disks #replicated_disks} => Array&lt;Types::ReplicationConfigurationReplicatedDisk&gt;
    #   * {Types::ReplicationConfiguration#replication_server_instance_type #replication_server_instance_type} => String
    #   * {Types::ReplicationConfiguration#replication_servers_security_groups_i_ds #replication_servers_security_groups_i_ds} => Array&lt;String&gt;
    #   * {Types::ReplicationConfiguration#source_server_id #source_server_id} => String
    #   * {Types::ReplicationConfiguration#staging_area_subnet_id #staging_area_subnet_id} => String
    #   * {Types::ReplicationConfiguration#staging_area_tags #staging_area_tags} => Hash&lt;String,String&gt;
    #   * {Types::ReplicationConfiguration#use_dedicated_replication_server #use_dedicated_replication_server} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_replication_configuration({
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.associate_default_security_group #=> Boolean
    #   resp.auto_replicate_new_disks #=> Boolean
    #   resp.bandwidth_throttling #=> Integer
    #   resp.create_public_ip #=> Boolean
    #   resp.data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.default_large_staging_disk_type #=> String, one of "GP2", "GP3", "ST1", "AUTO"
    #   resp.ebs_encryption #=> String, one of "DEFAULT", "CUSTOM", "NONE"
    #   resp.ebs_encryption_key_arn #=> String
    #   resp.name #=> String
    #   resp.pit_policy #=> Array
    #   resp.pit_policy[0].enabled #=> Boolean
    #   resp.pit_policy[0].interval #=> Integer
    #   resp.pit_policy[0].retention_duration #=> Integer
    #   resp.pit_policy[0].rule_id #=> Integer
    #   resp.pit_policy[0].units #=> String, one of "MINUTE", "HOUR", "DAY"
    #   resp.replicated_disks #=> Array
    #   resp.replicated_disks[0].device_name #=> String
    #   resp.replicated_disks[0].iops #=> Integer
    #   resp.replicated_disks[0].is_boot_disk #=> Boolean
    #   resp.replicated_disks[0].optimized_staging_disk_type #=> String, one of "AUTO", "GP2", "GP3", "IO1", "SC1", "ST1", "STANDARD"
    #   resp.replicated_disks[0].staging_disk_type #=> String, one of "AUTO", "GP2", "GP3", "IO1", "SC1", "ST1", "STANDARD"
    #   resp.replicated_disks[0].throughput #=> Integer
    #   resp.replication_server_instance_type #=> String
    #   resp.replication_servers_security_groups_i_ds #=> Array
    #   resp.replication_servers_security_groups_i_ds[0] #=> String
    #   resp.source_server_id #=> String
    #   resp.staging_area_subnet_id #=> String
    #   resp.staging_area_tags #=> Hash
    #   resp.staging_area_tags["TagKey"] #=> String
    #   resp.use_dedicated_replication_server #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/GetReplicationConfiguration AWS API Documentation
    #
    # @overload get_replication_configuration(params = {})
    # @param [Hash] params ({})
    def get_replication_configuration(params = {}, options = {})
      req = build_request(:get_replication_configuration, params)
      req.send_request(options)
    end

    # Initialize Elastic Disaster Recovery.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/InitializeService AWS API Documentation
    #
    # @overload initialize_service(params = {})
    # @param [Hash] params ({})
    def initialize_service(params = {}, options = {})
      req = build_request(:initialize_service, params)
      req.send_request(options)
    end

    # Returns a list of source servers on a staging account that are
    # extensible, which means that: a. The source server is not already
    # extended into this Account. b. The source server on the Account we’re
    # reading from is not an extension of another source server.
    #
    # @option params [Integer] :max_results
    #   The maximum number of extensible source servers to retrieve.
    #
    # @option params [String] :next_token
    #   The token of the next extensible source server to retrieve.
    #
    # @option params [required, String] :staging_account_id
    #   The Id of the staging Account to retrieve extensible source servers
    #   from.
    #
    # @return [Types::ListExtensibleSourceServersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExtensibleSourceServersResponse#items #items} => Array&lt;Types::StagingSourceServer&gt;
    #   * {Types::ListExtensibleSourceServersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_extensible_source_servers({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     staging_account_id: "AccountID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].hostname #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ListExtensibleSourceServers AWS API Documentation
    #
    # @overload list_extensible_source_servers(params = {})
    # @param [Hash] params ({})
    def list_extensible_source_servers(params = {}, options = {})
      req = build_request(:list_extensible_source_servers, params)
      req.send_request(options)
    end

    # Returns an array of staging accounts for existing extended source
    # servers.
    #
    # @option params [Integer] :max_results
    #   The maximum number of staging Accounts to retrieve.
    #
    # @option params [String] :next_token
    #   The token of the next staging Account to retrieve.
    #
    # @return [Types::ListStagingAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStagingAccountsResponse#accounts #accounts} => Array&lt;Types::Account&gt;
    #   * {Types::ListStagingAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_staging_accounts({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ListStagingAccounts AWS API Documentation
    #
    # @overload list_staging_accounts(params = {})
    # @param [Hash] params ({})
    def list_staging_accounts(params = {}, options = {})
      req = build_request(:list_staging_accounts, params)
      req.send_request(options)
    end

    # List all tags for your Elastic Disaster Recovery resources.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource whose tags should be returned.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # WARNING: RetryDataReplication is deprecated. Causes the data
    # replication initiation sequence to begin immediately upon next
    # Handshake for the specified Source Server ID, regardless of when the
    # previous initiation started. This command will work only if the Source
    # Server is stalled or is in a DISCONNECTED or STOPPED state.
    #
    # @option params [required, String] :source_server_id
    #   The ID of the Source Server whose data replication should be retried.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#last_launch_result #last_launch_result} => String
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#recovery_instance_id #recovery_instance_id} => String
    #   * {Types::SourceServer#replication_direction #replication_direction} => String
    #   * {Types::SourceServer#reversed_direction_source_server_arn #reversed_direction_source_server_arn} => String
    #   * {Types::SourceServer#source_cloud_properties #source_cloud_properties} => Types::SourceCloudProperties
    #   * {Types::SourceServer#source_network_id #source_network_id} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#staging_area #staging_area} => Types::StagingArea
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retry_data_replication({
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED"
    #   resp.data_replication_info.eta_date_time #=> String
    #   resp.data_replication_info.lag_duration #=> String
    #   resp.data_replication_info.replicated_disks #=> Array
    #   resp.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.data_replication_info.staging_availability_zone #=> String
    #   resp.last_launch_result #=> String, one of "NOT_STARTED", "PENDING", "SUCCEEDED", "FAILED"
    #   resp.life_cycle.added_to_service_date_time #=> String
    #   resp.life_cycle.elapsed_replication_duration #=> String
    #   resp.life_cycle.first_byte_date_time #=> String
    #   resp.life_cycle.last_launch.initiated.api_call_date_time #=> String
    #   resp.life_cycle.last_launch.initiated.job_id #=> String
    #   resp.life_cycle.last_launch.initiated.type #=> String, one of "RECOVERY", "DRILL"
    #   resp.life_cycle.last_launch.status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.recovery_instance_id #=> String
    #   resp.replication_direction #=> String, one of "FAILOVER", "FAILBACK"
    #   resp.reversed_direction_source_server_arn #=> String
    #   resp.source_cloud_properties.origin_account_id #=> String
    #   resp.source_cloud_properties.origin_availability_zone #=> String
    #   resp.source_cloud_properties.origin_region #=> String
    #   resp.source_network_id #=> String
    #   resp.source_properties.cpus #=> Array
    #   resp.source_properties.cpus[0].cores #=> Integer
    #   resp.source_properties.cpus[0].model_name #=> String
    #   resp.source_properties.disks #=> Array
    #   resp.source_properties.disks[0].bytes #=> Integer
    #   resp.source_properties.disks[0].device_name #=> String
    #   resp.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_properties.identification_hints.fqdn #=> String
    #   resp.source_properties.identification_hints.hostname #=> String
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
    #   resp.source_properties.supports_nitro_instances #=> Boolean
    #   resp.source_server_id #=> String
    #   resp.staging_area.error_message #=> String
    #   resp.staging_area.staging_account_id #=> String
    #   resp.staging_area.staging_source_server_arn #=> String
    #   resp.staging_area.status #=> String, one of "EXTENDED", "EXTENSION_ERROR", "NOT_EXTENDED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/RetryDataReplication AWS API Documentation
    #
    # @overload retry_data_replication(params = {})
    # @param [Hash] params ({})
    def retry_data_replication(params = {}, options = {})
      req = build_request(:retry_data_replication, params)
      req.send_request(options)
    end

    # Start replication to origin / target region - applies only to
    # protected instances that originated in EC2. For recovery instances on
    # target region - starts replication back to origin region. For failback
    # instances on origin region - starts replication to target region to
    # re-protect them.
    #
    # @option params [required, String] :recovery_instance_id
    #   The ID of the Recovery Instance that we want to reverse the
    #   replication for.
    #
    # @return [Types::ReverseReplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReverseReplicationResponse#reversed_direction_source_server_arn #reversed_direction_source_server_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reverse_replication({
    #     recovery_instance_id: "RecoveryInstanceID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reversed_direction_source_server_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/ReverseReplication AWS API Documentation
    #
    # @overload reverse_replication(params = {})
    # @param [Hash] params ({})
    def reverse_replication(params = {}, options = {})
      req = build_request(:reverse_replication, params)
      req.send_request(options)
    end

    # Initiates a Job for launching the machine that is being failed back to
    # from the specified Recovery Instance. This will run conversion on the
    # failback client and will reboot your machine, thus completing the
    # failback process.
    #
    # @option params [required, Array<String>] :recovery_instance_i_ds
    #   The IDs of the Recovery Instance whose failback launch we want to
    #   request.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be associated with the failback launch Job.
    #
    # @return [Types::StartFailbackLaunchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFailbackLaunchResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_failback_launch({
    #     recovery_instance_i_ds: ["RecoveryInstanceID"], # required
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
    #   resp.job.initiated_by #=> String, one of "START_RECOVERY", "START_DRILL", "FAILBACK", "DIAGNOSTIC", "TERMINATE_RECOVERY_INSTANCES", "TARGET_ACCOUNT", "CREATE_NETWORK_RECOVERY", "UPDATE_NETWORK_RECOVERY", "ASSOCIATE_NETWORK_RECOVERY"
    #   resp.job.job_id #=> String
    #   resp.job.participating_resources #=> Array
    #   resp.job.participating_resources[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.job.participating_resources[0].participating_resource_id.source_network_id #=> String
    #   resp.job.participating_servers #=> Array
    #   resp.job.participating_servers[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.job.participating_servers[0].recovery_instance_id #=> String
    #   resp.job.participating_servers[0].source_server_id #=> String
    #   resp.job.status #=> String, one of "PENDING", "STARTED", "COMPLETED"
    #   resp.job.tags #=> Hash
    #   resp.job.tags["TagKey"] #=> String
    #   resp.job.type #=> String, one of "LAUNCH", "TERMINATE", "CREATE_CONVERTED_SNAPSHOT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartFailbackLaunch AWS API Documentation
    #
    # @overload start_failback_launch(params = {})
    # @param [Hash] params ({})
    def start_failback_launch(params = {}, options = {})
      req = build_request(:start_failback_launch, params)
      req.send_request(options)
    end

    # Launches Recovery Instances for the specified Source Servers. For each
    # Source Server you may choose a point in time snapshot to launch from,
    # or use an on demand snapshot.
    #
    # @option params [Boolean] :is_drill
    #   Whether this Source Server Recovery operation is a drill or not.
    #
    # @option params [required, Array<Types::StartRecoveryRequestSourceServer>] :source_servers
    #   The Source Servers that we want to start a Recovery Job for.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be associated with the Recovery Job.
    #
    # @return [Types::StartRecoveryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartRecoveryResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_recovery({
    #     is_drill: false,
    #     source_servers: [ # required
    #       {
    #         recovery_snapshot_id: "RecoverySnapshotID",
    #         source_server_id: "SourceServerID", # required
    #       },
    #     ],
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
    #   resp.job.initiated_by #=> String, one of "START_RECOVERY", "START_DRILL", "FAILBACK", "DIAGNOSTIC", "TERMINATE_RECOVERY_INSTANCES", "TARGET_ACCOUNT", "CREATE_NETWORK_RECOVERY", "UPDATE_NETWORK_RECOVERY", "ASSOCIATE_NETWORK_RECOVERY"
    #   resp.job.job_id #=> String
    #   resp.job.participating_resources #=> Array
    #   resp.job.participating_resources[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.job.participating_resources[0].participating_resource_id.source_network_id #=> String
    #   resp.job.participating_servers #=> Array
    #   resp.job.participating_servers[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.job.participating_servers[0].recovery_instance_id #=> String
    #   resp.job.participating_servers[0].source_server_id #=> String
    #   resp.job.status #=> String, one of "PENDING", "STARTED", "COMPLETED"
    #   resp.job.tags #=> Hash
    #   resp.job.tags["TagKey"] #=> String
    #   resp.job.type #=> String, one of "LAUNCH", "TERMINATE", "CREATE_CONVERTED_SNAPSHOT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartRecovery AWS API Documentation
    #
    # @overload start_recovery(params = {})
    # @param [Hash] params ({})
    def start_recovery(params = {}, options = {})
      req = build_request(:start_recovery, params)
      req.send_request(options)
    end

    # Starts replication for a stopped Source Server. This action would make
    # the Source Server protected again and restart billing for it.
    #
    # @option params [required, String] :source_server_id
    #   The ID of the Source Server to start replication for.
    #
    # @return [Types::StartReplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReplicationResponse#source_server #source_server} => Types::SourceServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_replication({
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.source_server.arn #=> String
    #   resp.source_server.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER"
    #   resp.source_server.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.source_server.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.source_server.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.source_server.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.source_server.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.source_server.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.source_server.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED"
    #   resp.source_server.data_replication_info.eta_date_time #=> String
    #   resp.source_server.data_replication_info.lag_duration #=> String
    #   resp.source_server.data_replication_info.replicated_disks #=> Array
    #   resp.source_server.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.source_server.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.source_server.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.source_server.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.source_server.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.source_server.data_replication_info.staging_availability_zone #=> String
    #   resp.source_server.last_launch_result #=> String, one of "NOT_STARTED", "PENDING", "SUCCEEDED", "FAILED"
    #   resp.source_server.life_cycle.added_to_service_date_time #=> String
    #   resp.source_server.life_cycle.elapsed_replication_duration #=> String
    #   resp.source_server.life_cycle.first_byte_date_time #=> String
    #   resp.source_server.life_cycle.last_launch.initiated.api_call_date_time #=> String
    #   resp.source_server.life_cycle.last_launch.initiated.job_id #=> String
    #   resp.source_server.life_cycle.last_launch.initiated.type #=> String, one of "RECOVERY", "DRILL"
    #   resp.source_server.life_cycle.last_launch.status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.source_server.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.source_server.recovery_instance_id #=> String
    #   resp.source_server.replication_direction #=> String, one of "FAILOVER", "FAILBACK"
    #   resp.source_server.reversed_direction_source_server_arn #=> String
    #   resp.source_server.source_cloud_properties.origin_account_id #=> String
    #   resp.source_server.source_cloud_properties.origin_availability_zone #=> String
    #   resp.source_server.source_cloud_properties.origin_region #=> String
    #   resp.source_server.source_network_id #=> String
    #   resp.source_server.source_properties.cpus #=> Array
    #   resp.source_server.source_properties.cpus[0].cores #=> Integer
    #   resp.source_server.source_properties.cpus[0].model_name #=> String
    #   resp.source_server.source_properties.disks #=> Array
    #   resp.source_server.source_properties.disks[0].bytes #=> Integer
    #   resp.source_server.source_properties.disks[0].device_name #=> String
    #   resp.source_server.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_server.source_properties.identification_hints.fqdn #=> String
    #   resp.source_server.source_properties.identification_hints.hostname #=> String
    #   resp.source_server.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.source_server.source_properties.last_updated_date_time #=> String
    #   resp.source_server.source_properties.network_interfaces #=> Array
    #   resp.source_server.source_properties.network_interfaces[0].ips #=> Array
    #   resp.source_server.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.source_server.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.source_server.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.source_server.source_properties.os.full_string #=> String
    #   resp.source_server.source_properties.ram_bytes #=> Integer
    #   resp.source_server.source_properties.recommended_instance_type #=> String
    #   resp.source_server.source_properties.supports_nitro_instances #=> Boolean
    #   resp.source_server.source_server_id #=> String
    #   resp.source_server.staging_area.error_message #=> String
    #   resp.source_server.staging_area.staging_account_id #=> String
    #   resp.source_server.staging_area.staging_source_server_arn #=> String
    #   resp.source_server.staging_area.status #=> String, one of "EXTENDED", "EXTENSION_ERROR", "NOT_EXTENDED"
    #   resp.source_server.tags #=> Hash
    #   resp.source_server.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartReplication AWS API Documentation
    #
    # @overload start_replication(params = {})
    # @param [Hash] params ({})
    def start_replication(params = {}, options = {})
      req = build_request(:start_replication, params)
      req.send_request(options)
    end

    # Deploy VPC for the specified Source Network and modify launch
    # templates to use this network. The VPC will be deployed using a
    # dedicated CloudFormation stack.
    #
    # @option params [Boolean] :deploy_as_new
    #   Don't update existing CloudFormation Stack, recover the network using
    #   a new stack.
    #
    # @option params [required, Array<Types::StartSourceNetworkRecoveryRequestNetworkEntry>] :source_networks
    #   The Source Networks that we want to start a Recovery Job for.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be associated with the Source Network recovery Job.
    #
    # @return [Types::StartSourceNetworkRecoveryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSourceNetworkRecoveryResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_source_network_recovery({
    #     deploy_as_new: false,
    #     source_networks: [ # required
    #       {
    #         cfn_stack_name: "CfnStackName",
    #         source_network_id: "SourceNetworkID", # required
    #       },
    #     ],
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
    #   resp.job.initiated_by #=> String, one of "START_RECOVERY", "START_DRILL", "FAILBACK", "DIAGNOSTIC", "TERMINATE_RECOVERY_INSTANCES", "TARGET_ACCOUNT", "CREATE_NETWORK_RECOVERY", "UPDATE_NETWORK_RECOVERY", "ASSOCIATE_NETWORK_RECOVERY"
    #   resp.job.job_id #=> String
    #   resp.job.participating_resources #=> Array
    #   resp.job.participating_resources[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.job.participating_resources[0].participating_resource_id.source_network_id #=> String
    #   resp.job.participating_servers #=> Array
    #   resp.job.participating_servers[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.job.participating_servers[0].recovery_instance_id #=> String
    #   resp.job.participating_servers[0].source_server_id #=> String
    #   resp.job.status #=> String, one of "PENDING", "STARTED", "COMPLETED"
    #   resp.job.tags #=> Hash
    #   resp.job.tags["TagKey"] #=> String
    #   resp.job.type #=> String, one of "LAUNCH", "TERMINATE", "CREATE_CONVERTED_SNAPSHOT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartSourceNetworkRecovery AWS API Documentation
    #
    # @overload start_source_network_recovery(params = {})
    # @param [Hash] params ({})
    def start_source_network_recovery(params = {}, options = {})
      req = build_request(:start_source_network_recovery, params)
      req.send_request(options)
    end

    # Starts replication for a Source Network. This action would make the
    # Source Network protected.
    #
    # @option params [required, String] :source_network_id
    #   ID of the Source Network to replicate.
    #
    # @return [Types::StartSourceNetworkReplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSourceNetworkReplicationResponse#source_network #source_network} => Types::SourceNetwork
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_source_network_replication({
    #     source_network_id: "SourceNetworkID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.source_network.arn #=> String
    #   resp.source_network.cfn_stack_name #=> String
    #   resp.source_network.last_recovery.api_call_date_time #=> Time
    #   resp.source_network.last_recovery.job_id #=> String
    #   resp.source_network.last_recovery.last_recovery_result #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCESS", "FAIL", "PARTIAL_SUCCESS", "ASSOCIATE_SUCCESS", "ASSOCIATE_FAIL"
    #   resp.source_network.launched_vpc_id #=> String
    #   resp.source_network.replication_status #=> String, one of "STOPPED", "IN_PROGRESS", "PROTECTED", "ERROR"
    #   resp.source_network.replication_status_details #=> String
    #   resp.source_network.source_account_id #=> String
    #   resp.source_network.source_network_id #=> String
    #   resp.source_network.source_region #=> String
    #   resp.source_network.source_vpc_id #=> String
    #   resp.source_network.tags #=> Hash
    #   resp.source_network.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StartSourceNetworkReplication AWS API Documentation
    #
    # @overload start_source_network_replication(params = {})
    # @param [Hash] params ({})
    def start_source_network_replication(params = {}, options = {})
      req = build_request(:start_source_network_replication, params)
      req.send_request(options)
    end

    # Stops the failback process for a specified Recovery Instance. This
    # changes the Failback State of the Recovery Instance back to
    # FAILBACK\_NOT\_STARTED.
    #
    # @option params [required, String] :recovery_instance_id
    #   The ID of the Recovery Instance we want to stop failback for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_failback({
    #     recovery_instance_id: "RecoveryInstanceID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StopFailback AWS API Documentation
    #
    # @overload stop_failback(params = {})
    # @param [Hash] params ({})
    def stop_failback(params = {}, options = {})
      req = build_request(:stop_failback, params)
      req.send_request(options)
    end

    # Stops replication for a Source Server. This action would make the
    # Source Server unprotected, delete its existing snapshots and stop
    # billing for it.
    #
    # @option params [required, String] :source_server_id
    #   The ID of the Source Server to stop replication for.
    #
    # @return [Types::StopReplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopReplicationResponse#source_server #source_server} => Types::SourceServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_replication({
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.source_server.arn #=> String
    #   resp.source_server.data_replication_info.data_replication_error.error #=> String, one of "AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER"
    #   resp.source_server.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.source_server.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.source_server.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.source_server.data_replication_info.data_replication_initiation.steps #=> Array
    #   resp.source_server.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of "WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"
    #   resp.source_server.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"
    #   resp.source_server.data_replication_info.data_replication_state #=> String, one of "STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED"
    #   resp.source_server.data_replication_info.eta_date_time #=> String
    #   resp.source_server.data_replication_info.lag_duration #=> String
    #   resp.source_server.data_replication_info.replicated_disks #=> Array
    #   resp.source_server.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.source_server.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.source_server.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.source_server.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.source_server.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.source_server.data_replication_info.staging_availability_zone #=> String
    #   resp.source_server.last_launch_result #=> String, one of "NOT_STARTED", "PENDING", "SUCCEEDED", "FAILED"
    #   resp.source_server.life_cycle.added_to_service_date_time #=> String
    #   resp.source_server.life_cycle.elapsed_replication_duration #=> String
    #   resp.source_server.life_cycle.first_byte_date_time #=> String
    #   resp.source_server.life_cycle.last_launch.initiated.api_call_date_time #=> String
    #   resp.source_server.life_cycle.last_launch.initiated.job_id #=> String
    #   resp.source_server.life_cycle.last_launch.initiated.type #=> String, one of "RECOVERY", "DRILL"
    #   resp.source_server.life_cycle.last_launch.status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.source_server.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.source_server.recovery_instance_id #=> String
    #   resp.source_server.replication_direction #=> String, one of "FAILOVER", "FAILBACK"
    #   resp.source_server.reversed_direction_source_server_arn #=> String
    #   resp.source_server.source_cloud_properties.origin_account_id #=> String
    #   resp.source_server.source_cloud_properties.origin_availability_zone #=> String
    #   resp.source_server.source_cloud_properties.origin_region #=> String
    #   resp.source_server.source_network_id #=> String
    #   resp.source_server.source_properties.cpus #=> Array
    #   resp.source_server.source_properties.cpus[0].cores #=> Integer
    #   resp.source_server.source_properties.cpus[0].model_name #=> String
    #   resp.source_server.source_properties.disks #=> Array
    #   resp.source_server.source_properties.disks[0].bytes #=> Integer
    #   resp.source_server.source_properties.disks[0].device_name #=> String
    #   resp.source_server.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.source_server.source_properties.identification_hints.fqdn #=> String
    #   resp.source_server.source_properties.identification_hints.hostname #=> String
    #   resp.source_server.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.source_server.source_properties.last_updated_date_time #=> String
    #   resp.source_server.source_properties.network_interfaces #=> Array
    #   resp.source_server.source_properties.network_interfaces[0].ips #=> Array
    #   resp.source_server.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.source_server.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.source_server.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.source_server.source_properties.os.full_string #=> String
    #   resp.source_server.source_properties.ram_bytes #=> Integer
    #   resp.source_server.source_properties.recommended_instance_type #=> String
    #   resp.source_server.source_properties.supports_nitro_instances #=> Boolean
    #   resp.source_server.source_server_id #=> String
    #   resp.source_server.staging_area.error_message #=> String
    #   resp.source_server.staging_area.staging_account_id #=> String
    #   resp.source_server.staging_area.staging_source_server_arn #=> String
    #   resp.source_server.staging_area.status #=> String, one of "EXTENDED", "EXTENSION_ERROR", "NOT_EXTENDED"
    #   resp.source_server.tags #=> Hash
    #   resp.source_server.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StopReplication AWS API Documentation
    #
    # @overload stop_replication(params = {})
    # @param [Hash] params ({})
    def stop_replication(params = {}, options = {})
      req = build_request(:stop_replication, params)
      req.send_request(options)
    end

    # Stops replication for a Source Network. This action would make the
    # Source Network unprotected.
    #
    # @option params [required, String] :source_network_id
    #   ID of the Source Network to stop replication.
    #
    # @return [Types::StopSourceNetworkReplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopSourceNetworkReplicationResponse#source_network #source_network} => Types::SourceNetwork
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_source_network_replication({
    #     source_network_id: "SourceNetworkID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.source_network.arn #=> String
    #   resp.source_network.cfn_stack_name #=> String
    #   resp.source_network.last_recovery.api_call_date_time #=> Time
    #   resp.source_network.last_recovery.job_id #=> String
    #   resp.source_network.last_recovery.last_recovery_result #=> String, one of "NOT_STARTED", "IN_PROGRESS", "SUCCESS", "FAIL", "PARTIAL_SUCCESS", "ASSOCIATE_SUCCESS", "ASSOCIATE_FAIL"
    #   resp.source_network.launched_vpc_id #=> String
    #   resp.source_network.replication_status #=> String, one of "STOPPED", "IN_PROGRESS", "PROTECTED", "ERROR"
    #   resp.source_network.replication_status_details #=> String
    #   resp.source_network.source_account_id #=> String
    #   resp.source_network.source_network_id #=> String
    #   resp.source_network.source_region #=> String
    #   resp.source_network.source_vpc_id #=> String
    #   resp.source_network.tags #=> Hash
    #   resp.source_network.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/StopSourceNetworkReplication AWS API Documentation
    #
    # @overload stop_source_network_replication(params = {})
    # @param [Hash] params ({})
    def stop_source_network_replication(params = {}, options = {})
      req = build_request(:stop_source_network_replication, params)
      req.send_request(options)
    end

    # Adds or overwrites only the specified tags for the specified Elastic
    # Disaster Recovery resource or resources. When you specify an existing
    # tag key, the value is overwritten with the new value. Each resource
    # can have a maximum of 50 tags. Each tag consists of a key and optional
    # value.
    #
    # @option params [required, String] :resource_arn
    #   ARN of the resource for which tags are to be added or updated.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Array of tags to be added or updated.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Initiates a Job for terminating the EC2 resources associated with the
    # specified Recovery Instances, and then will delete the Recovery
    # Instances from the Elastic Disaster Recovery service.
    #
    # @option params [required, Array<String>] :recovery_instance_i_ds
    #   The IDs of the Recovery Instances that should be terminated.
    #
    # @return [Types::TerminateRecoveryInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TerminateRecoveryInstancesResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_recovery_instances({
    #     recovery_instance_i_ds: ["RecoveryInstanceID"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.arn #=> String
    #   resp.job.creation_date_time #=> String
    #   resp.job.end_date_time #=> String
    #   resp.job.initiated_by #=> String, one of "START_RECOVERY", "START_DRILL", "FAILBACK", "DIAGNOSTIC", "TERMINATE_RECOVERY_INSTANCES", "TARGET_ACCOUNT", "CREATE_NETWORK_RECOVERY", "UPDATE_NETWORK_RECOVERY", "ASSOCIATE_NETWORK_RECOVERY"
    #   resp.job.job_id #=> String
    #   resp.job.participating_resources #=> Array
    #   resp.job.participating_resources[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.job.participating_resources[0].participating_resource_id.source_network_id #=> String
    #   resp.job.participating_servers #=> Array
    #   resp.job.participating_servers[0].launch_status #=> String, one of "PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"
    #   resp.job.participating_servers[0].recovery_instance_id #=> String
    #   resp.job.participating_servers[0].source_server_id #=> String
    #   resp.job.status #=> String, one of "PENDING", "STARTED", "COMPLETED"
    #   resp.job.tags #=> Hash
    #   resp.job.tags["TagKey"] #=> String
    #   resp.job.type #=> String, one of "LAUNCH", "TERMINATE", "CREATE_CONVERTED_SNAPSHOT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/TerminateRecoveryInstances AWS API Documentation
    #
    # @overload terminate_recovery_instances(params = {})
    # @param [Hash] params ({})
    def terminate_recovery_instances(params = {}, options = {})
      req = build_request(:terminate_recovery_instances, params)
      req.send_request(options)
    end

    # Deletes the specified set of tags from the specified set of Elastic
    # Disaster Recovery resources.
    #
    # @option params [required, String] :resource_arn
    #   ARN of the resource for which tags are to be removed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Array of tags to be removed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Allows you to update the failback replication configuration of a
    # Recovery Instance by ID.
    #
    # @option params [Integer] :bandwidth_throttling
    #   Configure bandwidth throttling for the outbound data transfer rate of
    #   the Recovery Instance in Mbps.
    #
    # @option params [String] :name
    #   The name of the Failback Replication Configuration.
    #
    # @option params [required, String] :recovery_instance_id
    #   The ID of the Recovery Instance.
    #
    # @option params [Boolean] :use_private_ip
    #   Whether to use Private IP for the failback replication of the Recovery
    #   Instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_failback_replication_configuration({
    #     bandwidth_throttling: 1,
    #     name: "BoundedString",
    #     recovery_instance_id: "RecoveryInstanceID", # required
    #     use_private_ip: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UpdateFailbackReplicationConfiguration AWS API Documentation
    #
    # @overload update_failback_replication_configuration(params = {})
    # @param [Hash] params ({})
    def update_failback_replication_configuration(params = {}, options = {})
      req = build_request(:update_failback_replication_configuration, params)
      req.send_request(options)
    end

    # Updates a LaunchConfiguration by Source Server ID.
    #
    # @option params [Boolean] :copy_private_ip
    #   Whether we should copy the Private IP of the Source Server to the
    #   Recovery Instance.
    #
    # @option params [Boolean] :copy_tags
    #   Whether we want to copy the tags of the Source Server to the EC2
    #   machine of the Recovery Instance.
    #
    # @option params [String] :launch_disposition
    #   The state of the Recovery Instance in EC2 after the recovery
    #   operation.
    #
    # @option params [Types::Licensing] :licensing
    #   The licensing configuration to be used for this launch configuration.
    #
    # @option params [String] :name
    #   The name of the launch configuration.
    #
    # @option params [required, String] :source_server_id
    #   The ID of the Source Server that we want to retrieve a Launch
    #   Configuration for.
    #
    # @option params [String] :target_instance_type_right_sizing_method
    #   Whether Elastic Disaster Recovery should try to automatically choose
    #   the instance type that best matches the OS, CPU, and RAM of your
    #   Source Server.
    #
    # @return [Types::LaunchConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LaunchConfiguration#copy_private_ip #copy_private_ip} => Boolean
    #   * {Types::LaunchConfiguration#copy_tags #copy_tags} => Boolean
    #   * {Types::LaunchConfiguration#ec2_launch_template_id #ec2_launch_template_id} => String
    #   * {Types::LaunchConfiguration#launch_disposition #launch_disposition} => String
    #   * {Types::LaunchConfiguration#licensing #licensing} => Types::Licensing
    #   * {Types::LaunchConfiguration#name #name} => String
    #   * {Types::LaunchConfiguration#source_server_id #source_server_id} => String
    #   * {Types::LaunchConfiguration#target_instance_type_right_sizing_method #target_instance_type_right_sizing_method} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_launch_configuration({
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     launch_disposition: "STOPPED", # accepts STOPPED, STARTED
    #     licensing: {
    #       os_byol: false,
    #     },
    #     name: "SmallBoundedString",
    #     source_server_id: "SourceServerID", # required
    #     target_instance_type_right_sizing_method: "NONE", # accepts NONE, BASIC
    #   })
    #
    # @example Response structure
    #
    #   resp.copy_private_ip #=> Boolean
    #   resp.copy_tags #=> Boolean
    #   resp.ec2_launch_template_id #=> String
    #   resp.launch_disposition #=> String, one of "STOPPED", "STARTED"
    #   resp.licensing.os_byol #=> Boolean
    #   resp.name #=> String
    #   resp.source_server_id #=> String
    #   resp.target_instance_type_right_sizing_method #=> String, one of "NONE", "BASIC"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UpdateLaunchConfiguration AWS API Documentation
    #
    # @overload update_launch_configuration(params = {})
    # @param [Hash] params ({})
    def update_launch_configuration(params = {}, options = {})
      req = build_request(:update_launch_configuration, params)
      req.send_request(options)
    end

    # Updates an existing Launch Configuration Template by ID.
    #
    # @option params [Boolean] :copy_private_ip
    #   Copy private IP.
    #
    # @option params [Boolean] :copy_tags
    #   Copy tags.
    #
    # @option params [String] :export_bucket_arn
    #   S3 bucket ARN to export Source Network templates.
    #
    # @option params [required, String] :launch_configuration_template_id
    #   Launch Configuration Template ID.
    #
    # @option params [String] :launch_disposition
    #   Launch disposition.
    #
    # @option params [Types::Licensing] :licensing
    #   Licensing.
    #
    # @option params [String] :target_instance_type_right_sizing_method
    #   Target instance type right-sizing method.
    #
    # @return [Types::UpdateLaunchConfigurationTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLaunchConfigurationTemplateResponse#launch_configuration_template #launch_configuration_template} => Types::LaunchConfigurationTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_launch_configuration_template({
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     export_bucket_arn: "ARN",
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #     launch_disposition: "STOPPED", # accepts STOPPED, STARTED
    #     licensing: {
    #       os_byol: false,
    #     },
    #     target_instance_type_right_sizing_method: "NONE", # accepts NONE, BASIC
    #   })
    #
    # @example Response structure
    #
    #   resp.launch_configuration_template.arn #=> String
    #   resp.launch_configuration_template.copy_private_ip #=> Boolean
    #   resp.launch_configuration_template.copy_tags #=> Boolean
    #   resp.launch_configuration_template.export_bucket_arn #=> String
    #   resp.launch_configuration_template.launch_configuration_template_id #=> String
    #   resp.launch_configuration_template.launch_disposition #=> String, one of "STOPPED", "STARTED"
    #   resp.launch_configuration_template.licensing.os_byol #=> Boolean
    #   resp.launch_configuration_template.tags #=> Hash
    #   resp.launch_configuration_template.tags["TagKey"] #=> String
    #   resp.launch_configuration_template.target_instance_type_right_sizing_method #=> String, one of "NONE", "BASIC"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UpdateLaunchConfigurationTemplate AWS API Documentation
    #
    # @overload update_launch_configuration_template(params = {})
    # @param [Hash] params ({})
    def update_launch_configuration_template(params = {}, options = {})
      req = build_request(:update_launch_configuration_template, params)
      req.send_request(options)
    end

    # Allows you to update a ReplicationConfiguration by Source Server ID.
    #
    # @option params [Boolean] :associate_default_security_group
    #   Whether to associate the default Elastic Disaster Recovery Security
    #   group with the Replication Configuration.
    #
    # @option params [Boolean] :auto_replicate_new_disks
    #   Whether to allow the AWS replication agent to automatically replicate
    #   newly added disks.
    #
    # @option params [Integer] :bandwidth_throttling
    #   Configure bandwidth throttling for the outbound data transfer rate of
    #   the Source Server in Mbps.
    #
    # @option params [Boolean] :create_public_ip
    #   Whether to create a Public IP for the Recovery Instance by default.
    #
    # @option params [String] :data_plane_routing
    #   The data plane routing mechanism that will be used for replication.
    #
    # @option params [String] :default_large_staging_disk_type
    #   The Staging Disk EBS volume type to be used during replication.
    #
    # @option params [String] :ebs_encryption
    #   The type of EBS encryption to be used during replication.
    #
    # @option params [String] :ebs_encryption_key_arn
    #   The ARN of the EBS encryption key to be used during replication.
    #
    # @option params [String] :name
    #   The name of the Replication Configuration.
    #
    # @option params [Array<Types::PITPolicyRule>] :pit_policy
    #   The Point in time (PIT) policy to manage snapshots taken during
    #   replication.
    #
    # @option params [Array<Types::ReplicationConfigurationReplicatedDisk>] :replicated_disks
    #   The configuration of the disks of the Source Server to be replicated.
    #
    # @option params [String] :replication_server_instance_type
    #   The instance type to be used for the replication server.
    #
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   The security group IDs that will be used by the replication server.
    #
    # @option params [required, String] :source_server_id
    #   The ID of the Source Server for this Replication Configuration.
    #
    # @option params [String] :staging_area_subnet_id
    #   The subnet to be used by the replication staging area.
    #
    # @option params [Hash<String,String>] :staging_area_tags
    #   A set of tags to be associated with all resources created in the
    #   replication staging area: EC2 replication server, EBS volumes, EBS
    #   snapshots, etc.
    #
    # @option params [Boolean] :use_dedicated_replication_server
    #   Whether to use a dedicated Replication Server in the replication
    #   staging area.
    #
    # @return [Types::ReplicationConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicationConfiguration#associate_default_security_group #associate_default_security_group} => Boolean
    #   * {Types::ReplicationConfiguration#auto_replicate_new_disks #auto_replicate_new_disks} => Boolean
    #   * {Types::ReplicationConfiguration#bandwidth_throttling #bandwidth_throttling} => Integer
    #   * {Types::ReplicationConfiguration#create_public_ip #create_public_ip} => Boolean
    #   * {Types::ReplicationConfiguration#data_plane_routing #data_plane_routing} => String
    #   * {Types::ReplicationConfiguration#default_large_staging_disk_type #default_large_staging_disk_type} => String
    #   * {Types::ReplicationConfiguration#ebs_encryption #ebs_encryption} => String
    #   * {Types::ReplicationConfiguration#ebs_encryption_key_arn #ebs_encryption_key_arn} => String
    #   * {Types::ReplicationConfiguration#name #name} => String
    #   * {Types::ReplicationConfiguration#pit_policy #pit_policy} => Array&lt;Types::PITPolicyRule&gt;
    #   * {Types::ReplicationConfiguration#replicated_disks #replicated_disks} => Array&lt;Types::ReplicationConfigurationReplicatedDisk&gt;
    #   * {Types::ReplicationConfiguration#replication_server_instance_type #replication_server_instance_type} => String
    #   * {Types::ReplicationConfiguration#replication_servers_security_groups_i_ds #replication_servers_security_groups_i_ds} => Array&lt;String&gt;
    #   * {Types::ReplicationConfiguration#source_server_id #source_server_id} => String
    #   * {Types::ReplicationConfiguration#staging_area_subnet_id #staging_area_subnet_id} => String
    #   * {Types::ReplicationConfiguration#staging_area_tags #staging_area_tags} => Hash&lt;String,String&gt;
    #   * {Types::ReplicationConfiguration#use_dedicated_replication_server #use_dedicated_replication_server} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_replication_configuration({
    #     associate_default_security_group: false,
    #     auto_replicate_new_disks: false,
    #     bandwidth_throttling: 1,
    #     create_public_ip: false,
    #     data_plane_routing: "PRIVATE_IP", # accepts PRIVATE_IP, PUBLIC_IP
    #     default_large_staging_disk_type: "GP2", # accepts GP2, GP3, ST1, AUTO
    #     ebs_encryption: "DEFAULT", # accepts DEFAULT, CUSTOM, NONE
    #     ebs_encryption_key_arn: "ARN",
    #     name: "SmallBoundedString",
    #     pit_policy: [
    #       {
    #         enabled: false,
    #         interval: 1, # required
    #         retention_duration: 1, # required
    #         rule_id: 1,
    #         units: "MINUTE", # required, accepts MINUTE, HOUR, DAY
    #       },
    #     ],
    #     replicated_disks: [
    #       {
    #         device_name: "BoundedString",
    #         iops: 1,
    #         is_boot_disk: false,
    #         optimized_staging_disk_type: "AUTO", # accepts AUTO, GP2, GP3, IO1, SC1, ST1, STANDARD
    #         staging_disk_type: "AUTO", # accepts AUTO, GP2, GP3, IO1, SC1, ST1, STANDARD
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
    #   })
    #
    # @example Response structure
    #
    #   resp.associate_default_security_group #=> Boolean
    #   resp.auto_replicate_new_disks #=> Boolean
    #   resp.bandwidth_throttling #=> Integer
    #   resp.create_public_ip #=> Boolean
    #   resp.data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.default_large_staging_disk_type #=> String, one of "GP2", "GP3", "ST1", "AUTO"
    #   resp.ebs_encryption #=> String, one of "DEFAULT", "CUSTOM", "NONE"
    #   resp.ebs_encryption_key_arn #=> String
    #   resp.name #=> String
    #   resp.pit_policy #=> Array
    #   resp.pit_policy[0].enabled #=> Boolean
    #   resp.pit_policy[0].interval #=> Integer
    #   resp.pit_policy[0].retention_duration #=> Integer
    #   resp.pit_policy[0].rule_id #=> Integer
    #   resp.pit_policy[0].units #=> String, one of "MINUTE", "HOUR", "DAY"
    #   resp.replicated_disks #=> Array
    #   resp.replicated_disks[0].device_name #=> String
    #   resp.replicated_disks[0].iops #=> Integer
    #   resp.replicated_disks[0].is_boot_disk #=> Boolean
    #   resp.replicated_disks[0].optimized_staging_disk_type #=> String, one of "AUTO", "GP2", "GP3", "IO1", "SC1", "ST1", "STANDARD"
    #   resp.replicated_disks[0].staging_disk_type #=> String, one of "AUTO", "GP2", "GP3", "IO1", "SC1", "ST1", "STANDARD"
    #   resp.replicated_disks[0].throughput #=> Integer
    #   resp.replication_server_instance_type #=> String
    #   resp.replication_servers_security_groups_i_ds #=> Array
    #   resp.replication_servers_security_groups_i_ds[0] #=> String
    #   resp.source_server_id #=> String
    #   resp.staging_area_subnet_id #=> String
    #   resp.staging_area_tags #=> Hash
    #   resp.staging_area_tags["TagKey"] #=> String
    #   resp.use_dedicated_replication_server #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UpdateReplicationConfiguration AWS API Documentation
    #
    # @overload update_replication_configuration(params = {})
    # @param [Hash] params ({})
    def update_replication_configuration(params = {}, options = {})
      req = build_request(:update_replication_configuration, params)
      req.send_request(options)
    end

    # Updates a ReplicationConfigurationTemplate by ID.
    #
    # @option params [String] :arn
    #   The Replication Configuration Template ARN.
    #
    # @option params [Boolean] :associate_default_security_group
    #   Whether to associate the default Elastic Disaster Recovery Security
    #   group with the Replication Configuration Template.
    #
    # @option params [Boolean] :auto_replicate_new_disks
    #   Whether to allow the AWS replication agent to automatically replicate
    #   newly added disks.
    #
    # @option params [Integer] :bandwidth_throttling
    #   Configure bandwidth throttling for the outbound data transfer rate of
    #   the Source Server in Mbps.
    #
    # @option params [Boolean] :create_public_ip
    #   Whether to create a Public IP for the Recovery Instance by default.
    #
    # @option params [String] :data_plane_routing
    #   The data plane routing mechanism that will be used for replication.
    #
    # @option params [String] :default_large_staging_disk_type
    #   The Staging Disk EBS volume type to be used during replication.
    #
    # @option params [String] :ebs_encryption
    #   The type of EBS encryption to be used during replication.
    #
    # @option params [String] :ebs_encryption_key_arn
    #   The ARN of the EBS encryption key to be used during replication.
    #
    # @option params [Array<Types::PITPolicyRule>] :pit_policy
    #   The Point in time (PIT) policy to manage snapshots taken during
    #   replication.
    #
    # @option params [required, String] :replication_configuration_template_id
    #   The Replication Configuration Template ID.
    #
    # @option params [String] :replication_server_instance_type
    #   The instance type to be used for the replication server.
    #
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   The security group IDs that will be used by the replication server.
    #
    # @option params [String] :staging_area_subnet_id
    #   The subnet to be used by the replication staging area.
    #
    # @option params [Hash<String,String>] :staging_area_tags
    #   A set of tags to be associated with all resources created in the
    #   replication staging area: EC2 replication server, EBS volumes, EBS
    #   snapshots, etc.
    #
    # @option params [Boolean] :use_dedicated_replication_server
    #   Whether to use a dedicated Replication Server in the replication
    #   staging area.
    #
    # @return [Types::ReplicationConfigurationTemplate] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicationConfigurationTemplate#arn #arn} => String
    #   * {Types::ReplicationConfigurationTemplate#associate_default_security_group #associate_default_security_group} => Boolean
    #   * {Types::ReplicationConfigurationTemplate#auto_replicate_new_disks #auto_replicate_new_disks} => Boolean
    #   * {Types::ReplicationConfigurationTemplate#bandwidth_throttling #bandwidth_throttling} => Integer
    #   * {Types::ReplicationConfigurationTemplate#create_public_ip #create_public_ip} => Boolean
    #   * {Types::ReplicationConfigurationTemplate#data_plane_routing #data_plane_routing} => String
    #   * {Types::ReplicationConfigurationTemplate#default_large_staging_disk_type #default_large_staging_disk_type} => String
    #   * {Types::ReplicationConfigurationTemplate#ebs_encryption #ebs_encryption} => String
    #   * {Types::ReplicationConfigurationTemplate#ebs_encryption_key_arn #ebs_encryption_key_arn} => String
    #   * {Types::ReplicationConfigurationTemplate#pit_policy #pit_policy} => Array&lt;Types::PITPolicyRule&gt;
    #   * {Types::ReplicationConfigurationTemplate#replication_configuration_template_id #replication_configuration_template_id} => String
    #   * {Types::ReplicationConfigurationTemplate#replication_server_instance_type #replication_server_instance_type} => String
    #   * {Types::ReplicationConfigurationTemplate#replication_servers_security_groups_i_ds #replication_servers_security_groups_i_ds} => Array&lt;String&gt;
    #   * {Types::ReplicationConfigurationTemplate#staging_area_subnet_id #staging_area_subnet_id} => String
    #   * {Types::ReplicationConfigurationTemplate#staging_area_tags #staging_area_tags} => Hash&lt;String,String&gt;
    #   * {Types::ReplicationConfigurationTemplate#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::ReplicationConfigurationTemplate#use_dedicated_replication_server #use_dedicated_replication_server} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_replication_configuration_template({
    #     arn: "ARN",
    #     associate_default_security_group: false,
    #     auto_replicate_new_disks: false,
    #     bandwidth_throttling: 1,
    #     create_public_ip: false,
    #     data_plane_routing: "PRIVATE_IP", # accepts PRIVATE_IP, PUBLIC_IP
    #     default_large_staging_disk_type: "GP2", # accepts GP2, GP3, ST1, AUTO
    #     ebs_encryption: "DEFAULT", # accepts DEFAULT, CUSTOM, NONE
    #     ebs_encryption_key_arn: "ARN",
    #     pit_policy: [
    #       {
    #         enabled: false,
    #         interval: 1, # required
    #         retention_duration: 1, # required
    #         rule_id: 1,
    #         units: "MINUTE", # required, accepts MINUTE, HOUR, DAY
    #       },
    #     ],
    #     replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #     replication_server_instance_type: "EC2InstanceType",
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     staging_area_subnet_id: "SubnetID",
    #     staging_area_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     use_dedicated_replication_server: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.associate_default_security_group #=> Boolean
    #   resp.auto_replicate_new_disks #=> Boolean
    #   resp.bandwidth_throttling #=> Integer
    #   resp.create_public_ip #=> Boolean
    #   resp.data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.default_large_staging_disk_type #=> String, one of "GP2", "GP3", "ST1", "AUTO"
    #   resp.ebs_encryption #=> String, one of "DEFAULT", "CUSTOM", "NONE"
    #   resp.ebs_encryption_key_arn #=> String
    #   resp.pit_policy #=> Array
    #   resp.pit_policy[0].enabled #=> Boolean
    #   resp.pit_policy[0].interval #=> Integer
    #   resp.pit_policy[0].retention_duration #=> Integer
    #   resp.pit_policy[0].rule_id #=> Integer
    #   resp.pit_policy[0].units #=> String, one of "MINUTE", "HOUR", "DAY"
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26/UpdateReplicationConfigurationTemplate AWS API Documentation
    #
    # @overload update_replication_configuration_template(params = {})
    # @param [Hash] params ({})
    def update_replication_configuration_template(params = {}, options = {})
      req = build_request(:update_replication_configuration_template, params)
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
      context[:gem_name] = 'aws-sdk-drs'
      context[:gem_version] = '1.19.0'
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
