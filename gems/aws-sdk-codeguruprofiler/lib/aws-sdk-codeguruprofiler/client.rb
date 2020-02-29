# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:codeguruprofiler)

module Aws::CodeGuruProfiler
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :codeguruprofiler

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
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
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
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
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

    # @option params [String] :fleet_instance_id
    #
    # @option params [required, String] :profiling_group_name
    #
    # @return [Types::ConfigureAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigureAgentResponse#configuration #configuration} => Types::AgentConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.configure_agent({
    #     fleet_instance_id: "FleetInstanceId",
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration.period_in_seconds #=> Integer
    #   resp.configuration.should_profile #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ConfigureAgent AWS API Documentation
    #
    # @overload configure_agent(params = {})
    # @param [Hash] params ({})
    def configure_agent(params = {}, options = {})
      req = build_request(:configure_agent, params)
      req.send_request(options)
    end

    # Creates a profiling group.
    #
    # @option params [Types::AgentOrchestrationConfig] :agent_orchestration_config
    #   The agent orchestration configuration.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   This parameter specifies a unique identifier for the new profiling
    #   group that helps ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group.
    #
    # @return [Types::CreateProfilingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProfilingGroupResponse#profiling_group #profiling_group} => Types::ProfilingGroupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profiling_group({
    #     agent_orchestration_config: {
    #       profiling_enabled: false, # required
    #     },
    #     client_token: "ClientToken", # required
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profiling_group.agent_orchestration_config.profiling_enabled #=> Boolean
    #   resp.profiling_group.arn #=> String
    #   resp.profiling_group.created_at #=> Time
    #   resp.profiling_group.name #=> String
    #   resp.profiling_group.profiling_status.latest_agent_orchestrated_at #=> Time
    #   resp.profiling_group.profiling_status.latest_agent_profile_reported_at #=> Time
    #   resp.profiling_group.profiling_status.latest_aggregated_profile.period #=> String, one of "P1D", "PT1H", "PT5M"
    #   resp.profiling_group.profiling_status.latest_aggregated_profile.start #=> Time
    #   resp.profiling_group.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/CreateProfilingGroup AWS API Documentation
    #
    # @overload create_profiling_group(params = {})
    # @param [Hash] params ({})
    def create_profiling_group(params = {}, options = {})
      req = build_request(:create_profiling_group, params)
      req.send_request(options)
    end

    # Deletes a profiling group.
    #
    # @option params [required, String] :profiling_group_name
    #   The profiling group name to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profiling_group({
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/DeleteProfilingGroup AWS API Documentation
    #
    # @overload delete_profiling_group(params = {})
    # @param [Hash] params ({})
    def delete_profiling_group(params = {}, options = {})
      req = build_request(:delete_profiling_group, params)
      req.send_request(options)
    end

    # Describes a profiling group.
    #
    # @option params [required, String] :profiling_group_name
    #   The profiling group name.
    #
    # @return [Types::DescribeProfilingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProfilingGroupResponse#profiling_group #profiling_group} => Types::ProfilingGroupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_profiling_group({
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profiling_group.agent_orchestration_config.profiling_enabled #=> Boolean
    #   resp.profiling_group.arn #=> String
    #   resp.profiling_group.created_at #=> Time
    #   resp.profiling_group.name #=> String
    #   resp.profiling_group.profiling_status.latest_agent_orchestrated_at #=> Time
    #   resp.profiling_group.profiling_status.latest_agent_profile_reported_at #=> Time
    #   resp.profiling_group.profiling_status.latest_aggregated_profile.period #=> String, one of "P1D", "PT1H", "PT5M"
    #   resp.profiling_group.profiling_status.latest_aggregated_profile.start #=> Time
    #   resp.profiling_group.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/DescribeProfilingGroup AWS API Documentation
    #
    # @overload describe_profiling_group(params = {})
    # @param [Hash] params ({})
    def describe_profiling_group(params = {}, options = {})
      req = build_request(:describe_profiling_group, params)
      req.send_request(options)
    end

    # Gets the aggregated profile of a profiling group for the specified
    # time range. If the requested time range does not align with the
    # available aggregated profiles, it is expanded to attain alignment. If
    # aggregated profiles are available only for part of the period
    # requested, the profile is returned from the earliest available to the
    # latest within the requested time range.
    #
    # For example, if the requested time range is from 00:00 to 00:20 and
    # the available profiles are from 00:15 to 00:25, the returned profile
    # will be from 00:15 to 00:20.
    #
    # You must specify exactly two of the following parameters: `startTime`,
    # `period`, and `endTime`.
    #
    # @option params [String] :accept
    #   The format of the profile to return. You can choose `application/json`
    #   or the default `application/x-amzn-ion`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   You must specify exactly two of the following parameters: `startTime`,
    #   `period`, and `endTime`.
    #
    # @option params [Integer] :max_depth
    #   The maximum depth of the graph.
    #
    # @option params [String] :period
    #   The period of the profile to get. The time range must be in the past
    #   and not longer than one week.
    #
    #   You must specify exactly two of the following parameters: `startTime`,
    #   `period`, and `endTime`.
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group to get.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time of the profile to get.
    #
    #   You must specify exactly two of the following parameters: `startTime`,
    #   `period`, and `endTime`.
    #
    # @return [Types::GetProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileResponse#content_encoding #content_encoding} => String
    #   * {Types::GetProfileResponse#content_type #content_type} => String
    #   * {Types::GetProfileResponse#profile #profile} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile({
    #     accept: "String",
    #     end_time: Time.now,
    #     max_depth: 1,
    #     period: "Period",
    #     profiling_group_name: "ProfilingGroupName", # required
    #     start_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.content_encoding #=> String
    #   resp.content_type #=> String
    #   resp.profile #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/GetProfile AWS API Documentation
    #
    # @overload get_profile(params = {})
    # @param [Hash] params ({})
    def get_profile(params = {}, options = {})
      req = build_request(:get_profile, params)
      req.send_request(options)
    end

    # List the start times of the available aggregated profiles of a
    # profiling group for an aggregation period within the specified time
    # range.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end time of the time range from which to list the profiles.
    #
    # @option params [Integer] :max_results
    #   The maximum number of profile time results returned by
    #   `ListProfileTimes` in paginated output. When this parameter is used,
    #   `ListProfileTimes` only returns `maxResults` results in a single page
    #   with a `nextToken` response element. The remaining results of the
    #   initial request can be seen by sending another `ListProfileTimes`
    #   request with the returned `nextToken` value.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListProfileTimes` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [String] :order_by
    #   The order (ascending or descending by start time of the profile) to
    #   use when listing profiles. Defaults to `TIMESTAMP_DESCENDING`.
    #
    # @option params [required, String] :period
    #   The aggregation period.
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start time of the time range from which to list the profiles.
    #
    # @return [Types::ListProfileTimesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfileTimesResponse#next_token #next_token} => String
    #   * {Types::ListProfileTimesResponse#profile_times #profile_times} => Array&lt;Types::ProfileTime&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_times({
    #     end_time: Time.now, # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     order_by: "TimestampAscending", # accepts TimestampAscending, TimestampDescending
    #     period: "P1D", # required, accepts P1D, PT1H, PT5M
    #     profiling_group_name: "ProfilingGroupName", # required
    #     start_time: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.profile_times #=> Array
    #   resp.profile_times[0].start #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListProfileTimes AWS API Documentation
    #
    # @overload list_profile_times(params = {})
    # @param [Hash] params ({})
    def list_profile_times(params = {}, options = {})
      req = build_request(:list_profile_times, params)
      req.send_request(options)
    end

    # Lists profiling groups.
    #
    # @option params [Boolean] :include_description
    #   A Boolean value indicating whether to include a description.
    #
    # @option params [Integer] :max_results
    #   The maximum number of profiling groups results returned by
    #   `ListProfilingGroups` in paginated output. When this parameter is
    #   used, `ListProfilingGroups` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListProfilingGroups` request with the returned `nextToken` value.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListProfilingGroups` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListProfilingGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfilingGroupsResponse#next_token #next_token} => String
    #   * {Types::ListProfilingGroupsResponse#profiling_group_names #profiling_group_names} => Array&lt;String&gt;
    #   * {Types::ListProfilingGroupsResponse#profiling_groups #profiling_groups} => Array&lt;Types::ProfilingGroupDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profiling_groups({
    #     include_description: false,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.profiling_group_names #=> Array
    #   resp.profiling_group_names[0] #=> String
    #   resp.profiling_groups #=> Array
    #   resp.profiling_groups[0].agent_orchestration_config.profiling_enabled #=> Boolean
    #   resp.profiling_groups[0].arn #=> String
    #   resp.profiling_groups[0].created_at #=> Time
    #   resp.profiling_groups[0].name #=> String
    #   resp.profiling_groups[0].profiling_status.latest_agent_orchestrated_at #=> Time
    #   resp.profiling_groups[0].profiling_status.latest_agent_profile_reported_at #=> Time
    #   resp.profiling_groups[0].profiling_status.latest_aggregated_profile.period #=> String, one of "P1D", "PT1H", "PT5M"
    #   resp.profiling_groups[0].profiling_status.latest_aggregated_profile.start #=> Time
    #   resp.profiling_groups[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/ListProfilingGroups AWS API Documentation
    #
    # @overload list_profiling_groups(params = {})
    # @param [Hash] params ({})
    def list_profiling_groups(params = {}, options = {})
      req = build_request(:list_profiling_groups, params)
      req.send_request(options)
    end

    # @option params [required, String, IO] :agent_profile
    #
    # @option params [required, String] :content_type
    #
    # @option params [String] :profile_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :profiling_group_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_agent_profile({
    #     agent_profile: "data", # required
    #     content_type: "String", # required
    #     profile_token: "ClientToken",
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/PostAgentProfile AWS API Documentation
    #
    # @overload post_agent_profile(params = {})
    # @param [Hash] params ({})
    def post_agent_profile(params = {}, options = {})
      req = build_request(:post_agent_profile, params)
      req.send_request(options)
    end

    # Updates a profiling group.
    #
    # @option params [required, Types::AgentOrchestrationConfig] :agent_orchestration_config
    #
    # @option params [required, String] :profiling_group_name
    #   The name of the profiling group to update.
    #
    # @return [Types::UpdateProfilingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProfilingGroupResponse#profiling_group #profiling_group} => Types::ProfilingGroupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profiling_group({
    #     agent_orchestration_config: { # required
    #       profiling_enabled: false, # required
    #     },
    #     profiling_group_name: "ProfilingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profiling_group.agent_orchestration_config.profiling_enabled #=> Boolean
    #   resp.profiling_group.arn #=> String
    #   resp.profiling_group.created_at #=> Time
    #   resp.profiling_group.name #=> String
    #   resp.profiling_group.profiling_status.latest_agent_orchestrated_at #=> Time
    #   resp.profiling_group.profiling_status.latest_agent_profile_reported_at #=> Time
    #   resp.profiling_group.profiling_status.latest_aggregated_profile.period #=> String, one of "P1D", "PT1H", "PT5M"
    #   resp.profiling_group.profiling_status.latest_aggregated_profile.start #=> Time
    #   resp.profiling_group.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguruprofiler-2019-07-18/UpdateProfilingGroup AWS API Documentation
    #
    # @overload update_profiling_group(params = {})
    # @param [Hash] params ({})
    def update_profiling_group(params = {}, options = {})
      req = build_request(:update_profiling_group, params)
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
      context[:gem_name] = 'aws-sdk-codeguruprofiler'
      context[:gem_version] = '1.1.0'
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
