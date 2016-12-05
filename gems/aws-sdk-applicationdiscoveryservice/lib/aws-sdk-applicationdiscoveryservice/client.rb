# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:applicationdiscoveryservice)

module Aws
  module ApplicationDiscoveryService
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
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Creates one or more tags for configuration items. Tags are metadata
      # that help you categorize IT assets. This API accepts a list of
      # multiple configuration items.
      # @option params [required, Array<String>] :configuration_ids
      #   A list of configuration items that you want to tag.
      # @option params [required, Array<Types::Tag>] :tags
      #   Tags that you want to associate with one or more configuration items.
      #   Specify the tags that you want to create in a *key*-*value* format.
      #   For example:
      #
      #   `\{"key": "serverType", "value": "webServer"\}`
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_tags({
      #     configuration_ids: ["ConfigurationId"], # required
      #     tags: [ # required
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue", # required
      #       },
      #     ],
      #   })
      # @overload create_tags(params = {})
      # @param [Hash] params ({})
      def create_tags(params = {}, options = {})
        req = build_request(:create_tags, params)
        req.send_request(options)
      end

      # Deletes the association between configuration items and one or more
      # tags. This API accepts a list of multiple configuration items.
      # @option params [required, Array<String>] :configuration_ids
      #   A list of configuration items with tags that you want to delete.
      # @option params [Array<Types::Tag>] :tags
      #   Tags that you want to delete from one or more configuration items.
      #   Specify the tags that you want to delete in a *key*-*value* format.
      #   For example:
      #
      #   `\{"key": "serverType", "value": "webServer"\}`
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_tags({
      #     configuration_ids: ["ConfigurationId"], # required
      #     tags: [
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue", # required
      #       },
      #     ],
      #   })
      # @overload delete_tags(params = {})
      # @param [Hash] params ({})
      def delete_tags(params = {}, options = {})
        req = build_request(:delete_tags, params)
        req.send_request(options)
      end

      # Lists AWS agents by ID or lists all agents associated with your user
      # account if you did not specify an agent ID.
      # @option params [Array<String>] :agent_ids
      #   The agent IDs for which you want information. If you specify no IDs,
      #   the system returns information about all agents associated with your
      #   AWS user account.
      # @option params [Integer] :max_results
      #   The total number of agents to return. The maximum value is 100.
      # @option params [String] :next_token
      #   A token to start the list. Use this token to get the next set of
      #   results.
      # @return [Types::DescribeAgentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAgentsResponse#agents_info #agentsInfo} => Array&lt;Types::AgentInfo&gt;
      #   * {Types::DescribeAgentsResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_agents({
      #     agent_ids: ["AgentId"],
      #     max_results: 1,
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.agents_info #=> Array
      #   resp.agents_info[0].agent_id #=> String
      #   resp.agents_info[0].host_name #=> String
      #   resp.agents_info[0].agent_network_info_list #=> Array
      #   resp.agents_info[0].agent_network_info_list[0].ip_address #=> String
      #   resp.agents_info[0].agent_network_info_list[0].mac_address #=> String
      #   resp.agents_info[0].connector_id #=> String
      #   resp.agents_info[0].version #=> String
      #   resp.agents_info[0].health #=> String, one of "HEALTHY", "UNHEALTHY", "RUNNING", "UNKNOWN", "BLACKLISTED", "SHUTDOWN"
      #   resp.next_token #=> String
      # @overload describe_agents(params = {})
      # @param [Hash] params ({})
      def describe_agents(params = {}, options = {})
        req = build_request(:describe_agents, params)
        req.send_request(options)
      end

      # Retrieves a list of attributes for a specific configuration ID. For
      # example, the output for a *server* configuration item includes a list
      # of attributes about the server, including host name, operating system,
      # number of network cards, etc.
      # @option params [required, Array<String>] :configuration_ids
      #   One or more configuration IDs.
      # @return [Types::DescribeConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeConfigurationsResponse#configurations #configurations} => Array&lt;Hash&lt;String,String&gt;&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_configurations({
      #     configuration_ids: ["ConfigurationId"], # required
      #   })
      #
      # @example Response structure
      #   resp.configurations #=> Array
      #   resp.configurations[0] #=> Hash
      #   resp.configurations[0]["String"] #=> String
      # @overload describe_configurations(params = {})
      # @param [Hash] params ({})
      def describe_configurations(params = {}, options = {})
        req = build_request(:describe_configurations, params)
        req.send_request(options)
      end

      # Retrieves the status of a given export process. You can retrieve
      # status from a maximum of 100 processes.
      # @option params [Array<String>] :export_ids
      #   A unique identifier that you can use to query the export status.
      # @option params [Integer] :max_results
      #   The maximum number of results that you want to display as a part of
      #   the query.
      # @option params [String] :next_token
      #   A token to get the next set of results. For example, if you specified
      #   100 IDs for `DescribeConfigurationsRequest$configurationIds` but set
      #   `DescribeExportConfigurationsRequest$maxResults` to 10, you will get
      #   results in a set of 10. Use the token in the query to get the next set
      #   of 10.
      # @return [Types::DescribeExportConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeExportConfigurationsResponse#exports_info #exportsInfo} => Array&lt;Types::ExportInfo&gt;
      #   * {Types::DescribeExportConfigurationsResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_export_configurations({
      #     export_ids: ["ConfigurationsExportId"],
      #     max_results: 1,
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.exports_info #=> Array
      #   resp.exports_info[0].export_id #=> String
      #   resp.exports_info[0].export_status #=> String, one of "FAILED", "SUCCEEDED", "IN_PROGRESS"
      #   resp.exports_info[0].status_message #=> String
      #   resp.exports_info[0].configurations_download_url #=> String
      #   resp.exports_info[0].export_request_time #=> Time
      #   resp.next_token #=> String
      # @overload describe_export_configurations(params = {})
      # @param [Hash] params ({})
      def describe_export_configurations(params = {}, options = {})
        req = build_request(:describe_export_configurations, params)
        req.send_request(options)
      end

      # Retrieves a list of configuration items that are tagged with a
      # specific tag. Or retrieves a list of all tags assigned to a specific
      # configuration item.
      # @option params [Array<Types::TagFilter>] :filters
      #   You can filter the list using a *key*-*value* format. You can separate
      #   these items by using logical operators. Allowed filters include
      #   `tagKey`, `tagValue`, and `configurationId`.
      # @option params [Integer] :max_results
      #   The total number of items to return. The maximum value is 100.
      # @option params [String] :next_token
      #   A token to start the list. Use this token to get the next set of
      #   results.
      # @return [Types::DescribeTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeTagsResponse#tags #tags} => Array&lt;Types::ConfigurationTag&gt;
      #   * {Types::DescribeTagsResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
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
      #   resp.tags #=> Array
      #   resp.tags[0].configuration_type #=> String, one of "SERVER", "PROCESS", "CONNECTION"
      #   resp.tags[0].configuration_id #=> String
      #   resp.tags[0].key #=> String
      #   resp.tags[0].value #=> String
      #   resp.tags[0].time_of_creation #=> Time
      #   resp.next_token #=> String
      # @overload describe_tags(params = {})
      # @param [Hash] params ({})
      def describe_tags(params = {}, options = {})
        req = build_request(:describe_tags, params)
        req.send_request(options)
      end

      # Exports all discovered configuration data to an Amazon S3 bucket or an
      # application that enables you to view and evaluate the data. Data
      # includes tags and tag associations, processes, connections, servers,
      # and system performance. This API returns an export ID which you can
      # query using the *GetExportStatus* API. The system imposes a limit of
      # two configuration exports in six hours.
      # @return [Types::ExportConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ExportConfigurationsResponse#export_id #exportId} => String
      #
      # @example Response structure
      #   resp.export_id #=> String
      # @overload export_configurations(params = {})
      # @param [Hash] params ({})
      def export_configurations(params = {}, options = {})
        req = build_request(:export_configurations, params)
        req.send_request(options)
      end

      # Retrieves a list of configurations items according to the criteria you
      # specify in a filter. The filter criteria identify relationship
      # requirements.
      # @option params [required, String] :configuration_type
      #   A valid configuration identified by the Discovery Service.
      # @option params [Array<Types::Filter>] :filters
      #   You can filter the list using a *key*-*value* format. For example:
      #
      #   `\{"key": "serverType", "value": "webServer"\}`
      #
      #   You can separate these items by using logical operators.
      # @option params [Integer] :max_results
      #   The total number of items to return. The maximum value is 100.
      # @option params [String] :next_token
      #   A token to start the list. Use this token to get the next set of
      #   results.
      # @return [Types::ListConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListConfigurationsResponse#configurations #configurations} => Array&lt;Hash&lt;String,String&gt;&gt;
      #   * {Types::ListConfigurationsResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_configurations({
      #     configuration_type: "SERVER", # required, accepts SERVER, PROCESS, CONNECTION
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
      #   resp.configurations #=> Array
      #   resp.configurations[0] #=> Hash
      #   resp.configurations[0]["String"] #=> String
      #   resp.next_token #=> String
      # @overload list_configurations(params = {})
      # @param [Hash] params ({})
      def list_configurations(params = {}, options = {})
        req = build_request(:list_configurations, params)
        req.send_request(options)
      end

      # Instructs the specified agents to start collecting data. Agents can
      # reside on host servers or virtual machines in your data center.
      # @option params [required, Array<String>] :agent_ids
      #   The IDs of the agents that you want to start collecting data. If you
      #   send a request to an AWS agent ID that you do not have permission to
      #   contact, according to your AWS account, the service does not throw an
      #   exception. Instead, it returns the error in the *Description* field.
      #   If you send a request to multiple agents and you do not have
      #   permission to contact some of those agents, the system does not throw
      #   an exception. Instead, the system shows `Failed` in the *Description*
      #   field.
      # @return [Types::StartDataCollectionByAgentIdsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::StartDataCollectionByAgentIdsResponse#agents_configuration_status #agentsConfigurationStatus} => Array&lt;Types::AgentConfigurationStatus&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.start_data_collection_by_agent_ids({
      #     agent_ids: ["AgentId"], # required
      #   })
      #
      # @example Response structure
      #   resp.agents_configuration_status #=> Array
      #   resp.agents_configuration_status[0].agent_id #=> String
      #   resp.agents_configuration_status[0].operation_succeeded #=> Boolean
      #   resp.agents_configuration_status[0].description #=> String
      # @overload start_data_collection_by_agent_ids(params = {})
      # @param [Hash] params ({})
      def start_data_collection_by_agent_ids(params = {}, options = {})
        req = build_request(:start_data_collection_by_agent_ids, params)
        req.send_request(options)
      end

      # Instructs the specified agents to stop collecting data.
      # @option params [required, Array<String>] :agent_ids
      #   The IDs of the agents that you want to stop collecting data.
      # @return [Types::StopDataCollectionByAgentIdsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::StopDataCollectionByAgentIdsResponse#agents_configuration_status #agentsConfigurationStatus} => Array&lt;Types::AgentConfigurationStatus&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.stop_data_collection_by_agent_ids({
      #     agent_ids: ["AgentId"], # required
      #   })
      #
      # @example Response structure
      #   resp.agents_configuration_status #=> Array
      #   resp.agents_configuration_status[0].agent_id #=> String
      #   resp.agents_configuration_status[0].operation_succeeded #=> Boolean
      #   resp.agents_configuration_status[0].description #=> String
      # @overload stop_data_collection_by_agent_ids(params = {})
      # @param [Hash] params ({})
      def stop_data_collection_by_agent_ids(params = {}, options = {})
        req = build_request(:stop_data_collection_by_agent_ids, params)
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
        context[:gem_version] = '1.0.0.rc1'
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
end
