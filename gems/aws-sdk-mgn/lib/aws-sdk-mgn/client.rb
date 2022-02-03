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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
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
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Allows the user to set the SourceServer.LifeCycle.state property for
    # specific Source Server IDs to one of the following: READY\_FOR\_TEST
    # or READY\_FOR\_CUTOVER. This command only works if the Source Server
    # is already launchable (dataReplicationInfo.lagDuration is not null.)
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
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_server_life_cycle_state({
    #     life_cycle: { # required
    #       state: "READY_FOR_TEST", # required, accepts READY_FOR_TEST, READY_FOR_CUTOVER, CUTOVER
    #     },
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
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
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"
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
    #   Request to configure the Staging Disk EBS volume type to "gp2"
    #   during Replication Settings template creation.
    #
    # @option params [required, String] :ebs_encryption
    #   Request to configure EBS enryption during Replication Settings
    #   template creation.
    #
    # @option params [String] :ebs_encryption_key_arn
    #   Request to configure an EBS enryption key during Replication Settings
    #   template creation.
    #
    # @option params [required, String] :replication_server_instance_type
    #   Request to configure the Replication Server instance type during
    #   Replication Settings template creation.
    #
    # @option params [required, Array<String>] :replication_servers_security_groups_i_ds
    #   Request to configure the Replication Server Secuirity group ID during
    #   Replication Settings template creation.
    #
    # @option params [required, String] :staging_area_subnet_id
    #   Request to configure the Staging Area subnet ID during Replication
    #   Settings template creation.
    #
    # @option params [required, Hash<String,String>] :staging_area_tags
    #   Request to configure Staiging Area tags during Replication Settings
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
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_configuration_template({
    #     associate_default_security_group: false, # required
    #     bandwidth_throttling: 1, # required
    #     create_public_ip: false, # required
    #     data_plane_routing: "PRIVATE_IP", # required, accepts PRIVATE_IP, PUBLIC_IP
    #     default_large_staging_disk_type: "GP2", # required, accepts GP2, ST1
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
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.associate_default_security_group #=> Boolean
    #   resp.bandwidth_throttling #=> Integer
    #   resp.create_public_ip #=> Boolean
    #   resp.data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.default_large_staging_disk_type #=> String, one of "GP2", "ST1"
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/CreateReplicationConfigurationTemplate AWS API Documentation
    #
    # @overload create_replication_configuration_template(params = {})
    # @param [Hash] params ({})
    def create_replication_configuration_template(params = {}, options = {})
      req = build_request(:create_replication_configuration_template, params)
      req.send_request(options)
    end

    # Deletes a single Job by ID.
    #
    # @option params [required, String] :job_id
    #   Request to delete Job from service by Job ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job({
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
    # @option params [required, String] :source_server_id
    #   Request to delete Source Server from service by Server ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_source_server({
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

    # Deletes a single vCenter client by ID.
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

    # Retrieves detailed Job log with paging.
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
    # creationDataTime - latest date first. Jobs are normaly created by the
    # StartTest, StartCutover, and TerminateTargetInstances APIs. Jobs are
    # also created by DiagnosticLaunch and TerminateDiagnosticInstances,
    # which are APIs available only to *Support* and only used in response
    # to relevant support tickets.
    #
    # @option params [required, Types::DescribeJobsRequestFilters] :filters
    #   Request to describe Job log filters.
    #
    # @option params [Integer] :max_results
    #   Request to describe Job log by max results.
    #
    # @option params [String] :next_token
    #   Request to describe Job logby next token.
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
    #     filters: { # required
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

    # Lists all ReplicationConfigurationTemplates, filtered by Source Server
    # IDs.
    #
    # @option params [Integer] :max_results
    #   Request to describe Replication Configuration template by max results.
    #
    # @option params [String] :next_token
    #   Request to describe Replication Configuration template by next token.
    #
    # @option params [required, Array<String>] :replication_configuration_template_i_ds
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
    #     replication_configuration_template_i_ds: ["ReplicationConfigurationTemplateID"], # required
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
    #   resp.items[0].default_large_staging_disk_type #=> String, one of "GP2", "ST1"
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
    # @option params [required, Types::DescribeSourceServersRequestFilters] :filters
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
    #     filters: { # required
    #       is_archived: false,
    #       life_cycle_states: ["STOPPED"], # accepts STOPPED, NOT_READY, READY_FOR_TEST, TESTING, READY_FOR_CUTOVER, CUTTING_OVER, CUTOVER, DISCONNECTED, DISCOVERED
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
    #   resp.items[0].life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"
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

    # Lists all vCenter clients.
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

    # Disconnects specific Source Servers from Application Migration
    # Service. Data replication is stopped immediately. All AWS resources
    # created by Application Migration Service for enabling the replication
    # of these source servers will be terminated / deleted within 90
    # minutes. Launched Test or Cutover instances will NOT be terminated. If
    # the agent on the source server has not been prevented from
    # communciating with the Application Migration Service service, then it
    # will receive a command to uninstall itself (within approximately 10
    # minutes). The following properties of the SourceServer will be changed
    # immediately: dataReplicationInfo.dataReplicationState will be set to
    # DISCONNECTED; The totalStorageBytes property for each of
    # dataReplicationInfo.replicatedDisks will be set to zero;
    # dataReplicationInfo.lagDuration and
    # dataReplicationInfo.lagDurationwill be nullified.
    #
    # @option params [required, String] :source_server_id
    #   Request to disconnect Source Server from service by Server ID.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_from_service({
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
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
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"
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
    # dataReplicationInfo.dataReplicationState will be to DISCONNECTED; The
    # SourceServer.lifeCycle.state will be changed to CUTOVER; The
    # totalStorageBytes property fo each of
    # dataReplicationInfo.replicatedDisks will be set to zero;
    # dataReplicationInfo.lagDuration and
    # dataReplicationInfo.lagDurationwill be nullified.
    #
    # @option params [required, String] :source_server_id
    #   Request to finalize Cutover by Soure Server ID.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.finalize_cutover({
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
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
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"
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
    # @option params [required, String] :source_server_id
    #   Request to get Launch Configuration information by Source Server ID.
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
    # @option params [required, String] :source_server_id
    #   Request to get Replication Configuaration by Source Server ID.
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
    #   resp.bandwidth_throttling #=> Integer
    #   resp.create_public_ip #=> Boolean
    #   resp.data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.default_large_staging_disk_type #=> String, one of "GP2", "ST1"
    #   resp.ebs_encryption #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.ebs_encryption_key_arn #=> String
    #   resp.name #=> String
    #   resp.replicated_disks #=> Array
    #   resp.replicated_disks[0].device_name #=> String
    #   resp.replicated_disks[0].iops #=> Integer
    #   resp.replicated_disks[0].is_boot_disk #=> Boolean
    #   resp.replicated_disks[0].staging_disk_type #=> String, one of "AUTO", "GP2", "IO1", "SC1", "ST1", "STANDARD"
    #   resp.replication_server_instance_type #=> String
    #   resp.replication_servers_security_groups_i_ds #=> Array
    #   resp.replication_servers_security_groups_i_ds[0] #=> String
    #   resp.source_server_id #=> String
    #   resp.staging_area_subnet_id #=> String
    #   resp.staging_area_tags #=> Hash
    #   resp.staging_area_tags["TagKey"] #=> String
    #   resp.use_dedicated_replication_server #=> Boolean
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

    # Archives specific Source Servers by setting the
    # SourceServer.isArchived property to true for specified SourceServers
    # by ID. This command only works for SourceServers with a
    # lifecycle.state which equals DISCONNECTED or CUTOVER.
    #
    # @option params [required, String] :source_server_id
    #   Mark as archived by Source Server ID.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.mark_as_archived({
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
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
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"
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

    # Causes the data replication initiation sequence to begin immediately
    # upon next Handshake for specified SourceServer IDs, regardless of when
    # the previous initiation started. This command will not work if the
    # SourceServer is not stalled or is in a DISCONNECTED or STOPPED state.
    #
    # @option params [required, String] :source_server_id
    #   Retry data replication for Source Server ID.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
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
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"
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

    # Starts replication on source server by ID.
    #
    # @option params [required, String] :source_server_id
    #   ID of source server on which to start replication.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_replication({
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
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
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"
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

    # Lauches a Test Instance for specific Source Servers. This command
    # starts a LAUNCH job whose initiatedBy property is StartTest and
    # changes the SourceServer.lifeCycle.state property to TESTING.
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

    # Updates multiple LaunchConfigurations by Source Server ID.
    #
    # @option params [Boolean] :copy_private_ip
    #   Update Launch configuration copy Private IP request.
    #
    # @option params [Boolean] :copy_tags
    #   Update Launch configuration copy Tags request.
    #
    # @option params [String] :launch_disposition
    #   Update Launch configuration launch disposition request.
    #
    # @option params [Types::Licensing] :licensing
    #   Update Launch configuration licensing request.
    #
    # @option params [String] :name
    #   Update Launch configuration name request.
    #
    # @option params [required, String] :source_server_id
    #   Update Launch configuration by Source Server ID request.
    #
    # @option params [String] :target_instance_type_right_sizing_method
    #   Update Launch configuration Target instance right sizing request.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateLaunchConfiguration AWS API Documentation
    #
    # @overload update_launch_configuration(params = {})
    # @param [Hash] params ({})
    def update_launch_configuration(params = {}, options = {})
      req = build_request(:update_launch_configuration, params)
      req.send_request(options)
    end

    # Allows you to update multiple ReplicationConfigurations by Source
    # Server ID.
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
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_replication_configuration({
    #     associate_default_security_group: false,
    #     bandwidth_throttling: 1,
    #     create_public_ip: false,
    #     data_plane_routing: "PRIVATE_IP", # accepts PRIVATE_IP, PUBLIC_IP
    #     default_large_staging_disk_type: "GP2", # accepts GP2, ST1
    #     ebs_encryption: "DEFAULT", # accepts DEFAULT, CUSTOM
    #     ebs_encryption_key_arn: "ARN",
    #     name: "SmallBoundedString",
    #     replicated_disks: [
    #       {
    #         device_name: "BoundedString",
    #         iops: 1,
    #         is_boot_disk: false,
    #         staging_disk_type: "AUTO", # accepts AUTO, GP2, IO1, SC1, ST1, STANDARD
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
    #   resp.bandwidth_throttling #=> Integer
    #   resp.create_public_ip #=> Boolean
    #   resp.data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.default_large_staging_disk_type #=> String, one of "GP2", "ST1"
    #   resp.ebs_encryption #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.ebs_encryption_key_arn #=> String
    #   resp.name #=> String
    #   resp.replicated_disks #=> Array
    #   resp.replicated_disks[0].device_name #=> String
    #   resp.replicated_disks[0].iops #=> Integer
    #   resp.replicated_disks[0].is_boot_disk #=> Boolean
    #   resp.replicated_disks[0].staging_disk_type #=> String, one of "AUTO", "GP2", "IO1", "SC1", "ST1", "STANDARD"
    #   resp.replication_server_instance_type #=> String
    #   resp.replication_servers_security_groups_i_ds #=> Array
    #   resp.replication_servers_security_groups_i_ds[0] #=> String
    #   resp.source_server_id #=> String
    #   resp.staging_area_subnet_id #=> String
    #   resp.staging_area_tags #=> Hash
    #   resp.staging_area_tags["TagKey"] #=> String
    #   resp.use_dedicated_replication_server #=> Boolean
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
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_replication_configuration_template({
    #     arn: "ARN",
    #     associate_default_security_group: false,
    #     bandwidth_throttling: 1,
    #     create_public_ip: false,
    #     data_plane_routing: "PRIVATE_IP", # accepts PRIVATE_IP, PUBLIC_IP
    #     default_large_staging_disk_type: "GP2", # accepts GP2, ST1
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
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.associate_default_security_group #=> Boolean
    #   resp.bandwidth_throttling #=> Integer
    #   resp.create_public_ip #=> Boolean
    #   resp.data_plane_routing #=> String, one of "PRIVATE_IP", "PUBLIC_IP"
    #   resp.default_large_staging_disk_type #=> String, one of "GP2", "ST1"
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mgn-2020-02-26/UpdateReplicationConfigurationTemplate AWS API Documentation
    #
    # @overload update_replication_configuration_template(params = {})
    # @param [Hash] params ({})
    def update_replication_configuration_template(params = {}, options = {})
      req = build_request(:update_replication_configuration_template, params)
      req.send_request(options)
    end

    # Updates source server Replication Type by ID.
    #
    # @option params [required, String] :replication_type
    #   Replication type to which to update source server.
    #
    # @option params [required, String] :source_server_id
    #   ID of source server on which to update replication type.
    #
    # @return [Types::SourceServer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SourceServer#arn #arn} => String
    #   * {Types::SourceServer#data_replication_info #data_replication_info} => Types::DataReplicationInfo
    #   * {Types::SourceServer#is_archived #is_archived} => Boolean
    #   * {Types::SourceServer#launched_instance #launched_instance} => Types::LaunchedInstance
    #   * {Types::SourceServer#life_cycle #life_cycle} => Types::LifeCycle
    #   * {Types::SourceServer#replication_type #replication_type} => String
    #   * {Types::SourceServer#source_properties #source_properties} => Types::SourceProperties
    #   * {Types::SourceServer#source_server_id #source_server_id} => String
    #   * {Types::SourceServer#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::SourceServer#vcenter_client_id #vcenter_client_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_source_server_replication_type({
    #     replication_type: "AGENT_BASED", # required, accepts AGENT_BASED, SNAPSHOT_SHIPPING
    #     source_server_id: "SourceServerID", # required
    #   })
    #
    # @example Response structure
    #
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
    #   resp.life_cycle.state #=> String, one of "STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"
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
