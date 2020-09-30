# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:applicationdiscoveryservice)

module Aws::ApplicationDiscoveryService
  # An API client for ApplicationDiscoveryService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ApplicationDiscoveryService::Client.new(
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

    @identifier = :applicationdiscoveryservice

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Integer] :http_read_timeout (60) The default
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

    # Associates one or more configuration items with an application.
    #
    # @option params [required, String] :application_configuration_id
    #   The configuration ID of an application with which items are to be
    #   associated.
    #
    # @option params [required, Array<String>] :configuration_ids
    #   The ID of each configuration item to be associated with an
    #   application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_configuration_items_to_application({
    #     application_configuration_id: "ApplicationId", # required
    #     configuration_ids: ["ConfigurationId"], # required
    #   })
    #
    # @overload associate_configuration_items_to_application(params = {})
    # @param [Hash] params ({})
    def associate_configuration_items_to_application(params = {}, options = {})
      req = build_request(:associate_configuration_items_to_application, params)
      req.send_request(options)
    end

    # Deletes one or more import tasks, each identified by their import ID.
    # Each import task has a number of records that can identify servers or
    # applications.
    #
    # AWS Application Discovery Service has built-in matching logic that
    # will identify when discovered servers match existing entries that
    # you've previously discovered, the information for the
    # already-existing discovered server is updated. When you delete an
    # import task that contains records that were used to match, the
    # information in those matched records that comes from the deleted
    # records will also be deleted.
    #
    # @option params [required, Array<String>] :import_task_ids
    #   The IDs for the import tasks that you want to delete.
    #
    # @return [Types::BatchDeleteImportDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteImportDataResponse#errors #errors} => Array&lt;Types::BatchDeleteImportDataError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_import_data({
    #     import_task_ids: ["ImportTaskIdentifier"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].import_task_id #=> String
    #   resp.errors[0].error_code #=> String, one of "NOT_FOUND", "INTERNAL_SERVER_ERROR", "OVER_LIMIT"
    #   resp.errors[0].error_description #=> String
    #
    # @overload batch_delete_import_data(params = {})
    # @param [Hash] params ({})
    def batch_delete_import_data(params = {}, options = {})
      req = build_request(:batch_delete_import_data, params)
      req.send_request(options)
    end

    # Creates an application with the given name and description.
    #
    # @option params [required, String] :name
    #   Name of the application to be created.
    #
    # @option params [String] :description
    #   Description of the application to be created.
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#configuration_id #configuration_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     name: "String", # required
    #     description: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_id #=> String
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates one or more tags for configuration items. Tags are metadata
    # that help you categorize IT assets. This API accepts a list of
    # multiple configuration items.
    #
    # @option params [required, Array<String>] :configuration_ids
    #   A list of configuration items that you want to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Tags that you want to associate with one or more configuration items.
    #   Specify the tags that you want to create in a *key*-*value* format.
    #   For example:
    #
    #   `\{"key": "serverType", "value": "webServer"\}`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags({
    #     configuration_ids: ["ConfigurationId"], # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @overload create_tags(params = {})
    # @param [Hash] params ({})
    def create_tags(params = {}, options = {})
      req = build_request(:create_tags, params)
      req.send_request(options)
    end

    # Deletes a list of applications and their associations with
    # configuration items.
    #
    # @option params [required, Array<String>] :configuration_ids
    #   Configuration ID of an application to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_applications({
    #     configuration_ids: ["ApplicationId"], # required
    #   })
    #
    # @overload delete_applications(params = {})
    # @param [Hash] params ({})
    def delete_applications(params = {}, options = {})
      req = build_request(:delete_applications, params)
      req.send_request(options)
    end

    # Deletes the association between configuration items and one or more
    # tags. This API accepts a list of multiple configuration items.
    #
    # @option params [required, Array<String>] :configuration_ids
    #   A list of configuration items with tags that you want to delete.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags that you want to delete from one or more configuration items.
    #   Specify the tags that you want to delete in a *key*-*value* format.
    #   For example:
    #
    #   `\{"key": "serverType", "value": "webServer"\}`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     configuration_ids: ["ConfigurationId"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Lists agents or connectors as specified by ID or other filters. All
    # agents/connectors associated with your user account can be listed if
    # you call `DescribeAgents` as is without passing any parameters.
    #
    # @option params [Array<String>] :agent_ids
    #   The agent or the Connector IDs for which you want information. If you
    #   specify no IDs, the system returns information about all
    #   agents/Connectors associated with your AWS user account.
    #
    # @option params [Array<Types::Filter>] :filters
    #   You can filter the request using various logical operators and a
    #   *key*-*value* format. For example:
    #
    #   `\{"key": "collectionStatus", "value": "STARTED"\}`
    #
    # @option params [Integer] :max_results
    #   The total number of agents/Connectors to return in a single page of
    #   output. The maximum value is 100.
    #
    # @option params [String] :next_token
    #   Token to retrieve the next set of results. For example, if you
    #   previously specified 100 IDs for `DescribeAgentsRequest$agentIds` but
    #   set `DescribeAgentsRequest$maxResults` to 10, you received a set of 10
    #   results along with a token. Use that token in this query to get the
    #   next set of 10.
    #
    # @return [Types::DescribeAgentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAgentsResponse#agents_info #agents_info} => Array&lt;Types::AgentInfo&gt;
    #   * {Types::DescribeAgentsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_agents({
    #     agent_ids: ["AgentId"],
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["FilterValue"], # required
    #         condition: "Condition", # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agents_info #=> Array
    #   resp.agents_info[0].agent_id #=> String
    #   resp.agents_info[0].host_name #=> String
    #   resp.agents_info[0].agent_network_info_list #=> Array
    #   resp.agents_info[0].agent_network_info_list[0].ip_address #=> String
    #   resp.agents_info[0].agent_network_info_list[0].mac_address #=> String
    #   resp.agents_info[0].connector_id #=> String
    #   resp.agents_info[0].version #=> String
    #   resp.agents_info[0].health #=> String, one of "HEALTHY", "UNHEALTHY", "RUNNING", "UNKNOWN", "BLACKLISTED", "SHUTDOWN"
    #   resp.agents_info[0].last_health_ping_time #=> String
    #   resp.agents_info[0].collection_status #=> String
    #   resp.agents_info[0].agent_type #=> String
    #   resp.agents_info[0].registered_time #=> String
    #   resp.next_token #=> String
    #
    # @overload describe_agents(params = {})
    # @param [Hash] params ({})
    def describe_agents(params = {}, options = {})
      req = build_request(:describe_agents, params)
      req.send_request(options)
    end

    # Retrieves attributes for a list of configuration item IDs.
    #
    # <note markdown="1"> All of the supplied IDs must be for the same asset type from one of
    # the following:
    #
    #  * server
    #
    # * application
    #
    # * process
    #
    # * connection
    #
    #  Output fields are specific to the asset type specified. For example,
    # the output for a *server* configuration item includes a list of
    # attributes about the server, such as host name, operating system,
    # number of network cards, etc.
    #
    #  For a complete list of outputs for each asset type, see [Using the
    # DescribeConfigurations Action][1] in the *AWS Application Discovery
    # Service User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#DescribeConfigurations
    #
    # @option params [required, Array<String>] :configuration_ids
    #   One or more configuration IDs.
    #
    # @return [Types::DescribeConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationsResponse#configurations #configurations} => Array&lt;Hash&lt;String,String&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configurations({
    #     configuration_ids: ["ConfigurationId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configurations #=> Array
    #   resp.configurations[0] #=> Hash
    #   resp.configurations[0]["String"] #=> String
    #
    # @overload describe_configurations(params = {})
    # @param [Hash] params ({})
    def describe_configurations(params = {}, options = {})
      req = build_request(:describe_configurations, params)
      req.send_request(options)
    end

    # Lists exports as specified by ID. All continuous exports associated
    # with your user account can be listed if you call
    # `DescribeContinuousExports` as is without passing any parameters.
    #
    # @option params [Array<String>] :export_ids
    #   The unique IDs assigned to the exports.
    #
    # @option params [Integer] :max_results
    #   A number between 1 and 100 specifying the maximum number of continuous
    #   export descriptions returned.
    #
    # @option params [String] :next_token
    #   The token from the previous call to `DescribeExportTasks`.
    #
    # @return [Types::DescribeContinuousExportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContinuousExportsResponse#descriptions #descriptions} => Array&lt;Types::ContinuousExportDescription&gt;
    #   * {Types::DescribeContinuousExportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_continuous_exports({
    #     export_ids: ["ConfigurationsExportId"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.descriptions #=> Array
    #   resp.descriptions[0].export_id #=> String
    #   resp.descriptions[0].status #=> String, one of "START_IN_PROGRESS", "START_FAILED", "ACTIVE", "ERROR", "STOP_IN_PROGRESS", "STOP_FAILED", "INACTIVE"
    #   resp.descriptions[0].status_detail #=> String
    #   resp.descriptions[0].s3_bucket #=> String
    #   resp.descriptions[0].start_time #=> Time
    #   resp.descriptions[0].stop_time #=> Time
    #   resp.descriptions[0].data_source #=> String, one of "AGENT"
    #   resp.descriptions[0].schema_storage_config #=> Hash
    #   resp.descriptions[0].schema_storage_config["DatabaseName"] #=> String
    #   resp.next_token #=> String
    #
    # @overload describe_continuous_exports(params = {})
    # @param [Hash] params ({})
    def describe_continuous_exports(params = {}, options = {})
      req = build_request(:describe_continuous_exports, params)
      req.send_request(options)
    end

    # `DescribeExportConfigurations` is deprecated. Use
    # [DescribeImportTasks][1], instead.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html
    #
    # @option params [Array<String>] :export_ids
    #   A list of continuous export IDs to search for.
    #
    # @option params [Integer] :max_results
    #   A number between 1 and 100 specifying the maximum number of continuous
    #   export descriptions returned.
    #
    # @option params [String] :next_token
    #   The token from the previous call to describe-export-tasks.
    #
    # @return [Types::DescribeExportConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExportConfigurationsResponse#exports_info #exports_info} => Array&lt;Types::ExportInfo&gt;
    #   * {Types::DescribeExportConfigurationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_export_configurations({
    #     export_ids: ["ConfigurationsExportId"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.exports_info #=> Array
    #   resp.exports_info[0].export_id #=> String
    #   resp.exports_info[0].export_status #=> String, one of "FAILED", "SUCCEEDED", "IN_PROGRESS"
    #   resp.exports_info[0].status_message #=> String
    #   resp.exports_info[0].configurations_download_url #=> String
    #   resp.exports_info[0].export_request_time #=> Time
    #   resp.exports_info[0].is_truncated #=> Boolean
    #   resp.exports_info[0].requested_start_time #=> Time
    #   resp.exports_info[0].requested_end_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload describe_export_configurations(params = {})
    # @param [Hash] params ({})
    def describe_export_configurations(params = {}, options = {})
      req = build_request(:describe_export_configurations, params)
      req.send_request(options)
    end

    # Retrieve status of one or more export tasks. You can retrieve the
    # status of up to 100 export tasks.
    #
    # @option params [Array<String>] :export_ids
    #   One or more unique identifiers used to query the status of an export
    #   request.
    #
    # @option params [Array<Types::ExportFilter>] :filters
    #   One or more filters.
    #
    #   * `AgentId` - ID of the agent whose collected data will be exported
    #
    #   ^
    #
    # @option params [Integer] :max_results
    #   The maximum number of volume results returned by `DescribeExportTasks`
    #   in paginated output. When this parameter is used,
    #   `DescribeExportTasks` only returns `maxResults` results in a single
    #   page along with a `nextToken` response element.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeExportTasks` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is null when there are no more results to return.
    #
    # @return [Types::DescribeExportTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExportTasksResponse#exports_info #exports_info} => Array&lt;Types::ExportInfo&gt;
    #   * {Types::DescribeExportTasksResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_export_tasks({
    #     export_ids: ["ConfigurationsExportId"],
    #     filters: [
    #       {
    #         name: "FilterName", # required
    #         values: ["FilterValue"], # required
    #         condition: "Condition", # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.exports_info #=> Array
    #   resp.exports_info[0].export_id #=> String
    #   resp.exports_info[0].export_status #=> String, one of "FAILED", "SUCCEEDED", "IN_PROGRESS"
    #   resp.exports_info[0].status_message #=> String
    #   resp.exports_info[0].configurations_download_url #=> String
    #   resp.exports_info[0].export_request_time #=> Time
    #   resp.exports_info[0].is_truncated #=> Boolean
    #   resp.exports_info[0].requested_start_time #=> Time
    #   resp.exports_info[0].requested_end_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload describe_export_tasks(params = {})
    # @param [Hash] params ({})
    def describe_export_tasks(params = {}, options = {})
      req = build_request(:describe_export_tasks, params)
      req.send_request(options)
    end

    # Returns an array of import tasks for your account, including status
    # information, times, IDs, the Amazon S3 Object URL for the import file,
    # and more.
    #
    # @option params [Array<Types::ImportTaskFilter>] :filters
    #   An array of name-value pairs that you provide to filter the results
    #   for the `DescribeImportTask` request to a specific subset of results.
    #   Currently, wildcard values aren't supported for filters.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that you want this request to return, up
    #   to 100.
    #
    # @option params [String] :next_token
    #   The token to request a specific page of results.
    #
    # @return [Types::DescribeImportTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImportTasksResponse#next_token #next_token} => String
    #   * {Types::DescribeImportTasksResponse#tasks #tasks} => Array&lt;Types::ImportTask&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_import_tasks({
    #     filters: [
    #       {
    #         name: "IMPORT_TASK_ID", # accepts IMPORT_TASK_ID, STATUS, NAME
    #         values: ["ImportTaskFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tasks #=> Array
    #   resp.tasks[0].import_task_id #=> String
    #   resp.tasks[0].client_request_token #=> String
    #   resp.tasks[0].name #=> String
    #   resp.tasks[0].import_url #=> String
    #   resp.tasks[0].status #=> String, one of "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_COMPLETE_WITH_ERRORS", "IMPORT_FAILED", "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED", "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "DELETE_FAILED_LIMIT_EXCEEDED", "INTERNAL_ERROR"
    #   resp.tasks[0].import_request_time #=> Time
    #   resp.tasks[0].import_completion_time #=> Time
    #   resp.tasks[0].import_deleted_time #=> Time
    #   resp.tasks[0].server_import_success #=> Integer
    #   resp.tasks[0].server_import_failure #=> Integer
    #   resp.tasks[0].application_import_success #=> Integer
    #   resp.tasks[0].application_import_failure #=> Integer
    #   resp.tasks[0].errors_and_failed_entries_zip #=> String
    #
    # @overload describe_import_tasks(params = {})
    # @param [Hash] params ({})
    def describe_import_tasks(params = {}, options = {})
      req = build_request(:describe_import_tasks, params)
      req.send_request(options)
    end

    # Retrieves a list of configuration items that have tags as specified by
    # the key-value pairs, name and value, passed to the optional parameter
    # `filters`.
    #
    # There are three valid tag filter names:
    #
    # * tagKey
    #
    # * tagValue
    #
    # * configurationId
    #
    # Also, all configuration items associated with your user account that
    # have tags can be listed if you call `DescribeTags` as is without
    # passing any parameters.
    #
    # @option params [Array<Types::TagFilter>] :filters
    #   You can filter the list using a *key*-*value* format. You can separate
    #   these items by using logical operators. Allowed filters include
    #   `tagKey`, `tagValue`, and `configurationId`.
    #
    # @option params [Integer] :max_results
    #   The total number of items to return in a single page of output. The
    #   maximum value is 100.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::DescribeTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagsResponse#tags #tags} => Array&lt;Types::ConfigurationTag&gt;
    #   * {Types::DescribeTagsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     filters: [
    #       {
    #         name: "FilterName", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].configuration_type #=> String, one of "SERVER", "PROCESS", "CONNECTION", "APPLICATION"
    #   resp.tags[0].configuration_id #=> String
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.tags[0].time_of_creation #=> Time
    #   resp.next_token #=> String
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Disassociates one or more configuration items from an application.
    #
    # @option params [required, String] :application_configuration_id
    #   Configuration ID of an application from which each item is
    #   disassociated.
    #
    # @option params [required, Array<String>] :configuration_ids
    #   Configuration ID of each item to be disassociated from an application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_configuration_items_from_application({
    #     application_configuration_id: "ApplicationId", # required
    #     configuration_ids: ["ConfigurationId"], # required
    #   })
    #
    # @overload disassociate_configuration_items_from_application(params = {})
    # @param [Hash] params ({})
    def disassociate_configuration_items_from_application(params = {}, options = {})
      req = build_request(:disassociate_configuration_items_from_application, params)
      req.send_request(options)
    end

    # Deprecated. Use `StartExportTask` instead.
    #
    # Exports all discovered configuration data to an Amazon S3 bucket or an
    # application that enables you to view and evaluate the data. Data
    # includes tags and tag associations, processes, connections, servers,
    # and system performance. This API returns an export ID that you can
    # query using the *DescribeExportConfigurations* API. The system imposes
    # a limit of two configuration exports in six hours.
    #
    # @return [Types::ExportConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportConfigurationsResponse#export_id #export_id} => String
    #
    # @example Response structure
    #
    #   resp.export_id #=> String
    #
    # @overload export_configurations(params = {})
    # @param [Hash] params ({})
    def export_configurations(params = {}, options = {})
      req = build_request(:export_configurations, params)
      req.send_request(options)
    end

    # Retrieves a short summary of discovered assets.
    #
    # This API operation takes no request parameters and is called as is at
    # the command prompt as shown in the example.
    #
    # @return [Types::GetDiscoverySummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDiscoverySummaryResponse#servers #servers} => Integer
    #   * {Types::GetDiscoverySummaryResponse#applications #applications} => Integer
    #   * {Types::GetDiscoverySummaryResponse#servers_mapped_to_applications #servers_mapped_to_applications} => Integer
    #   * {Types::GetDiscoverySummaryResponse#servers_mappedto_tags #servers_mappedto_tags} => Integer
    #   * {Types::GetDiscoverySummaryResponse#agent_summary #agent_summary} => Types::CustomerAgentInfo
    #   * {Types::GetDiscoverySummaryResponse#connector_summary #connector_summary} => Types::CustomerConnectorInfo
    #
    # @example Response structure
    #
    #   resp.servers #=> Integer
    #   resp.applications #=> Integer
    #   resp.servers_mapped_to_applications #=> Integer
    #   resp.servers_mappedto_tags #=> Integer
    #   resp.agent_summary.active_agents #=> Integer
    #   resp.agent_summary.healthy_agents #=> Integer
    #   resp.agent_summary.black_listed_agents #=> Integer
    #   resp.agent_summary.shutdown_agents #=> Integer
    #   resp.agent_summary.unhealthy_agents #=> Integer
    #   resp.agent_summary.total_agents #=> Integer
    #   resp.agent_summary.unknown_agents #=> Integer
    #   resp.connector_summary.active_connectors #=> Integer
    #   resp.connector_summary.healthy_connectors #=> Integer
    #   resp.connector_summary.black_listed_connectors #=> Integer
    #   resp.connector_summary.shutdown_connectors #=> Integer
    #   resp.connector_summary.unhealthy_connectors #=> Integer
    #   resp.connector_summary.total_connectors #=> Integer
    #   resp.connector_summary.unknown_connectors #=> Integer
    #
    # @overload get_discovery_summary(params = {})
    # @param [Hash] params ({})
    def get_discovery_summary(params = {}, options = {})
      req = build_request(:get_discovery_summary, params)
      req.send_request(options)
    end

    # Retrieves a list of configuration items as specified by the value
    # passed to the required parameter `configurationType`. Optional
    # filtering may be applied to refine search results.
    #
    # @option params [required, String] :configuration_type
    #   A valid configuration identified by Application Discovery Service.
    #
    # @option params [Array<Types::Filter>] :filters
    #   You can filter the request using various logical operators and a
    #   *key*-*value* format. For example:
    #
    #   `\{"key": "serverType", "value": "webServer"\}`
    #
    #   For a complete list of filter options and guidance about using them
    #   with this action, see [Using the ListConfigurations Action][1] in the
    #   *AWS Application Discovery Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations
    #
    # @option params [Integer] :max_results
    #   The total number of items to return. The maximum value is 100.
    #
    # @option params [String] :next_token
    #   Token to retrieve the next set of results. For example, if a previous
    #   call to ListConfigurations returned 100 items, but you set
    #   `ListConfigurationsRequest$maxResults` to 10, you received a set of 10
    #   results along with a token. Use that token in this query to get the
    #   next set of 10.
    #
    # @option params [Array<Types::OrderByElement>] :order_by
    #   Certain filter criteria return output that can be sorted in ascending
    #   or descending order. For a list of output characteristics for each
    #   filter, see [Using the ListConfigurations Action][1] in the *AWS
    #   Application Discovery Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations
    #
    # @return [Types::ListConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationsResponse#configurations #configurations} => Array&lt;Hash&lt;String,String&gt;&gt;
    #   * {Types::ListConfigurationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configurations({
    #     configuration_type: "SERVER", # required, accepts SERVER, PROCESS, CONNECTION, APPLICATION
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["FilterValue"], # required
    #         condition: "Condition", # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     order_by: [
    #       {
    #         field_name: "String", # required
    #         sort_order: "ASC", # accepts ASC, DESC
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.configurations #=> Array
    #   resp.configurations[0] #=> Hash
    #   resp.configurations[0]["String"] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_configurations(params = {})
    # @param [Hash] params ({})
    def list_configurations(params = {}, options = {})
      req = build_request(:list_configurations, params)
      req.send_request(options)
    end

    # Retrieves a list of servers that are one network hop away from a
    # specified server.
    #
    # @option params [required, String] :configuration_id
    #   Configuration ID of the server for which neighbors are being listed.
    #
    # @option params [Boolean] :port_information_needed
    #   Flag to indicate if port and protocol information is needed as part of
    #   the response.
    #
    # @option params [Array<String>] :neighbor_configuration_ids
    #   List of configuration IDs to test for one-hop-away.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single page of output.
    #
    # @option params [String] :next_token
    #   Token to retrieve the next set of results. For example, if you
    #   previously specified 100 IDs for
    #   `ListServerNeighborsRequest$neighborConfigurationIds` but set
    #   `ListServerNeighborsRequest$maxResults` to 10, you received a set of
    #   10 results along with a token. Use that token in this query to get the
    #   next set of 10.
    #
    # @return [Types::ListServerNeighborsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServerNeighborsResponse#neighbors #neighbors} => Array&lt;Types::NeighborConnectionDetail&gt;
    #   * {Types::ListServerNeighborsResponse#next_token #next_token} => String
    #   * {Types::ListServerNeighborsResponse#known_dependency_count #known_dependency_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_server_neighbors({
    #     configuration_id: "ConfigurationId", # required
    #     port_information_needed: false,
    #     neighbor_configuration_ids: ["ConfigurationId"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.neighbors #=> Array
    #   resp.neighbors[0].source_server_id #=> String
    #   resp.neighbors[0].destination_server_id #=> String
    #   resp.neighbors[0].destination_port #=> Integer
    #   resp.neighbors[0].transport_protocol #=> String
    #   resp.neighbors[0].connections_count #=> Integer
    #   resp.next_token #=> String
    #   resp.known_dependency_count #=> Integer
    #
    # @overload list_server_neighbors(params = {})
    # @param [Hash] params ({})
    def list_server_neighbors(params = {}, options = {})
      req = build_request(:list_server_neighbors, params)
      req.send_request(options)
    end

    # Start the continuous flow of agent's discovered data into Amazon
    # Athena.
    #
    # @return [Types::StartContinuousExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartContinuousExportResponse#export_id #export_id} => String
    #   * {Types::StartContinuousExportResponse#s3_bucket #s3_bucket} => String
    #   * {Types::StartContinuousExportResponse#start_time #start_time} => Time
    #   * {Types::StartContinuousExportResponse#data_source #data_source} => String
    #   * {Types::StartContinuousExportResponse#schema_storage_config #schema_storage_config} => Hash&lt;String,String&gt;
    #
    # @example Response structure
    #
    #   resp.export_id #=> String
    #   resp.s3_bucket #=> String
    #   resp.start_time #=> Time
    #   resp.data_source #=> String, one of "AGENT"
    #   resp.schema_storage_config #=> Hash
    #   resp.schema_storage_config["DatabaseName"] #=> String
    #
    # @overload start_continuous_export(params = {})
    # @param [Hash] params ({})
    def start_continuous_export(params = {}, options = {})
      req = build_request(:start_continuous_export, params)
      req.send_request(options)
    end

    # Instructs the specified agents or connectors to start collecting data.
    #
    # @option params [required, Array<String>] :agent_ids
    #   The IDs of the agents or connectors from which to start collecting
    #   data. If you send a request to an agent/connector ID that you do not
    #   have permission to contact, according to your AWS account, the service
    #   does not throw an exception. Instead, it returns the error in the
    #   *Description* field. If you send a request to multiple
    #   agents/connectors and you do not have permission to contact some of
    #   those agents/connectors, the system does not throw an exception.
    #   Instead, the system shows `Failed` in the *Description* field.
    #
    # @return [Types::StartDataCollectionByAgentIdsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDataCollectionByAgentIdsResponse#agents_configuration_status #agents_configuration_status} => Array&lt;Types::AgentConfigurationStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_data_collection_by_agent_ids({
    #     agent_ids: ["AgentId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agents_configuration_status #=> Array
    #   resp.agents_configuration_status[0].agent_id #=> String
    #   resp.agents_configuration_status[0].operation_succeeded #=> Boolean
    #   resp.agents_configuration_status[0].description #=> String
    #
    # @overload start_data_collection_by_agent_ids(params = {})
    # @param [Hash] params ({})
    def start_data_collection_by_agent_ids(params = {}, options = {})
      req = build_request(:start_data_collection_by_agent_ids, params)
      req.send_request(options)
    end

    # Begins the export of discovered data to an S3 bucket.
    #
    # If you specify `agentIds` in a filter, the task exports up to 72 hours
    # of detailed data collected by the identified Application Discovery
    # Agent, including network, process, and performance details. A time
    # range for exported agent data may be set by using `startTime` and
    # `endTime`. Export of detailed agent data is limited to five
    # concurrently running exports.
    #
    # If you do not include an `agentIds` filter, summary data is exported
    # that includes both AWS Agentless Discovery Connector data and summary
    # data from AWS Discovery Agents. Export of summary data is limited to
    # two exports per day.
    #
    # @option params [Array<String>] :export_data_format
    #   The file format for the returned export data. Default value is `CSV`.
    #   **Note:** *The* `GRAPHML` *option has been deprecated.*
    #
    # @option params [Array<Types::ExportFilter>] :filters
    #   If a filter is present, it selects the single `agentId` of the
    #   Application Discovery Agent for which data is exported. The `agentId`
    #   can be found in the results of the `DescribeAgents` API or CLI. If no
    #   filter is present, `startTime` and `endTime` are ignored and exported
    #   data includes both Agentless Discovery Connector data and summary data
    #   from Application Discovery agents.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start timestamp for exported data from the single Application
    #   Discovery Agent selected in the filters. If no value is specified,
    #   data is exported starting from the first data collected by the agent.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end timestamp for exported data from the single Application
    #   Discovery Agent selected in the filters. If no value is specified,
    #   exported data includes the most recent data collected by the agent.
    #
    # @return [Types::StartExportTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartExportTaskResponse#export_id #export_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_export_task({
    #     export_data_format: ["CSV"], # accepts CSV, GRAPHML
    #     filters: [
    #       {
    #         name: "FilterName", # required
    #         values: ["FilterValue"], # required
    #         condition: "Condition", # required
    #       },
    #     ],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.export_id #=> String
    #
    # @overload start_export_task(params = {})
    # @param [Hash] params ({})
    def start_export_task(params = {}, options = {})
      req = build_request(:start_export_task, params)
      req.send_request(options)
    end

    # Starts an import task, which allows you to import details of your
    # on-premises environment directly into AWS Migration Hub without having
    # to use the Application Discovery Service (ADS) tools such as the
    # Discovery Connector or Discovery Agent. This gives you the option to
    # perform migration assessment and planning directly from your imported
    # data, including the ability to group your devices as applications and
    # track their migration status.
    #
    # To start an import request, do this:
    #
    # 1.  Download the specially formatted comma separated value (CSV)
    #     import template, which you can find here:
    #     [https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import\_template.csv][1].
    #
    # 2.  Fill out the template with your server and application data.
    #
    # 3.  Upload your import file to an Amazon S3 bucket, and make a note of
    #     it's Object URL. Your import file must be in the CSV format.
    #
    # 4.  Use the console or the `StartImportTask` command with the AWS CLI
    #     or one of the AWS SDKs to import the records from your file.
    #
    # For more information, including step-by-step procedures, see
    # [Migration Hub Import][2] in the *AWS Application Discovery Service
    # User Guide*.
    #
    # <note markdown="1"> There are limits to the number of import tasks you can create (and
    # delete) in an AWS account. For more information, see [AWS Application
    # Discovery Service Limits][3] in the *AWS Application Discovery Service
    # User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv
    # [2]: https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-import.html
    # [3]: https://docs.aws.amazon.com/application-discovery/latest/userguide/ads_service_limits.html
    #
    # @option params [String] :client_request_token
    #   Optional. A unique token that you can provide to prevent the same
    #   import request from occurring more than once. If you don't provide a
    #   token, a token is automatically generated.
    #
    #   Sending more than one `StartImportTask` request with the same client
    #   request token will return information about the original import task
    #   with that client request token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   A descriptive name for this request. You can use this name to filter
    #   future requests related to this import task, such as identifying
    #   applications and servers that were included in this import task. We
    #   recommend that you use a meaningful name for each import task.
    #
    # @option params [required, String] :import_url
    #   The URL for your import file that you've uploaded to Amazon S3.
    #
    #   <note markdown="1"> If you're using the AWS CLI, this URL is structured as follows:
    #   `s3://BucketName/ImportFileName.CSV`
    #
    #    </note>
    #
    # @return [Types::StartImportTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImportTaskResponse#task #task} => Types::ImportTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import_task({
    #     client_request_token: "ClientRequestToken",
    #     name: "ImportTaskName", # required
    #     import_url: "ImportURL", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task.import_task_id #=> String
    #   resp.task.client_request_token #=> String
    #   resp.task.name #=> String
    #   resp.task.import_url #=> String
    #   resp.task.status #=> String, one of "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_COMPLETE_WITH_ERRORS", "IMPORT_FAILED", "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED", "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "DELETE_FAILED_LIMIT_EXCEEDED", "INTERNAL_ERROR"
    #   resp.task.import_request_time #=> Time
    #   resp.task.import_completion_time #=> Time
    #   resp.task.import_deleted_time #=> Time
    #   resp.task.server_import_success #=> Integer
    #   resp.task.server_import_failure #=> Integer
    #   resp.task.application_import_success #=> Integer
    #   resp.task.application_import_failure #=> Integer
    #   resp.task.errors_and_failed_entries_zip #=> String
    #
    # @overload start_import_task(params = {})
    # @param [Hash] params ({})
    def start_import_task(params = {}, options = {})
      req = build_request(:start_import_task, params)
      req.send_request(options)
    end

    # Stop the continuous flow of agent's discovered data into Amazon
    # Athena.
    #
    # @option params [required, String] :export_id
    #   The unique ID assigned to this export.
    #
    # @return [Types::StopContinuousExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopContinuousExportResponse#start_time #start_time} => Time
    #   * {Types::StopContinuousExportResponse#stop_time #stop_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_continuous_export({
    #     export_id: "ConfigurationsExportId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.start_time #=> Time
    #   resp.stop_time #=> Time
    #
    # @overload stop_continuous_export(params = {})
    # @param [Hash] params ({})
    def stop_continuous_export(params = {}, options = {})
      req = build_request(:stop_continuous_export, params)
      req.send_request(options)
    end

    # Instructs the specified agents or connectors to stop collecting data.
    #
    # @option params [required, Array<String>] :agent_ids
    #   The IDs of the agents or connectors from which to stop collecting
    #   data.
    #
    # @return [Types::StopDataCollectionByAgentIdsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopDataCollectionByAgentIdsResponse#agents_configuration_status #agents_configuration_status} => Array&lt;Types::AgentConfigurationStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_data_collection_by_agent_ids({
    #     agent_ids: ["AgentId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agents_configuration_status #=> Array
    #   resp.agents_configuration_status[0].agent_id #=> String
    #   resp.agents_configuration_status[0].operation_succeeded #=> Boolean
    #   resp.agents_configuration_status[0].description #=> String
    #
    # @overload stop_data_collection_by_agent_ids(params = {})
    # @param [Hash] params ({})
    def stop_data_collection_by_agent_ids(params = {}, options = {})
      req = build_request(:stop_data_collection_by_agent_ids, params)
      req.send_request(options)
    end

    # Updates metadata about an application.
    #
    # @option params [required, String] :configuration_id
    #   Configuration ID of the application to be updated.
    #
    # @option params [String] :name
    #   New name of the application to be updated.
    #
    # @option params [String] :description
    #   New description of the application to be updated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     configuration_id: "ApplicationId", # required
    #     name: "String",
    #     description: "String",
    #   })
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
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
      context[:gem_name] = 'aws-sdk-applicationdiscoveryservice'
      context[:gem_version] = '1.33.0'
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
