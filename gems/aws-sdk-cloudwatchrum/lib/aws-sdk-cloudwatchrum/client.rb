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

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudwatchrum)

module Aws::CloudWatchRUM
  # An API client for CloudWatchRUM.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudWatchRUM::Client.new(
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

    @identifier = :cloudwatchrum

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

    # Creates a Amazon CloudWatch RUM app monitor, which collects telemetry
    # data from your application and sends that data to RUM. The data
    # includes performance and reliability information such as page load
    # time, client-side errors, and user behavior.
    #
    # You use this operation only to create a new app monitor. To update an
    # existing app monitor, use [UpdateAppMonitor][1] instead.
    #
    # After you create an app monitor, sign in to the CloudWatch RUM console
    # to get the JavaScript code snippet to add to your web application. For
    # more information, see [How do I find a code snippet that I've already
    # generated?][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_UpdateAppMonitor.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html
    #
    # @option params [Types::AppMonitorConfiguration] :app_monitor_configuration
    #   A structure that contains much of the configuration data for the app
    #   monitor. If you are using Amazon Cognito for authorization, you must
    #   include this structure in your request, and it must include the ID of
    #   the Amazon Cognito identity pool to use for authorization. If you
    #   don't include `AppMonitorConfiguration`, you must set up your own
    #   authorization method. For more information, see [Authorize your
    #   application to send data to Amazon Web Services][1].
    #
    #   If you omit this argument, the sample rate used for RUM is set to 10%
    #   of the user sessions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/monitoring/CloudWatch-RUM-get-started-authorization.html
    #
    # @option params [Boolean] :cw_log_enabled
    #   Data collected by RUM is kept by RUM for 30 days and then deleted.
    #   This parameter specifies whether RUM sends a copy of this telemetry
    #   data to Amazon CloudWatch Logs in your account. This enables you to
    #   keep the telemetry data for more than 30 days, but it does incur
    #   Amazon CloudWatch Logs charges.
    #
    #   If you omit this parameter, the default is `false`.
    #
    # @option params [required, String] :domain
    #   The top-level internet domain name for which your application has
    #   administrative authority.
    #
    # @option params [required, String] :name
    #   A name for the app monitor.
    #
    # @option params [Hash<String,String>] :tags
    #   Assigns one or more tags (key-value pairs) to the app monitor.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions by granting a user permission to
    #   access or change only resources with certain tag values.
    #
    #   Tags don't have any semantic meaning to Amazon Web Services and are
    #   interpreted strictly as strings of characters.
    #
    #        <p>You can associate as many as 50 tags with an app monitor.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    # @return [Types::CreateAppMonitorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppMonitorResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_monitor({
    #     app_monitor_configuration: {
    #       allow_cookies: false,
    #       enable_x_ray: false,
    #       excluded_pages: ["Url"],
    #       favorite_pages: ["String"],
    #       guest_role_arn: "Arn",
    #       identity_pool_id: "IdentityPoolId",
    #       included_pages: ["Url"],
    #       session_sample_rate: 1.0,
    #       telemetries: ["errors"], # accepts errors, performance, http
    #     },
    #     cw_log_enabled: false,
    #     domain: "AppMonitorDomain", # required
    #     name: "AppMonitorName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/CreateAppMonitor AWS API Documentation
    #
    # @overload create_app_monitor(params = {})
    # @param [Hash] params ({})
    def create_app_monitor(params = {}, options = {})
      req = build_request(:create_app_monitor, params)
      req.send_request(options)
    end

    # Deletes an existing app monitor. This immediately stops the collection
    # of data.
    #
    # @option params [required, String] :name
    #   The name of the app monitor to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_monitor({
    #     name: "AppMonitorName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/DeleteAppMonitor AWS API Documentation
    #
    # @overload delete_app_monitor(params = {})
    # @param [Hash] params ({})
    def delete_app_monitor(params = {}, options = {})
      req = build_request(:delete_app_monitor, params)
      req.send_request(options)
    end

    # Retrieves the complete configuration information for one app monitor.
    #
    # @option params [required, String] :name
    #   The app monitor to retrieve information for.
    #
    # @return [Types::GetAppMonitorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppMonitorResponse#app_monitor #app_monitor} => Types::AppMonitor
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_monitor({
    #     name: "AppMonitorName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_monitor.app_monitor_configuration.allow_cookies #=> Boolean
    #   resp.app_monitor.app_monitor_configuration.enable_x_ray #=> Boolean
    #   resp.app_monitor.app_monitor_configuration.excluded_pages #=> Array
    #   resp.app_monitor.app_monitor_configuration.excluded_pages[0] #=> String
    #   resp.app_monitor.app_monitor_configuration.favorite_pages #=> Array
    #   resp.app_monitor.app_monitor_configuration.favorite_pages[0] #=> String
    #   resp.app_monitor.app_monitor_configuration.guest_role_arn #=> String
    #   resp.app_monitor.app_monitor_configuration.identity_pool_id #=> String
    #   resp.app_monitor.app_monitor_configuration.included_pages #=> Array
    #   resp.app_monitor.app_monitor_configuration.included_pages[0] #=> String
    #   resp.app_monitor.app_monitor_configuration.session_sample_rate #=> Float
    #   resp.app_monitor.app_monitor_configuration.telemetries #=> Array
    #   resp.app_monitor.app_monitor_configuration.telemetries[0] #=> String, one of "errors", "performance", "http"
    #   resp.app_monitor.created #=> String
    #   resp.app_monitor.data_storage.cw_log.cw_log_enabled #=> Boolean
    #   resp.app_monitor.data_storage.cw_log.cw_log_group #=> String
    #   resp.app_monitor.domain #=> String
    #   resp.app_monitor.id #=> String
    #   resp.app_monitor.last_modified #=> String
    #   resp.app_monitor.name #=> String
    #   resp.app_monitor.state #=> String, one of "CREATED", "DELETING", "ACTIVE"
    #   resp.app_monitor.tags #=> Hash
    #   resp.app_monitor.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/GetAppMonitor AWS API Documentation
    #
    # @overload get_app_monitor(params = {})
    # @param [Hash] params ({})
    def get_app_monitor(params = {}, options = {})
      req = build_request(:get_app_monitor, params)
      req.send_request(options)
    end

    # Retrieves the raw performance events that RUM has collected from your
    # web application, so that you can do your own processing or analysis of
    # this data.
    #
    # @option params [Array<Types::QueryFilter>] :filters
    #   An array of structures that you can use to filter the results to those
    #   that match one or more sets of key-value pairs that you specify.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation.
    #
    # @option params [required, String] :name
    #   The name of the app monitor that collected the data that you want to
    #   retrieve.
    #
    # @option params [String] :next_token
    #   Use the token returned by the previous operation to request the next
    #   page of results.
    #
    # @option params [required, Types::TimeRange] :time_range
    #   A structure that defines the time range that you want to retrieve
    #   results from.
    #
    # @return [Types::GetAppMonitorDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppMonitorDataResponse#events #events} => Array&lt;String&gt;
    #   * {Types::GetAppMonitorDataResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_monitor_data({
    #     filters: [
    #       {
    #         name: "QueryFilterKey",
    #         values: ["QueryFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     name: "AppMonitorName", # required
    #     next_token: "Token",
    #     time_range: { # required
    #       after: 1, # required
    #       before: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/GetAppMonitorData AWS API Documentation
    #
    # @overload get_app_monitor_data(params = {})
    # @param [Hash] params ({})
    def get_app_monitor_data(params = {}, options = {})
      req = build_request(:get_app_monitor_data, params)
      req.send_request(options)
    end

    # Returns a list of the Amazon CloudWatch RUM app monitors in the
    # account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one operation.
    #
    # @option params [String] :next_token
    #   Use the token returned by the previous operation to request the next
    #   page of results.
    #
    # @return [Types::ListAppMonitorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppMonitorsResponse#app_monitor_summaries #app_monitor_summaries} => Array&lt;Types::AppMonitorSummary&gt;
    #   * {Types::ListAppMonitorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_monitors({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_monitor_summaries #=> Array
    #   resp.app_monitor_summaries[0].created #=> String
    #   resp.app_monitor_summaries[0].id #=> String
    #   resp.app_monitor_summaries[0].last_modified #=> String
    #   resp.app_monitor_summaries[0].name #=> String
    #   resp.app_monitor_summaries[0].state #=> String, one of "CREATED", "DELETING", "ACTIVE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ListAppMonitors AWS API Documentation
    #
    # @overload list_app_monitors(params = {})
    # @param [Hash] params ({})
    def list_app_monitors(params = {}, options = {})
      req = build_request(:list_app_monitors, params)
      req.send_request(options)
    end

    # Displays the tags associated with a CloudWatch RUM resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you want to see the tags of.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_arn #resource_arn} => String
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
    #   resp.resource_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Sends telemetry events about your application performance and user
    # behavior to CloudWatch RUM. The code snippet that RUM generates for
    # you to add to your application includes `PutRumEvents` operations to
    # send this data to RUM.
    #
    # Each `PutRumEvents` operation can send a batch of events from one user
    # session.
    #
    # @option params [required, Types::AppMonitorDetails] :app_monitor_details
    #   A structure that contains information about the app monitor that
    #   collected this telemetry information.
    #
    # @option params [required, String] :batch_id
    #   A unique identifier for this batch of RUM event data.
    #
    # @option params [required, String] :id
    #   The ID of the app monitor that is sending this data.
    #
    # @option params [required, Array<Types::RumEvent>] :rum_events
    #   An array of structures that contain the telemetry event data.
    #
    # @option params [required, Types::UserDetails] :user_details
    #   A structure that contains information about the user session that this
    #   batch of events was collected from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_rum_events({
    #     app_monitor_details: { # required
    #       id: "String",
    #       name: "String",
    #       version: "String",
    #     },
    #     batch_id: "String", # required
    #     id: "AppMonitorId", # required
    #     rum_events: [ # required
    #       {
    #         details: "JsonValue", # required
    #         id: "String", # required
    #         metadata: "JsonValue",
    #         timestamp: Time.now, # required
    #         type: "String", # required
    #       },
    #     ],
    #     user_details: { # required
    #       session_id: "String",
    #       user_id: "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/PutRumEvents AWS API Documentation
    #
    # @overload put_rum_events(params = {})
    # @param [Hash] params ({})
    def put_rum_events(params = {}, options = {})
      req = build_request(:put_rum_events, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified CloudWatch
    # RUM resource. Currently, the only resources that can be tagged app
    # monitors.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions by granting a user permission to
    # access or change only resources with certain tag values.
    #
    # Tags don't have any semantic meaning to Amazon Web Services and are
    # interpreted strictly as strings of characters.
    #
    # You can use the `TagResource` action with a resource that already has
    # tags. If you specify a new tag key for the resource, this tag is
    # appended to the list of tags associated with the alarm. If you specify
    # a tag key that is already associated with the resource, the new tag
    # value that you specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a resource.
    #
    # For more information, see [Tagging Amazon Web Services resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the CloudWatch RUM resource that you're adding tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of key-value pairs to associate with the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the CloudWatch RUM resource that you're removing tags
    #   from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing app monitor. When you use
    # this operation, only the parts of the app monitor configuration that
    # you specify in this operation are changed. For any parameters that you
    # omit, the existing values are kept.
    #
    # You can't use this operation to change the tags of an existing app
    # monitor. To change the tags of an existing app monitor, use
    # [TagResource][1].
    #
    # To create a new app monitor, use [CreateAppMonitor][2].
    #
    # After you update an app monitor, sign in to the CloudWatch RUM console
    # to get the updated JavaScript code snippet to add to your web
    # application. For more information, see [How do I find a code snippet
    # that I've already generated?][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_TagResource.html
    # [2]: https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_CreateAppMonitor.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html
    #
    # @option params [Types::AppMonitorConfiguration] :app_monitor_configuration
    #   A structure that contains much of the configuration data for the app
    #   monitor. If you are using Amazon Cognito for authorization, you must
    #   include this structure in your request, and it must include the ID of
    #   the Amazon Cognito identity pool to use for authorization. If you
    #   don't include `AppMonitorConfiguration`, you must set up your own
    #   authorization method. For more information, see [Authorize your
    #   application to send data to Amazon Web Services][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/monitoring/CloudWatch-RUM-get-started-authorization.html
    #
    # @option params [Boolean] :cw_log_enabled
    #   Data collected by RUM is kept by RUM for 30 days and then deleted.
    #   This parameter specifies whether RUM sends a copy of this telemetry
    #   data to Amazon CloudWatch Logs in your account. This enables you to
    #   keep the telemetry data for more than 30 days, but it does incur
    #   Amazon CloudWatch Logs charges.
    #
    # @option params [String] :domain
    #   The top-level internet domain name for which your application has
    #   administrative authority.
    #
    # @option params [required, String] :name
    #   The name of the app monitor to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_monitor({
    #     app_monitor_configuration: {
    #       allow_cookies: false,
    #       enable_x_ray: false,
    #       excluded_pages: ["Url"],
    #       favorite_pages: ["String"],
    #       guest_role_arn: "Arn",
    #       identity_pool_id: "IdentityPoolId",
    #       included_pages: ["Url"],
    #       session_sample_rate: 1.0,
    #       telemetries: ["errors"], # accepts errors, performance, http
    #     },
    #     cw_log_enabled: false,
    #     domain: "AppMonitorDomain",
    #     name: "AppMonitorName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10/UpdateAppMonitor AWS API Documentation
    #
    # @overload update_app_monitor(params = {})
    # @param [Hash] params ({})
    def update_app_monitor(params = {}, options = {})
      req = build_request(:update_app_monitor, params)
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
      context[:gem_name] = 'aws-sdk-cloudwatchrum'
      context[:gem_version] = '1.3.0'
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
