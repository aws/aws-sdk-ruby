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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:applicationdiscoveryservice)

module Aws::ApplicationDiscoveryService
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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
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
    # the follwoing:
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
    # DescribeConfigurations Action][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#DescribeConfigurations
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

    # `DescribeExportConfigurations` is deprecated.
    #
    # Use instead [ `DescribeExportTasks` ][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html
    #
    # @option params [Array<String>] :export_ids
    #   A list of continuous export ids to search for.
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
    # passed to the required paramater `configurationType`. Optional
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
    #   with this action, see [Querying Discovered Configuration Items][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations
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
    #   filter, see [Using the ListConfigurations Action][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#ListConfigurations
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
      context[:gem_version] = '1.5.0'
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
